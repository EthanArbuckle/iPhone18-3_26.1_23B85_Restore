@interface BLM3U8Parser
- (BLM3U8Parser)initWithData:(id)a3;
- (BLM3U8Parser)initWithURL:(id)a3;
- (BLM3U8ParserDelegate)delegate;
- (BOOL)parseWithError:(id *)a3;
- (BOOL)rewriteWithURL:(id)a3;
- (id)parseAttributeList:(id)a3;
- (unint64_t)consumeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)processLine;
- (void)saveLine:(id)a3;
@end

@implementation BLM3U8Parser

- (BLM3U8Parser)initWithURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:8 error:&v14];
  v5 = v14;
  if (!v4)
  {
    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Error reading playlist:  %@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15 = *MEMORY[0x277CCA7E8];
    v16 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v7 initWithDomain:@"BLErrorDomain" code:26 userInfo:v8];
    error = self->_error;
    self->_error = v9;
  }

  v11 = [(BLM3U8Parser *)self initWithData:v4];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BLM3U8Parser)initWithData:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BLM3U8Parser;
  v6 = [(BLM3U8Parser *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = [MEMORY[0x277CBEB28] data];
    bytes = v7->_bytes;
    v7->_bytes = v8;
  }

  return v7;
}

- (BOOL)parseWithError:(id *)a3
{
  v5 = [(BLM3U8Parser *)self error];

  if (v5)
  {
    v6 = [(BLM3U8Parser *)self error];
    v7 = v6 != 0;
    if (a3 && v6)
    {
      v6 = v6;
      *a3 = v6;
      v7 = 1;
    }
  }

  else
  {
    v8 = [(BLM3U8Parser *)self data];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241D6ECB8;
    v12[3] = &unk_278D189E0;
    v12[4] = self;
    [v8 enumerateByteRangesUsingBlock:v12];

    v9 = [(BLM3U8Parser *)self bytes];
    v10 = [v9 length];

    if (v10)
    {
      [(BLM3U8Parser *)self processLine];
    }

    v7 = 0;
    v6 = 0;
  }

  return !v7;
}

- (unint64_t)consumeBytes:(const void *)a3 length:(unint64_t)a4
{
  if (a4)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a3 + v7);
      if (v8 == 10)
      {
        v10 = 1;
        goto LABEL_11;
      }

      if (v8 == 13)
      {
        break;
      }

      if (a4 == ++v7)
      {
        goto LABEL_6;
      }
    }

    if (v7 + 1 < a4 && *(a3 + v7 + 1) == 10)
    {
      v10 = 2;
LABEL_11:
      v11 = [(BLM3U8Parser *)self bytes];
      [v11 appendBytes:a3 length:v7];

      [(BLM3U8Parser *)self processLine];
      v7 += v10;
      return v7;
    }

    v12 = [(BLM3U8Parser *)self bytes];
    [v12 appendBytes:a3 length:v7 - 1];
  }

  else
  {
LABEL_6:
    v9 = [(BLM3U8Parser *)self bytes];
    [v9 appendBytes:a3 length:a4];

    return a4;
  }

  return v7;
}

- (id)parseAttributeList:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if ([v3 length])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v3 rangeOfString:@"=" options:0 range:{v5, objc_msgSend(v3, "length") - v5}];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v7 = v6;
      v8 = [v3 substringWithRange:{v5, v6 - v5}];
      v9 = [v3 length];
      v10 = [v3 rangeOfString:@"" options:0 range:{v7 + 1, v9 + ~v7}];
      v11 = [v3 rangeOfString:@" options:" range:{0, v7 + 1, v9 + ~v7}];
      v12 = v11;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 <= v10)
      {
        goto LABEL_9;
      }

      v14 = [v3 rangeOfString:@" options:0 range:{v10 + 1, objc_msgSend(v3, "length"") - (v10 + 1)}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v3 substringFromIndex:v10 + 1];
      }

      else
      {
        v15 = v14;
        v13 = [v3 substringWithRange:{v10 + 1, v14 + ~v10}];
        v12 = [v3 rangeOfString:@" options:" range:{0, v15 + 1, objc_msgSend(v3, "length") - (v15 + 1)}];
      }

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

LABEL_10:
      v5 = v12 + 1;
      if (v8)
      {
        goto LABEL_11;
      }

LABEL_12:

      if (v5 >= [v3 length])
      {
        goto LABEL_20;
      }
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v3 substringFromIndex:v7 + 1];
LABEL_18:
      v5 = [v3 length];
      if (!v8)
      {
        goto LABEL_12;
      }

LABEL_11:
      [v4 setObject:v13 forKeyedSubscript:v8];
      goto LABEL_12;
    }

LABEL_9:
    v13 = [v3 substringWithRange:{v7 + 1, v11 + ~v7}];
    goto LABEL_10;
  }

LABEL_20:
  v16 = [v4 copy];

  return v16;
}

- (void)processLine
{
  v17 = [(BLM3U8Parser *)self delegate];
  v3 = [(BLM3U8Parser *)self bytes];
  v4 = [v3 length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [(BLM3U8Parser *)self bytes];
    v7 = [v5 initWithData:v6 encoding:4];

    if ([v7 length])
    {
      if ([v7 hasPrefix:@"#EXT"])
      {
        v8 = v7;
        v9 = [v8 rangeOfString:@":"];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = 0;
          v11 = &stru_2853E2EC8;
          v12 = v8;
        }

        else
        {
          v13 = v9;
          v12 = [v8 substringToIndex:v9];

          v11 = [v8 substringFromIndex:v13 + 1];
          if ([(__CFString *)v11 length])
          {
            v10 = [(BLM3U8Parser *)self parseAttributeList:v11];
          }

          else
          {
            v10 = 0;
          }
        }

        [v17 parser:self lineIsTag:v12 value:v11 attributeList:v10];
        if (-[BLM3U8Parser collectForRewrite](self, "collectForRewrite") && [v17 parserShouldCollectLine:self])
        {
          [(BLM3U8Parser *)self saveLine:v8];
        }
      }

      else if ([v7 hasPrefix:@"#"])
      {
        [v17 parser:self lineIsComment:v7];
        if (-[BLM3U8Parser collectForRewrite](self, "collectForRewrite") && [v17 parserShouldCollectLine:self])
        {
          [(BLM3U8Parser *)self saveLine:v7];
        }
      }

      else
      {
        if (-[BLM3U8Parser collectForRewrite](self, "collectForRewrite") && [v17 parserShouldCollectLine:self])
        {
          [(BLM3U8Parser *)self saveLine:v7];
        }

        v14 = [MEMORY[0x277CBEBC0] URLWithString:v7];
        [v17 parser:self lineIsURL:v14];
      }
    }

    v15 = [(BLM3U8Parser *)self bytes];
    v16 = [(BLM3U8Parser *)self bytes];
    [v15 replaceBytesInRange:0 withBytes:objc_msgSend(v16 length:{"length"), 0, 0}];
  }

  else if ([(BLM3U8Parser *)self collectForRewrite])
  {
    [(BLM3U8Parser *)self saveLine:&stru_2853E2EC8];
  }
}

- (void)saveLine:(id)a3
{
  v4 = a3;
  v5 = [(BLM3U8Parser *)self collectedData];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB28] data];
    [(BLM3U8Parser *)self setCollectedData:v6];
  }

  v7 = [(BLM3U8Parser *)self collectedData];
  v8 = [v4 UTF8String];
  v9 = [v4 UTF8String];

  [v7 appendBytes:v8 length:strlen(v9)];
  v10 = [(BLM3U8Parser *)self collectedData];
  [v10 appendBytes:"\n" length:1];
}

- (BOOL)rewriteWithURL:(id)a3
{
  v4 = a3;
  v5 = [(BLM3U8Parser *)self collectedData];
  v6 = [v5 writeToURL:v4 atomically:1];

  return v6;
}

- (BLM3U8ParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end