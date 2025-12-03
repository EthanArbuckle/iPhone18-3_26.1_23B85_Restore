@interface CRKCertificatesRequestResult
+ (id)invalidResult;
+ (id)resultWithCertificateDataCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResult:(id)result;
- (CRKCertificatesRequestResult)initWithCoder:(id)coder;
- (CRKCertificatesRequestResult)initWithIsValidRequest:(BOOL)request certificateDataCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKCertificatesRequestResult

- (CRKCertificatesRequestResult)initWithIsValidRequest:(BOOL)request certificateDataCollection:(id)collection
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = CRKCertificatesRequestResult;
  v7 = [(CRKCertificatesRequestResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_validRequest = request;
    v9 = [collectionCopy copy];
    certificateDataCollection = v8->_certificateDataCollection;
    v8->_certificateDataCollection = v9;
  }

  return v8;
}

+ (id)invalidResult
{
  v2 = [[self alloc] initWithIsValidRequest:0 certificateDataCollection:0];

  return v2;
}

+ (id)resultWithCertificateDataCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [[self alloc] initWithIsValidRequest:1 certificateDataCollection:collectionCopy];

  return v5;
}

- (CRKCertificatesRequestResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKCertificatesRequestResult;
  v5 = [(CRKCertificatesRequestResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validRequest"];
    v5->_validRequest = [v6 BOOLValue];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"certificateDataCollection"];
    certificateDataCollection = v5->_certificateDataCollection;
    v5->_certificateDataCollection = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CRKCertificatesRequestResult isValidRequest](self, "isValidRequest")}];
  [coderCopy encodeObject:v6 forKey:@"validRequest"];

  certificateDataCollection = [(CRKCertificatesRequestResult *)self certificateDataCollection];
  [coderCopy encodeObject:certificateDataCollection forKey:@"certificateDataCollection"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKCertificatesRequestResult isValidRequest](self, "isValidRequest")}];
  v4 = [v3 hash];
  certificateDataCollection = [(CRKCertificatesRequestResult *)self certificateDataCollection];
  v6 = [certificateDataCollection hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (BOOL)isEqualToResult:(id)result
{
  resultCopy = result;
  isValidRequest = [resultCopy isValidRequest];
  if (isValidRequest == [(CRKCertificatesRequestResult *)self isValidRequest])
  {
    certificateDataCollection = [resultCopy certificateDataCollection];
    certificateDataCollection2 = [(CRKCertificatesRequestResult *)self certificateDataCollection];
    v6 = [certificateDataCollection isEqualToArray:certificateDataCollection2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isValidRequest = [(CRKCertificatesRequestResult *)self isValidRequest];
  certificateDataCollection = [(CRKCertificatesRequestResult *)self certificateDataCollection];
  v7 = [v4 initWithIsValidRequest:isValidRequest certificateDataCollection:certificateDataCollection];

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