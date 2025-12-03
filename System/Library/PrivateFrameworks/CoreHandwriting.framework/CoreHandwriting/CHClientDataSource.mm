@interface CHClientDataSource
- (CHClientDataSource)initWithStrokeProvider:(id)provider calculateDocumentProvider:(id)documentProvider;
@end

@implementation CHClientDataSource

- (CHClientDataSource)initWithStrokeProvider:(id)provider calculateDocumentProvider:(id)documentProvider
{
  providerCopy = provider;
  documentProviderCopy = documentProvider;
  v12.receiver = self;
  v12.super_class = CHClientDataSource;
  v9 = [(CHClientDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeProviderSnapshot, provider);
    objc_storeStrong(&v10->_calculateDocumentProviderSnapshot, documentProvider);
  }

  return v10;
}

@end