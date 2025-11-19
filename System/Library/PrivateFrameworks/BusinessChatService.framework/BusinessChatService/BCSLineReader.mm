@interface BCSLineReader
- (BCSLineReader)initWithFileURL:(id)a3 bufferSize:(unint64_t)a4 maxLineSize:(unint64_t)a5;
- (BOOL)hasValidURL;
- (NSInputStream)inputStream;
- (id)readLine;
- (void)dealloc;
- (void)refillReadBuffer;
@end

@implementation BCSLineReader

- (BCSLineReader)initWithFileURL:(id)a3 bufferSize:(unint64_t)a4 maxLineSize:(unint64_t)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = BCSLineReader;
  v10 = [(BCSLineReader *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_URL, a3);
    v11->_bufferSize = a4;
    v11->_maxLineSize = a5;
    v12 = [MEMORY[0x277CBEB28] dataWithLength:a4];
    readBuffer = v11->_readBuffer;
    v11->_readBuffer = v12;

    v11->_beginLine = [(NSMutableData *)v11->_readBuffer mutableBytes];
    v11->_endLine = [(NSMutableData *)v11->_readBuffer mutableBytes];
    v11->_endBuffer = [(NSMutableData *)v11->_readBuffer mutableBytes];
    v14 = [MEMORY[0x277CBEB28] data];
    lineBuffer = v11->_lineBuffer;
    v11->_lineBuffer = v14;
  }

  return v11;
}

- (id)readLine
{
  v4 = 0;
  v36 = *MEMORY[0x277D85DE8];
  *&v2 = 136315394;
  v31 = v2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = [(BCSLineReader *)self beginLine];
        if (v5 == [(BCSLineReader *)self endBuffer])
        {
          v6 = [(BCSLineReader *)self inputStream];
          v7 = [v6 hasBytesAvailable];

          if (!v7)
          {
            v28 = 0;
            goto LABEL_23;
          }
        }

        for (i = [(BCSLineReader *)self beginLine]; ; i = [(BCSLineReader *)self endLine]+ 1)
        {
          [(BCSLineReader *)self setEndLine:i];
          v9 = [(BCSLineReader *)self endLine];
          if (v9 >= [(BCSLineReader *)self endBuffer]|| *[(BCSLineReader *)self endLine]== 10)
          {
            break;
          }
        }

        if (!v4)
        {
          break;
        }

        if (*[(BCSLineReader *)self endLine]== 10)
        {
          [(BCSLineReader *)self setBeginLine:[(BCSLineReader *)self endLine]+ 1];
          v4 = 0;
        }

        else
        {
          [(BCSLineReader *)self refillReadBuffer];
          v4 = 1;
        }
      }

      v10 = [(BCSLineReader *)self lineBuffer];
      v11 = [v10 length];
      v12 = [(BCSLineReader *)self endLine];
      v13 = &v12[v11 - [(BCSLineReader *)self beginLine]];
      v14 = [(BCSLineReader *)self maxLineSize];

      if (v13 <= v14)
      {
        break;
      }

      v15 = [(BCSLineReader *)self lineBuffer];
      [v15 setLength:0];

      v16 = ABSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = [(BCSLineReader *)self maxLineSize];
        *buf = v31;
        v33 = "[BCSLineReader readLine]";
        v34 = 2048;
        v35 = v22;
        _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s Dropping line since it exceeds max size limit of %ld", buf, 0x16u);
      }

      [(BCSLineReader *)self setBeginLine:[(BCSLineReader *)self endLine]+ 1];
      v4 = *[(BCSLineReader *)self endLine]!= 10;
    }

    v17 = [(BCSLineReader *)self endLine];
    if (&v17[[(BCSLineReader *)self]] >= 1)
    {
      v18 = [(BCSLineReader *)self lineBuffer];
      [v18 appendBytes:-[BCSLineReader beginLine](self length:{"beginLine"), -[BCSLineReader endLine](self, "endLine") - -[BCSLineReader beginLine](self, "beginLine")}];
    }

    v19 = [(BCSLineReader *)self endLine];
    if (v19 != [(BCSLineReader *)self endBuffer])
    {
      break;
    }

    [(BCSLineReader *)self refillReadBuffer];
    v20 = [(BCSLineReader *)self inputStream];
    v21 = [v20 hasBytesAvailable];

    v4 = 0;
    if ((v21 & 1) == 0)
    {
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      v27 = [(BCSLineReader *)self lineBuffer];
      v28 = [v26 initWithData:v27 encoding:4];

      goto LABEL_23;
    }
  }

  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v24 = [(BCSLineReader *)self lineBuffer];
  v28 = [v23 initWithData:v24 encoding:4];

  v25 = [(BCSLineReader *)self lineBuffer];
  [v25 setLength:0];

  [(BCSLineReader *)self setBeginLine:[(BCSLineReader *)self endLine]+ 1];
LABEL_23:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)refillReadBuffer
{
  v3 = [(BCSLineReader *)self readBuffer];
  v4 = [v3 mutableBytes];

  v5 = [(BCSLineReader *)self inputStream];
  v6 = [v5 read:v4 maxLength:{-[BCSLineReader bufferSize](self, "bufferSize") - 1}];

  [(BCSLineReader *)self setEndBuffer:v4 + v6];

  [(BCSLineReader *)self setBeginLine:v4];
}

- (NSInputStream)inputStream
{
  if (!self->_inputStream && [(BCSLineReader *)self hasValidURL])
  {
    v3 = MEMORY[0x277CBEAE0];
    v4 = [(BCSLineReader *)self URL];
    v5 = [v3 inputStreamWithURL:v4];
    inputStream = self->_inputStream;
    self->_inputStream = v5;

    [(NSInputStream *)self->_inputStream open];
  }

  v7 = self->_inputStream;

  return v7;
}

- (BOOL)hasValidURL
{
  v2 = [(BCSLineReader *)self URL];
  v3 = [v2 isFileURL];

  return v3;
}

- (void)dealloc
{
  [(NSInputStream *)self->_inputStream close];
  inputStream = self->_inputStream;
  self->_inputStream = 0;

  v4.receiver = self;
  v4.super_class = BCSLineReader;
  [(BCSLineReader *)&v4 dealloc];
}

@end