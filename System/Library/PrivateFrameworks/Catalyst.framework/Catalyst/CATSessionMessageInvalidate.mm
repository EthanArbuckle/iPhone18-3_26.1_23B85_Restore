@interface CATSessionMessageInvalidate
- (CATSessionMessageInvalidate)initWithCoder:(id)coder;
- (CATSessionMessageInvalidate)initWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATSessionMessageInvalidate

- (CATSessionMessageInvalidate)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CATSessionMessageInvalidate;
  v6 = [(CATMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (CATSessionMessageInvalidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CATSessionMessageInvalidate;
  v5 = [(CATMessage *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"error"];
    error = v5->_error;
    v5->_error = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CATSessionMessageInvalidate;
  coderCopy = coder;
  [(CATMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CATSessionMessageInvalidate *)self error:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"error"];
}

@end