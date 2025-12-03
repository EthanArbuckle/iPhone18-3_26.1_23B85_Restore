@interface CRKAcceptCourseInvitationRequest
- (CRKAcceptCourseInvitationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKAcceptCourseInvitationRequest

- (CRKAcceptCourseInvitationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CRKAcceptCourseInvitationRequest;
  v5 = [(CATTaskRequest *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"pin"];
    pin = v5->_pin;
    v5->_pin = v10;

    v12 = [coderCopy decodePropertyListForKey:@"studentInformation"];
    studentInformation = v5->_studentInformation;
    v5->_studentInformation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  courseIdentifier = [(CRKAcceptCourseInvitationRequest *)self courseIdentifier];
  [coderCopy encodeObject:courseIdentifier forKey:@"courseIdentifier"];

  v6 = [(CRKAcceptCourseInvitationRequest *)self pin];
  [coderCopy encodeObject:v6 forKey:@"pin"];

  studentInformation = [(CRKAcceptCourseInvitationRequest *)self studentInformation];
  [coderCopy encodeObject:studentInformation forKey:@"studentInformation"];
}

@end