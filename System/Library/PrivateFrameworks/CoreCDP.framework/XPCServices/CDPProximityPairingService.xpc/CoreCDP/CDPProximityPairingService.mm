@interface CDPProximityPairingService
- (void)startCircleApplicationApprovalServerWithContext:(id)a3 serverStarted:(id)a4;
@end

@implementation CDPProximityPairingService

- (void)startCircleApplicationApprovalServerWithContext:(id)a3 serverStarted:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CDPDSecureChannelContext alloc];
  v9 = [[CDPCircleProxyImpl alloc] initWithContext:v6];
  v10 = [v8 initWithContext:v6 circleProxy:v9];

  v16 = 0;
  v11 = [v10 initialize:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = [[CDPDSecureChannelController alloc] initWithContext:v10];
    v14 = [(CDPProximityPairingService *)self onProxCompletion];
    [v13 startCircleApplicationApprovalServerWithContext:v6 serverStarted:v7 completion:v14];

LABEL_5:
    goto LABEL_6;
  }

  v15 = [(CDPProximityPairingService *)self onProxCompletion];

  if (v15)
  {
    v13 = [(CDPProximityPairingService *)self onProxCompletion];
    (*(v13 + 2))(v13, 0, v12);
    goto LABEL_5;
  }

LABEL_6:
}

@end