@interface CRKRemoveSignInHistoryEntriesRequest
- (CRKRemoveSignInHistoryEntriesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKRemoveSignInHistoryEntriesRequest

- (CRKRemoveSignInHistoryEntriesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKRemoveSignInHistoryEntriesRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKRemoveSignInHistoryEntriesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKRemoveSignInHistoryEntriesRequest *)self identifiers:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifiers"];
}

@end