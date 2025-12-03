@interface MSDKPeerDemoGKResults
- (MSDKPeerDemoGKResults)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoGKResults

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  enrollmentResult = [(MSDKPeerDemoGKResults *)self enrollmentResult];
  residualErrors = [(MSDKPeerDemoGKResults *)self residualErrors];
  v8 = [v3 stringWithFormat:@"<%@[%p]: EnrollmentResult=%d ResidualErrors=%@>", v5, self, enrollmentResult, residualErrors];

  return v8;
}

- (MSDKPeerDemoGKResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MSDKPeerDemoGKResults;
  v5 = [(MSDKPeerDemoGKResults *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EnrollmentResult"];
    [(MSDKPeerDemoGKResults *)v5 setEnrollmentResult:v6 != 0];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ResidualErrors"];
    [(MSDKPeerDemoGKResults *)v5 setResidualErrors:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[MSDKPeerDemoGKResults enrollmentResult](self, "enrollmentResult")}];
  [coderCopy encodeObject:v6 forKey:@"EnrollmentResult"];

  residualErrors = [(MSDKPeerDemoGKResults *)self residualErrors];
  [coderCopy encodeObject:residualErrors forKey:@"ResidualErrors"];
}

@end