@interface DADAgentManager
- (void)handleWebcalURL:(id)a3;
- (void)subCalWebcalHandlerFinishedSetup:(id)a3;
@end

@implementation DADAgentManager

- (void)handleWebcalURL:(id)a3
{
  v4 = a3;
  v9 = objc_opt_new();
  v5 = [(DADAgentManager *)self subCalHandlers];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(DADAgentManager *)self setSubCalHandlers:v6];
  }

  v7 = [(DADAgentManager *)self subCalHandlers];
  [v7 addObject:v9];

  v8 = [v4 absoluteString];

  [v9 handleWebcalURLString:v8 withConsumer:self];
}

- (void)subCalWebcalHandlerFinishedSetup:(id)a3
{
  v4 = a3;
  v5 = [(DADAgentManager *)self subCalHandlers];
  [v5 removeObject:v4];
}

@end