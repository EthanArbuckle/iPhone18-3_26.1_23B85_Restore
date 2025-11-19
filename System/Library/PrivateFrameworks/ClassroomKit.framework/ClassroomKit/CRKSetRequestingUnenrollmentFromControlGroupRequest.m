@interface CRKSetRequestingUnenrollmentFromControlGroupRequest
- (CRKSetRequestingUnenrollmentFromControlGroupRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetRequestingUnenrollmentFromControlGroupRequest

- (CRKSetRequestingUnenrollmentFromControlGroupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRKSetRequestingUnenrollmentFromControlGroupRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestingUnenroll"];
    v5->_requestingUnenroll = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKSetRequestingUnenrollmentFromControlGroupRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKSetRequestingUnenrollmentFromControlGroupRequest *)self groupIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"groupIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKSetRequestingUnenrollmentFromControlGroupRequest requestingUnenroll](self, "requestingUnenroll")}];
  [v4 encodeObject:v6 forKey:@"requestingUnenroll"];
}

@end