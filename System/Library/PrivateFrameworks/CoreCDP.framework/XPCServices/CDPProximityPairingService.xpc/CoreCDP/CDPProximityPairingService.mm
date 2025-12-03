@interface CDPProximityPairingService
- (void)startCircleApplicationApprovalServerWithContext:(id)context serverStarted:(id)started;
@end

@implementation CDPProximityPairingService

- (void)startCircleApplicationApprovalServerWithContext:(id)context serverStarted:(id)started
{
  contextCopy = context;
  startedCopy = started;
  v8 = [CDPDSecureChannelContext alloc];
  v9 = [[CDPCircleProxyImpl alloc] initWithContext:contextCopy];
  v10 = [v8 initWithContext:contextCopy circleProxy:v9];

  v16 = 0;
  v11 = [v10 initialize:&v16];
  v12 = v16;
  if (v11)
  {
    onProxCompletion3 = [[CDPDSecureChannelController alloc] initWithContext:v10];
    onProxCompletion = [(CDPProximityPairingService *)self onProxCompletion];
    [onProxCompletion3 startCircleApplicationApprovalServerWithContext:contextCopy serverStarted:startedCopy completion:onProxCompletion];

LABEL_5:
    goto LABEL_6;
  }

  onProxCompletion2 = [(CDPProximityPairingService *)self onProxCompletion];

  if (onProxCompletion2)
  {
    onProxCompletion3 = [(CDPProximityPairingService *)self onProxCompletion];
    (*(onProxCompletion3 + 2))(onProxCompletion3, 0, v12);
    goto LABEL_5;
  }

LABEL_6:
}

@end