@interface CRKFetchLogEventsResultObject
- (CRKFetchLogEventsResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchLogEventsResultObject

- (CRKFetchLogEventsResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CRKFetchLogEventsResultObject;
  v5 = [(CATTaskResultObject *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"eventLog"];
    eventLog = v5->_eventLog;
    v5->_eventLog = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"currentDate"];
    currentDate = v5->_currentDate;
    v5->_currentDate = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"sessionToken"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRKFetchLogEventsResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v8 encodeWithCoder:v4];
  v5 = [(CRKFetchLogEventsResultObject *)self eventLog:v8.receiver];
  [v4 encodeObject:v5 forKey:@"eventLog"];

  v6 = [(CRKFetchLogEventsResultObject *)self currentDate];
  [v4 encodeObject:v6 forKey:@"currentDate"];

  v7 = [(CRKFetchLogEventsResultObject *)self sessionToken];
  [v4 encodeObject:v7 forKey:@"sessionToken"];
}

@end