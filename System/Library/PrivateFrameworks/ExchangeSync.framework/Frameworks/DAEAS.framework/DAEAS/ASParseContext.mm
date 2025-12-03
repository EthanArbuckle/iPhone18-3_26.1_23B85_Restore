@interface ASParseContext
- (ASParseContext)init;
- (BOOL)advanceOffsetByAmount:(unsigned int)amount retainLastToken:(BOOL)token;
- (BOOL)hasNumberOfTokensRemaining:(unsigned int)remaining;
- (id)bufferWithAllData;
- (int)_numTokensForNextOpaqueDataCheckNumTokens:(BOOL)tokens;
- (int)numTokensForNextString;
- (int)numTokensStreamableForNextStringSizeOfTerminator:(int *)terminator;
- (int)numberOfBytesUntilStringEnd:(char *)end searchStringLength:(int)length acceptingBufferBits:(BOOL)bits;
- (int64_t)goodSizeForBuffer;
- (unsigned)byteAtOffsetFromCurrentByte:(unsigned int)byte;
- (unsigned)currentByte;
- (void)addData:(id)data;
- (void)dealloc;
- (void)flushLogs;
- (void)invalidateBuffers;
- (void)resetToZeroOffset;
- (void)setShouldLog:(BOOL)log;
@end

@implementation ASParseContext

- (ASParseContext)init
{
  v5.receiver = self;
  v5.super_class = ASParseContext;
  v2 = [(ASParseContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASParseContext *)v2 setStreamingState:0];
    [(ASParseContext *)v3 setKeepPreviousData:0];
  }

  return v3;
}

- (void)setShouldLog:(BOOL)log
{
  if (log)
  {
    trafficLogger = [(ASParseContext *)self trafficLogger];

    if (!trafficLogger)
    {
      v5 = objc_opt_new();
      [(ASParseContext *)self setTrafficLogger:v5];
    }
  }
}

- (void)dealloc
{
  [(ASParseContext *)self invalidateBuffers];
  v3.receiver = self;
  v3.super_class = ASParseContext;
  [(ASParseContext *)&v3 dealloc];
}

- (BOOL)hasNumberOfTokensRemaining:(unsigned int)remaining
{
  dataBuffers = [(ASParseContext *)self dataBuffers];
  v6 = [dataBuffers count];

  if (!v6)
  {
    return 0;
  }

  dataBuffers2 = [(ASParseContext *)self dataBuffers];
  v8 = [dataBuffers2 objectAtIndexedSubscript:0];
  v9 = [v8 length];
  v10 = v9 + ~[(ASParseContext *)self offsetIntoFirstData];

  if (v10 >= remaining)
  {
    return 1;
  }

  dataBuffers3 = [(ASParseContext *)self dataBuffers];
  v12 = [dataBuffers3 count];

  if (v12 < 2)
  {
    return 0;
  }

  remainingCopy = remaining;
  v14 = 2;
  v15 = 1;
  do
  {
    dataBuffers4 = [(ASParseContext *)self dataBuffers];
    v17 = [dataBuffers4 objectAtIndexedSubscript:v15];
    v10 += [v17 length];

    v18 = v10 >= remainingCopy;
    if (v10 >= remainingCopy)
    {
      break;
    }

    v15 = v14;
    dataBuffers5 = [(ASParseContext *)self dataBuffers];
    v20 = [dataBuffers5 count];
  }

  while (v20 > v14++);
  return v18;
}

- (int)numberOfBytesUntilStringEnd:(char *)end searchStringLength:(int)length acceptingBufferBits:(BOOL)bits
{
  bitsCopy = bits;
  if (length >= 3)
  {
    [ASParseContext numberOfBytesUntilStringEnd:a2 searchStringLength:self acceptingBufferBits:?];
  }

  dataBuffers = [(ASParseContext *)self dataBuffers];
  v10 = [dataBuffers count];

  if (v10)
  {
    dataBuffers2 = [(ASParseContext *)self dataBuffers];
    v12 = [dataBuffers2 objectAtIndexedSubscript:0];

    v13 = [v12 length];
    v14 = v13 - [(ASParseContext *)self offsetIntoFirstData];
    if (![(ASParseContext *)self lastFoundBufferWithoutLineEnding])
    {
      bytes = [v12 bytes];
      v34 = (bytes + [(ASParseContext *)self offsetIntoFirstData]);
      v35 = memmem(v34, v14, end, length);
      if (v35)
      {
        v36 = v35;
        [(ASParseContext *)self setLastFoundBufferWithoutLineEnding:0];
        [(ASParseContext *)self setNumTokensInBuffersWithoutLineEndings:0];
        [(ASParseContext *)self setLastLookedAtBufferHadStringEndPrefix:0];
        v31 = v36 + length - v34;
        goto LABEL_29;
      }

      if (length >= 2)
      {
        [(ASParseContext *)self setLastLookedAtBufferHadStringEndPrefix:v34[v14 - 1] == *end];
      }
    }

    v40 = v14;
    if (!bitsCopy)
    {
      dataBuffers3 = [(ASParseContext *)self dataBuffers];
      v16 = [dataBuffers3 count];
      v17 = [(ASParseContext *)self lastFoundBufferWithoutLineEnding]+ 1;

      if (v16 <= v17)
      {
        goto LABEL_22;
      }
    }

    lastFoundBufferWithoutLineEnding = [(ASParseContext *)self lastFoundBufferWithoutLineEnding];
    v19 = lastFoundBufferWithoutLineEnding + 1;
    dataBuffers4 = [(ASParseContext *)self dataBuffers];
    v21 = [dataBuffers4 count];

    if (v21 > v19)
    {
      v22 = lastFoundBufferWithoutLineEnding + 2;
      while (1)
      {
        v23 = v12;
        dataBuffers5 = [(ASParseContext *)self dataBuffers];
        v12 = [dataBuffers5 objectAtIndexedSubscript:v19];

        if (length == 2 && -[ASParseContext lastLookedAtBufferHadStringEndPrefix](self, "lastLookedAtBufferHadStringEndPrefix") && *[v12 bytes] == end[1])
        {
          break;
        }

        v25 = memmem([v12 bytes], objc_msgSend(v12, "length"), end, length);
        if (v25)
        {
          v37 = v25;
          numTokensInBuffersWithoutLineEndings = [(ASParseContext *)self numTokensInBuffersWithoutLineEndings];
          v31 = v40 + length + numTokensInBuffersWithoutLineEndings + v37 - [v12 bytes];
          goto LABEL_29;
        }

        if (length >= 2)
        {
          -[ASParseContext setLastLookedAtBufferHadStringEndPrefix:](self, "setLastLookedAtBufferHadStringEndPrefix:", *([v12 bytes] + objc_msgSend(v12, "length") - 1) == *end);
        }

        [(ASParseContext *)self setLastFoundBufferWithoutLineEnding:[(ASParseContext *)self lastFoundBufferWithoutLineEnding]+ 1];
        v26 = [v12 length];
        v27 = v26;
        if (HIDWORD(v26))
        {
          [ASParseContext numberOfBytesUntilStringEnd:searchStringLength:acceptingBufferBits:];
        }

        [(ASParseContext *)self setNumTokensInBuffersWithoutLineEndings:[(ASParseContext *)self numTokensInBuffersWithoutLineEndings]+ v27];
        v19 = v22;
        dataBuffers6 = [(ASParseContext *)self dataBuffers];
        v29 = [dataBuffers6 count];

        if (v29 <= v22++)
        {
          goto LABEL_20;
        }
      }

      v31 = v40 + [(ASParseContext *)self numTokensInBuffersWithoutLineEndings]+ 1;
      goto LABEL_29;
    }

LABEL_20:
    if (bitsCopy)
    {
      v32 = [(ASParseContext *)self numTokensInBuffersWithoutLineEndings]+ v40;
      v31 = v32 - [(ASParseContext *)self lastLookedAtBufferHadStringEndPrefix];
    }

    else
    {
LABEL_22:
      v31 = -1;
    }

LABEL_29:

    return v31;
  }

  return -1;
}

- (int64_t)goodSizeForBuffer
{
  currentBytesReceivedCount = [(ASParseContext *)self currentBytesReceivedCount];
  if (currentBytesReceivedCount == [(ASParseContext *)self curOffset])
  {
    return 0;
  }

  dataBuffers = [(ASParseContext *)self dataBuffers];
  v6 = [dataBuffers objectAtIndexedSubscript:0];
  v7 = [v6 length];
  v4 = v7 - [(ASParseContext *)self offsetIntoFirstData];

  return v4;
}

- (id)bufferWithAllData
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataBuffers = [(ASParseContext *)self dataBuffers];
  v5 = [dataBuffers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(dataBuffers);
        }

        [v3 appendData:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [dataBuffers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)advanceOffsetByAmount:(unsigned int)amount retainLastToken:(BOOL)token
{
  tokenCopy = token;
  [(ASParseContext *)self setLastFoundBufferWithoutLineEnding:0];
  [(ASParseContext *)self setNumTokensInBuffersWithoutLineEndings:0];
  [(ASParseContext *)self setLastLookedAtBufferHadStringEndPrefix:0];
  v7 = [(ASParseContext *)self hasNumberOfTokensRemaining:amount - !tokenCopy];
  if (v7)
  {
    dataBuffers = [(ASParseContext *)self dataBuffers];
    v9 = [dataBuffers count];

    if (v9)
    {
      amountCopy = amount;
      while (1)
      {
        dataBuffers2 = [(ASParseContext *)self dataBuffers];
        v12 = [dataBuffers2 objectAtIndexedSubscript:0];
        v13 = [v12 length];
        v14 = v13 - [(ASParseContext *)self offsetIntoFirstData];

        if (v14 > amountCopy)
        {
          break;
        }

        [(ASParseContext *)self setOffsetIntoFirstData:0];
        if ([(ASParseContext *)self keepPreviousData])
        {
          bypassedDataBuffers = [(ASParseContext *)self bypassedDataBuffers];

          if (!bypassedDataBuffers)
          {
            v16 = objc_opt_new();
            [(ASParseContext *)self setBypassedDataBuffers:v16];
          }

          bypassedDataBuffers2 = [(ASParseContext *)self bypassedDataBuffers];
          dataBuffers3 = [(ASParseContext *)self dataBuffers];
          v19 = [dataBuffers3 objectAtIndexedSubscript:0];
          [bypassedDataBuffers2 addObject:v19];
        }

        amountCopy -= v14;
        dataBuffers4 = [(ASParseContext *)self dataBuffers];
        [dataBuffers4 removeObjectAtIndex:0];

        dataBuffers5 = [(ASParseContext *)self dataBuffers];
        v22 = [dataBuffers5 count];

        if (!v22)
        {
          goto LABEL_12;
        }
      }

      [(ASParseContext *)self setOffsetIntoFirstData:[(ASParseContext *)self offsetIntoFirstData]+ amountCopy];
    }

LABEL_12:
    [(ASParseContext *)self setCurOffset:[(ASParseContext *)self curOffset]+ amount];
  }

  return v7;
}

- (void)resetToZeroOffset
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASParseContext.m" lineNumber:229 description:@"You can't reset a parse context if you didn't tell it to keep around the previous data"];
}

- (void)addData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    dataBuffers = [(ASParseContext *)self dataBuffers];

    if (!dataBuffers)
    {
      v5 = objc_opt_new();
      [(ASParseContext *)self setDataBuffers:v5];
    }

    [(ASParseContext *)self setDataGeneration:[(ASParseContext *)self dataGeneration]+ 1];
    -[ASParseContext setCurrentBytesReceivedCount:](self, "setCurrentBytesReceivedCount:", -[ASParseContext currentBytesReceivedCount](self, "currentBytesReceivedCount") + [dataCopy length]);
    dataBuffers2 = [(ASParseContext *)self dataBuffers];
    [dataBuffers2 addObject:dataCopy];

    if (getDALogLevel() >= 6)
    {
      trafficLogger = [(ASParseContext *)self trafficLogger];
      [trafficLogger logWBXMLData:dataCopy];
    }
  }
}

- (unsigned)currentByte
{
  v24 = *MEMORY[0x277D85DE8];
  logFileHandle = [(ASParseContext *)self logFileHandle];

  if (logFileHandle)
  {
    offsetIntoFirstData = [(ASParseContext *)self offsetIntoFirstData];
    dataBuffers = [(ASParseContext *)self dataBuffers];
    v7 = [dataBuffers objectAtIndexedSubscript:0];
    v8 = [v7 length];

    if (offsetIntoFirstData >= v8)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        dataBuffers2 = [(ASParseContext *)self dataBuffers];
        v12 = [dataBuffers2 objectAtIndexedSubscript:0];
        v20 = 134218240;
        v21 = [v12 length];
        v22 = 2048;
        offsetIntoFirstData2 = [(ASParseContext *)self offsetIntoFirstData];
        _os_log_impl(&dword_24A0AC000, v9, v10, "Big failure: we were about to dereference garbage.  Please save your DA logs, and file a bug (length = %luu, offset = %lu)", &v20, 0x16u);
      }

      [(ASParseContext *)self setTrafficLogger:0];
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ASParseContext.m" lineNumber:262 description:{@"Big failure: we were about to dereference garbage.  Please save your DA logs, and file a bug"}];
    }
  }

  dataBuffers3 = [(ASParseContext *)self dataBuffers];
  v15 = [dataBuffers3 objectAtIndexedSubscript:0];
  bytes = [v15 bytes];
  v17 = *(bytes + [(ASParseContext *)self offsetIntoFirstData]);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unsigned)byteAtOffsetFromCurrentByte:(unsigned int)byte
{
  dataBuffers = [(ASParseContext *)self dataBuffers];
  v6 = [dataBuffers objectAtIndexedSubscript:0];

  v7 = [v6 length];
  if (v7 - [(ASParseContext *)self offsetIntoFirstData]<= byte)
  {
    v10 = [v6 length];
    offsetIntoFirstData = [(ASParseContext *)self offsetIntoFirstData];
    dataBuffers2 = [(ASParseContext *)self dataBuffers];
    v13 = [dataBuffers2 count];

    if (v13 < 2)
    {
LABEL_7:
      v9 = -1;
    }

    else
    {
      v14 = offsetIntoFirstData - v10 + byte;
      v15 = 2;
      v16 = 1;
      while (1)
      {
        dataBuffers3 = [(ASParseContext *)self dataBuffers];
        v18 = [dataBuffers3 objectAtIndexedSubscript:v16];

        if ([v18 length] > v14)
        {
          break;
        }

        v14 -= [v18 length];

        v16 = v15;
        dataBuffers4 = [(ASParseContext *)self dataBuffers];
        v20 = [dataBuffers4 count];

        if (v20 <= v15++)
        {
          goto LABEL_7;
        }
      }

      v9 = *([v18 bytes] + v14);
    }
  }

  else
  {
    bytes = [v6 bytes];
    v9 = *(bytes + [(ASParseContext *)self offsetIntoFirstData]+ byte);
  }

  return v9;
}

- (int)numTokensForNextString
{
  if ([(ASParseContext *)self hasNumberOfTokensRemaining:4])
  {
    v3 = [(ASParseContext *)self numberOfBytesUntilStringEnd:&unk_24A14E040 searchStringLength:2 acceptingBufferBits:0];
    if (v3 != -1)
    {
      v4 = v3;
      if ([(ASParseContext *)self hasNumberOfTokensRemaining:v3])
      {
        LODWORD(v3) = v4 - 1;
      }

      else
      {
        LODWORD(v3) = -1;
      }
    }
  }

  else
  {
    LODWORD(v3) = -1;
  }

  return v3;
}

- (int)_numTokensForNextOpaqueDataCheckNumTokens:(BOOL)tokens
{
  tokensCopy = tokens;
  if (tokens && ![(ASParseContext *)self hasNumberOfTokensRemaining:4])
  {
    return -1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 4;
  do
  {
    v8 = (v5 + 2);
    v9 = v6;
    while (1)
    {
      v10 = v8;
      v11 = [(ASParseContext *)self byteAtOffsetFromCurrentByte:v8];
      if (tokensCopy)
      {
        break;
      }

      v6 = v11 & 0x7F | (v9 << 7);
      v8 = (v10 + 1);
      v9 = v6;
      if ((v11 & 0x80000000) == 0)
      {
        return v6 + v10;
      }
    }

    if (![(ASParseContext *)self hasNumberOfTokensRemaining:v7])
    {
      return -1;
    }

    v7 = (v7 + 1);
    v6 = v11 & 0x7F | (v9 << 7);
    v5 = v10 - 1;
  }

  while (v11 < 0);
  if (![(ASParseContext *)self hasNumberOfTokensRemaining:(v6 + v10 + 2)])
  {
    return -1;
  }

  return v6 + v10;
}

- (int)numTokensStreamableForNextStringSizeOfTerminator:(int *)terminator
{
  result = [(ASParseContext *)self numberOfBytesUntilStringEnd:&unk_24A14E043 searchStringLength:1 acceptingBufferBits:0];
  if (result == -1)
  {
    result = [(ASParseContext *)self numberOfBytesUntilStringEnd:&unk_24A14E043 searchStringLength:1 acceptingBufferBits:1];
    if (!terminator)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    if (!terminator)
    {
      return result;
    }

    v6 = 1;
  }

  *terminator = v6;
  return result;
}

- (void)flushLogs
{
  trafficLogger = [(ASParseContext *)self trafficLogger];
  [trafficLogger flushLogs];
}

- (void)invalidateBuffers
{
  [(ASParseContext *)self setDataBuffers:0];
  [(ASParseContext *)self setBypassedDataBuffers:0];
  [(ASParseContext *)self setOffsetIntoFirstData:0];

  [(ASParseContext *)self setCurOffset:0];
}

- (void)numberOfBytesUntilStringEnd:(uint64_t)a1 searchStringLength:(uint64_t)a2 acceptingBufferBits:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASParseContext.m" lineNumber:82 description:@"You can only look for string endings if that ending is <= 2 characters long"];
}

- (void)numberOfBytesUntilStringEnd:searchStringLength:acceptingBufferBits:.cold.2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint32_t DADownsizeOrDie(NSUInteger)"];
  [v1 handleFailureInFunction:v0 file:@"DAUtils.h" lineNumber:25 description:@"That number was ridiculous"];
}

@end