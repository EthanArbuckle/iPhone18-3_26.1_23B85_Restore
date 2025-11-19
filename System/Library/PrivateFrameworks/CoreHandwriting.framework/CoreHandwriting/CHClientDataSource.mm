@interface CHClientDataSource
- (CHClientDataSource)initWithStrokeProvider:(id)a3 calculateDocumentProvider:(id)a4;
@end

@implementation CHClientDataSource

- (CHClientDataSource)initWithStrokeProvider:(id)a3 calculateDocumentProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHClientDataSource;
  v9 = [(CHClientDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeProviderSnapshot, a3);
    objc_storeStrong(&v10->_calculateDocumentProviderSnapshot, a4);
  }

  return v10;
}

@end