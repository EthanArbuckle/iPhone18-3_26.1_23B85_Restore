@interface MFIMAPParseContext
- (BOOL)getNumber:(unint64_t *)number;
- (BOOL)literalWithResponseConsumer:(id)consumer section:(id)section;
- (BOOL)match:(const char *)match;
- (BOOL)match:(const char *)match upToSpecial:(const char *)special;
- (BOOL)parseSpace;
- (MFIMAPParseContext)initWithConnection:(id)connection response:(id)response start:(const char *)start end:(const char *)end;
- (const)nextSeparator;
- (id)copyAString;
- (id)copyAtom;
- (id)copyDateTime;
- (id)copyLiteral;
- (id)copyLiteralString;
- (id)copyMessageSet;
- (id)copyNilOrString;
- (id)copyNumber;
- (id)copyQuotedString;
- (id)copyStringFrom:(const char *)from to:(const char *)to withCaseOption:(int64_t)option;
- (unsigned)lookAhead;
- (void)dealloc;
- (void)emitError:(id)error;
- (void)emitWarning:(id)warning;
- (void)logReadChars;
- (void)setEnd:(const char *)end;
- (void)setStart:(const char *)start;
@end

@implementation MFIMAPParseContext

- (MFIMAPParseContext)initWithConnection:(id)connection response:(id)response start:(const char *)start end:(const char *)end
{
  v12.receiver = self;
  v12.super_class = MFIMAPParseContext;
  v10 = [(MFIMAPParseContext *)&v12 init];
  if (v10)
  {
    v10->_connection = connection;
    v10->_response = response;
    v10->_start = start;
    v10->_originalStart = start;
    v10->_originalEnd = end;
    v10->_end = end;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPParseContext;
  [(MFIMAPParseContext *)&v3 dealloc];
}

- (void)setStart:(const char *)start
{
  if (self->_originalStart > start)
  {
    [MFIMAPParseContext setStart:];
  }

  self->_start = start;
}

- (void)setEnd:(const char *)end
{
  if (self->_originalEnd < end)
  {
    [MFIMAPParseContext setEnd:];
  }

  self->_end = end;
}

- (void)emitWarning:(id)warning
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    response = self->_response;
    v7 = [(MFIMAPParseContext *)self copyStringFrom:self->_start to:self->_end withCaseOption:0];
    v9 = 138412802;
    v10 = response;
    v11 = 2112;
    warningCopy = warning;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "*** Warning while parsing %@: %@\nRemaining text: <%@>", &v9, 0x20u);
  }

  sHadWarningOrError = 1;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)emitError:(id)error
{
  if (![+[MFActivityMonitor error] currentMonitor]
  {
    v5 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:&stru_1F273A5E0];
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor setError:"setError:", v5];
    -[MFError setMoreInfo:](v5, "setMoreInfo:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while parsing IMAP response %@: %@\nRemaining text: <%@>", self->_response, error, -[MFIMAPParseContext copyStringFrom:to:withCaseOption:](self, "copyStringFrom:to:withCaseOption:", self->_start, self->_end, 0)]);
  }

  self->_invalid = 1;
  self->_end = self->_start;
  sHadWarningOrError = 1;
}

- (void)logReadChars
{
  end = self->_end;
  if (end > self->_lastLoggedChar)
  {
    [(MFConnection *)self->_connection logReadChars:self->_start length:end - self->_start];
    self->_lastLoggedChar = self->_end;
  }
}

- (id)copyAtom
{
  start = self->_start;
  end = self->_end;
  if (start >= end)
  {
    return 0;
  }

  v5 = self->_start;
  while ((*v5 & 0x80000000) == 0 && ((*(mf_isIMAPAtom_atomicMask + ((*v5 >> 3) & 0x1C)) >> *v5) & 1) != 0)
  {
    if (++v5 == end)
    {
      v5 = self->_end;
      break;
    }
  }

  if (v5 <= start)
  {
    return 0;
  }

  result = [MFIMAPParseContext copyStringFrom:"copyStringFrom:to:withCaseOption:" to:? withCaseOption:?];
  self->_start = v5;
  return result;
}

- (BOOL)getNumber:(unint64_t *)number
{
  lookAhead = [(MFIMAPParseContext *)self lookAhead];
  v6 = lookAhead - 48;
  if (lookAhead - 48 <= 9)
  {
    v7 = 0;
    v8 = lookAhead;
    do
    {
      v7 = v8 + 10 * v7 - 48;
      ++self->_start;
      lookAhead2 = [(MFIMAPParseContext *)self lookAhead];
      v8 = lookAhead2;
    }

    while (lookAhead2 - 48 < 0xA);
    *number = v7;
  }

  return v6 < 0xA;
}

- (id)copyNumber
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (![(MFIMAPParseContext *)self getNumber:&v4])
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  return [v2 initWithUnsignedLongLong:v4];
}

- (BOOL)match:(const char *)match
{
  v5 = strlen(match);
  start = self->_start;
  v7 = (self->_end - start);
  v9 = !strncasecmp(start, match, v5) && v7 >= v5;
  if (v9)
  {
    self->_start = &start[v5];
  }

  return v9;
}

- (BOOL)match:(const char *)match upToSpecial:(const char *)special
{
  if (!special || &self->_start[strlen(match)] != special)
  {
    return 0;
  }

  return [(MFIMAPParseContext *)self match:match];
}

- (id)copyLiteral
{
  v3 = objc_alloc_init(MEMORY[0x1E69AD698]);
  v4 = objc_alloc_init(MFIMAPResponseConsumer);
  [(MFIMAPResponseConsumer *)v4 addConsumer:v3 forSection:0];
  v5 = [(MFIMAPParseContext *)self literalWithResponseConsumer:v4 section:0];
  data = 0;
  if (v5)
  {
    [(MFIMAPResponseConsumer *)v4 done];
    data = [v3 data];
  }

  return data;
}

- (BOOL)literalWithResponseConsumer:(id)consumer section:(id)section
{
  LODWORD(v7) = [(MFIMAPParseContext *)self match:"{"];
  if (v7)
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v26 = 0;
    expectedLength = [(MFActivityMonitor *)v8 expectedLength];
    literalChunkSize = [(MFIMAPConnection *)self->_connection literalChunkSize];
    if ([(MFIMAPParseContext *)self getNumber:&v26])
    {
      if ([(MFIMAPParseContext *)self match:"}"])
      {
        if ([(MFIMAPParseContext *)self match:""])
        {
          goto LABEL_9;
        }

        v11 = @"Expected end-of-line";
      }

      else
      {
        v11 = @"Expected right curly brace";
      }

      [(MFIMAPParseContext *)self emitWarning:v11];
    }

    else
    {
      [(MFIMAPParseContext *)self emitError:@"Expected number in literal"];
    }

LABEL_9:
    v12 = v26;
    if (v26)
    {
      if (expectedLength)
      {
        v13 = v26;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = v26;
      while (1)
      {
        v16 = v15 >= literalChunkSize ? literalChunkSize : v15;
        v17 = [(MFIMAPConnection *)self->_connection _readDataOfLength:v16];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = [v17 length];
        v20 = v15 == v19;
        v21 = v15 > v19;
        v15 -= v19;
        if (!v21)
        {
          if (!v20)
          {
            [(MFIMAPParseContext *)self emitWarning:@"Ignoring extra bytes read during literal"];
          }

          v15 = 0;
        }

        [consumer appendData:v18 forSection:section];
        if (expectedLength)
        {
          [(MFActivityMonitor *)v8 setPercentDone:((v12 - v15) / v14)];
        }

        if (!v15)
        {
          goto LABEL_27;
        }
      }

      [(MFIMAPParseContext *)self emitError:@"Read failure"];
      [consumer done];
    }

LABEL_27:
    if (!self->_invalid)
    {
      v22 = [(MFIMAPConnection *)self->_connection _readDataOfLength:-1];
      if (v22)
      {
        v23 = v22;
        bytes = [v22 bytes];
        self->_originalStart = bytes;
        self->_start = bytes;
        v7 = [v23 length];
        self->_originalEnd = &bytes[v7];
        self->_end = &bytes[v7];
        LOBYTE(v7) = 1;
        return v7;
      }

      [(MFIMAPParseContext *)self emitError:@"Read failure"];
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)copyLiteralString
{
  result = [(MFIMAPParseContext *)self copyLiteral];
  if (result)
  {
    v4 = result;
    v5 = -[MFIMAPParseContext copyStringFrom:to:withCaseOption:](self, "copyStringFrom:to:withCaseOption:", [result bytes], objc_msgSend(v4, "bytes") + objc_msgSend(v4, "length"), 0);

    return v5;
  }

  return result;
}

- (id)copyQuotedString
{
  if ([(MFIMAPParseContext *)self match:""])
  {
    start = self->_start;
    end = self->_end;
    if (start >= end)
    {
      if (start <= end)
      {
        v8 = self->_start;
      }

      else
      {
        v8 = self->_end;
      }
    }

    else
    {
      v5 = 0;
      v6 = self->_start;
      do
      {
        v7 = *v6;
        if (v7 == 92)
        {
          if (v6 + 1 == end)
          {
            break;
          }

          v6 += 2;
          ++v5;
        }

        else
        {
          if (v7 == 34)
          {
            break;
          }

          ++v6;
        }
      }

      while (v6 < end);
      if (v6 <= end)
      {
        v8 = v6;
      }

      else
      {
        v8 = self->_end;
      }

      if (v5)
      {
        v9 = malloc_type_malloc(v8 - &start[v5], 0xF307E2CAuLL);
        v10 = self->_start;
        v11 = v9;
        while (v10 < v8)
        {
          if (*v10 == 92)
          {
            ++v10;
          }

          v12 = *v10++;
          *v11++ = v12;
        }

        v13 = [(MFIMAPParseContext *)self copyStringFrom:v9 to:v11 withCaseOption:0];
        self->_start = v10;
        free(v9);
        goto LABEL_25;
      }
    }

    v13 = [MFIMAPParseContext copyStringFrom:"copyStringFrom:to:withCaseOption:" to:? withCaseOption:?];
    self->_start = v8;
LABEL_25:
    [(MFIMAPParseContext *)self match:""];
    return v13;
  }

  return 0;
}

- (id)copyNilOrString
{
  copyQuotedString = [(MFIMAPParseContext *)self copyQuotedString];
  if (copyQuotedString)
  {
    return copyQuotedString;
  }

  copyQuotedString = [(MFIMAPParseContext *)self copyLiteralString];
  if (copyQuotedString)
  {
    return copyQuotedString;
  }

  copyAtom = [(MFIMAPParseContext *)self copyAtom];
  if (![copyAtom caseInsensitiveCompare:@"NIL"])
  {

    return 0;
  }

  return copyAtom;
}

- (id)copyAString
{
  result = [(MFIMAPParseContext *)self copyAtom];
  if (!result)
  {
    result = [(MFIMAPParseContext *)self copyQuotedString];
    if (!result)
    {

      return [(MFIMAPParseContext *)self copyLiteralString];
    }
  }

  return result;
}

- (id)copyDateTime
{
  result = [(MFIMAPParseContext *)self copyQuotedString];
  if (result)
  {
    v3 = result;
    pthread_mutex_lock(&copyDateTime___dateFormatterLock);
    v4 = copyDateTime___dateFormatter;
    if (!copyDateTime___dateFormatter)
    {
      copyDateTime___dateFormatter = objc_alloc_init(MEMORY[0x1E696AB78]);
      ef_posixLocale = [MEMORY[0x1E695DF58] ef_posixLocale];
      [copyDateTime___dateFormatter setLocale:ef_posixLocale];
      [copyDateTime___dateFormatter setDateFormat:@"d-MMM-yyyy H:mm:ss ZZZ"];
      v4 = copyDateTime___dateFormatter;
    }

    v6 = [v4 dateFromString:v3];
    pthread_mutex_unlock(&copyDateTime___dateFormatterLock);

    return v6;
  }

  return result;
}

- (id)copyMessageSet
{
  start = [(MFIMAPParseContext *)self start];
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if ([(MFIMAPParseContext *)self getNumber:&v6])
  {
    do
    {
      lookAhead = [(MFIMAPParseContext *)self lookAhead];
      if (lookAhead != 58 && lookAhead != 44)
      {
        break;
      }

      [(MFIMAPParseContext *)self increment];
    }

    while ([(MFIMAPParseContext *)self getNumber:&v6]);
  }

  if ([(MFIMAPParseContext *)self start]<= start)
  {
    return 0;
  }

  else
  {
    return [(MFIMAPParseContext *)self copyStringFrom:start to:[(MFIMAPParseContext *)self start] withCaseOption:0];
  }
}

- (id)copyStringFrom:(const char *)from to:(const char *)to withCaseOption:(int64_t)option
{
  fromCopy = from;
  v8 = CFStringCreateWithBytes(0, from, to - from, 0x600u, 0);
  if (option == 1 && fromCopy < to)
  {
    v9 = MEMORY[0x1E69E9830];
    do
    {
      v10 = *fromCopy;
      if ((v10 & 0x80000000) != 0)
      {
        if (__maskrune(v10, 0x1000uLL))
        {
LABEL_10:
          Length = CFStringGetLength(v8);
          MutableCopy = CFStringCreateMutableCopy(0, Length, v8);
          CFStringUppercase(MutableCopy, 0);

          return MutableCopy;
        }
      }

      else if ((*(v9 + 4 * v10 + 60) & 0x1000) != 0)
      {
        goto LABEL_10;
      }

      ++fromCopy;
    }

    while (fromCopy != to);
  }

  return v8;
}

- (BOOL)parseSpace
{
  lookAhead = [(MFIMAPParseContext *)self lookAhead];
  v4 = lookAhead;
  while (lookAhead == 32)
  {
    ++self->_start;
    lookAhead = [(MFIMAPParseContext *)self lookAhead];
  }

  return v4 == 32;
}

- (unsigned)lookAhead
{
  start = self->_start;
  if (start >= self->_end)
  {
    return 0;
  }

  else
  {
    return *start;
  }
}

- (const)nextSeparator
{
  result = self->_start;
  end = self->_end;
  if (result < end)
  {
    while (*result != 32)
    {
      if (++result == end)
      {
        return end;
      }
    }
  }

  return result;
}

@end