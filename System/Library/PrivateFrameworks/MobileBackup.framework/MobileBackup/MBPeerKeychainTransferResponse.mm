@interface MBPeerKeychainTransferResponse
- (MBPeerKeychainTransferResponse)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerKeychainTransferResponse)initWithKeyBag:(id)a3 password:(id)a4 keychainFileName:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerKeychainTransferResponse

- (MBPeerKeychainTransferResponse)initWithKeyBag:(id)a3 password:(id)a4 keychainFileName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MBPeerKeychainTransferResponse;
  v12 = [(MBPeerKeychainTransferResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passwordData, a4);
    objc_storeStrong(&v13->_keybagData, a3);
    objc_storeStrong(&v13->_keychainFileName, a5);
  }

  return v13;
}

- (MBPeerKeychainTransferResponse)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MBPeerKeychainTransferResponse;
  v7 = [(MBPeerKeychainTransferResponse *)&v16 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"MBKeyBag"];
  keybagData = v7->_keybagData;
  v7->_keybagData = v8;

  v10 = [v6 objectForKeyedSubscript:@"MBKeyBagPassword"];
  passwordData = v7->_passwordData;
  v7->_passwordData = v10;

  v12 = [v6 objectForKeyedSubscript:@"MBKeychainFileName"];
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
    if (a4)
    {
      [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", v6];
      *a4 = v14 = 0;
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
  v3 = [(MBPeerKeychainTransferResponse *)self keybagData];
  v9[0] = v3;
  v8[1] = @"MBKeyBagPassword";
  v4 = [(MBPeerKeychainTransferResponse *)self passwordData];
  v9[1] = v4;
  v8[2] = @"MBKeychainFileName";
  v5 = [(MBPeerKeychainTransferResponse *)self keychainFileName];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end