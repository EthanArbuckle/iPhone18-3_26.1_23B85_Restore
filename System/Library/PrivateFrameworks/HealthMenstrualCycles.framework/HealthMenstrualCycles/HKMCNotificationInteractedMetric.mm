@interface HKMCNotificationInteractedMetric
- (HKMCNotificationInteractedMetric)initWithCategory:(id)category action:(id)action;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCNotificationInteractedMetric

- (HKMCNotificationInteractedMetric)initWithCategory:(id)category action:(id)action
{
  categoryCopy = category;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = HKMCNotificationInteractedMetric;
  v9 = [(HKMCNotificationInteractedMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, category);
    objc_storeStrong(&v10->_action, action);
  }

  return v10;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  category = [(HKMCNotificationInteractedMetric *)self category];
  [v3 setObject:category forKeyedSubscript:@"category"];

  action = [(HKMCNotificationInteractedMetric *)self action];
  [v3 setObject:action forKeyedSubscript:@"action"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  category = [(HKMCNotificationInteractedMetric *)self category];
  action = [(HKMCNotificationInteractedMetric *)self action];
  v7 = [v3 stringWithFormat:@"<%@:%p category:%@ action:%@>", v4, self, category, action];

  return v7;
}

@end