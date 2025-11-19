@interface MBDeviceUDID
@end

@implementation MBDeviceUDID

id __MBDeviceUDID_Legacy_client_block_invoke()
{
  v0 = MBGetGestaltValueForKey();
  if (!v0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Error getting %@ from MobileGestalt", @"UniqueDeviceID"]);
  }

  v1 = v0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __MBDeviceUDID_Legacy_client_block_invoke_cold_1();
  }

  result = v1;
  MBDeviceUDID_Legacy_client_sDeviceUDID = result;
  return result;
}

@end