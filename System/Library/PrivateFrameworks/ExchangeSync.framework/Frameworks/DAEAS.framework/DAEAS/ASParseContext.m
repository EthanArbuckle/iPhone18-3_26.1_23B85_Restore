@interface ASParseContext
- (ASParseContext)init;
- (BOOL)advanceOffsetByAmount:(unsigned int)a3 retainLastToken:(BOOL)a4;
- (BOOL)hasNumberOfTokensRemaining:(unsigned int)a3;
- (id)bufferWithAllData;
- (int)_numTokensForNextOpaqueDataCheckNumTokens:(BOOL)a3;
- (int)numTokensForNextString;
- (int)numTokensStreamableForNextStringSizeOfTerminator:(int *)a3;
- (int)numberOfBytesUntilStringEnd:(char *)a3 searchStringLength:(int)a4 acceptingBufferBits:(BOOL)a5;
- (int64_t)goodSizeForBuffer;
- (unsigned)byteAtOffsetFromCurrentByte:(unsigned int)a3;
- (unsigned)currentByte;
- (void)addData:(id)a3;
- (void)dealloc;
- (void)flushLogs;
- (void)invalidateBuffers;
- (void)resetToZeroOffset;
- (void)setShouldLog:(BOOL)a3;
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

- (void)setShouldLog:(BOOL)a3
{
  if (a3)
  {
    v4 = [(ASParseContext *)self trafficLogger];

    if (!v4)
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

- (BOOL)hasNumberOfTokensRemaining:(unsigned int)a3
{
  v5 = [(ASParseContext *)self dataBuffers];
  v6 = [v5 count];

  if (!v6)
  {
    return 0;
  }

  v7 = [(ASParseContext *)self dataBuffers];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 length];
  v10 = v9 + ~[(ASParseContext *)self offsetIntoFirstData];

  if (v10 >= a3)
  {
    return 1;
  }

  v11 = [(ASParseContext *)self dataBuffers];
  v12 = [v11 count];

  if (v12 < 2)
  {
    return 0;
  }

  v13 = a3;
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = [(ASParseContext *)self dataBuffers];
    v17 = [v16 objectAtIndexedSubscript:v15];
    v10 += [v17 length];

    v18 = v10 >= v13;
    if (v10 >= v13)
    {
      break;
    }

    v15 = v14;
    v19 = [(ASParseContext *)self dataBuffers];
    v20 = [v19 count];
  }

  while (v20 > v14++);
  return v18;
}

- (int)numberOfBytesUntilStringEnd:(char *)a3 searchStringLength:(int)a4 acceptingBufferBits:(BOOL)a5
{
  v5 = a5;
  if (a4 >= 3)
  {
    [ASParseContext numberOfBytesUntilStringEnd:a2 searchStringLength:self acceptingBufferBits:?];
  }

  v9 = [(ASParseContext *)self dataBuffers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(ASParseContext *)self dataBuffers];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [v12 length];
    v14 = v13 - [(ASParseContext *)self offsetIntoFirstData];
    if (![(ASParseContext *)self lastFoundBufferWithoutLineEnding])
    {
      v33 = [v12 bytes];
      v34 = (v33 + [(ASParseContext *)self offsetIntoFirstData]);
      v35 = memmem(v34, v14, a3, a4);
      if (v35)
      {
        v36 = v35;
        [(ASParseContext *)self setLastFoundBufferWithoutLineEnding:0];
        [(ASParseContext *)self setNumTokensInBuffersWithoutLineEndings:0];
        [(ASParseContext *)self setLastLookedAtBufferHadStringEndPrefix:0];
        v31 = v36 + a4 - v34;
        goto LABEL_29;
      }

      if (a4 >= 2)
      {
        [(ASParseContext *)self setLastLookedAtBufferHadStringEndPrefix:v34[v14 - 1] == *a3];
      }
    }

    v40 = v14;
    if (!v5)
    {
      v15 = [(ASParseContext *)self dataBuffers];
      v16 = [v15 count];
      v17 = [(ASParseContext *)self lastFoundBufferWithoutLineEnding]+ 1;

      if (v16 <= v17)
      {
        goto LABEL_22;
      }
    }

    v18 = [(ASParseContext *)self lastFoundBufferWithoutLineEnding];
    v19 = v18 + 1;
    v20 = [(ASParseContext *)self dataBuffers];
    v21 = [v20 count];

    if (v21 > v19)
    {
      v22 = v18 + 2;
      while (1)
      {
        v23 = v12;
        v24 = [(ASParseContext *)self dataBuffers];
        v12 = [v24 objectAtIndexedSubscript:v19];

        if (a4 == 2 && -[ASParseContext lastLookedAtBufferHadStringEndPrefix](self, "lastLookedAtBufferHadStringEndPrefix") && *[v12 bytes] == a3[1])
        {
          break;
        }

        v25 = memmem([v12 bytes], objc_msgSend(v12, "length"), a3, a4);
        if (v25)
        {
          v37 = v25;
          v38 = [(ASParseContext *)self numTokensInBuffersWithoutLineEndings];
          v31 = v40 + a4 + v38 + v37 - [v12 bytes];
          goto LABEL_29;
        }

        if (a4 >= 2)
        {
          -[ASParseContext setLastLookedAtBufferHadStringEndPrefix:](self, "setLastLookedAtBufferHadStringEndPrefix:", *([v12 bytes] + objc_msgSend(v12, "length") - 1) == *a3);
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
        v28 = [(ASParseContext *)self dataBuffers];
        v29 = [v28 count];

        if (v29 <= v22++)
        {
          goto LABEL_20;
        }
      }

      v31 = v40 + [(ASParseContext *)self numTokensInBuffersWithoutLineEndings]+ 1;
      goto LABEL_29;
    }

LABEL_20:
    if (v5)
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
  v3 = [(ASParseContext *)self currentBytesReceivedCount];
  if (v3 == [(ASParseContext *)self curOffset])
  {
    return 0;
  }

  v5 = [(ASParseContext *)self dataBuffers];
  v6 = [v5 objectAtIndexedSubscript:0];
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
  v4 = [(ASParseContext *)self dataBuffers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 appendData:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)advanceOffsetByAmount:(unsigned int)a3 retainLastToken:(BOOL)a4
{
  v4 = a4;
  [(ASParseContext *)self setLastFoundBufferWithoutLineEnding:0];
  [(ASParseContext *)self setNumTokensInBuffersWithoutLineEndings:0];
  [(ASParseContext *)self setLastLookedAtBufferHadStringEndPrefix:0];
  v7 = [(ASParseContext *)self hasNumberOfTokensRemaining:a3 - !v4];
  if (v7)
  {
    v8 = [(ASParseContext *)self dataBuffers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = a3;
      while (1)
      {
        v11 = [(ASParseContext *)self dataBuffers];
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v12 length];
        v14 = v13 - [(ASParseContext *)self offsetIntoFirstData];

        if (v14 > v10)
        {
          break;
        }

        [(ASParseContext *)self setOffsetIntoFirstData:0];
        if ([(ASParseContext *)self keepPreviousData])
        {
          v15 = [(ASParseContext *)self bypassedDataBuffers];

          if (!v15)
          {
            v16 = objc_opt_new();
            [(ASParseContext *)self setBypassedDataBuffers:v16];
          }

          v17 = [(ASParseContext *)self bypassedDataBuffers];
          v18 = [(ASParseContext *)self dataBuffers];
          v19 = [v18 objectAtIndexedSubscript:0];
          [v17 addObject:v19];
        }

        v10 -= v14;
        v20 = [(ASParseContext *)self dataBuffers];
        [v20 removeObjectAtIndex:0];

        v21 = [(ASParseContext *)self dataBuffers];
        v22 = [v21 count];

        if (!v22)
        {
          goto LABEL_12;
        }
      }

      [(ASParseContext *)self setOffsetIntoFirstData:[(ASParseContext *)self offsetIntoFirstData]+ v10];
    }

LABEL_12:
    [(ASParseContext *)self setCurOffset:[(ASParseContext *)self curOffset]+ a3];
  }

  return v7;
}

- (void)resetToZeroOffset
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASParseContext.m" lineNumber:229 description:@"You can't reset a parse context if you didn't tell it to keep around the previous data"];
}

- (void)addData:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    v4 = [(ASParseContext *)self dataBuffers];

    if (!v4)
    {
      v5 = objc_opt_new();
      [(ASParseContext *)self setDataBuffers:v5];
    }

    [(ASParseContext *)self setDataGeneration:[(ASParseContext *)self dataGeneration]+ 1];
    -[ASParseContext setCurrentBytesReceivedCount:](self, "setCurrentBytesReceivedCount:", -[ASParseContext currentBytesReceivedCount](self, "currentBytesReceivedCount") + [v8 length]);
    v6 = [(ASParseContext *)self dataBuffers];
    [v6 addObject:v8];

    if (getDALogLevel() >= 6)
    {
      v7 = [(ASParseContext *)self trafficLogger];
      [v7 logWBXMLData:v8];
    }
  }
}

- (unsigned)currentByte
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(ASParseContext *)self logFileHandle];

  if (v4)
  {
    v5 = [(ASParseContext *)self offsetIntoFirstData];
    v6 = [(ASParseContext *)self dataBuffers];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 length];

    if (v5 >= v8)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [(ASParseContext *)self dataBuffers];
        v12 = [v11 objectAtIndexedSubscript:0];
        v20 = 134218240;
        v21 = [v12 length];
        v22 = 2048;
        v23 = [(ASParseContext *)self offsetIntoFirstData];
        _os_log_impl(&dword_24A0AC000, v9, v10, "Big failure: we were about to dereference garbage.  Please save your DA logs, and file a bug (length = %luu, offset = %lu)", &v20, 0x16u);
      }

      [(ASParseContext *)self setTrafficLogger:0];
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"ASParseContext.m" lineNumber:262 description:{@"Big failure: we were about to dereference garbage.  Please save your DA logs, and file a bug"}];
    }
  }

  v14 = [(ASParseContext *)self dataBuffers];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 bytes];
  v17 = *(v16 + [(ASParseContext *)self offsetIntoFirstData]);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unsigned)byteAtOffsetFromCurrentByte:(unsigned int)a3
{
  v5 = [(ASParseContext *)self dataBuffers];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v6 length];
  if (v7 - [(ASParseContext *)self offsetIntoFirstData]<= a3)
  {
    v10 = [v6 length];
    v11 = [(ASParseContext *)self offsetIntoFirstData];
    v12 = [(ASParseContext *)self dataBuffers];
    v13 = [v12 count];

    if (v13 < 2)
    {
LABEL_7:
      v9 = -1;
    }

    else
    {
      v14 = v11 - v10 + a3;
      v15 = 2;
      v16 = 1;
      while (1)
      {
        v17 = [(ASParseContext *)self dataBuffers];
        v18 = [v17 objectAtIndexedSubscript:v16];

        if ([v18 length] > v14)
        {
          break;
        }

        v14 -= [v18 length];

        v16 = v15;
        v19 = [(ASParseContext *)self dataBuffers];
        v20 = [v19 count];

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
    v8 = [v6 bytes];
    v9 = *(v8 + [(ASParseContext *)self offsetIntoFirstData]+ a3);
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

- (int)_numTokensForNextOpaqueDataCheckNumTokens:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(ASParseContext *)self hasNumberOfTokensRemaining:4])
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
      if (v3)
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

- (int)numTokensStreamableForNextStringSizeOfTerminator:(int *)a3
{
  result = [(ASParseContext *)self numberOfBytesUntilStringEnd:&unk_24A14E043 searchStringLength:1 acceptingBufferBits:0];
  if (result == -1)
  {
    result = [(ASParseContext *)self numberOfBytesUntilStringEnd:&unk_24A14E043 searchStringLength:1 acceptingBufferBits:1];
    if (!a3)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v6 = 1;
  }

  *a3 = v6;
  return result;
}

- (void)flushLogs
{
  v2 = [(ASParseContext *)self trafficLogger];
  [v2 flushLogs];
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