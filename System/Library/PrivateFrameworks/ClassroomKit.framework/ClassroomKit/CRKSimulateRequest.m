@interface CRKSimulateRequest
- (CRKSimulateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSimulateRequest

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKSimulateRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [(CRKSimulateRequest *)self IDSLocalConfiguration:v6.receiver];
  [v4 encodeObject:v5 forKey:@"IDSLocalConfiguration"];
}

- (CRKSimulateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRKSimulateRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"IDSLocalConfiguration"];
    IDSLocalConfiguration = v5->_IDSLocalConfiguration;
    v5->_IDSLocalConfiguration = v7;
  }

  return v5;
}

@end