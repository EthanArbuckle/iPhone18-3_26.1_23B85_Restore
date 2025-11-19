@interface ECLabelChangeMessageAction
- (ECLabelChangeMessageAction)initWithBuilder:(id)a3;
@end

@implementation ECLabelChangeMessageAction

- (ECLabelChangeMessageAction)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECLabelChangeMessageAction;
  v5 = [(ECLabelChangeMessageAction *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

@end