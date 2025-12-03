@interface NSData(ITKDataExtensions)
- (id)itk_md5;
- (id)itk_stringValue;
@end

@implementation NSData(ITKDataExtensions)

- (id)itk_md5
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, [self bytes], objc_msgSend(self, "length"));
  CC_MD5_Final(md, &c);
  string = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 16; ++i)
  {
    v4 = md[i];
    LODWORD(v5) = (v4 >> 4) + 87;
    if (v4 >= 0xA0)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v4 >> 4) | 0x30;
    }

    v6 = v4 & 0xF;
    LODWORD(v7) = v6 + 87;
    if (v6 >= 0xA)
    {
      v7 = v7;
    }

    else
    {
      v7 = v6 | 0x30;
    }

    [string appendFormat:@"%c%c", v5, v7];
  }

  return string;
}

- (id)itk_stringValue
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self encoding:4];

  return v1;
}

@end