@interface NSData(CRDT)
- (uint64_t)initWithICCRCoder:()CRDT;
- (uint64_t)mergeWith:()CRDT;
@end

@implementation NSData(CRDT)

- (uint64_t)mergeWith:()CRDT
{
  result = [self isEqual:?];
  if ((result & 1) == 0)
  {
    v2 = MEMORY[0x277D36198];

    return [v2 handleFailedAssertWithCondition:"[self isEqual:other]" functionName:"-[NSData(CRDT) mergeWith:]" simulateCrash:1 showAlert:0 format:@"Cannot merge NSData with different value."];
  }

  return result;
}

- (uint64_t)initWithICCRCoder:()CRDT
{
  v4 = [a3 decodeDataForKey:@"self"];

  return v4;
}

@end