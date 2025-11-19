@interface WatchSetupAdvertisementIdentifier
+ (BOOL)_consistencyCheckForAdvertisingIdentifier:(unsigned int)a3 pairingStrategy:(unsigned __int8)a4 deviceSize:(unsigned __int8)a5 enclosureMaterial:(unsigned __int8)a6;
- (NSString)humanReadableName;
- (WatchSetupAdvertisementIdentifier)initWithAdvertisingIdentifier:(unsigned int)a3 pairingStrategy:(unsigned __int8)a4 deviceSize:(unsigned __int8)a5 enclosureMaterial:(unsigned __int8)a6;
- (WatchSetupAdvertisementIdentifier)initWithHumanReadableName:(id)a3;
- (WatchSetupAdvertisementIdentifier)initWithPackedIdentifierData:(id)a3;
- (id)packedIdentifierData;
@end

@implementation WatchSetupAdvertisementIdentifier

- (WatchSetupAdvertisementIdentifier)initWithAdvertisingIdentifier:(unsigned int)a3 pairingStrategy:(unsigned __int8)a4 deviceSize:(unsigned __int8)a5 enclosureMaterial:(unsigned __int8)a6
{
  if ([WatchSetupAdvertisementIdentifier _consistencyCheckForAdvertisingIdentifier:"_consistencyCheckForAdvertisingIdentifier:pairingStrategy:deviceSize:enclosureMaterial:" pairingStrategy:? deviceSize:? enclosureMaterial:?])
  {
    v14.receiver = self;
    v14.super_class = WatchSetupAdvertisementIdentifier;
    v11 = [(WatchSetupAdvertisementIdentifier *)&v14 init];
    if (v11)
    {
      v11->_advertisingIdentifier = a3;
      v11->_pairingStrategy = a4;
      v11->_deviceSize = a5;
      v11->_enclosureMaterial = a6;
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WatchSetupAdvertisementIdentifier)initWithPackedIdentifierData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] == 4)
  {
    v16.receiver = self;
    v16.super_class = WatchSetupAdvertisementIdentifier;
    v5 = [(WatchSetupAdvertisementIdentifier *)&v16 init];
    if (v5)
    {
      *buf = 0;
      [v4 getBytes:buf length:4];
      v6 = buf[0];
      v5->_pairingStrategy = buf[0] >> 5;
      v7 = buf[2];
      HIDWORD(v9) = buf[1];
      LODWORD(v9) = buf[2] << 24;
      v8 = v9 >> 28;
      HIDWORD(v9) = v6;
      LODWORD(v9) = buf[1] << 24;
      v5->_advertisingIdentifier = bswap32(((v9 >> 28) << 16) | (v8 << 24) | (((v6 >> 4) & 1) << 8));
      LOBYTE(v6) = buf[3];
      v5->_deviceSize = (buf[3] >> 6) & 0xC3 | (4 * (v7 & 0xF));
      v5->_enclosureMaterial = v6 & 0x3F;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v11 = nr_framework_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = nr_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v18 = 4;
        v19 = 2048;
        v20 = [v4 length];
        _os_log_error_impl(&dword_1E0ADF000, v13, OS_LOG_TYPE_ERROR, "Incorrect size of packed identifier data, expecting %lu but got %lu", buf, 0x16u);
      }
    }

    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WatchSetupAdvertisementIdentifier)initWithHumanReadableName:(id)a3
{
  v4 = NRAdvertisingInfoFromPayload(a3);
  v5 = [v4 objectForKeyedSubscript:@"n"];
  v6 = [v5 longLongValue] & 0x1FFFF;

  v7 = [v4 objectForKeyedSubscript:@"v"];
  v8 = [v7 unsignedCharValue] & 7;

  v9 = [v4 objectForKeyedSubscript:@"s"];
  v10 = [v9 unsignedCharValue] & 0x3F;

  v11 = [v4 objectForKeyedSubscript:@"m"];
  v12 = [v11 unsignedCharValue] & 0x3F;

  if ([WatchSetupAdvertisementIdentifier _consistencyCheckForAdvertisingIdentifier:v6 pairingStrategy:v8 deviceSize:v10 enclosureMaterial:v12])
  {
    v16.receiver = self;
    v16.super_class = WatchSetupAdvertisementIdentifier;
    v13 = [(WatchSetupAdvertisementIdentifier *)&v16 init];
    if (v13)
    {
      v13->_advertisingIdentifier = v6;
      v13->_pairingStrategy = v8;
      v13->_deviceSize = v10;
      v13->_enclosureMaterial = v12;
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_consistencyCheckForAdvertisingIdentifier:(unsigned int)a3 pairingStrategy:(unsigned __int8)a4 deviceSize:(unsigned __int8)a5 enclosureMaterial:(unsigned __int8)a6
{
  result = 0;
  if (a3 >> 5 <= 0xC34 && !(a3 >> 17) && a4 <= 7u && (a6 | a5) <= 0x3F && NRCharFieldLength > a4 && NRCharFieldLength > a5)
  {
    return NRCharFieldLength > a6;
  }

  return result;
}

- (id)packedIdentifierData
{
  v2 = bswap32(self->_advertisingIdentifier);
  v7[0] = (v2 >> 4) & 0x10 | (v2 >> 20) & 0xF | (32 * self->_pairingStrategy);
  HIDWORD(v3) = HIWORD(v2);
  LODWORD(v3) = v2;
  v7[1] = v3 >> 28;
  deviceSize = self->_deviceSize;
  v7[2] = (v2 >> 20) & 0xF0 | (deviceSize >> 2) & 0xF;
  v7[3] = self->_enclosureMaterial & 0x3F | (deviceSize << 6);
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:4];

  return v5;
}

- (NSString)humanReadableName
{
  advertisingIdentifier = self->_advertisingIdentifier;
  v4 = NRStringRepresentationFromInteger(self->_pairingStrategy);
  v5 = NRStringRepresentationFromInteger(self->_enclosureMaterial);
  v6 = NRStringRepresentationFromInteger(self->_deviceSize);
  v7 = v6;
  if (advertisingIdentifier >> 5 > 0xC34 || v4 == 0 || v5 == 0 || v6 == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%05lu%@%@%@", advertisingIdentifier, v4, v5, v6];
  }

  return v11;
}

@end