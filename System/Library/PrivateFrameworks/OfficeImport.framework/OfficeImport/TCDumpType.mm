@interface TCDumpType
- (TCDumpType)initWithName:(id)a3;
@end

@implementation TCDumpType

- (TCDumpType)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TCDumpType;
  v6 = [(TCDumpType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mName, a3);
  }

  return v7;
}

@end