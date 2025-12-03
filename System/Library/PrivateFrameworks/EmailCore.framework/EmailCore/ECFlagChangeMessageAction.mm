@interface ECFlagChangeMessageAction
- (ECFlagChangeMessageAction)initWithBuilder:(id)builder;
@end

@implementation ECFlagChangeMessageAction

- (ECFlagChangeMessageAction)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECFlagChangeMessageAction;
  v5 = [(ECFlagChangeMessageAction *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

@end