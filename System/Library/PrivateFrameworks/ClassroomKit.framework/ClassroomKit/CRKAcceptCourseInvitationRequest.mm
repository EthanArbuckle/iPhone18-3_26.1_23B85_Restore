@interface CRKAcceptCourseInvitationRequest
- (CRKAcceptCourseInvitationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKAcceptCourseInvitationRequest

- (CRKAcceptCourseInvitationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRKAcceptCourseInvitationRequest;
  v5 = [(CATTaskRequest *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"pin"];
    pin = v5->_pin;
    v5->_pin = v10;

    v12 = [v4 decodePropertyListForKey:@"studentInformation"];
    studentInformation = v5->_studentInformation;
    v5->_studentInformation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKAcceptCourseInvitationRequest *)self courseIdentifier];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKAcceptCourseInvitationRequest *)self pin];
  [v4 encodeObject:v6 forKey:@"pin"];

  v7 = [(CRKAcceptCourseInvitationRequest *)self studentInformation];
  [v4 encodeObject:v7 forKey:@"studentInformation"];
}

@end