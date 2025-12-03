@interface HIDEventService(HIDFramework)
- (id)eventMatching:()HIDFramework;
- (id)propertyForKey:()HIDFramework;
- (uint64_t)serviceID;
@end

@implementation HIDEventService(HIDFramework)

- (uint64_t)serviceID
{
  v0 = IOHIDServiceGetRegistryID();
  v1 = v0;
  if (v0)
  {
    unsignedLongLongValue = [v0 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (id)propertyForKey:()HIDFramework
{
  v0 = IOHIDServiceCopyProperty();

  return v0;
}

- (id)eventMatching:()HIDFramework
{
  v0 = IOHIDServiceCopyMatchingEvent();

  return v0;
}

@end