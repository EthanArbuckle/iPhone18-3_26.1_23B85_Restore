@interface CRKCertificatesRequestResult
+ (id)invalidResult;
+ (id)resultWithCertificateDataCollection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResult:(id)a3;
- (CRKCertificatesRequestResult)initWithCoder:(id)a3;
- (CRKCertificatesRequestResult)initWithIsValidRequest:(BOOL)a3 certificateDataCollection:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKCertificatesRequestResult

- (CRKCertificatesRequestResult)initWithIsValidRequest:(BOOL)a3 certificateDataCollection:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CRKCertificatesRequestResult;
  v7 = [(CRKCertificatesRequestResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_validRequest = a3;
    v9 = [v6 copy];
    certificateDataCollection = v8->_certificateDataCollection;
    v8->_certificateDataCollection = v9;
  }

  return v8;
}

+ (id)invalidResult
{
  v2 = [[a1 alloc] initWithIsValidRequest:0 certificateDataCollection:0];

  return v2;
}

+ (id)resultWithCertificateDataCollection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIsValidRequest:1 certificateDataCollection:v4];

  return v5;
}

- (CRKCertificatesRequestResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKCertificatesRequestResult;
  v5 = [(CRKCertificatesRequestResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validRequest"];
    v5->_validRequest = [v6 BOOLValue];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"certificateDataCollection"];
    certificateDataCollection = v5->_certificateDataCollection;
    v5->_certificateDataCollection = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[CRKCertificatesRequestResult isValidRequest](self, "isValidRequest")}];
  [v5 encodeObject:v6 forKey:@"validRequest"];

  v7 = [(CRKCertificatesRequestResult *)self certificateDataCollection];
  [v5 encodeObject:v7 forKey:@"certificateDataCollection"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKCertificatesRequestResult isValidRequest](self, "isValidRequest")}];
  v4 = [v3 hash];
  v5 = [(CRKCertificatesRequestResult *)self certificateDataCollection];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CRKCertificatesRequestResult isEqual:];
    }

    v7 = [(CRKCertificatesRequestResult *)self isEqualToResult:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToResult:(id)a3
{
  v4 = a3;
  v5 = [v4 isValidRequest];
  if (v5 == [(CRKCertificatesRequestResult *)self isValidRequest])
  {
    v7 = [v4 certificateDataCollection];
    v8 = [(CRKCertificatesRequestResult *)self certificateDataCollection];
    v6 = [v7 isEqualToArray:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CRKCertificatesRequestResult *)self isValidRequest];
  v6 = [(CRKCertificatesRequestResult *)self certificateDataCollection];
  v7 = [v4 initWithIsValidRequest:v5 certificateDataCollection:v6];

  return v7;
}

- (void)isEqual:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKCertificatesRequestResult isEqual:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKCertificatesRequestResult.m" lineNumber:78 description:{@"expected %@, got %@", v2, v4}];
}

@end