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
- (id)copyStringFrom:(const char *)from to:(const char *)to withCaseOption:(int)option;
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
  v15 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_258B7A000, v5, OS_LOG_TYPE_INFO, "*** Warning while parsing %@: %@\nRemaining text: <%@>", &v9, 0x20u);
  }

  _hadWarningOrError = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)emitError:(id)error
{
  if (![objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")])
  {
    v5 = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1033 localizedDescription:&stru_2869E1DA0];
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    [v5 setMoreInfo:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Error while parsing IMAP response %@: %@\nRemaining text: <%@>", self->_response, error, -[MFIMAPParseContext copyStringFrom:to:withCaseOption:](self, "copyStringFrom:to:withCaseOption:", self->_start, self->_end, 0))}];
  }

  self->_invalid = 1;
  self->_end = self->_start;
  _hadWarningOrError = 1;
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
  v5 = 0;
  v2 = [(MFIMAPParseContext *)self getNumber:&v5];
  result = 0;
  if (v2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    return [v4 initWithUnsignedLongLong:v5];
  }

  return result;
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
  v3 = objc_alloc_init(MEMORY[0x277D24EE8]);
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
  if (![(MFIMAPParseContext *)self match:"{"])
  {
    return 0;
  }

  currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
  v29 = 0;
  expectedLength = [currentMonitor expectedLength];
  literalChunkSize = [(MFIMAPConnection *)self->_connection literalChunkSize];
  if ([(MFIMAPParseContext *)self getNumber:&v29])
  {
    if (![(MFIMAPParseContext *)self match:"}"])
    {
      v10 = @"Expected right curly brace";
      goto LABEL_9;
    }

    if (![(MFIMAPParseContext *)self match:""])
    {
      v10 = @"Expected end-of-line";
LABEL_9:
      [(MFIMAPParseContext *)self emitWarning:v10];
    }
  }

  else
  {
    [(MFIMAPParseContext *)self emitError:@"Expected number in literal"];
  }

  v12 = v29;
  if (!v29)
  {
    v20 = 0;
    goto LABEL_32;
  }

  v13 = literalChunkSize;
  if (expectedLength)
  {
    v14 = v29;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = 1;
  v17 = v29;
  while (1)
  {
    v18 = v17 >= v13 ? v13 : v17;
    v19 = [(MFIMAPConnection *)self->_connection _readDataOfLength:v18];
    v20 = v19;
    if (!v19)
    {
      break;
    }

    v21 = [v19 length];
    v22 = v17 == v21;
    v23 = v17 > v21;
    v17 -= v21;
    if (!v23)
    {
      if (!v22)
      {
        [(MFIMAPParseContext *)self emitWarning:@"Ignoring extra bytes read during literal"];
      }

      v17 = 0;
    }

    [consumer appendData:v20 forSection:section];
    connection = self->_connection;
    if (v16)
    {
      [(MFIMAPConnection *)connection notifyDelegateOfBodyLoadStart:v20 section:section];
      if (!expectedLength)
      {
        goto LABEL_28;
      }

LABEL_27:
      [currentMonitor setPercentDone:((v12 - v17) / v15)];
      goto LABEL_28;
    }

    [(MFIMAPConnection *)connection notifyDelegateOfBodyLoadAppendage:v20 section:section];
    if (expectedLength)
    {
      goto LABEL_27;
    }

LABEL_28:
    v16 = 0;
    if (!v17)
    {
      goto LABEL_32;
    }
  }

  [(MFIMAPParseContext *)self emitError:@"Read failure"];
  [consumer done];
LABEL_32:
  if (!self->_invalid)
  {
    v25 = [(MFIMAPConnection *)self->_connection _readDataOfLength:-1];
    v20 = v25;
    if (v25)
    {
      bytes = [v25 bytes];
      self->_originalStart = bytes;
      self->_start = bytes;
      v27 = &bytes[[v20 length]];
      self->_originalEnd = v27;
      self->_end = v27;
      v11 = 1;
      goto LABEL_37;
    }

    [(MFIMAPParseContext *)self emitError:@"Read failure"];
  }

  v11 = 0;
LABEL_37:
  [(MFIMAPConnection *)self->_connection notifyDelegateOfBodyLoadCompletion:v20 section:section];
  return v11;
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
        v9 = malloc_type_malloc(v8 - &start[v5], 0x215CCC5EuLL);
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
      copyDateTime___dateFormatter = objc_alloc_init(MEMORY[0x277CCA968]);
      v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
      [copyDateTime___dateFormatter setLocale:v5];

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
  v6 = 0;
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

- (id)copyStringFrom:(const char *)from to:(const char *)to withCaseOption:(int)option
{
  fromCopy = from;
  v8 = CFStringCreateWithBytes(0, from, to - from, 0x600u, 0);
  if (option == 1 && fromCopy < to)
  {
    v9 = MEMORY[0x277D85DE0];
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