@interface DTAssetResponseService
- (id)canContinueServingRequestWithIdentifier:(id)identifier;
- (void)messageReceived:(id)received;
@end

@implementation DTAssetResponseService

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  v4 = +[DTAssetResponseBroker sharedBroker];
  [v4 forwardMessage:receivedCopy];
}

- (id)canContinueServingRequestWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCABB0];
  identifierCopy = identifier;
  v5 = +[DTAssetResponseBroker sharedBroker];
  v6 = [v5 canContinueServingRequestWithIdentifier:identifierCopy];

  v7 = [v3 numberWithBool:v6];

  return v7;
}

@end