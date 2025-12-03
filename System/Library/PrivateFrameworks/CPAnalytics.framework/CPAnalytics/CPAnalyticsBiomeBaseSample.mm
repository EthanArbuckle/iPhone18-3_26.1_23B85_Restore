@interface CPAnalyticsBiomeBaseSample
- (CPAnalyticsBiomeBaseSample)initWithIdentifier:(id)identifier andDate:(id)date forSubset:(id)subset;
@end

@implementation CPAnalyticsBiomeBaseSample

- (CPAnalyticsBiomeBaseSample)initWithIdentifier:(id)identifier andDate:(id)date forSubset:(id)subset
{
  identifierCopy = identifier;
  dateCopy = date;
  subsetCopy = subset;
  v17.receiver = self;
  v17.super_class = CPAnalyticsBiomeBaseSample;
  v12 = [(CPAnalyticsBiomeBaseSample *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_date, date);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      subsetCopy = subsetCopy;
LABEL_6:
      subset = v13->_subset;
      v13->_subset = subsetCopy;

      goto LABEL_7;
    }

    if (subsetCopy)
    {
      subsetCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", subsetCopy];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v13;
}

@end