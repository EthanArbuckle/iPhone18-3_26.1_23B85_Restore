@interface EMModifyHighImpactAction
- (EMModifyHighImpactAction)initWithCoder:(id)coder;
- (EMModifyHighImpactAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor highImpactChange:(unint64_t)change;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMModifyHighImpactAction

- (EMModifyHighImpactAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor highImpactChange:(unint64_t)change
{
  v8.receiver = self;
  v8.super_class = EMModifyHighImpactAction;
  result = [(EMMessageChangeAction *)&v8 initWithMessageListItems:items origin:origin actor:actor];
  if (result)
  {
    result->_highImpactChange = change;
  }

  return result;
}

- (EMModifyHighImpactAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EMModifyHighImpactAction;
  v5 = [(EMMessageChangeAction *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_highImpactChange = [coderCopy decodeIntegerForKey:@"EFPropertyKey_highImpactChange"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = EMModifyHighImpactAction;
  [(EMMessageChangeAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[EMModifyHighImpactAction highImpactChange](self forKey:{"highImpactChange"), @"EFPropertyKey_highImpactChange"}];
}

@end