@interface BBCommunicationContext(testing)
- (id)imageDataForContentURL;
@end

@implementation BBCommunicationContext(testing)

- (id)imageDataForContentURL
{
  v1 = MEMORY[0x277D77F48];
  contentURL = [self contentURL];
  v3 = [v1 imageDataForContentURL:contentURL];

  return v3;
}

@end