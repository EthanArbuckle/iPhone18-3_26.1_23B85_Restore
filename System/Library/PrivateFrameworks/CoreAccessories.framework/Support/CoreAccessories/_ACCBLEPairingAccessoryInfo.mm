@interface _ACCBLEPairingAccessoryInfo
- (_ACCBLEPairingAccessoryInfo)initWithUID:(id)a3 blePairingUUID:(id)a4 accInfoDict:(id)a5 supportedPairTypes:(id)a6;
- (void)dealloc;
@end

@implementation _ACCBLEPairingAccessoryInfo

- (_ACCBLEPairingAccessoryInfo)initWithUID:(id)a3 blePairingUUID:(id)a4 accInfoDict:(id)a5 supportedPairTypes:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = _ACCBLEPairingAccessoryInfo;
  v15 = [(_ACCBLEPairingAccessoryInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessoryUID, a3);
    objc_storeStrong(&v16->_blePairingUUID, a4);
    objc_storeStrong(&v16->_accInfoDict, a5);
    objc_storeStrong(&v16->_supportedPairTypes, a6);
    activeProvider = v16->_activeProvider;
    v16->_activeProvider = 0;

    v16->_pairingFinished = 0;
  }

  return v16;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  blePairingUUID = self->_blePairingUUID;
  self->_blePairingUUID = 0;

  accInfoDict = self->_accInfoDict;
  self->_accInfoDict = 0;

  supportedPairTypes = self->_supportedPairTypes;
  self->_supportedPairTypes = 0;

  activeProvider = self->_activeProvider;
  self->_activeProvider = 0;

  v8.receiver = self;
  v8.super_class = _ACCBLEPairingAccessoryInfo;
  [(_ACCBLEPairingAccessoryInfo *)&v8 dealloc];
}

@end