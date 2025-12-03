@interface DOCSharedDocumentsSource
- (id)providerName;
@end

@implementation DOCSharedDocumentsSource

- (id)providerName
{
  displayName = [self displayName];

  return displayName;
}

@end