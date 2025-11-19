@interface CRKFetchLogEventsRequest
- (CRKFetchLogEventsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchLogEventsRequest

- (CRKFetchLogEventsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKFetchLogEventsRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"cursorDate"];
    cursorDate = v5->_cursorDate;
    v5->_cursorDate = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sessionToken"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchLogEventsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchLogEventsRequest *)self cursorDate:v7.receiver];
  [v4 encodeObject:v5 forKey:@"cursorDate"];

  v6 = [(CRKFetchLogEventsRequest *)self sessionToken];
  [v4 encodeObject:v6 forKey:@"sessionToken"];
}

@end