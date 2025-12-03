@interface ECFlagChangeUndownloadedMessageAction
- (ECFlagChangeUndownloadedMessageAction)initWithBuilder:(id)builder;
@end

@implementation ECFlagChangeUndownloadedMessageAction

- (ECFlagChangeUndownloadedMessageAction)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECFlagChangeUndownloadedMessageAction;
  v5 = [(ECFlagChangeUndownloadedMessageAction *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

@end