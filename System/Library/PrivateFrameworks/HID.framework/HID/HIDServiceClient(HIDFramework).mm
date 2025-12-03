@interface HIDServiceClient(HIDFramework)
- (id)eventMatching:()HIDFramework;
- (id)propertiesForKeys:()HIDFramework;
- (id)propertyForKey:()HIDFramework;
- (uint64_t)serviceID;
- (void)setRemovalHandler:()HIDFramework;
@end

@implementation HIDServiceClient(HIDFramework)

- (id)propertyForKey:()HIDFramework
{
  v3 = IOHIDServiceClientCopyProperty(self, key);

  return v3;
}

- (id)propertiesForKeys:()HIDFramework
{
  v0 = IOHIDServiceClientCopyProperties();

  return v0;
}

- (id)eventMatching:()HIDFramework
{
  v0 = IOHIDServiceClientCopyMatchingEvent();

  return v0;
}

- (void)setRemovalHandler:()HIDFramework
{
  aBlock = a3;
  v4 = self + *MEMORY[0x277CD2878];
  os_unfair_recursive_lock_lock_with_options();
  if (*(v4 + 112))
  {
    [HIDServiceClient(HIDFramework) setRemovalHandler:];
  }

  *(v4 + 112) = _Block_copy(aBlock);
  os_unfair_recursive_lock_unlock();
  IOHIDServiceClientRegisterRemovalCallback();
}

- (uint64_t)serviceID
{
  v1 = IOHIDServiceClientGetRegistryID(self);
  v2 = v1;
  if (v1)
  {
    unsignedLongLongValue = [v1 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

@end