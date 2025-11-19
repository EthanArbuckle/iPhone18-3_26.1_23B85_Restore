@interface TCDumpField
- (TCDumpField)initWithType:(id)a3 name:(id)a4;
@end

@implementation TCDumpField

- (TCDumpField)initWithType:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TCDumpField;
  v9 = [(TCDumpField *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mType, a3);
    objc_storeStrong(&v10->mName, a4);
  }

  return v10;
}

@end