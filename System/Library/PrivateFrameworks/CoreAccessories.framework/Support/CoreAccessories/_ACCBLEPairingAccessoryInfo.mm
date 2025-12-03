@interface _ACCBLEPairingAccessoryInfo
- (_ACCBLEPairingAccessoryInfo)initWithUID:(id)d blePairingUUID:(id)iD accInfoDict:(id)dict supportedPairTypes:(id)types;
- (void)dealloc;
@end

@implementation _ACCBLEPairingAccessoryInfo

- (_ACCBLEPairingAccessoryInfo)initWithUID:(id)d blePairingUUID:(id)iD accInfoDict:(id)dict supportedPairTypes:(id)types
{
  dCopy = d;
  iDCopy = iD;
  dictCopy = dict;
  typesCopy = types;
  v19.receiver = self;
  v19.super_class = _ACCBLEPairingAccessoryInfo;
  v15 = [(_ACCBLEPairingAccessoryInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessoryUID, d);
    objc_storeStrong(&v16->_blePairingUUID, iD);
    objc_storeStrong(&v16->_accInfoDict, dict);
    objc_storeStrong(&v16->_supportedPairTypes, types);
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