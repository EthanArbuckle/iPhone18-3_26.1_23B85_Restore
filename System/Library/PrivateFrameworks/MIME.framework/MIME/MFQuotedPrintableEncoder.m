@interface MFQuotedPrintableEncoder
+ (unint64_t)requiredSizeToEncodeHeaderBytes:(const char *)a3 length:(unint64_t)a4;
- (int64_t)appendData:(id)a3;
- (void)done;
@end

@implementation MFQuotedPrintableEncoder

- (int64_t)appendData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = v4;
  v5 = [v25 bytes];
  v6 = [v4 length];
  memset(__b, 170, sizeof(__b));
  if (v6 <= 0)
  {
    goto LABEL_53;
  }

  v7 = 0;
  v26 = &v5[v6];
  do
  {
    self->_lastWasNewLine = 0;
    forTextPart = self->_forTextPart;
    if (forTextPart && (lastHorizontalWhitespace = self->_lastHorizontalWhitespace) != 0 && *v5 == 10)
    {
      v10 = &__b[v7];
      *v10 = 61;
      v10[1] = kEncodeHexTable[lastHorizontalWhitespace >> 4];
      v7 += 3;
      v10[2] = kEncodeHexTable[lastHorizontalWhitespace & 0xF];
      self->_line += 3;
      self->_lastHorizontalWhitespace = 0;
      --v5;
    }

    else if (self->_forHeader || (v11 = self->_matchedFrom, kFromSpace[v11] != *v5))
    {
      if (self->_forTextPart && self->_lastHorizontalWhitespace)
      {
        __b[v7++] = self->_lastHorizontalWhitespace;
        ++self->_line;
        self->_lastHorizontalWhitespace = 0;
      }

      matchedFrom = self->_matchedFrom;
      if (matchedFrom)
      {
        memcpy(&__b[v7], "From ", matchedFrom);
        v15 = self->_matchedFrom;
        v7 += v15;
        self->_line += v15;
        self->_matchedFrom = 0;
      }

      v4 = v25;
      v16 = *v5;
      if (v16 != 61 && (v16 - 127) >= 0xFFFFFFA2 && (!self->_forHeader || (v16 - 40) > 0x37 || ((1 << (v16 - 40)) & 0x80000001800003) == 0))
      {
        goto LABEL_34;
      }

      if (!self->_forTextPart)
      {
        goto LABEL_30;
      }

      switch(v16)
      {
        case 9:
          self->_lastHorizontalWhitespace = 9;
          v18 = (self->_line & 0xFFFFFFFFFFFFFFF8) + 8;
          goto LABEL_38;
        case 32:
          self->_lastHorizontalWhitespace = 32;
          break;
        case 10:
          v17 = &__b[v7];
          *v17 = 13;
          v7 += 2;
          v17[1] = *v5;
          self->_line = 0;
          self->_lastWasNewLine = 1;
          break;
        default:
LABEL_30:
          if (self->_forHeader && (v16 == 32 || v16 == 10))
          {
            LOBYTE(v16) = 95;
LABEL_34:
            __b[v7++] = v16;
            v18 = self->_line + 1;
          }

          else
          {
            v19 = &__b[v7];
            *v19 = 61;
            v19[1] = kEncodeHexTable[*v5 >> 4];
            v7 += 3;
            v19[2] = kEncodeHexTable[*v5 & 0xF];
            v18 = self->_line + 3;
          }

LABEL_38:
          self->_line = v18;
          break;
      }
    }

    else
    {
      v12 = v11 + 1;
      self->_matchedFrom = v12;
      if (forTextPart && self->_lastHorizontalWhitespace)
      {
        __b[v7] = self->_lastHorizontalWhitespace;
        ++self->_line;
        ++v7;
        self->_lastHorizontalWhitespace = 0;
        v12 = self->_matchedFrom;
      }

      if (v12 == 5)
      {
        self->_matchedFrom = 0;
        if (self->_forTextPart)
        {
          self->_lastHorizontalWhitespace = 32;
          v13 = 6;
        }

        else
        {
          v13 = 7;
        }

        memcpy(&__b[v7], "=46rom ", v13);
        v7 += v13;
        self->_line += v13;
        v4 = v25;
      }
    }

    if (!self->_forHeader && self->_line >= 0x4C && !self->_lastWasNewLine)
    {
      v20 = v7 + 1;
      __b[v7] = 61;
      if (self->_forTextPart)
      {
        __b[v20] = 13;
        v20 = v7 + 2;
      }

      __b[v20] = 10;
      v7 = v20 + 1;
      self->_line = 0;
      self->_lastWasNewLine = 0;
    }

    if (v7 >= 0x3F1D)
    {
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v7 freeWhenDone:0];
      v28.receiver = self;
      v28.super_class = MFQuotedPrintableEncoder;
      [(MFBaseFilterDataConsumer *)&v28 appendData:v21];

      v7 = 0;
    }

    ++v5;
  }

  while (v5 < v26);
  if (v7)
  {
    v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:v7 freeWhenDone:0];
    v27.receiver = self;
    v27.super_class = MFQuotedPrintableEncoder;
    [(MFBaseFilterDataConsumer *)&v27 appendData:v22];
  }

LABEL_53:

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)done
{
  v12 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  matchedFrom = self->_matchedFrom;
  if (matchedFrom)
  {
    if (matchedFrom == 5)
    {
      qmemcpy(__b, "=46ro", 5);
    }

    else
    {
      v4 = self->_matchedFrom;
      __memmove_chk();
      matchedFrom = self->_matchedFrom;
    }

    self->_line += matchedFrom;
  }

  if (self->_forTextPart)
  {
    lastHorizontalWhitespace = self->_lastHorizontalWhitespace;
    if (self->_lastHorizontalWhitespace)
    {
      v6 = __b + matchedFrom;
      *v6 = 61;
      v6[1] = kEncodeHexTable[lastHorizontalWhitespace >> 4];
      matchedFrom += 3;
      v6[2] = kEncodeHexTable[lastHorizontalWhitespace & 0xF];
      self->_line += 3;
      self->_lastHorizontalWhitespace = 0;
    }
  }

  if (self->_line)
  {
    if (!self->_forHeader)
    {
      v7 = matchedFrom + 1;
      *(__b + matchedFrom) = 61;
      if (self->_forTextPart)
      {
        *(__b + v7) = 13;
        v7 = matchedFrom + 2;
      }

      matchedFrom = v7 + 1;
      *(__b + v7) = 10;
    }

    self->_line = 0;
  }

  if (matchedFrom)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:__b length:matchedFrom freeWhenDone:0];
    v10.receiver = self;
    v10.super_class = MFQuotedPrintableEncoder;
    [(MFBaseFilterDataConsumer *)&v10 appendData:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)requiredSizeToEncodeHeaderBytes:(const char *)a3 length:(unint64_t)a4
{
  if (a4 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = &a3[a4];
  do
  {
    v7 = *a3++;
    v6 = v7;
    if ((v7 - 32) < 0x5F && v6 != 61 || v6 == 10)
    {
      ++result;
    }

    else
    {
      result += 3;
    }
  }

  while (a3 < v5);
  return result;
}

@end