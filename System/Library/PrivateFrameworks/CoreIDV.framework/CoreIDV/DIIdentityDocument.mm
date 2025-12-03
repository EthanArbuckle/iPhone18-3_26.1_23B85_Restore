@interface DIIdentityDocument
- (DIIdentityDocument)initWithEncryptedData:(id)data;
@end

@implementation DIIdentityDocument

- (DIIdentityDocument)initWithEncryptedData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = DIIdentityDocument;
  v6 = [(DIIdentityDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encryptedData, data);
  }

  return v7;
}

@end