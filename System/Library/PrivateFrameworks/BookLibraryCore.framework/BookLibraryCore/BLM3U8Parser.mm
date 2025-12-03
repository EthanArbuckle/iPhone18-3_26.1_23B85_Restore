@interface BLM3U8Parser
- (BLM3U8Parser)initWithData:(id)data;
- (BLM3U8Parser)initWithURL:(id)l;
- (BLM3U8ParserDelegate)delegate;
- (BOOL)parseWithError:(id *)error;
- (BOOL)rewriteWithURL:(id)l;
- (id)parseAttributeList:(id)list;
- (unint64_t)consumeBytes:(const void *)bytes length:(unint64_t)length;
- (void)processLine;
- (void)saveLine:(id)line;
@end

@implementation BLM3U8Parser

- (BLM3U8Parser)initWithURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:8 error:&v14];
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

- (BLM3U8Parser)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = BLM3U8Parser;
  v6 = [(BLM3U8Parser *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    data = [MEMORY[0x277CBEB28] data];
    bytes = v7->_bytes;
    v7->_bytes = data;
  }

  return v7;
}

- (BOOL)parseWithError:(id *)error
{
  error = [(BLM3U8Parser *)self error];

  if (error)
  {
    error2 = [(BLM3U8Parser *)self error];
    v7 = error2 != 0;
    if (error && error2)
    {
      error2 = error2;
      *error = error2;
      v7 = 1;
    }
  }

  else
  {
    data = [(BLM3U8Parser *)self data];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241D6ECB8;
    v12[3] = &unk_278D189E0;
    v12[4] = self;
    [data enumerateByteRangesUsingBlock:v12];

    bytes = [(BLM3U8Parser *)self bytes];
    v10 = [bytes length];

    if (v10)
    {
      [(BLM3U8Parser *)self processLine];
    }

    v7 = 0;
    error2 = 0;
  }

  return !v7;
}

- (unint64_t)consumeBytes:(const void *)bytes length:(unint64_t)length
{
  if (length)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(bytes + v7);
      if (v8 == 10)
      {
        v10 = 1;
        goto LABEL_11;
      }

      if (v8 == 13)
      {
        break;
      }

      if (length == ++v7)
      {
        goto LABEL_6;
      }
    }

    if (v7 + 1 < length && *(bytes + v7 + 1) == 10)
    {
      v10 = 2;
LABEL_11:
      bytes = [(BLM3U8Parser *)self bytes];
      [bytes appendBytes:bytes length:v7];

      [(BLM3U8Parser *)self processLine];
      v7 += v10;
      return v7;
    }

    bytes2 = [(BLM3U8Parser *)self bytes];
    [bytes2 appendBytes:bytes length:v7 - 1];
  }

  else
  {
LABEL_6:
    bytes3 = [(BLM3U8Parser *)self bytes];
    [bytes3 appendBytes:bytes length:length];

    return length;
  }

  return v7;
}

- (id)parseAttributeList:(id)list
{
  listCopy = list;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([listCopy length])
  {
    v5 = 0;
    while (1)
    {
      v6 = [listCopy rangeOfString:@"=" options:0 range:{v5, objc_msgSend(listCopy, "length") - v5}];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v7 = v6;
      v8 = [listCopy substringWithRange:{v5, v6 - v5}];
      v9 = [listCopy length];
      v10 = [listCopy rangeOfString:@"" options:0 range:{v7 + 1, v9 + ~v7}];
      v11 = [listCopy rangeOfString:@" options:" range:{0, v7 + 1, v9 + ~v7}];
      v12 = v11;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 <= v10)
      {
        goto LABEL_9;
      }

      v14 = [listCopy rangeOfString:@" options:0 range:{v10 + 1, objc_msgSend(listCopy, "length"") - (v10 + 1)}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [listCopy substringFromIndex:v10 + 1];
      }

      else
      {
        v15 = v14;
        v13 = [listCopy substringWithRange:{v10 + 1, v14 + ~v10}];
        v12 = [listCopy rangeOfString:@" options:" range:{0, v15 + 1, objc_msgSend(listCopy, "length") - (v15 + 1)}];
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

      if (v5 >= [listCopy length])
      {
        goto LABEL_20;
      }
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [listCopy substringFromIndex:v7 + 1];
LABEL_18:
      v5 = [listCopy length];
      if (!v8)
      {
        goto LABEL_12;
      }

LABEL_11:
      [dictionary setObject:v13 forKeyedSubscript:v8];
      goto LABEL_12;
    }

LABEL_9:
    v13 = [listCopy substringWithRange:{v7 + 1, v11 + ~v7}];
    goto LABEL_10;
  }

LABEL_20:
  v16 = [dictionary copy];

  return v16;
}

- (void)processLine
{
  delegate = [(BLM3U8Parser *)self delegate];
  bytes = [(BLM3U8Parser *)self bytes];
  v4 = [bytes length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    bytes2 = [(BLM3U8Parser *)self bytes];
    v7 = [v5 initWithData:bytes2 encoding:4];

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

        [delegate parser:self lineIsTag:v12 value:v11 attributeList:v10];
        if (-[BLM3U8Parser collectForRewrite](self, "collectForRewrite") && [delegate parserShouldCollectLine:self])
        {
          [(BLM3U8Parser *)self saveLine:v8];
        }
      }

      else if ([v7 hasPrefix:@"#"])
      {
        [delegate parser:self lineIsComment:v7];
        if (-[BLM3U8Parser collectForRewrite](self, "collectForRewrite") && [delegate parserShouldCollectLine:self])
        {
          [(BLM3U8Parser *)self saveLine:v7];
        }
      }

      else
      {
        if (-[BLM3U8Parser collectForRewrite](self, "collectForRewrite") && [delegate parserShouldCollectLine:self])
        {
          [(BLM3U8Parser *)self saveLine:v7];
        }

        v14 = [MEMORY[0x277CBEBC0] URLWithString:v7];
        [delegate parser:self lineIsURL:v14];
      }
    }

    bytes3 = [(BLM3U8Parser *)self bytes];
    bytes4 = [(BLM3U8Parser *)self bytes];
    [bytes3 replaceBytesInRange:0 withBytes:objc_msgSend(bytes4 length:{"length"), 0, 0}];
  }

  else if ([(BLM3U8Parser *)self collectForRewrite])
  {
    [(BLM3U8Parser *)self saveLine:&stru_2853E2EC8];
  }
}

- (void)saveLine:(id)line
{
  lineCopy = line;
  collectedData = [(BLM3U8Parser *)self collectedData];

  if (!collectedData)
  {
    data = [MEMORY[0x277CBEB28] data];
    [(BLM3U8Parser *)self setCollectedData:data];
  }

  collectedData2 = [(BLM3U8Parser *)self collectedData];
  uTF8String = [lineCopy UTF8String];
  uTF8String2 = [lineCopy UTF8String];

  [collectedData2 appendBytes:uTF8String length:strlen(uTF8String2)];
  collectedData3 = [(BLM3U8Parser *)self collectedData];
  [collectedData3 appendBytes:"\n" length:1];
}

- (BOOL)rewriteWithURL:(id)l
{
  lCopy = l;
  collectedData = [(BLM3U8Parser *)self collectedData];
  v6 = [collectedData writeToURL:lCopy atomically:1];

  return v6;
}

- (BLM3U8ParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end