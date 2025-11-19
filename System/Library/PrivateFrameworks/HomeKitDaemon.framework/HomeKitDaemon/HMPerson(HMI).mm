@interface HMPerson(HMI)
- (id)createHMIPerson;
- (uint64_t)initWithHMIPerson:()HMI;
@end

@implementation HMPerson(HMI)

- (id)createHMIPerson
{
  v2 = objc_alloc(MEMORY[0x277D14DB0]);
  v3 = [a1 UUID];
  v4 = [a1 name];
  v5 = [v2 initWithUUID:v3 name:v4];

  return v5;
}

- (uint64_t)initWithHMIPerson:()HMI
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [a1 initWithUUID:v5];
  v7 = [v6 mutableCopy];

  v8 = [v4 name];

  [v7 setName:v8];
  v9 = [v7 copy];

  return v9;
}

@end