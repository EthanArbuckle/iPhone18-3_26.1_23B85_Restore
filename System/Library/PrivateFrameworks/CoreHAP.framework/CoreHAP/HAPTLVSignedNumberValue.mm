@interface HAPTLVSignedNumberValue
+ (id)parsedFromData:(id)data error:(id *)error;
- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status;
- (id)_serialize;
- (id)description;
@end

@implementation HAPTLVSignedNumberValue

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  value = [(HAPTLVNumberValueBase *)self value];
  v4 = [v2 stringWithFormat:@"<HAPTLVSignedNumberValue value=%lld>", objc_msgSend(value, "longLongValue")];

  return v4;
}

- (id)_serialize
{
  value = [(HAPTLVNumberValueBase *)self value];
  v3 = HAPTLVWriteSInt64([value longLongValue]);

  return v3;
}

- (id)_parseFromData:(const char *)data length:(unint64_t)length status:(int *)status
{
  v5 = MEMORY[0x277CCABB0];
  v6 = HAPTLVParseSInt64(data, length, status);

  return [v5 numberWithLongLong:v6];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPTLVSignedNumberValue);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPTLVNumberValueBase *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end