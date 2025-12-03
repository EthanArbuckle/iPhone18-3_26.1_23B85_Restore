@interface _DDUIRapportDevice
- (NSString)description;
- (_DDUIRapportDevice)initWithIncomingMessageOptions:(id)options;
- (_DDUIRapportDevice)initWithRPCompanionLinkDevice:(id)device;
@end

@implementation _DDUIRapportDevice

- (_DDUIRapportDevice)initWithRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = _DDUIRapportDevice;
  v5 = [(_DDUIRapportDevice *)&v17 init];
  if (v5)
  {
    name = [deviceCopy name];
    name = v5->_name;
    v5->_name = name;

    model = [deviceCopy model];
    model = v5->_model;
    v5->_model = model;

    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    v11 = idsDeviceIdentifier;
    if (idsDeviceIdentifier)
    {
      identifier = idsDeviceIdentifier;
    }

    else
    {
      identifier = [deviceCopy identifier];
    }

    identifier = v5->_identifier;
    v5->_identifier = identifier;

    accountID = [deviceCopy accountID];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = accountID;

    v5->_deviceType = DDUIDeviceTypeForModelString(v5->_model);
    v5->_isMine = ([deviceCopy statusFlags] & 0x80000) != 0;
  }

  return v5;
}

- (_DDUIRapportDevice)initWithIncomingMessageOptions:(id)options
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = _DDUIRapportDevice;
  v5 = [(_DDUIRapportDevice *)&v16 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"senderDeviceName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D442D8]];
    model = v5->_model;
    v5->_model = v10;

    v12 = *MEMORY[0x277D442E8];
    v5->_isMine = (CFDictionaryGetInt64() & 0x80000) != 0;
    v13 = [optionsCopy objectForKeyedSubscript:@"senderAccountID"];
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