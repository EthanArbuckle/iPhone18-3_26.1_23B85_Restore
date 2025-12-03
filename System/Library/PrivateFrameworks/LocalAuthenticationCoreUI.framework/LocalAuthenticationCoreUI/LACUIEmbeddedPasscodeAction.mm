@interface LACUIEmbeddedPasscodeAction
- (LACUIEmbeddedPasscodeAction)initWithAction:(id)action;
- (LACUIEmbeddedPasscodeAction)initWithIdentifier:(unint64_t)identifier value:(id)value;
@end

@implementation LACUIEmbeddedPasscodeAction

- (LACUIEmbeddedPasscodeAction)initWithAction:(id)action
{
  actionCopy = action;
  rawIdentifier = [actionCopy rawIdentifier];
  rawValue = [actionCopy rawValue];

  v7 = [(LACUIEmbeddedPasscodeAction *)self initWithIdentifier:rawIdentifier value:rawValue];
  return v7;
}

- (LACUIEmbeddedPasscodeAction)initWithIdentifier:(unint64_t)identifier value:(id)value
{
  v5.receiver = self;
  v5.super_class = LACUIEmbeddedPasscodeAction;
  return [(LACUIHostedSceneAction *)&v5 initWithRawIdentifier:identifier value:value];
}

@end