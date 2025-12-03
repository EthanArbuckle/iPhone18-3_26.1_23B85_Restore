@interface CRKSetRequestingUnenrollmentFromControlGroupRequest
- (CRKSetRequestingUnenrollmentFromControlGroupRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetRequestingUnenrollmentFromControlGroupRequest

- (CRKSetRequestingUnenrollmentFromControlGroupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKSetRequestingUnenrollmentFromControlGroupRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestingUnenroll"];
    v5->_requestingUnenroll = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKSetRequestingUnenrollmentFromControlGroupRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKSetRequestingUnenrollmentFromControlGroupRequest *)self groupIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"groupIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKSetRequestingUnenrollmentFromControlGroupRequest requestingUnenroll](self, "requestingUnenroll")}];
  [coderCopy encodeObject:v6 forKey:@"requestingUnenroll"];
}

@end