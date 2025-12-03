@interface HMPerson(HMI)
- (id)createHMIPerson;
- (uint64_t)initWithHMIPerson:()HMI;
@end

@implementation HMPerson(HMI)

- (id)createHMIPerson
{
  v2 = objc_alloc(MEMORY[0x277D14DB0]);
  uUID = [self UUID];
  name = [self name];
  v5 = [v2 initWithUUID:uUID name:name];

  return v5;
}

- (uint64_t)initWithHMIPerson:()HMI
{
  v4 = a3;
  uUID = [v4 UUID];
  v6 = [self initWithUUID:uUID];
  v7 = [v6 mutableCopy];

  name = [v4 name];

  [v7 setName:name];
  v9 = [v7 copy];

  return v9;
}

@end