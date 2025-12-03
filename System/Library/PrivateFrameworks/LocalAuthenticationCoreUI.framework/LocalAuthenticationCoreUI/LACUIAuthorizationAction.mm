@interface LACUIAuthorizationAction
- (LACUIAuthorizationAction)initWithAction:(id)action;
- (LACUIAuthorizationAction)initWithIdentifier:(unint64_t)identifier value:(id)value;
@end

@implementation LACUIAuthorizationAction

- (LACUIAuthorizationAction)initWithAction:(id)action
{
  actionCopy = action;
  rawIdentifier = [actionCopy rawIdentifier];
  rawValue = [actionCopy rawValue];

  v7 = [(LACUIAuthorizationAction *)self initWithIdentifier:rawIdentifier value:rawValue];
  return v7;
}

- (LACUIAuthorizationAction)initWithIdentifier:(unint64_t)identifier value:(id)value
{
  v5.receiver = self;
  v5.super_class = LACUIAuthorizationAction;
  return [(LACUIHostedSceneAction *)&v5 initWithRawIdentifier:identifier value:value];
}

@end