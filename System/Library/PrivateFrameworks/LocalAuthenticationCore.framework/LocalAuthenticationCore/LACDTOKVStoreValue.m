@interface LACDTOKVStoreValue
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)a3;
- (LACDTOKVStoreValue)initWithBoolValue:(BOOL)a3;
- (LACDTOKVStoreValue)initWithByte:(unsigned __int8)a3;
- (LACDTOKVStoreValue)initWithData:(id)a3;
- (LACDTOKVStoreValue)initWithIntegerValue:(int64_t)a3;
- (int64_t)integerValue;
@end

@implementation LACDTOKVStoreValue

- (int64_t)integerValue
{
  v3 = [(LACDTOKVStoreValue *)self data];
  if (![v3 length])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

    return v6;
  }

  v4 = [(LACDTOKVStoreValue *)self data];
  v5 = [v4 length];

  if (v5 <= 8)
  {
    v3 = [(LACDTOKVStoreValue *)self data];
    v6 = *[v3 bytes];
    goto LABEL_6;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)BOOLValue
{
  v3 = 1;
  v4 = [[LACDTOKVStoreValue alloc] initWithBoolValue:1];
  if (![(LACDTOKVStoreValue *)self isEqual:v4])
  {
    v5 = [[LACDTOKVStoreValue alloc] initWithIntegerValue:1];
    v3 = [(LACDTOKVStoreValue *)self isEqual:v5];
  }

  return v3;
}

- (LACDTOKVStoreValue)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACDTOKVStoreValue;
  v6 = [(LACDTOKVStoreValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (LACDTOKVStoreValue)initWithByte:(unsigned __int8)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:1];
  v5 = [(LACDTOKVStoreValue *)self initWithData:v4];

  return v5;
}

- (LACDTOKVStoreValue)initWithBoolValue:(BOOL)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:1];
  v5 = [(LACDTOKVStoreValue *)self initWithData:v4];

  return v5;
}

- (LACDTOKVStoreValue)initWithIntegerValue:(int64_t)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:8];
  v5 = [(LACDTOKVStoreValue *)self initWithData:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACDTOKVStoreValue *)self data];
    v7 = [v5 data];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(LACDTOKVStoreValue *)self data];
      v9 = [v5 data];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end