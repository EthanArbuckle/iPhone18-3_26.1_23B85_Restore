@interface NSString(CRDT_Additions)
- (uint64_t)initWithICCRCoder:()CRDT_Additions;
- (uint64_t)mergeWith:()CRDT_Additions;
@end

@implementation NSString(CRDT_Additions)

- (uint64_t)mergeWith:()CRDT_Additions
{
  result = [a1 isEqual:?];
  if ((result & 1) == 0)
  {
    v2 = MEMORY[0x277D36198];

    return [v2 handleFailedAssertWithCondition:"[self isEqual:other]" functionName:"-[NSString(CRDT_Additions) mergeWith:]" simulateCrash:1 showAlert:0 format:@"Cannot merge NSString with different value."];
  }

  return result;
}

- (uint64_t)initWithICCRCoder:()CRDT_Additions
{
  v4 = [a3 decodeStringForKey:@"self"];
  v5 = [a1 initWithString:v4];

  return v5;
}

@end