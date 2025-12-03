@interface HAPComponent
- (HAPBTLECentralManagerDelegate)centralManagerDelegate;
- (HAPComponent)initWithDelegate:(id)delegate;
@end

@implementation HAPComponent

- (HAPBTLECentralManagerDelegate)centralManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->centralManagerDelegate);

  return WeakRetained;
}

- (HAPComponent)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(HAPComponent *)self init];
  v6 = v5;
  if (v5)
  {
    [(HAPComponent *)v5 setCentralManagerDelegate:delegateCopy];
  }

  return v6;
}

@end