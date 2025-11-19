@interface NSUUID(Version5)
+ (id)hmf_UUIDWithNamespace:()Version5 data:salts:;
- (id)initWithNamespace:()Version5 data:;
@end

@implementation NSUUID(Version5)

- (id)initWithNamespace:()Version5 data:
{
  v5 = 0;
  v8[2] = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v8[0] = 0;
    v8[1] = 0;
    __NSUUIDCreateUUIDVersion5(v8, a3, a4, 0);
    a1 = [a1 initWithUUIDBytes:v8];
    v5 = a1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)hmf_UUIDWithNamespace:()Version5 data:salts:
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v9[1] = 0;
  __NSUUIDCreateUUIDVersion5(v9, a3, a4, a5);
  v6 = [[a1 alloc] initWithUUIDBytes:v9];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end