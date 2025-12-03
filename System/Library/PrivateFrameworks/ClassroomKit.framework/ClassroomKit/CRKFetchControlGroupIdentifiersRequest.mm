@interface CRKFetchControlGroupIdentifiersRequest
- (CRKFetchControlGroupIdentifiersRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchControlGroupIdentifiersRequest

- (CRKFetchControlGroupIdentifiersRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKFetchControlGroupIdentifiersRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeTemporary"];
    v5->_includeTemporary = [v6 BOOLValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"leaderIdentifier"];
    leaderIdentifier = v5->_leaderIdentifier;
    v5->_leaderIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchControlGroupIdentifiersRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFetchControlGroupIdentifiersRequest includeTemporary](self, "includeTemporary", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"includeTemporary"];

  leaderIdentifier = [(CRKFetchControlGroupIdentifiersRequest *)self leaderIdentifier];
  [coderCopy encodeObject:leaderIdentifier forKey:@"leaderIdentifier"];
}

@end