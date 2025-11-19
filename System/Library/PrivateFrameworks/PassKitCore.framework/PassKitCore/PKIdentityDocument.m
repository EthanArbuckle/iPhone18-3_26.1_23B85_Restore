@interface PKIdentityDocument
- (PKIdentityDocument)initWithDIIdentityDocument:(id)a3;
- (id)description;
@end

@implementation PKIdentityDocument

- (PKIdentityDocument)initWithDIIdentityDocument:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKIdentityDocument;
  v6 = [(PKIdentityDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKIdentityDocument *)self encryptedData];
  [v3 appendFormat:@"encryptedData: %@ ", v4];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end