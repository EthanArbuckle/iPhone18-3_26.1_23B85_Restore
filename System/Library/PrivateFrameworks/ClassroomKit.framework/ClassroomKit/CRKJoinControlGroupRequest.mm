@interface CRKJoinControlGroupRequest
- (CRKJoinControlGroupRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKJoinControlGroupRequest

- (CRKJoinControlGroupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKJoinControlGroupRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"invitation"];
    invitation = v5->_invitation;
    v5->_invitation = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKJoinControlGroupRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKJoinControlGroupRequest *)self invitation:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"invitation"];
}

@end