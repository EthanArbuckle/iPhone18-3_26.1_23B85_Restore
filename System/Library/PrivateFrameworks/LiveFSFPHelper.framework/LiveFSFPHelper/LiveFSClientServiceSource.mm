@interface LiveFSClientServiceSource
- (LiveFSClientServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4;
@end

@implementation LiveFSClientServiceSource

- (LiveFSClientServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LiveFSClientServiceSource;
  v9 = [(LiveFSClientServiceSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->ex, a3);
    objc_storeStrong(&v10->ident, a4);
  }

  return v10;
}

@end