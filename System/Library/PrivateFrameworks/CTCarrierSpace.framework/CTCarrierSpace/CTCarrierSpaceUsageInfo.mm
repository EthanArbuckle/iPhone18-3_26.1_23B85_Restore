@interface CTCarrierSpaceUsageInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceUsageInfo)init;
- (CTCarrierSpaceUsageInfo)initWithCoder:(id)coder;
- (id)description;
@end

@implementation CTCarrierSpaceUsageInfo

- (CTCarrierSpaceUsageInfo)init
{
  v7.receiver = self;
  v7.super_class = CTCarrierSpaceUsageInfo;
  v2 = [(CTCarrierSpaceUsageInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    accountMetrics = v2->_accountMetrics;
    v2->_accountMetrics = 0;

    moreDetailsURL = v3->_moreDetailsURL;
    v3->_moreDetailsURL = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  accountMetrics = [(CTCarrierSpaceUsageInfo *)self accountMetrics];
  [v3 appendFormat:@" accountMetrics=%@", accountMetrics];

  moreDetailsURL = [(CTCarrierSpaceUsageInfo *)self moreDetailsURL];
  [v3 appendFormat:@", moreDetailsURL=%@", moreDetailsURL];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accountMetrics = [(CTCarrierSpaceUsageInfo *)self accountMetrics];
      accountMetrics2 = [(CTCarrierSpaceUsageInfo *)equalCopy accountMetrics];
      if (accountMetrics == accountMetrics2)
      {
        v9 = 1;
      }

      else
      {
        accountMetrics3 = [(CTCarrierSpaceUsageInfo *)self accountMetrics];
        accountMetrics4 = [(CTCarrierSpaceUsageInfo *)equalCopy accountMetrics];
        v9 = [accountMetrics3 isEqual:accountMetrics4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTCarrierSpaceUsageInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTCarrierSpaceUsageInfo;
  v5 = [(CTCarrierSpaceUsageInfo *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"account_metrics"];
    accountMetrics = v5->_accountMetrics;
    v5->_accountMetrics = v9;
  }

  return v5;
}

@end