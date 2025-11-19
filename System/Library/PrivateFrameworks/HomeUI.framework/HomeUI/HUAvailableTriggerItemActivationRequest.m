@interface HUAvailableTriggerItemActivationRequest
- (BOOL)isSameAsRequest:(id)a3;
- (HUAvailableTriggerItem)item;
- (HUAvailableTriggerItemActivationRequest)initWithItem:(id)a3 active:(BOOL)a4;
@end

@implementation HUAvailableTriggerItemActivationRequest

- (HUAvailableTriggerItemActivationRequest)initWithItem:(id)a3 active:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HUAvailableTriggerItemActivationRequest;
  v7 = [(HUAvailableTriggerItemActivationRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, v6);
    v8->_active = a4;
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    completionFuture = v8->_completionFuture;
    v8->_completionFuture = v9;
  }

  return v8;
}

- (BOOL)isSameAsRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(HUAvailableTriggerItemActivationRequest *)self item];
  if ([v5 isEqual:v6])
  {
    v7 = [v4 active];
    v8 = v7 ^ [(HUAvailableTriggerItemActivationRequest *)self active]^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (HUAvailableTriggerItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end