@interface NSDictionary(CoreCECInterfaceProperties)
- (uint64_t)getLinkState:()CoreCECInterfaceProperties physicalAddress:;
@end

@implementation NSDictionary(CoreCECInterfaceProperties)

- (uint64_t)getLinkState:()CoreCECInterfaceProperties physicalAddress:
{
  result = [self objectForKey:@"kCECInterfacePropertyHasLink"];
  if (result)
  {
    *a3 = [result BOOLValue];
    result = [self objectForKey:@"kCECInterfacePropertyPhysicalAddress"];
    if (result)
    {
      *a4 = [result unsignedIntegerValue];
      return 1;
    }
  }

  return result;
}

@end