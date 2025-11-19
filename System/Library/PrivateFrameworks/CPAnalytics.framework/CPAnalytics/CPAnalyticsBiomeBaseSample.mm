@interface CPAnalyticsBiomeBaseSample
- (CPAnalyticsBiomeBaseSample)initWithIdentifier:(id)a3 andDate:(id)a4 forSubset:(id)a5;
@end

@implementation CPAnalyticsBiomeBaseSample

- (CPAnalyticsBiomeBaseSample)initWithIdentifier:(id)a3 andDate:(id)a4 forSubset:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CPAnalyticsBiomeBaseSample;
  v12 = [(CPAnalyticsBiomeBaseSample *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_date, a4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
LABEL_6:
      subset = v13->_subset;
      v13->_subset = v14;

      goto LABEL_7;
    }

    if (v11)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v11];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v13;
}

@end