@interface PSYTestInput
+ (id)testInputWithAction:(int64_t)action;
- (PSYTestInput)initWithCoder:(id)coder;
@end

@implementation PSYTestInput

+ (id)testInputWithAction:(int64_t)action
{
  v4 = objc_alloc_init(self);
  [v4 setAction:action];

  return v4;
}

- (PSYTestInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PSYTestInput;
  v5 = [(PSYTestInput *)&v7 init];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
  }

  return v5;
}

@end