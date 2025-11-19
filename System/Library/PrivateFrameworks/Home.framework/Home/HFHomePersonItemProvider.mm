@interface HFHomePersonItemProvider
- (HFHomePersonItemProvider)initWithHome:(id)a3;
- (HFHomePersonItemProvider)initWithHome:(id)a3 personManager:(id)a4;
@end

@implementation HFHomePersonItemProvider

- (HFHomePersonItemProvider)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [v4 personManager];
  v8.receiver = self;
  v8.super_class = HFHomePersonItemProvider;
  v6 = [(HFPersonItemProvider *)&v8 initWithHome:v4 personManager:v5];

  return v6;
}

- (HFHomePersonItemProvider)initWithHome:(id)a3 personManager:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFPersonItemProvider.m" lineNumber:129 description:{@"%s is unavailable; use %@ instead", "-[HFHomePersonItemProvider initWithHome:personManager:]", v7}];

  return 0;
}

@end