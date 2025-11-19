@interface HAPComponent
- (HAPBTLECentralManagerDelegate)centralManagerDelegate;
- (HAPComponent)initWithDelegate:(id)a3;
@end

@implementation HAPComponent

- (HAPBTLECentralManagerDelegate)centralManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->centralManagerDelegate);

  return WeakRetained;
}

- (HAPComponent)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAPComponent *)self init];
  v6 = v5;
  if (v5)
  {
    [(HAPComponent *)v5 setCentralManagerDelegate:v4];
  }

  return v6;
}

@end