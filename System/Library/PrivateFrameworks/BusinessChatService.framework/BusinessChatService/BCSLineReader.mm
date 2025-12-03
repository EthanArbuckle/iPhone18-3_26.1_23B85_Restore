@interface BCSLineReader
- (BCSLineReader)initWithFileURL:(id)l bufferSize:(unint64_t)size maxLineSize:(unint64_t)lineSize;
- (BOOL)hasValidURL;
- (NSInputStream)inputStream;
- (id)readLine;
- (void)dealloc;
- (void)refillReadBuffer;
@end

@implementation BCSLineReader

- (BCSLineReader)initWithFileURL:(id)l bufferSize:(unint64_t)size maxLineSize:(unint64_t)lineSize
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = BCSLineReader;
  v10 = [(BCSLineReader *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_URL, l);
    v11->_bufferSize = size;
    v11->_maxLineSize = lineSize;
    v12 = [MEMORY[0x277CBEB28] dataWithLength:size];
    readBuffer = v11->_readBuffer;
    v11->_readBuffer = v12;

    v11->_beginLine = [(NSMutableData *)v11->_readBuffer mutableBytes];
    v11->_endLine = [(NSMutableData *)v11->_readBuffer mutableBytes];
    v11->_endBuffer = [(NSMutableData *)v11->_readBuffer mutableBytes];
    data = [MEMORY[0x277CBEB28] data];
    lineBuffer = v11->_lineBuffer;
    v11->_lineBuffer = data;
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
        beginLine = [(BCSLineReader *)self beginLine];
        if (beginLine == [(BCSLineReader *)self endBuffer])
        {
          inputStream = [(BCSLineReader *)self inputStream];
          hasBytesAvailable = [inputStream hasBytesAvailable];

          if (!hasBytesAvailable)
          {
            v28 = 0;
            goto LABEL_23;
          }
        }

        for (i = [(BCSLineReader *)self beginLine]; ; i = [(BCSLineReader *)self endLine]+ 1)
        {
          [(BCSLineReader *)self setEndLine:i];
          endLine = [(BCSLineReader *)self endLine];
          if (endLine >= [(BCSLineReader *)self endBuffer]|| *[(BCSLineReader *)self endLine]== 10)
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

      lineBuffer = [(BCSLineReader *)self lineBuffer];
      v11 = [lineBuffer length];
      endLine2 = [(BCSLineReader *)self endLine];
      v13 = &endLine2[v11 - [(BCSLineReader *)self beginLine]];
      maxLineSize = [(BCSLineReader *)self maxLineSize];

      if (v13 <= maxLineSize)
      {
        break;
      }

      lineBuffer2 = [(BCSLineReader *)self lineBuffer];
      [lineBuffer2 setLength:0];

      v16 = ABSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        maxLineSize2 = [(BCSLineReader *)self maxLineSize];
        *buf = v31;
        v33 = "[BCSLineReader readLine]";
        v34 = 2048;
        v35 = maxLineSize2;
        _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s Dropping line since it exceeds max size limit of %ld", buf, 0x16u);
      }

      [(BCSLineReader *)self setBeginLine:[(BCSLineReader *)self endLine]+ 1];
      v4 = *[(BCSLineReader *)self endLine]!= 10;
    }

    endLine3 = [(BCSLineReader *)self endLine];
    if (&endLine3[[(BCSLineReader *)self]] >= 1)
    {
      lineBuffer3 = [(BCSLineReader *)self lineBuffer];
      [lineBuffer3 appendBytes:-[BCSLineReader beginLine](self length:{"beginLine"), -[BCSLineReader endLine](self, "endLine") - -[BCSLineReader beginLine](self, "beginLine")}];
    }

    endLine4 = [(BCSLineReader *)self endLine];
    if (endLine4 != [(BCSLineReader *)self endBuffer])
    {
      break;
    }

    [(BCSLineReader *)self refillReadBuffer];
    inputStream2 = [(BCSLineReader *)self inputStream];
    hasBytesAvailable2 = [inputStream2 hasBytesAvailable];

    v4 = 0;
    if ((hasBytesAvailable2 & 1) == 0)
    {
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      lineBuffer4 = [(BCSLineReader *)self lineBuffer];
      v28 = [v26 initWithData:lineBuffer4 encoding:4];

      goto LABEL_23;
    }
  }

  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  lineBuffer5 = [(BCSLineReader *)self lineBuffer];
  v28 = [v23 initWithData:lineBuffer5 encoding:4];

  lineBuffer6 = [(BCSLineReader *)self lineBuffer];
  [lineBuffer6 setLength:0];

  [(BCSLineReader *)self setBeginLine:[(BCSLineReader *)self endLine]+ 1];
LABEL_23:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)refillReadBuffer
{
  readBuffer = [(BCSLineReader *)self readBuffer];
  mutableBytes = [readBuffer mutableBytes];

  inputStream = [(BCSLineReader *)self inputStream];
  v6 = [inputStream read:mutableBytes maxLength:{-[BCSLineReader bufferSize](self, "bufferSize") - 1}];

  [(BCSLineReader *)self setEndBuffer:mutableBytes + v6];

  [(BCSLineReader *)self setBeginLine:mutableBytes];
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
  isFileURL = [v2 isFileURL];

  return isFileURL;
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