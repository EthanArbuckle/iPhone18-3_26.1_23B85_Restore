@interface EMModifyHighImpactAction
- (EMModifyHighImpactAction)initWithCoder:(id)a3;
- (EMModifyHighImpactAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 highImpactChange:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMModifyHighImpactAction

- (EMModifyHighImpactAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 highImpactChange:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = EMModifyHighImpactAction;
  result = [(EMMessageChangeAction *)&v8 initWithMessageListItems:a3 origin:a4 actor:a5];
  if (result)
  {
    result->_highImpactChange = a6;
  }

  return result;
}

- (EMModifyHighImpactAction)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMModifyHighImpactAction;
  v5 = [(EMMessageChangeAction *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_highImpactChange = [v4 decodeIntegerForKey:@"EFPropertyKey_highImpactChange"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = EMModifyHighImpactAction;
  [(EMMessageChangeAction *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[EMModifyHighImpactAction highImpactChange](self forKey:{"highImpactChange"), @"EFPropertyKey_highImpactChange"}];
}

@end