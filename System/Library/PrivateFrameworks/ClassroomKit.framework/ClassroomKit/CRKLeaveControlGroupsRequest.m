@interface CRKLeaveControlGroupsRequest
- (CRKLeaveControlGroupsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKLeaveControlGroupsRequest

- (CRKLeaveControlGroupsRequest)initWithCoder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CRKLeaveControlGroupsRequest *)a2 initWithCoder:?];
  }

  v13.receiver = self;
  v13.super_class = CRKLeaveControlGroupsRequest;
  v6 = [(CATTaskRequest *)&v13 initWithCoder:v5];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v5 decodeObjectOfClasses:v9 forKey:@"groupIdentifiers"];
    groupIdentifiers = v6->_groupIdentifiers;
    v6->_groupIdentifiers = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CRKLeaveControlGroupsRequest *)a2 encodeWithCoder:?];
  }

  v7.receiver = self;
  v7.super_class = CRKLeaveControlGroupsRequest;
  [(CATTaskRequest *)&v7 encodeWithCoder:v5];
  v6 = [(CRKLeaveControlGroupsRequest *)self groupIdentifiers];
  [v5 encodeObject:v6 forKey:@"groupIdentifiers"];
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