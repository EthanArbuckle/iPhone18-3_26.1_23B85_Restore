@interface PSYTestInput
+ (id)testInputWithAction:(int64_t)a3;
- (PSYTestInput)initWithCoder:(id)a3;
@end

@implementation PSYTestInput

+ (id)testInputWithAction:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setAction:a3];

  return v4;
}

- (PSYTestInput)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PSYTestInput;
  v5 = [(PSYTestInput *)&v7 init];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"action"];
  }

  return v5;
}

@end