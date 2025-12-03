@interface CRKFetchActiveRestrictionUUIDsRequest
- (CRKFetchActiveRestrictionUUIDsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchActiveRestrictionUUIDsRequest

- (CRKFetchActiveRestrictionUUIDsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKFetchActiveRestrictionUUIDsRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"clientType"];
    clientType = v5->_clientType;
    v5->_clientType = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchActiveRestrictionUUIDsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchActiveRestrictionUUIDsRequest *)self clientType:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"clientType"];
}

@end