@interface NSData(NanoPassKit)
- (id)asHexString;
- (id)npkDescription;
@end

@implementation NSData(NanoPassKit)

- (id)npkDescription
{
  v2 = [self length];
  bytes = [self bytes];
  v4 = [objc_allocWithZone(MEMORY[0x277CCAB68]) initWithCapacity:512];
  [v4 appendFormat:@"{length = %lu, bytes = 0x", v2];
  if (v2 < 0x19)
  {
    for (; v2; --v2)
    {
      v8 = *bytes++;
      v7 = v8;
      v9 = (v8 >> 4) | 0x30;
      v10 = (v8 >> 4) + 87;
      if (v8 < 0xA0)
      {
        LOBYTE(v10) = v9;
      }

      bytes[0] = v10;
      v11 = v7 & 0xF;
      v12 = v7 & 0xF | 0x30;
      v13 = (v7 & 0xF) + 87;
      if (v11 < 0xA)
      {
        v13 = v12;
      }

      bytes[1] = v13;
      v14 = CFStringCreateWithBytes(0, bytes, 2, 0x600u, 0);
      [v4 appendString:v14];
      CFRelease(v14);
    }
  }

  else
  {
    v5 = -4;
    do
    {
      v5 += 4;
      append4Bytes(v4, &bytes[v5]);
    }

    while (v5 < 0xC);
    [v4 appendString:@"... "];
    v6 = v2 - 8;
    do
    {
      append4Bytes(v4, &bytes[v6]);
      v6 += 4;
    }

    while (v6 < v2);
  }

  [v4 appendString:@"}"];

  return v4;
}

- (id)asHexString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  if ([self length])
  {
    v3 = 0;
    do
    {
      [v2 appendFormat:@"%02X", *(objc_msgSend(self, "bytes") + v3++)];
    }

    while (v3 < [self length]);
  }

  return v2;
}

@end