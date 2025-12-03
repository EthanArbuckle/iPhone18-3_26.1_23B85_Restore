@interface HIDEventSystemClient
- (HIDEventSystemClient)initWithType:(int64_t)type andAttributes:(id)attributes;
- (NSArray)services;
- (id)propertyForKey:(id)key;
- (void)activate;
- (void)dealloc;
- (void)setCancelHandler:(id)handler;
- (void)setEventFilterHandler:(id)handler;
- (void)setEventHandler:(id)handler;
- (void)setMatching:(id)matching;
- (void)setPropertyChangedHandler:(id)handler matching:(id)matching;
- (void)setResetHandler:(id)handler;
- (void)setServiceNotificationHandler:(id)handler;
@end

@implementation HIDEventSystemClient

void __32__HIDEventSystemClient_activate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

- (void)dealloc
{
  client = self->_client;
  if (client)
  {
    CFRelease(client);
  }

  v4.receiver = self;
  v4.super_class = HIDEventSystemClient;
  [(HIDEventSystemClient *)&v4 dealloc];
}

- (void)activate
{
  os_unfair_recursive_lock_lock_with_options();
  self->_activated = 1;
  os_unfair_recursive_lock_unlock();
  client = self->_client;
  IOHIDEventSystemClientSetCancelHandler();
  v4 = self->_client;
  IOHIDEventSystemClientActivate();
}

- (HIDEventSystemClient)initWithType:(int64_t)type andAttributes:(id)attributes
{
  attributesCopy = attributes;
  v11.receiver = self;
  v11.super_class = HIDEventSystemClient;
  v6 = [(HIDEventSystemClient *)&v11 init];
  if (v6 && (v7 = *MEMORY[0x277CBECE8], v8 = IOHIDEventSystemClientCreateWithType(), (v6->_client = v8) != 0))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)propertyForKey:(id)key
{
  v3 = IOHIDEventSystemClientCopyProperty(self->_client, key);

  return v3;
}

- (void)setMatching:(id)matching
{
  v10 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDManager *)&v8 setInputElementMatching:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [matchingCopy count];
    client = self->_client;
    IOHIDEventSystemClientSetMatching();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [matchingCopy count];
      v5 = self->_client;
      IOHIDEventSystemClientSetMatchingMultiple();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)services
{
  v2 = IOHIDEventSystemClientCopyServices(self->_client);

  return v2;
}

- (void)setCancelHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_activated)
  {
    [HIDEventSystemClient setCancelHandler:];
  }

  v4 = _Block_copy(aBlock);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)setEventHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_eventHandler)
  {
    [HIDEventSystemClient setEventHandler:];
  }

  v4 = _Block_copy(aBlock);
  eventHandler = self->_eventHandler;
  self->_eventHandler = v4;

  os_unfair_recursive_lock_unlock();
  client = self->_client;
  IOHIDEventSystemClientRegisterEventCallback();
}

- (void)setResetHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_resetHandler)
  {
    [HIDEventSystemClient setResetHandler:];
  }

  v4 = _Block_copy(aBlock);
  resetHandler = self->_resetHandler;
  self->_resetHandler = v4;

  os_unfair_recursive_lock_unlock();
  client = self->_client;
  IOHIDEventSystemClientRegisterResetCallback();
}

- (void)setEventFilterHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_filterHandler)
  {
    [HIDEventSystemClient setEventFilterHandler:];
  }

  v4 = _Block_copy(aBlock);
  filterHandler = self->_filterHandler;
  self->_filterHandler = v4;

  os_unfair_recursive_lock_unlock();
  client = self->_client;
  IOHIDEventSystemClientRegisterEventFilterCallback();
}

- (void)setServiceNotificationHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_serviceHandler)
  {
    [HIDEventSystemClient setServiceNotificationHandler:];
  }

  v4 = _Block_copy(aBlock);
  serviceHandler = self->_serviceHandler;
  self->_serviceHandler = v4;

  os_unfair_recursive_lock_unlock();
  client = self->_client;
  IOHIDEventSystemClientRegisterDeviceMatchingCallback();
}

- (void)setPropertyChangedHandler:(id)handler matching:(id)matching
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  matchingCopy = matching;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDManager *)&v23 setInputElementMatching:v25];
    }
  }

  os_unfair_recursive_lock_lock_with_options();
  if (self->_propertyChangedHandler)
  {
    [HIDEventSystemClient setPropertyChangedHandler:matching:];
  }

  v8 = _Block_copy(handlerCopy);
  propertyChangedHandler = self->_propertyChangedHandler;
  self->_propertyChangedHandler = v8;

  os_unfair_recursive_lock_unlock();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    client = self->_client;
    IOHIDEventSystemClientRegisterPropertyChangedCallback();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = matchingCopy;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            v17 = self->_client;
            IOHIDEventSystemClientRegisterPropertyChangedCallback();
            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end