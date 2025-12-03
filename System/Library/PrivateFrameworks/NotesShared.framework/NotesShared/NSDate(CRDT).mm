@interface NSDate(CRDT)
- (uint64_t)initWithICCRCoder:()CRDT;
- (uint64_t)mergeWith:()CRDT;
- (void)encodeWithICCRCoder:()CRDT;
@end

@implementation NSDate(CRDT)

- (uint64_t)mergeWith:()CRDT
{
  result = [self isEqual:?];
  if ((result & 1) == 0)
  {
    v2 = MEMORY[0x277D36198];

    return [v2 handleFailedAssertWithCondition:"[self isEqual:other]" functionName:"-[NSDate(CRDT) mergeWith:]" simulateCrash:1 showAlert:0 format:@"Cannot merge NSDate with different value."];
  }

  return result;
}

- (uint64_t)initWithICCRCoder:()CRDT
{
  v4 = a3;
  if ([v4 hasDecodableValueForKey:@"doubleValue"])
  {
    v5 = MEMORY[0x277CBEAA8];
    [v4 decodeDoubleForKey:@"doubleValue"];
    v6 = [v5 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v6 = [self init];
  }

  return v6;
}

- (void)encodeWithICCRCoder:()CRDT
{
  v4 = a3;
  [self timeIntervalSince1970];
  [v4 encodeDouble:@"doubleValue" forKey:?];
}

@end