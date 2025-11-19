@interface NSUUID(CRDT_Additions)
+ (id)CR_repeatedCharUUID:()CRDT_Additions;
+ (id)CR_unknown;
+ (id)CR_unserialized;
+ (id)CR_zero;
- (id)CR_shortDescription;
- (uint64_t)CR_compare:()CRDT_Additions;
- (uint64_t)initWithICCRCoder:()CRDT_Additions;
- (void)encodeWithICCRCoder:()CRDT_Additions;
- (void)mergeWith:()CRDT_Additions;
@end

@implementation NSUUID(CRDT_Additions)

+ (id)CR_unserialized
{
  if (CR_unserialized_onceToken[0] != -1)
  {
    +[NSUUID(CRDT_Additions) CR_unserialized];
  }

  v1 = CR_unserialized_unserialized;

  return v1;
}

- (void)mergeWith:()CRDT_Additions
{
  v5 = a3;
  if (([a1 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot merge NSUUID with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

+ (id)CR_repeatedCharUUID:()CRDT_Additions
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x101010101010101 * a3;
  v5[1] = v5[0];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v5];

  return v3;
}

+ (id)CR_zero
{
  if (CR_zero_once != -1)
  {
    +[NSUUID(CRDT_Additions) CR_zero];
  }

  v1 = CR_zero_zero;

  return v1;
}

+ (id)CR_unknown
{
  if (CR_unknown_onceToken[0] != -1)
  {
    +[NSUUID(CRDT_Additions) CR_unknown];
  }

  v1 = CR_unknown_unserialized;

  return v1;
}

- (uint64_t)CR_compare:()CRDT_Additions
{
  v10 = *MEMORY[0x277D85DE8];
  *uu1 = 0;
  v9 = 0;
  *uu2 = 0;
  v7 = 0;
  v4 = a3;
  [a1 getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  return uuid_compare(uu1, uu2);
}

- (id)CR_shortDescription
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v3[1] = 0;
  [a1 getUUIDBytes:v3];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X", LOBYTE(v3[0]), BYTE1(v3[0])];

  return v1;
}

- (uint64_t)initWithICCRCoder:()CRDT_Additions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeUUIDFromUUIDIndex:{objc_msgSend(v4, "decodeUInt64ForKey:", @"UUIDIndex"}];

  v8[0] = 0;
  v8[1] = 0;
  [v5 getUUIDBytes:v8];
  v6 = [a1 initWithUUIDBytes:v8];

  return v6;
}

- (void)encodeWithICCRCoder:()CRDT_Additions
{
  v4 = a3;
  [v4 encodeUInt64:objc_msgSend(v4 forKey:{"encodeUUIDIndexFromUUID:", a1), @"UUIDIndex"}];
}

@end