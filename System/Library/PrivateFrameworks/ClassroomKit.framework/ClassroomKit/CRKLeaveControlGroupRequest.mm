@interface CRKLeaveControlGroupRequest
- (CRKLeaveControlGroupRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKLeaveControlGroupRequest

- (CRKLeaveControlGroupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CRKLeaveControlGroupRequest;
  v5 = [(CATTaskRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"leaderIdentifiers"];
    leaderIdentifiers = v5->_leaderIdentifiers;
    v5->_leaderIdentifiers = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKLeaveControlGroupRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKLeaveControlGroupRequest *)self groupIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"groupIdentifier"];

  leaderIdentifiers = [(CRKLeaveControlGroupRequest *)self leaderIdentifiers];
  [coderCopy encodeObject:leaderIdentifiers forKey:@"leaderIdentifiers"];
}

@end