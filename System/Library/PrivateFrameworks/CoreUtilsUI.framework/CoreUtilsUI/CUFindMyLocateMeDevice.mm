@interface CUFindMyLocateMeDevice
- (CUFindMyLocateMeDevice)init;
- (CUFindMyLocateMeDevice)initWithFindMyIdentifier:(id)identifier idsID:(id)d isThisDevice:(BOOL)device name:(id)name;
@end

@implementation CUFindMyLocateMeDevice

- (CUFindMyLocateMeDevice)initWithFindMyIdentifier:(id)identifier idsID:(id)d isThisDevice:(BOOL)device name:(id)name
{
  v8 = sub_247C12C40();
  v10 = v9;
  v11 = sub_247C12C40();
  v13 = v12;
  v14 = sub_247C12C40();
  v15 = (self + OBJC_IVAR___CUFindMyLocateMeDevice_findMyIdentifier);
  *v15 = v8;
  v15[1] = v10;
  v16 = (self + OBJC_IVAR___CUFindMyLocateMeDevice_idsID);
  *v16 = v11;
  v16[1] = v13;
  *(self + OBJC_IVAR___CUFindMyLocateMeDevice_isThisDevice) = device;
  v17 = (self + OBJC_IVAR___CUFindMyLocateMeDevice_name);
  *v17 = v14;
  v17[1] = v18;
  v20.receiver = self;
  v20.super_class = CUFindMyLocateMeDevice;
  return [(CUFindMyLocateMeDevice *)&v20 init];
}

- (CUFindMyLocateMeDevice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end