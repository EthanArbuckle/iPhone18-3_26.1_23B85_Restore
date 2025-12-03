@interface DYShaderProfiler
+ (id)extractShaderBinaryTextSegment:(id)segment;
- (DYShaderProfiler)init;
@end

@implementation DYShaderProfiler

- (DYShaderProfiler)init
{
  v6.receiver = self;
  v6.super_class = DYShaderProfiler;
  v2 = [(DYShaderProfiler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)extractShaderBinaryTextSegment:(id)segment
{
  segmentCopy = segment;
  binary = [segmentCopy binary];
  bytes = [binary bytes];

  if (bytes)
  {
    v6 = bytes + 8;
    for (i = bytes[4]; i; --i)
    {
      if (*v6 == 25)
      {
        break;
      }

      v6 = (v6 + v6[1]);
    }

    v8 = v6[16];
    if (v8)
    {
      v9 = v6 + 22;
      while (*v9 != 1163157343 || *(v9 + 3) != 5527621)
      {
        v9 += 20;
        if (!--v8)
        {
          goto LABEL_12;
        }
      }

      bytes = [MEMORY[0x277CBEA90] dataWithBytes:bytes + v9[8] length:v9[6]];
    }

    else
    {
LABEL_12:
      bytes = 0;
    }
  }

  return bytes;
}

@end