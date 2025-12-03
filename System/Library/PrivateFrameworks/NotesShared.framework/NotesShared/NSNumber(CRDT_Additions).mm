@interface NSNumber(CRDT_Additions)
- (uint64_t)initWithICCRCoder:()CRDT_Additions;
- (void)encodeWithICCRCoder:()CRDT_Additions;
- (void)mergeWith:()CRDT_Additions;
@end

@implementation NSNumber(CRDT_Additions)

- (void)mergeWith:()CRDT_Additions
{
  v5 = a3;
  if (([self isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot merge NSNumber with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

- (uint64_t)initWithICCRCoder:()CRDT_Additions
{
  v4 = a3;
  if ([v4 hasDecodableValueForKey:@"integerValue"])
  {
    v5 = [self initWithInteger:{objc_msgSend(v4, "decodeInt32ForKey:", @"integerValue"}];
  }

  else if ([v4 hasDecodableValueForKey:@"doubleValue"])
  {
    [v4 decodeDoubleForKey:@"doubleValue"];
    v5 = [self initWithDouble:?];
  }

  else
  {
    v5 = [self init];
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithICCRCoder:()CRDT_Additions
{
  v5 = a3;
  Type = CFNumberGetType(self);
  if (Type <= kCFNumberCGFloatType)
  {
    if (((1 << Type) & 0xCF9E) != 0)
    {
      [v5 encodeInt64:-[__CFNumber integerValue](self forKey:{"integerValue"), @"integerValue"}];
    }

    else if (((1 << Type) & 0x13060) != 0)
    {
      [(__CFNumber *)self doubleValue];
      [v5 encodeDouble:@"doubleValue" forKey:?];
    }
  }
}

@end