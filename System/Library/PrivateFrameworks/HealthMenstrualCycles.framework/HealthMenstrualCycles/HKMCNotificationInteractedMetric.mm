@interface HKMCNotificationInteractedMetric
- (HKMCNotificationInteractedMetric)initWithCategory:(id)a3 action:(id)a4;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCNotificationInteractedMetric

- (HKMCNotificationInteractedMetric)initWithCategory:(id)a3 action:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMCNotificationInteractedMetric;
  v9 = [(HKMCNotificationInteractedMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, a3);
    objc_storeStrong(&v10->_action, a4);
  }

  return v10;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HKMCNotificationInteractedMetric *)self category];
  [v3 setObject:v4 forKeyedSubscript:@"category"];

  v5 = [(HKMCNotificationInteractedMetric *)self action];
  [v3 setObject:v5 forKeyedSubscript:@"action"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMCNotificationInteractedMetric *)self category];
  v6 = [(HKMCNotificationInteractedMetric *)self action];
  v7 = [v3 stringWithFormat:@"<%@:%p category:%@ action:%@>", v4, self, v5, v6];

  return v7;
}

@end