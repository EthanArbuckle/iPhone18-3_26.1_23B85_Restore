@interface TCDumpField
- (TCDumpField)initWithType:(id)type name:(id)name;
@end

@implementation TCDumpField

- (TCDumpField)initWithType:(id)type name:(id)name
{
  typeCopy = type;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = TCDumpField;
  v9 = [(TCDumpField *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mType, type);
    objc_storeStrong(&v10->mName, name);
  }

  return v10;
}

@end