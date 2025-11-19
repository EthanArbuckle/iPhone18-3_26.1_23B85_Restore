@interface CRKFetchSignInHistoryResultObject
- (CRKFetchSignInHistoryResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchSignInHistoryResultObject

- (CRKFetchSignInHistoryResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CRKFetchSignInHistoryResultObject;
  v5 = [(CATTaskResultObject *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"history"];
    history = v5->_history;
    v5->_history = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isTruncated"];
    v5->_isTruncated = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
    v5->_limit = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"historyVersion"];
    v5->_historyVersion = [v13 unsignedIntegerValue];

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"ownerAppleID"];
    ownerAppleID = v5->_ownerAppleID;
    v5->_ownerAppleID = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CRKFetchSignInHistoryResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v10 encodeWithCoder:v4];
  v5 = [(CRKFetchSignInHistoryResultObject *)self history:v10.receiver];
  [v4 encodeObject:v5 forKey:@"history"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFetchSignInHistoryResultObject isTruncated](self, "isTruncated")}];
  [v4 encodeObject:v6 forKey:@"isTruncated"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchSignInHistoryResultObject limit](self, "limit")}];
  [v4 encodeObject:v7 forKey:@"limit"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchSignInHistoryResultObject historyVersion](self, "historyVersion")}];
  [v4 encodeObject:v8 forKey:@"historyVersion"];

  v9 = [(CRKFetchSignInHistoryResultObject *)self ownerAppleID];
  [v4 encodeObject:v9 forKey:@"ownerAppleID"];
}

@end