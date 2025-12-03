@interface LiveFSClientServiceSource
- (LiveFSClientServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier;
@end

@implementation LiveFSClientServiceSource

- (LiveFSClientServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier
{
  extensionCopy = extension;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = LiveFSClientServiceSource;
  v9 = [(LiveFSClientServiceSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->ex, extension);
    objc_storeStrong(&v10->ident, identifier);
  }

  return v10;
}

@end