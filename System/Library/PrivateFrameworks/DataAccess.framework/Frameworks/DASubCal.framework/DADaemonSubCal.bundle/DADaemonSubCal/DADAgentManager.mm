@interface DADAgentManager
- (void)handleWebcalURL:(id)l;
- (void)subCalWebcalHandlerFinishedSetup:(id)setup;
@end

@implementation DADAgentManager

- (void)handleWebcalURL:(id)l
{
  lCopy = l;
  v9 = objc_opt_new();
  subCalHandlers = [(DADAgentManager *)self subCalHandlers];

  if (!subCalHandlers)
  {
    v6 = objc_opt_new();
    [(DADAgentManager *)self setSubCalHandlers:v6];
  }

  subCalHandlers2 = [(DADAgentManager *)self subCalHandlers];
  [subCalHandlers2 addObject:v9];

  absoluteString = [lCopy absoluteString];

  [v9 handleWebcalURLString:absoluteString withConsumer:self];
}

- (void)subCalWebcalHandlerFinishedSetup:(id)setup
{
  setupCopy = setup;
  subCalHandlers = [(DADAgentManager *)self subCalHandlers];
  [subCalHandlers removeObject:setupCopy];
}

@end