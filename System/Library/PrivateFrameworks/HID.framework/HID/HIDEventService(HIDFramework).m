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
    v2 = [v0 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
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