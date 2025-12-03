@interface HAPBTLETransactionIdentifier
+ (id)randomTransactionIdentifier;
+ (unsigned)generateRequestIdentifier;
- (BOOL)isEqual:(id)equal;
- (HAPBTLETransactionIdentifier)initWithUnsignedCharValue:(unsigned __int8)value;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
@end

@implementation HAPBTLETransactionIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedCharValue = [(HAPBTLETransactionIdentifier *)self unsignedCharValue];
      v6 = unsignedCharValue == [(HAPBTLETransactionIdentifier *)equalCopy unsignedCharValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPBTLETransactionIdentifier *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  v8 = [v5 stringWithFormat:@"<%@%@, Identifier = %u>", shortDescription, v7, -[HAPBTLETransactionIdentifier unsignedCharValue](self, "unsignedCharValue")];
  if (pointerCopy)
  {
  }

  return v8;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HAPBTLETransactionIdentifier)initWithUnsignedCharValue:(unsigned __int8)value
{
  v5.receiver = self;
  v5.super_class = HAPBTLETransactionIdentifier;
  result = [(HAPBTLETransactionIdentifier *)&v5 init];
  if (result)
  {
    result->_unsignedCharValue = value;
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