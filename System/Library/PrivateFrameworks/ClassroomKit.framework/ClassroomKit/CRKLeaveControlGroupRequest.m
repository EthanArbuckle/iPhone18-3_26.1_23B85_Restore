@interface CRKLeaveControlGroupRequest
- (CRKLeaveControlGroupRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKLeaveControlGroupRequest

- (CRKLeaveControlGroupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRKLeaveControlGroupRequest;
  v5 = [(CATTaskRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"leaderIdentifiers"];
    leaderIdentifiers = v5->_leaderIdentifiers;
    v5->_leaderIdentifiers = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKLeaveControlGroupRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKLeaveControlGroupRequest *)self groupIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"groupIdentifier"];

  v6 = [(CRKLeaveControlGroupRequest *)self leaderIdentifiers];
  [v4 encodeObject:v6 forKey:@"leaderIdentifiers"];
}

@end