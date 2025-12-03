@interface MBPeerKeychainTransferResponse
- (MBPeerKeychainTransferResponse)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerKeychainTransferResponse)initWithKeyBag:(id)bag password:(id)password keychainFileName:(id)name;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerKeychainTransferResponse

- (MBPeerKeychainTransferResponse)initWithKeyBag:(id)bag password:(id)password keychainFileName:(id)name
{
  bagCopy = bag;
  passwordCopy = password;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MBPeerKeychainTransferResponse;
  v12 = [(MBPeerKeychainTransferResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passwordData, password);
    objc_storeStrong(&v13->_keybagData, bag);
    objc_storeStrong(&v13->_keychainFileName, name);
  }

  return v13;
}

- (MBPeerKeychainTransferResponse)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MBPeerKeychainTransferResponse;
  v7 = [(MBPeerKeychainTransferResponse *)&v16 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MBKeyBag"];
  keybagData = v7->_keybagData;
  v7->_keybagData = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"MBKeyBagPassword"];
  passwordData = v7->_passwordData;
  v7->_passwordData = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"MBKeychainFileName"];
  keychainFileName = v7->_keychainFileName;
  v7->_keychainFileName = v12;

  if (!v7->_keybagData)
  {
    goto LABEL_6;
  }

  if (v7->_passwordData && v7->_keychainFileName)
  {
LABEL_5:
    v14 = v7;
  }

  else
  {
LABEL_6:
    if (error)
    {
      [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", dictionaryCopy];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"MBKeyBag";
  keybagData = [(MBPeerKeychainTransferResponse *)self keybagData];
  v9[0] = keybagData;
  v8[1] = @"MBKeyBagPassword";
  passwordData = [(MBPeerKeychainTransferResponse *)self passwordData];
  v9[1] = passwordData;
  v8[2] = @"MBKeychainFileName";
  keychainFileName = [(MBPeerKeychainTransferResponse *)self keychainFileName];
  v9[2] = keychainFileName;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end