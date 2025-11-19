@interface HAPNumberParser
- (HAPNumberParser)initWithTLVData:(id)a3;
@end

@implementation HAPNumberParser

- (HAPNumberParser)initWithTLVData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HAPNumberParser;
  v5 = [(HAPNumberParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v4 getBytes:&v5->_decodedNumber length:8];
  }

  return v6;
}

@end