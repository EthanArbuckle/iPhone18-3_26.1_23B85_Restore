@interface CWFHostAPConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHostAPConfiguration:(id)configuration;
- (CWFHostAPConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFHostAPConfiguration

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  sSID = [(CWFHostAPConfiguration *)self SSID];
  v5 = CWFHumanReadableStringFromData(sSID);

  if (([v5 hasPrefix:@" "] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @" "))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v5];

    v5 = v6;
  }

  [string appendFormat:@"%@ - ", v5];
  sSID2 = [(CWFHostAPConfiguration *)self SSID];
  v8 = CWFHexadecimalStringFromData(sSID2);
  [string appendFormat:@"ssid=%@, ", v8];

  v9 = sub_1E0BD331C([(CWFHostAPConfiguration *)self securityType], 0, 0);
  [string appendFormat:@"security=%@, ", v9];

  channel = [(CWFHostAPConfiguration *)self channel];
  [string appendFormat:@"channel=[%@], ", channel];

  password = [(CWFHostAPConfiguration *)self password];
  [string appendFormat:@"hasPassword=%d, ", password != 0];

  if ([(CWFHostAPConfiguration *)self PHYMode])
  {
    v12 = sub_1E0BEE5D4([(CWFHostAPConfiguration *)self PHYMode]);
    [string appendFormat:@"phy=%@, ", v12];
  }

  if ([(CWFHostAPConfiguration *)self forceHiddenMode])
  {
    [string appendFormat:@"forceHidden=%d, ", -[CWFHostAPConfiguration forceHiddenMode](self, "forceHiddenMode")];
  }

  if ([(CWFHostAPConfiguration *)self forceBeaconInterval100ms])
  {
    [string appendFormat:@"forceBI100=%d, ", -[CWFHostAPConfiguration forceBeaconInterval100ms](self, "forceBeaconInterval100ms")];
  }

  if ([(CWFHostAPConfiguration *)self bridgeMode]|| [(CWFHostAPConfiguration *)self bridgeType]|| ([(CWFHostAPConfiguration *)self bridgeInterfaceName], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    bridgeMode = [(CWFHostAPConfiguration *)self bridgeMode];
    bridgeType = [(CWFHostAPConfiguration *)self bridgeType];
    bridgeInterfaceName = [(CWFHostAPConfiguration *)self bridgeInterfaceName];
    [string appendFormat:@"bridge=[mode=%d, type=%d, intf=%@], ", bridgeMode, bridgeType, bridgeInterfaceName];
  }

  iEList = [(CWFHostAPConfiguration *)self IEList];
  v18 = CWFHexadecimalStringFromData(iEList);
  [string appendFormat:@"IEList=%@", v18];

  return string;
}

- (BOOL)isEqualToHostAPConfiguration:(id)configuration
{
  configurationCopy = configuration;
  SSID = self->_SSID;
  sSID = [configurationCopy SSID];
  if (SSID == sSID)
  {
    securityType = self->_securityType;
    if (securityType == [configurationCopy securityType])
    {
      goto LABEL_8;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_45;
  }

  if (!self->_SSID)
  {
    goto LABEL_13;
  }

  sSID2 = [configurationCopy SSID];
  if (!sSID2)
  {
    goto LABEL_13;
  }

  v3 = sSID2;
  v10 = self->_SSID;
  sSID3 = [configurationCopy SSID];
  if ((-[NSData isEqual:](v10, "isEqual:", sSID3) & 1) == 0 || (v11 = self->_securityType, v11 != [configurationCopy securityType]))
  {
    v12 = 0;
LABEL_44:

    goto LABEL_45;
  }

LABEL_8:
  channel = self->_channel;
  channel = [configurationCopy channel];
  if (channel != channel)
  {
    if (!self->_channel)
    {
      v12 = 0;
LABEL_37:

      goto LABEL_43;
    }

    channel2 = [configurationCopy channel];
    if (!channel2)
    {
      goto LABEL_42;
    }

    v54 = channel2;
    v17 = self->_channel;
    channel3 = [configurationCopy channel];
    v19 = v17;
    v20 = channel3;
    if (![(CWFChannel *)v19 isEqual:channel3])
    {

LABEL_41:
      goto LABEL_42;
    }

    v52 = v20;
  }

  password = self->_password;
  password = [configurationCopy password];
  if (password == password)
  {
    v53 = password;
    goto LABEL_22;
  }

  if (!self->_password || ([configurationCopy password], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
LABEL_35:

    if (channel != channel)
    {
    }

    goto LABEL_37;
  }

  v53 = password;
  v51 = v23;
  v24 = self->_password;
  password2 = [configurationCopy password];
  v26 = v24;
  v27 = password2;
  if (([(NSString *)v26 isEqual:password2]& 1) != 0)
  {
    v50 = v27;
LABEL_22:
    PHYMode = self->_PHYMode;
    if (PHYMode != [configurationCopy PHYMode] || (forceHiddenMode = self->_forceHiddenMode, forceHiddenMode != objc_msgSend(configurationCopy, "forceHiddenMode")) || (forceBeaconInterval100ms = self->_forceBeaconInterval100ms, forceBeaconInterval100ms != objc_msgSend(configurationCopy, "forceBeaconInterval100ms")) || (bridgeMode = self->_bridgeMode, bridgeMode != objc_msgSend(configurationCopy, "bridgeMode")) || (bridgeType = self->_bridgeType, bridgeType != objc_msgSend(configurationCopy, "bridgeType")))
    {
      LOBYTE(IEList) = 0;
      v12 = 0;
      goto LABEL_33;
    }

    bridgeInterfaceName = self->_bridgeInterfaceName;
    bridgeInterfaceName = [configurationCopy bridgeInterfaceName];
    v49 = bridgeInterfaceName;
    if (bridgeInterfaceName == bridgeInterfaceName)
    {
      v48 = bridgeInterfaceName;
    }

    else
    {
      if (!self->_bridgeInterfaceName)
      {
LABEL_58:
        LOBYTE(IEList) = 0;
        goto LABEL_59;
      }

      v48 = bridgeInterfaceName;
      IEList = [configurationCopy bridgeInterfaceName];
      if (!IEList)
      {
LABEL_55:

LABEL_60:
        v12 = IEList;
LABEL_33:
        if (v53 != password)
        {

          v12 = IEList;
        }

        goto LABEL_35;
      }

      v47 = self->_bridgeInterfaceName;
      bridgeInterfaceName2 = [configurationCopy bridgeInterfaceName];
      v37 = v47;
      v46 = bridgeInterfaceName2;
      if (([(NSString *)v37 isEqual:?]& 1) == 0)
      {

        v12 = 0;
LABEL_62:
        if (v53 != password)
        {
        }

        goto LABEL_35;
      }

      v45 = IEList;
    }

    IEList = self->_IEList;
    iEList = [configurationCopy IEList];
    LOBYTE(IEList) = IEList == iEList;
    if (IEList || !self->_IEList)
    {

      bridgeInterfaceName = v49;
      if (v48 == v49)
      {
LABEL_59:

        goto LABEL_60;
      }
    }

    else
    {
      v44 = iEList;
      iEList2 = [configurationCopy IEList];
      if (iEList2)
      {
        v41 = self->_IEList;
        v43 = iEList2;
        iEList3 = [configurationCopy IEList];
        v12 = [(NSData *)v41 isEqual:iEList3];

        if (v48 != v49)
        {
        }

        goto LABEL_62;
      }

      bridgeInterfaceName = v49;
      if (v48 == v49)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_55;
  }

  if (channel != channel)
  {

    goto LABEL_41;
  }

LABEL_42:

  v12 = 0;
LABEL_43:
  if (SSID != sSID)
  {
    goto LABEL_44;
  }

LABEL_45:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFHostAPConfiguration *)self isEqualToHostAPConfiguration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_securityType ^ [(NSData *)self->_SSID hash];
  v4 = [(CWFChannel *)self->_channel hash];
  v5 = v3 ^ v4 ^ [(NSString *)self->_password hash]^ self->_PHYMode ^ self->_forceHiddenMode ^ self->_forceBeaconInterval100ms ^ self->_bridgeMode;
  bridgeType = self->_bridgeType;
  v7 = bridgeType ^ [(NSString *)self->_bridgeInterfaceName hash];
  return v5 ^ v7 ^ [(NSData *)self->_IEList hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFHostAPConfiguration allocWithZone:?]];
  [(CWFHostAPConfiguration *)v4 setSSID:self->_SSID];
  [(CWFHostAPConfiguration *)v4 setSecurityType:self->_securityType];
  [(CWFHostAPConfiguration *)v4 setChannel:self->_channel];
  [(CWFHostAPConfiguration *)v4 setPassword:self->_password];
  [(CWFHostAPConfiguration *)v4 setPHYMode:self->_PHYMode];
  [(CWFHostAPConfiguration *)v4 setForceHiddenMode:self->_forceHiddenMode];
  [(CWFHostAPConfiguration *)v4 setForceBeaconInterval100ms:self->_forceBeaconInterval100ms];
  [(CWFHostAPConfiguration *)v4 setBridgeMode:self->_bridgeMode];
  [(CWFHostAPConfiguration *)v4 setBridgeType:self->_bridgeType];
  [(CWFHostAPConfiguration *)v4 setBridgeInterfaceName:self->_bridgeInterfaceName];
  [(CWFHostAPConfiguration *)v4 setIEList:self->_IEList];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  SSID = self->_SSID;
  coderCopy = coder;
  [coderCopy encodeObject:SSID forKey:@"_SSID"];
  [coderCopy encodeInteger:self->_securityType forKey:@"_securityType"];
  [coderCopy encodeObject:self->_channel forKey:@"_channel"];
  [coderCopy encodeObject:self->_password forKey:@"_password"];
  [coderCopy encodeInteger:self->_PHYMode forKey:@"_PHYMode"];
  [coderCopy encodeBool:self->_forceHiddenMode forKey:@"_forceHiddenMode"];
  [coderCopy encodeBool:self->_forceBeaconInterval100ms forKey:@"_forceBeaconInterval100ms"];
  [coderCopy encodeInteger:self->_bridgeMode forKey:@"_bridgeMode"];
  [coderCopy encodeInteger:self->_bridgeType forKey:@"_bridgeType"];
  [coderCopy encodeObject:self->_bridgeInterfaceName forKey:@"_bridgeInterfaceName"];
  [coderCopy encodeObject:self->_IEList forKey:@"_IEList"];
}

- (CWFHostAPConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CWFHostAPConfiguration;
  v5 = [(CWFHostAPConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v5->_securityType = [coderCopy decodeIntegerForKey:@"_securityType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v10;

    v5->_PHYMode = [coderCopy decodeIntegerForKey:@"_PHYMode"];
    v5->_forceHiddenMode = [coderCopy decodeBoolForKey:@"_forceHiddenMode"];
    v5->_forceBeaconInterval100ms = [coderCopy decodeBoolForKey:@"_forceBeaconInterval100ms"];
    v5->_bridgeMode = [coderCopy decodeIntegerForKey:@"_bridgeMode"];
    v5->_bridgeType = [coderCopy decodeIntegerForKey:@"_bridgeType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bridgeInterfaceName"];
    bridgeInterfaceName = v5->_bridgeInterfaceName;
    v5->_bridgeInterfaceName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IEList"];
    IEList = v5->_IEList;
    v5->_IEList = v14;
  }

  return v5;
}

@end