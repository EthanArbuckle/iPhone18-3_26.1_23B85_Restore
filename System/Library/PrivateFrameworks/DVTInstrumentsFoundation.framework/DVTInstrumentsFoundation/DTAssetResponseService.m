@interface DTAssetResponseService
- (id)canContinueServingRequestWithIdentifier:(id)a3;
- (void)messageReceived:(id)a3;
@end

@implementation DTAssetResponseService

- (void)messageReceived:(id)a3
{
  v3 = a3;
  v4 = +[DTAssetResponseBroker sharedBroker];
  [v4 forwardMessage:v3];
}

- (id)canContinueServingRequestWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  v5 = +[DTAssetResponseBroker sharedBroker];
  v6 = [v5 canContinueServingRequestWithIdentifier:v4];

  v7 = [v3 numberWithBool:v6];

  return v7;
}

@end