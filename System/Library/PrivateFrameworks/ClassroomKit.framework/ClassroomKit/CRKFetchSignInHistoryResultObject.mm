@interface CRKFetchSignInHistoryResultObject
- (CRKFetchSignInHistoryResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchSignInHistoryResultObject

- (CRKFetchSignInHistoryResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CRKFetchSignInHistoryResultObject;
  v5 = [(CATTaskResultObject *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"history"];
    history = v5->_history;
    v5->_history = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isTruncated"];
    v5->_isTruncated = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
    v5->_limit = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"historyVersion"];
    v5->_historyVersion = [v13 unsignedIntegerValue];

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"ownerAppleID"];
    ownerAppleID = v5->_ownerAppleID;
    v5->_ownerAppleID = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CRKFetchSignInHistoryResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v10 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchSignInHistoryResultObject *)self history:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"history"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFetchSignInHistoryResultObject isTruncated](self, "isTruncated")}];
  [coderCopy encodeObject:v6 forKey:@"isTruncated"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchSignInHistoryResultObject limit](self, "limit")}];
  [coderCopy encodeObject:v7 forKey:@"limit"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchSignInHistoryResultObject historyVersion](self, "historyVersion")}];
  [coderCopy encodeObject:v8 forKey:@"historyVersion"];

  ownerAppleID = [(CRKFetchSignInHistoryResultObject *)self ownerAppleID];
  [coderCopy encodeObject:ownerAppleID forKey:@"ownerAppleID"];
}

@end