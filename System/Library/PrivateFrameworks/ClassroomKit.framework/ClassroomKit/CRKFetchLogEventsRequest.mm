@interface CRKFetchLogEventsRequest
- (CRKFetchLogEventsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchLogEventsRequest

- (CRKFetchLogEventsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKFetchLogEventsRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"cursorDate"];
    cursorDate = v5->_cursorDate;
    v5->_cursorDate = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sessionToken"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchLogEventsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchLogEventsRequest *)self cursorDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"cursorDate"];

  sessionToken = [(CRKFetchLogEventsRequest *)self sessionToken];
  [coderCopy encodeObject:sessionToken forKey:@"sessionToken"];
}

@end