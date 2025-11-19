@interface NSDictionary(CoreCECInterfaceProperties)
- (uint64_t)getLinkState:()CoreCECInterfaceProperties physicalAddress:;
@end

@implementation NSDictionary(CoreCECInterfaceProperties)

- (uint64_t)getLinkState:()CoreCECInterfaceProperties physicalAddress:
{
  result = [a1 objectForKey:@"kCECInterfacePropertyHasLink"];
  if (result)
  {
    *a3 = [result BOOLValue];
    result = [a1 objectForKey:@"kCECInterfacePropertyPhysicalAddress"];
    if (result)
    {
      *a4 = [result unsignedIntegerValue];
      return 1;
    }
  }

  return result;
}

@end