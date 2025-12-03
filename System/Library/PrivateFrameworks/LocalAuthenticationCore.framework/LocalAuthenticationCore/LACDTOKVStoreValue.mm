@interface LACDTOKVStoreValue
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (LACDTOKVStoreValue)initWithBoolValue:(BOOL)value;
- (LACDTOKVStoreValue)initWithByte:(unsigned __int8)byte;
- (LACDTOKVStoreValue)initWithData:(id)data;
- (LACDTOKVStoreValue)initWithIntegerValue:(int64_t)value;
- (int64_t)integerValue;
@end

@implementation LACDTOKVStoreValue

- (int64_t)integerValue
{
  data = [(LACDTOKVStoreValue *)self data];
  if (![data length])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

    return v6;
  }

  data2 = [(LACDTOKVStoreValue *)self data];
  v5 = [data2 length];

  if (v5 <= 8)
  {
    data = [(LACDTOKVStoreValue *)self data];
    v6 = *[data bytes];
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

- (LACDTOKVStoreValue)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = LACDTOKVStoreValue;
  v6 = [(LACDTOKVStoreValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (LACDTOKVStoreValue)initWithByte:(unsigned __int8)byte
{
  byteCopy = byte;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&byteCopy length:1];
  v5 = [(LACDTOKVStoreValue *)self initWithData:v4];

  return v5;
}

- (LACDTOKVStoreValue)initWithBoolValue:(BOOL)value
{
  valueCopy = value;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&valueCopy length:1];
  v5 = [(LACDTOKVStoreValue *)self initWithData:v4];

  return v5;
}

- (LACDTOKVStoreValue)initWithIntegerValue:(int64_t)value
{
  valueCopy = value;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&valueCopy length:8];
  v5 = [(LACDTOKVStoreValue *)self initWithData:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    data = [(LACDTOKVStoreValue *)self data];
    data2 = [v5 data];
    if (data == data2)
    {
      v10 = 1;
    }

    else
    {
      data3 = [(LACDTOKVStoreValue *)self data];
      data4 = [v5 data];
      v10 = [data3 isEqual:data4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end