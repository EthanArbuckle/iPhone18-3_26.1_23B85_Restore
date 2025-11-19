@interface HAPTLVNumberValueBase
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPTLVNumberValueBase)init;
- (HAPTLVNumberValueBase)initWithValue:(id)a3;
- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5;
- (id)_serialize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPTLVNumberValueBase

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPTLVNumberValueBase *)self value];
      v7 = [(HAPTLVNumberValueBase *)v5 value];

      v8 = [v6 isEqualToNumber:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPTLVNumberValueBase allocWithZone:a3];
  v5 = [(HAPTLVNumberValueBase *)self value];
  v6 = [(HAPTLVNumberValueBase *)v4 initWithValue:v5];

  return v6;
}

- (id)_serialize
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)serializeWithError:(id *)a3
{
  if (a3 && ([(HAPTLVNumberValueBase *)self value], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v8 = v7;
    v6 = 0;
    *a3 = v7;
  }

  else
  {
    v6 = [(HAPTLVNumberValueBase *)self _serialize];
  }

  return v6;
}

- (id)_parseFromData:(const char *)a3 length:(unint64_t)a4 status:(int *)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v10 = 0;
    v7 = -[HAPTLVNumberValueBase _parseFromData:length:status:](self, "_parseFromData:length:status:", [v6 bytes], objc_msgSend(v6, "length"), &v10);
    v8 = v10 == 0;
    if (v10)
    {
      if (a4)
      {
        *a4 = HMErrorFromOSStatus(v10);
      }
    }

    else
    {
      [(HAPTLVNumberValueBase *)self setValue:v7];
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HAPTLVNumberValueBase)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAPTLVNumberValueBase;
  v6 = [(HAPTLVNumberValueBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

- (HAPTLVNumberValueBase)init
{
  v3.receiver = self;
  v3.super_class = HAPTLVNumberValueBase;
  return [(HAPTLVNumberValueBase *)&v3 init];
}

@end