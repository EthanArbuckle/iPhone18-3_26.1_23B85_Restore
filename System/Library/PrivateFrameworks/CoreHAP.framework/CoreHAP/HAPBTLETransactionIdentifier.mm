@interface HAPBTLETransactionIdentifier
+ (id)randomTransactionIdentifier;
+ (unsigned)generateRequestIdentifier;
- (BOOL)isEqual:(id)a3;
- (HAPBTLETransactionIdentifier)initWithUnsignedCharValue:(unsigned __int8)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
@end

@implementation HAPBTLETransactionIdentifier

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HAPBTLETransactionIdentifier *)self unsignedCharValue];
      v6 = v5 == [(HAPBTLETransactionIdentifier *)v4 unsignedCharValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HAPBTLETransactionIdentifier *)self shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  v8 = [v5 stringWithFormat:@"<%@%@, Identifier = %u>", v6, v7, -[HAPBTLETransactionIdentifier unsignedCharValue](self, "unsignedCharValue")];
  if (v3)
  {
  }

  return v8;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HAPBTLETransactionIdentifier)initWithUnsignedCharValue:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = HAPBTLETransactionIdentifier;
  result = [(HAPBTLETransactionIdentifier *)&v5 init];
  if (result)
  {
    result->_unsignedCharValue = a3;
  }

  return result;
}

+ (id)randomTransactionIdentifier
{
  v6 = 0;
  v2 = HMFRandomDataWithLength();
  [v2 getBytes:&v6 length:1];
  v3 = [HAPBTLETransactionIdentifier alloc];
  v4 = [(HAPBTLETransactionIdentifier *)v3 initWithUnsignedCharValue:v6];

  return v4;
}

+ (unsigned)generateRequestIdentifier
{
  v5 = 0;
  v2 = HMFRandomDataWithLength();
  [v2 getBytes:&v5 length:1];
  v3 = v5;

  return v3;
}

@end