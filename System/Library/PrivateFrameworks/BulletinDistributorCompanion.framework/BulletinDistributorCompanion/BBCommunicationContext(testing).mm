@interface BBCommunicationContext(testing)
- (id)imageDataForContentURL;
@end

@implementation BBCommunicationContext(testing)

- (id)imageDataForContentURL
{
  v1 = MEMORY[0x277D77F48];
  v2 = [a1 contentURL];
  v3 = [v1 imageDataForContentURL:v2];

  return v3;
}

@end