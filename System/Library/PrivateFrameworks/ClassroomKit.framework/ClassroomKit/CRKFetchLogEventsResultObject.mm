@interface CRKFetchLogEventsResultObject
- (CRKFetchLogEventsResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchLogEventsResultObject

- (CRKFetchLogEventsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CRKFetchLogEventsResultObject;
  v5 = [(CATTaskResultObject *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"eventLog"];
    eventLog = v5->_eventLog;
    v5->_eventLog = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"currentDate"];
    currentDate = v5->_currentDate;
    v5->_currentDate = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"sessionToken"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKFetchLogEventsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchLogEventsResultObject *)self eventLog:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"eventLog"];

  currentDate = [(CRKFetchLogEventsResultObject *)self currentDate];
  [coderCopy encodeObject:currentDate forKey:@"currentDate"];

  sessionToken = [(CRKFetchLogEventsResultObject *)self sessionToken];
  [coderCopy encodeObject:sessionToken forKey:@"sessionToken"];
}

@end