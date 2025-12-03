@interface MRCryptoPairingIdentity
- (MRCryptoPairingIdentity)init;
- (MRCryptoPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey;
@end

@implementation MRCryptoPairingIdentity

- (MRCryptoPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey
{
  identifierCopy = identifier;
  keyCopy = key;
  privateKeyCopy = privateKey;
  v19.receiver = self;
  v19.super_class = MRCryptoPairingIdentity;
  v11 = [(MRCryptoPairingIdentity *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [keyCopy copy];
    publicKey = v11->_publicKey;
    v11->_publicKey = v14;

    v16 = [privateKeyCopy copy];
    privateKey = v11->_privateKey;
    v11->_privateKey = v16;
  }

  return v11;
}

- (MRCryptoPairingIdentity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(sel_initWithIdentifier_publicKey_privateKey_);
  [v3 raise:v4 format:{@"use %@ instead", v5}];

  return 0;
}

@end