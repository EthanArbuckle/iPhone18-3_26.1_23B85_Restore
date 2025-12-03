@interface OSLogMessagePlaceholder
- (NSArray)tokens;
- (NSString)rawString;
- (NSString)type;
- (NSString)typeNamespace;
- (OSLogMessagePlaceholder)initWithPlaceholderStruct:(os_log_fmt_cspec_s *)struct;
- (void)dealloc;
@end

@implementation OSLogMessagePlaceholder

- (void)dealloc
{
  placeholderString = self->_placeholderString;
  if (placeholderString)
  {
  }

  placeholderTokens = self->_placeholderTokens;
  if (placeholderTokens)
  {
  }

  v5.receiver = self;
  v5.super_class = OSLogMessagePlaceholder;
  [(OSLogMessagePlaceholder *)&v5 dealloc];
}

- (NSString)type
{
  if (!self->_placeholder->var10)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:self->_placeholder->var10 length:self->_placeholder->var5 encoding:4 freeWhenDone:0];

  return v2;
}

- (NSString)typeNamespace
{
  if (!self->_placeholder->var9)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:self->_placeholder->var9 length:self->_placeholder->var4 encoding:4 freeWhenDone:0];

  return v2;
}

- (NSArray)tokens
{
  placeholderTokens = self->_placeholderTokens;
  if (!placeholderTokens)
  {
    if (__PAIR64__(*(self->_placeholder->var0 + 1), *self->_placeholder->var0) == 0x7B00000025)
    {
      placeholderTokens = objc_alloc_init(MEMORY[0x277CBEB18]);
      v4 = self->_placeholder->var0 + 2;
      v5 = &v4[strspn(v4, ", ")];
      v6 = strcspn(v5, ",}");
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277D85DE0];
        do
        {
          if (!*v5 || *v5 == 125)
          {
            break;
          }

          v9 = v7 - 1;
          while (v9 != -1)
          {
            v10 = v5[v9];
            if ((v10 & 0x80000000) != 0)
            {
              v11 = __maskrune(v10, 0x4000uLL);
            }

            else
            {
              v11 = *(v8 + 4 * v10 + 60) & 0x4000;
            }

            --v9;
            if (!v11)
            {
              v12 = v9 + 2;
              goto LABEL_15;
            }
          }

          v12 = 0;
LABEL_15:
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 length:v12 encoding:4 freeWhenDone:0];
          [(NSArray *)placeholderTokens addObject:v13];

          v14 = &v5[v7];
          if (!*v14)
          {
            break;
          }

          if (*v14 == 125)
          {
            break;
          }

          v5 = &v14[strspn(v14, ", }")];
          v7 = strcspn(v5, ",}");
        }

        while (v7);
      }
    }

    else
    {
      placeholderTokens = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    self->_placeholderTokens = placeholderTokens;
  }

  return placeholderTokens;
}

- (NSString)rawString
{
  result = self->_placeholderString;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:self->_placeholder->var0 length:self->_placeholder->var3 encoding:4 freeWhenDone:0];
    self->_placeholderString = result;
  }

  return result;
}

- (OSLogMessagePlaceholder)initWithPlaceholderStruct:(os_log_fmt_cspec_s *)struct
{
  if (!struct)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = OSLogMessagePlaceholder;
  result = [(OSLogMessagePlaceholder *)&v5 init];
  if (result)
  {
    result->_placeholder = struct;
  }

  return result;
}

@end