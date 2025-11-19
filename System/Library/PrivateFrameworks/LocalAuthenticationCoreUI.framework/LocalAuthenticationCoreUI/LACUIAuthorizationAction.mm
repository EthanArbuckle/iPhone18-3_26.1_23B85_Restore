@interface LACUIAuthorizationAction
- (LACUIAuthorizationAction)initWithAction:(id)a3;
- (LACUIAuthorizationAction)initWithIdentifier:(unint64_t)a3 value:(id)a4;
@end

@implementation LACUIAuthorizationAction

- (LACUIAuthorizationAction)initWithAction:(id)a3
{
  v4 = a3;
  v5 = [v4 rawIdentifier];
  v6 = [v4 rawValue];

  v7 = [(LACUIAuthorizationAction *)self initWithIdentifier:v5 value:v6];
  return v7;
}

- (LACUIAuthorizationAction)initWithIdentifier:(unint64_t)a3 value:(id)a4
{
  v5.receiver = self;
  v5.super_class = LACUIAuthorizationAction;
  return [(LACUIHostedSceneAction *)&v5 initWithRawIdentifier:a3 value:a4];
}

@end