@interface LACUIHostedWindowScene
- (void)handleAction:(id)action completion:(id)completion;
- (void)sendAction:(id)action completion:(id)completion;
@end

@implementation LACUIHostedWindowScene

- (void)handleAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  keyWindow = [(LACUIHostedWindowScene *)self keyWindow];
  rootViewController = [keyWindow rootViewController];

  delegate = [(LACUIHostedWindowScene *)self delegate];
  v10 = [delegate conformsToProtocol:&unk_28682F428];

  if (v10)
  {
    delegate2 = [(LACUIHostedWindowScene *)self delegate];
    if ([delegate2 handlesAction:actionCopy])
    {
      if (delegate2)
      {
LABEL_9:
        [delegate2 handleAction:actionCopy completion:completionCopy];
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([rootViewController conformsToProtocol:&unk_28682F428])
  {
    delegate2 = rootViewController;
    if ([delegate2 handlesAction:actionCopy])
    {
      if (delegate2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  delegate2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cannot handle action: %@", self, actionCopy];
  v12 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:delegate2];
  completionCopy[2](completionCopy, v12);

LABEL_12:
}

- (void)sendAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  v8 = [[LACUIHostedSceneActionClientToHost alloc] initWithAction:actionCopy completion:completionCopy];

  [(_UIHostedWindowScene *)self sendAction:v8];
}

@end