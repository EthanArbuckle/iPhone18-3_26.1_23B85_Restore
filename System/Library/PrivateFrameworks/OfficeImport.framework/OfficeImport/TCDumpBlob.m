@interface TCDumpBlob
- (TCDumpBlob)initWithSize_:(unint64_t)a3;
- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5;
@end

@implementation TCDumpBlob

- (TCDumpBlob)initWithSize_:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TCDumpBlob;
  result = [(TCDumpType *)&v5 init];
  if (result)
  {
    result->mSize = a3;
  }

  return result;
}

- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  mSize = self->mSize;
  if (mSize)
  {
    v6 = 0;
    v7 = 0x277CCA000uLL;
    do
    {
      if (mSize - v6 >= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = mSize - v6;
      }

      if (fread(__ptr, 1uLL, v8, a3) != v8)
      {
        v9 = [*(v7 + 3240) stringWithUTF8String:"-[TCDumpBlob fromBinary:toXml:state:]"];
        v10 = [*(v7 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCDump.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:487 isFatal:0 description:"Unexpected number of bytes read"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v11 = xmlNewNode(0, "row");
      xmlAddChild(a4, v11);
      [*(v7 + 3240) stringWithFormat:@"%04lX", v6];
      v28 = v12 = v7;
      sfaxmlSetNSStringNoNsProp(v11, "offset", v28);
      if (mSize != v6)
      {
        if (v8 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v8;
        }

        v14 = __ptr;
        v15 = __str;
        v16 = 49;
        do
        {
          v17 = *v14++;
          snprintf(v15, v16, "%02X ", v17);
          v16 -= 3;
          v15 += 3;
          --v13;
        }

        while (v13);
      }

      __str[3 * v8 + 2] = 0;
      v7 = v12;
      v18 = [objc_alloc(*(v12 + 3240)) initWithUTF8String:__str];
      sfaxmlSetNSStringNoNsProp(v11, "hex", v18);
      if (mSize != v6)
      {
        if (v8 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v8;
        }

        v20 = v29;
        v21 = __ptr;
        do
        {
          v23 = *v21++;
          v22 = v23;
          if ((v23 - 127) < 0xFFFFFFA1)
          {
            v22 = 46;
          }

          *v20++ = v22;
          --v19;
        }

        while (v19);
      }

      v29[v8] = 0;
      v24 = [objc_alloc(*(v12 + 3240)) initWithUTF8String:v29];
      sfaxmlSetNSStringNoNsProp(v11, "chars", v24);

      v6 += v8;
      mSize = self->mSize;
    }

    while (v6 < mSize);
  }
}

@end