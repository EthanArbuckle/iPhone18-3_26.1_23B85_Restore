@interface HUAvailableTriggerItemActivationRequest
- (BOOL)isSameAsRequest:(id)request;
- (HUAvailableTriggerItem)item;
- (HUAvailableTriggerItemActivationRequest)initWithItem:(id)item active:(BOOL)active;
@end

@implementation HUAvailableTriggerItemActivationRequest

- (HUAvailableTriggerItemActivationRequest)initWithItem:(id)item active:(BOOL)active
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = HUAvailableTriggerItemActivationRequest;
  v7 = [(HUAvailableTriggerItemActivationRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, itemCopy);
    v8->_active = active;
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    completionFuture = v8->_completionFuture;
    v8->_completionFuture = v9;
  }

  return v8;
}

- (BOOL)isSameAsRequest:(id)request
{
  requestCopy = request;
  item = [requestCopy item];
  item2 = [(HUAvailableTriggerItemActivationRequest *)self item];
  if ([item isEqual:item2])
  {
    active = [requestCopy active];
    v8 = active ^ [(HUAvailableTriggerItemActivationRequest *)self active]^ 1;
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