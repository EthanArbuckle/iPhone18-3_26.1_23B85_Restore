@interface NSUUID(CRNSUUIDAdditions)
+ (id)Coherence_zero;
- (id)Coherence_shortDescription;
- (id)Coherence_xorWith:()CRNSUUIDAdditions;
- (uint64_t)Coherence_compare:()CRNSUUIDAdditions;
@end

@implementation NSUUID(CRNSUUIDAdditions)

+ (id)Coherence_zero
{
  if (Coherence_zero_once[0] != -1)
  {
    +[NSUUID(CRNSUUIDAdditions) Coherence_zero];
  }

  v1 = Coherence_zero_zero;

  return v1;
}

- (uint64_t)Coherence_compare:()CRNSUUIDAdditions
{
  v11 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v10 = 0;
  *uu2 = 0;
  v8 = 0;
  v4 = a3;
  [self getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  LODWORD(result) = uuid_compare(uu1, uu2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)Coherence_shortDescription
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0;
  [self getUUIDBytes:&v4];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", BYTE6(v5), HIBYTE(v5)];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)Coherence_xorWith:()CRNSUUIDAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0uLL;
  v8 = 0uLL;
  [self getUUIDBytes:&v9];
  [v4 getUUIDBytes:&v8];
  v9 = veorq_s8(v8, v9);
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v9];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end