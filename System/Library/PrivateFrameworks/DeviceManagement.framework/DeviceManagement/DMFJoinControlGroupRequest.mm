@interface DMFJoinControlGroupRequest
- (DMFJoinControlGroupRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFJoinControlGroupRequest

- (DMFJoinControlGroupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DMFJoinControlGroupRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"leaderIdentifiers"];
    leaderIdentifiers = v5->_leaderIdentifiers;
    v5->_leaderIdentifiers = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = DMFJoinControlGroupRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(DMFJoinControlGroupRequest *)self groupIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"groupIdentifier"];

  leaderIdentifiers = [(DMFJoinControlGroupRequest *)self leaderIdentifiers];
  [coderCopy encodeObject:leaderIdentifiers forKey:@"leaderIdentifiers"];

  expirationDate = [(DMFJoinControlGroupRequest *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];
}

@end