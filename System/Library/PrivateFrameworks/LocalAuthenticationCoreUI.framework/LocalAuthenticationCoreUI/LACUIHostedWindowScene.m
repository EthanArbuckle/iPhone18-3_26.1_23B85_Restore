@interface LACUIHostedWindowScene
- (void)handleAction:(id)a3 completion:(id)a4;
- (void)sendAction:(id)a3 completion:(id)a4;
@end

@implementation LACUIHostedWindowScene

- (void)handleAction:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(LACUIHostedWindowScene *)self keyWindow];
  v8 = [v7 rootViewController];

  v9 = [(LACUIHostedWindowScene *)self delegate];
  v10 = [v9 conformsToProtocol:&unk_28682F428];

  if (v10)
  {
    v11 = [(LACUIHostedWindowScene *)self delegate];
    if ([v11 handlesAction:v13])
    {
      if (v11)
      {
LABEL_9:
        [v11 handleAction:v13 completion:v6];
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([v8 conformsToProtocol:&unk_28682F428])
  {
    v11 = v8;
    if ([v11 handlesAction:v13])
    {
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cannot handle action: %@", self, v13];
  v12 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v11];
  v6[2](v6, v12);

LABEL_12:
}

- (void)sendAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LACUIHostedSceneActionClientToHost alloc] initWithAction:v7 completion:v6];

  [(_UIHostedWindowScene *)self sendAction:v8];
}

@end