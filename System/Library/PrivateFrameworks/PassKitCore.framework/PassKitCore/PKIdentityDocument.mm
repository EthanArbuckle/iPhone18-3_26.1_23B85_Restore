@interface PKIdentityDocument
- (PKIdentityDocument)initWithDIIdentityDocument:(id)document;
- (id)description;
@end

@implementation PKIdentityDocument

- (PKIdentityDocument)initWithDIIdentityDocument:(id)document
{
  documentCopy = document;
  v9.receiver = self;
  v9.super_class = PKIdentityDocument;
  v6 = [(PKIdentityDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, document);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  encryptedData = [(PKIdentityDocument *)self encryptedData];
  [v3 appendFormat:@"encryptedData: %@ ", encryptedData];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end