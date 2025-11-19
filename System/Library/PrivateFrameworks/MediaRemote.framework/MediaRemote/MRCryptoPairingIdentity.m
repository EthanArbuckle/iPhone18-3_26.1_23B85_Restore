@interface MRCryptoPairingIdentity
- (MRCryptoPairingIdentity)init;
- (MRCryptoPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5;
@end

@implementation MRCryptoPairingIdentity

- (MRCryptoPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MRCryptoPairingIdentity;
  v11 = [(MRCryptoPairingIdentity *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    publicKey = v11->_publicKey;
    v11->_publicKey = v14;

    v16 = [v10 copy];
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