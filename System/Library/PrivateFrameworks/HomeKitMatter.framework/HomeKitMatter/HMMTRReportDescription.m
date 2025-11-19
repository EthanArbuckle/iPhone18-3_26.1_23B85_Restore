@interface HMMTRReportDescription
- (HMMTRReportDescription)initWithClusterId:(id)a3 attributeIds:(id)a4 eventIds:(id)a5;
@end

@implementation HMMTRReportDescription

- (HMMTRReportDescription)initWithClusterId:(id)a3 attributeIds:(id)a4 eventIds:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMTRReportDescription;
  v12 = [(HMMTRReportDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clusterId, a3);
    objc_storeStrong(&v13->_attributeIds, a4);
    objc_storeStrong(&v13->_eventIds, a5);
  }

  return v13;
}

@end