@interface HAPTLVUnsignedNumberValue
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5;
- (id)_serialize;
- (id)description;
@end

@implementation HAPTLVUnsignedNumberValue

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HAPTLVNumberValueBase *)self value];
  v4 = [v2 stringWithFormat:@"<HAPTLVUnsignedNumberValue value=%llu>", objc_msgSend(v3, "unsignedLongLongValue")];

  return v4;
}

- (id)_serialize
{
  v2 = [(HAPTLVNumberValueBase *)self value];
  v3 = HAPTLVWriteUInt64([v2 unsignedLongLongValue]);

  return v3;
}

- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5
{
  v5 = MEMORY[0x277CCABB0];
  v6 = HAPTLVParseUInt64(a3, a4, a5);

  return [v5 numberWithUnsignedLongLong:v6];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPTLVUnsignedNumberValue);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPTLVNumberValueBase *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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