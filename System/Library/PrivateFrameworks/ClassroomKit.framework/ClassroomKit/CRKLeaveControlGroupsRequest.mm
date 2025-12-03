@interface CRKLeaveControlGroupsRequest
- (CRKLeaveControlGroupsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKLeaveControlGroupsRequest

- (CRKLeaveControlGroupsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
  {
    [(CRKLeaveControlGroupsRequest *)a2 initWithCoder:?];
  }

  v13.receiver = self;
  v13.super_class = CRKLeaveControlGroupsRequest;
  v6 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"groupIdentifiers"];
    groupIdentifiers = v6->_groupIdentifiers;
    v6->_groupIdentifiers = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
  {
    [(CRKLeaveControlGroupsRequest *)a2 encodeWithCoder:?];
  }

  v7.receiver = self;
  v7.super_class = CRKLeaveControlGroupsRequest;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  groupIdentifiers = [(CRKLeaveControlGroupsRequest *)self groupIdentifiers];
  [coderCopy encodeObject:groupIdentifiers forKey:@"groupIdentifiers"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKLeaveControlGroupsRequest.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"aDecoder"}];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKLeaveControlGroupsRequest.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"aCoder"}];
}

@end