@interface CRKFetchActiveRestrictionUUIDsRequest
- (CRKFetchActiveRestrictionUUIDsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchActiveRestrictionUUIDsRequest

- (CRKFetchActiveRestrictionUUIDsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRKFetchActiveRestrictionUUIDsRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"clientType"];
    clientType = v5->_clientType;
    v5->_clientType = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchActiveRestrictionUUIDsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchActiveRestrictionUUIDsRequest *)self clientType:v6.receiver];
  [v4 encodeObject:v5 forKey:@"clientType"];
}

@end