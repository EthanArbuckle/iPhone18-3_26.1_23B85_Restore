@interface ECLabelChangeMessageAction
- (ECLabelChangeMessageAction)initWithBuilder:(id)builder;
@end

@implementation ECLabelChangeMessageAction

- (ECLabelChangeMessageAction)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECLabelChangeMessageAction;
  v5 = [(ECLabelChangeMessageAction *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

@end