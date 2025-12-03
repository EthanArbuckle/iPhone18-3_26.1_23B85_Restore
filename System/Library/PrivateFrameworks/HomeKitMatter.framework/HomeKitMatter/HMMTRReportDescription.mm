@interface HMMTRReportDescription
- (HMMTRReportDescription)initWithClusterId:(id)id attributeIds:(id)ids eventIds:(id)eventIds;
@end

@implementation HMMTRReportDescription

- (HMMTRReportDescription)initWithClusterId:(id)id attributeIds:(id)ids eventIds:(id)eventIds
{
  idCopy = id;
  idsCopy = ids;
  eventIdsCopy = eventIds;
  v15.receiver = self;
  v15.super_class = HMMTRReportDescription;
  v12 = [(HMMTRReportDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clusterId, id);
    objc_storeStrong(&v13->_attributeIds, ids);
    objc_storeStrong(&v13->_eventIds, eventIds);
  }

  return v13;
}

@end