@interface NSString(WFDataEncoding)
+ (id)wf_stringWithData:()WFDataEncoding;
@end

@implementation NSString(WFDataEncoding)

+ (id)wf_stringWithData:()WFDataEncoding
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    v5 = v4;
    if (!v4)
    {
      v8 = 0;
      [MEMORY[0x277CCACA8] stringEncodingForData:v3 encodingOptions:0 convertedString:&v8 usedLossyConversion:0];
      v5 = v8;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end