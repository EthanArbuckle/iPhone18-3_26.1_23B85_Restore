@interface HFHomePersonItemProvider
- (HFHomePersonItemProvider)initWithHome:(id)home;
- (HFHomePersonItemProvider)initWithHome:(id)home personManager:(id)manager;
@end

@implementation HFHomePersonItemProvider

- (HFHomePersonItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  personManager = [homeCopy personManager];
  v8.receiver = self;
  v8.super_class = HFHomePersonItemProvider;
  v6 = [(HFPersonItemProvider *)&v8 initWithHome:homeCopy personManager:personManager];

  return v6;
}

- (HFHomePersonItemProvider)initWithHome:(id)home personManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPersonItemProvider.m" lineNumber:129 description:{@"%s is unavailable; use %@ instead", "-[HFHomePersonItemProvider initWithHome:personManager:]", v7}];

  return 0;
}

@end