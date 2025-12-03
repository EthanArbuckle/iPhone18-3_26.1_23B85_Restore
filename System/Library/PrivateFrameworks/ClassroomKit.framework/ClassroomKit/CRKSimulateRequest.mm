@interface CRKSimulateRequest
- (CRKSimulateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSimulateRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKSimulateRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKSimulateRequest *)self IDSLocalConfiguration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"IDSLocalConfiguration"];
}

- (CRKSimulateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKSimulateRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"IDSLocalConfiguration"];
    IDSLocalConfiguration = v5->_IDSLocalConfiguration;
    v5->_IDSLocalConfiguration = v7;
  }

  return v5;
}

@end