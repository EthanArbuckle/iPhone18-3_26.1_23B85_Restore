@interface DIIdentityDocument
- (DIIdentityDocument)initWithEncryptedData:(id)a3;
@end

@implementation DIIdentityDocument

- (DIIdentityDocument)initWithEncryptedData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DIIdentityDocument;
  v6 = [(DIIdentityDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encryptedData, a3);
  }

  return v7;
}

@end