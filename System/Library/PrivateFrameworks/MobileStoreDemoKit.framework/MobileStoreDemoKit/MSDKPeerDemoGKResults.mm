@interface MSDKPeerDemoGKResults
- (MSDKPeerDemoGKResults)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoGKResults

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoGKResults *)self enrollmentResult];
  v7 = [(MSDKPeerDemoGKResults *)self residualErrors];
  v8 = [v3 stringWithFormat:@"<%@[%p]: EnrollmentResult=%d ResidualErrors=%@>", v5, self, v6, v7];

  return v8;
}

- (MSDKPeerDemoGKResults)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MSDKPeerDemoGKResults;
  v5 = [(MSDKPeerDemoGKResults *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EnrollmentResult"];
    [(MSDKPeerDemoGKResults *)v5 setEnrollmentResult:v6 != 0];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ResidualErrors"];
    [(MSDKPeerDemoGKResults *)v5 setResidualErrors:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[MSDKPeerDemoGKResults enrollmentResult](self, "enrollmentResult")}];
  [v5 encodeObject:v6 forKey:@"EnrollmentResult"];

  v7 = [(MSDKPeerDemoGKResults *)self residualErrors];
  [v5 encodeObject:v7 forKey:@"ResidualErrors"];
}

@end