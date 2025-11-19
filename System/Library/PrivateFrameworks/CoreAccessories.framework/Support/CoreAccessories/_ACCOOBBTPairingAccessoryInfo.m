@interface _ACCOOBBTPairingAccessoryInfo
- (_ACCOOBBTPairingAccessoryInfo)initWithUID:(id)a3 accInfoDict:(id)a4;
- (void)dealloc;
@end

@implementation _ACCOOBBTPairingAccessoryInfo

- (_ACCOOBBTPairingAccessoryInfo)initWithUID:(id)a3 accInfoDict:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _ACCOOBBTPairingAccessoryInfo;
  v9 = [(_ACCOOBBTPairingAccessoryInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUID, a3);
    objc_storeStrong(&v10->_accInfoDict, a4);
  }

  return v10;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  accInfoDict = self->_accInfoDict;
  self->_accInfoDict = 0;

  v5.receiver = self;
  v5.super_class = _ACCOOBBTPairingAccessoryInfo;
  [(_ACCOOBBTPairingAccessoryInfo *)&v5 dealloc];
}

@end