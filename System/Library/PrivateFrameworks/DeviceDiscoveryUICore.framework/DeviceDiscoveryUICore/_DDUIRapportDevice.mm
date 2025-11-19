@interface _DDUIRapportDevice
- (NSString)description;
- (_DDUIRapportDevice)initWithIncomingMessageOptions:(id)a3;
- (_DDUIRapportDevice)initWithRPCompanionLinkDevice:(id)a3;
@end

@implementation _DDUIRapportDevice

- (_DDUIRapportDevice)initWithRPCompanionLinkDevice:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _DDUIRapportDevice;
  v5 = [(_DDUIRapportDevice *)&v17 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 model];
    model = v5->_model;
    v5->_model = v8;

    v10 = [v4 idsDeviceIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v4 identifier];
    }

    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 accountID];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v14;

    v5->_deviceType = DDUIDeviceTypeForModelString(v5->_model);
    v5->_isMine = ([v4 statusFlags] & 0x80000) != 0;
  }

  return v5;
}

- (_DDUIRapportDevice)initWithIncomingMessageOptions:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _DDUIRapportDevice;
  v5 = [(_DDUIRapportDevice *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"senderDeviceName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D442D8]];
    model = v5->_model;
    v5->_model = v10;

    v12 = *MEMORY[0x277D442E8];
    v5->_isMine = (CFDictionaryGetInt64() & 0x80000) != 0;
    v13 = [v4 objectForKeyedSubscript:@"senderAccountID"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v13;

    v5->_deviceType = DDUIDeviceTypeForModelString(v5->_model);
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_isMine)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; name = %@; model = %@; identifier = %@; accountIdentifier = %@; deviceType = %u; isMine = %@>", v4, self, *&self->_name, self->_identifier, self->_accountIdentifier, self->_deviceType, v5];
}

@end