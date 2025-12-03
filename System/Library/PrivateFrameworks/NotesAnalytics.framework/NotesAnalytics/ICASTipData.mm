@interface ICASTipData
- (ICASTipData)initWithTipFeature:(id)feature;
- (id)toDict;
@end

@implementation ICASTipData

- (ICASTipData)initWithTipFeature:(id)feature
{
  featureCopy = feature;
  v9.receiver = self;
  v9.super_class = ICASTipData;
  v6 = [(ICASTipData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tipFeature, feature);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"tipFeature";
  tipFeature = [(ICASTipData *)self tipFeature];
  if (tipFeature)
  {
    tipFeature2 = [(ICASTipData *)self tipFeature];
  }

  else
  {
    tipFeature2 = objc_opt_new();
  }

  v5 = tipFeature2;
  v10[0] = tipFeature2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end