@interface TCDumpType
- (TCDumpType)initWithName:(id)name;
@end

@implementation TCDumpType

- (TCDumpType)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TCDumpType;
  v6 = [(TCDumpType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mName, name);
  }

  return v7;
}

@end