@interface HMDFMF
+ (id)fmfStatusWithCoder:(id)coder;
+ (id)fmfStatusWithDict:(id)dict;
+ (id)fmfStatusWithMessage:(id)message;
+ (id)fmfStatusWithNumber:(id)number;
+ (id)fmfStatusWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMDFMF)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMDFMF

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDFMFStatusAsString([(HMDFMF *)self value]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      value = [(HMDFMF *)self value];
      v8 = value == [(HMDFMF *)v6 value];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSNumber)number
{
  v2 = MEMORY[0x277CCABB0];
  value = [(HMDFMF *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMDFMF *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"FMFStatus"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMDFMF *)self number];
  [coderCopy encodeObject:number forKey:@"FMFStatus"];
}

- (HMDFMF)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMDFMF;
    v5 = [(HMDFMF *)&v8 init];
    if (v5)
    {
      v5->_value = [numberCopy unsignedIntegerValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)fmfStatusWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FMFStatus"];

  v5 = [HMDFMF fmfStatusWithNumber:v4];

  return v5;
}

+ (id)fmfStatusWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"FMFStatus"];
  v4 = [HMDFMF fmfStatusWithNumber:v3];

  return v4;
}

+ (id)fmfStatusWithMessage:(id)message
{
  v3 = [message numberForKey:@"FMFStatus"];
  v4 = [HMDFMF fmfStatusWithNumber:v3];

  return v4;
}

+ (id)fmfStatusWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMDFMF alloc] initWithNumber:numberCopy];

  return v4;
}

+ (id)fmfStatusWithValue:(unint64_t)value
{
  v4 = [HMDFMF alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v6 = [(HMDFMF *)v4 initWithNumber:v5];

  return v6;
}

@end