@interface CRKFetchCourseInvitationsResultObject
- (CRKFetchCourseInvitationsResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchCourseInvitationsResultObject

- (CRKFetchCourseInvitationsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CRKFetchCourseInvitationsResultObject;
  v5 = [(CATTaskResultObject *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"courseInvitations"];
    courseInvitations = v5->_courseInvitations;
    v5->_courseInvitations = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"acceptedInvitationIdentifiers"];
    acceptedInvitationIdentifiers = v5->_acceptedInvitationIdentifiers;
    v5->_acceptedInvitationIdentifiers = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchCourseInvitationsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchCourseInvitationsResultObject *)self courseInvitations:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseInvitations"];

  acceptedInvitationIdentifiers = [(CRKFetchCourseInvitationsResultObject *)self acceptedInvitationIdentifiers];
  [coderCopy encodeObject:acceptedInvitationIdentifiers forKey:@"acceptedInvitationIdentifiers"];
}

@end