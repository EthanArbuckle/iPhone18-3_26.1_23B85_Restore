@interface CWFHostAPConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHostAPConfiguration:(id)a3;
- (CWFHostAPConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFHostAPConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFHostAPConfiguration *)self SSID];
  v5 = CWFHumanReadableStringFromData(v4);

  if (([v5 hasPrefix:@" "] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @" "))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v5];

    v5 = v6;
  }

  [v3 appendFormat:@"%@ - ", v5];
  v7 = [(CWFHostAPConfiguration *)self SSID];
  v8 = CWFHexadecimalStringFromData(v7);
  [v3 appendFormat:@"ssid=%@, ", v8];

  v9 = sub_1E0BD331C([(CWFHostAPConfiguration *)self securityType], 0, 0);
  [v3 appendFormat:@"security=%@, ", v9];

  v10 = [(CWFHostAPConfiguration *)self channel];
  [v3 appendFormat:@"channel=[%@], ", v10];

  v11 = [(CWFHostAPConfiguration *)self password];
  [v3 appendFormat:@"hasPassword=%d, ", v11 != 0];

  if ([(CWFHostAPConfiguration *)self PHYMode])
  {
    v12 = sub_1E0BEE5D4([(CWFHostAPConfiguration *)self PHYMode]);
    [v3 appendFormat:@"phy=%@, ", v12];
  }

  if ([(CWFHostAPConfiguration *)self forceHiddenMode])
  {
    [v3 appendFormat:@"forceHidden=%d, ", -[CWFHostAPConfiguration forceHiddenMode](self, "forceHiddenMode")];
  }

  if ([(CWFHostAPConfiguration *)self forceBeaconInterval100ms])
  {
    [v3 appendFormat:@"forceBI100=%d, ", -[CWFHostAPConfiguration forceBeaconInterval100ms](self, "forceBeaconInterval100ms")];
  }

  if ([(CWFHostAPConfiguration *)self bridgeMode]|| [(CWFHostAPConfiguration *)self bridgeType]|| ([(CWFHostAPConfiguration *)self bridgeInterfaceName], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [(CWFHostAPConfiguration *)self bridgeMode];
    v15 = [(CWFHostAPConfiguration *)self bridgeType];
    v16 = [(CWFHostAPConfiguration *)self bridgeInterfaceName];
    [v3 appendFormat:@"bridge=[mode=%d, type=%d, intf=%@], ", v14, v15, v16];
  }

  v17 = [(CWFHostAPConfiguration *)self IEList];
  v18 = CWFHexadecimalStringFromData(v17);
  [v3 appendFormat:@"IEList=%@", v18];

  return v3;
}

- (BOOL)isEqualToHostAPConfiguration:(id)a3
{
  v6 = a3;
  SSID = self->_SSID;
  v8 = [v6 SSID];
  if (SSID == v8)
  {
    securityType = self->_securityType;
    if (securityType == [v6 securityType])
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

  v9 = [v6 SSID];
  if (!v9)
  {
    goto LABEL_13;
  }

  v3 = v9;
  v10 = self->_SSID;
  v4 = [v6 SSID];
  if ((-[NSData isEqual:](v10, "isEqual:", v4) & 1) == 0 || (v11 = self->_securityType, v11 != [v6 securityType]))
  {
    v12 = 0;
LABEL_44:

    goto LABEL_45;
  }

LABEL_8:
  channel = self->_channel;
  v15 = [v6 channel];
  if (channel != v15)
  {
    if (!self->_channel)
    {
      v12 = 0;
LABEL_37:

      goto LABEL_43;
    }

    v16 = [v6 channel];
    if (!v16)
    {
      goto LABEL_42;
    }

    v54 = v16;
    v17 = self->_channel;
    v18 = [v6 channel];
    v19 = v17;
    v20 = v18;
    if (![(CWFChannel *)v19 isEqual:v18])
    {

LABEL_41:
      goto LABEL_42;
    }

    v52 = v20;
  }

  password = self->_password;
  v22 = [v6 password];
  if (password == v22)
  {
    v53 = password;
    goto LABEL_22;
  }

  if (!self->_password || ([v6 password], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = 0;
LABEL_35:

    if (channel != v15)
    {
    }

    goto LABEL_37;
  }

  v53 = password;
  v51 = v23;
  v24 = self->_password;
  v25 = [v6 password];
  v26 = v24;
  v27 = v25;
  if (([(NSString *)v26 isEqual:v25]& 1) != 0)
  {
    v50 = v27;
LABEL_22:
    PHYMode = self->_PHYMode;
    if (PHYMode != [v6 PHYMode] || (forceHiddenMode = self->_forceHiddenMode, forceHiddenMode != objc_msgSend(v6, "forceHiddenMode")) || (forceBeaconInterval100ms = self->_forceBeaconInterval100ms, forceBeaconInterval100ms != objc_msgSend(v6, "forceBeaconInterval100ms")) || (bridgeMode = self->_bridgeMode, bridgeMode != objc_msgSend(v6, "bridgeMode")) || (bridgeType = self->_bridgeType, bridgeType != objc_msgSend(v6, "bridgeType")))
    {
      LOBYTE(IEList) = 0;
      v12 = 0;
      goto LABEL_33;
    }

    bridgeInterfaceName = self->_bridgeInterfaceName;
    v34 = [v6 bridgeInterfaceName];
    v49 = v34;
    if (bridgeInterfaceName == v34)
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
      IEList = [v6 bridgeInterfaceName];
      if (!IEList)
      {
LABEL_55:

LABEL_60:
        v12 = IEList;
LABEL_33:
        if (v53 != v22)
        {

          v12 = IEList;
        }

        goto LABEL_35;
      }

      v47 = self->_bridgeInterfaceName;
      v36 = [v6 bridgeInterfaceName];
      v37 = v47;
      v46 = v36;
      if (([(NSString *)v37 isEqual:?]& 1) == 0)
      {

        v12 = 0;
LABEL_62:
        if (v53 != v22)
        {
        }

        goto LABEL_35;
      }

      v45 = IEList;
    }

    IEList = self->_IEList;
    v39 = [v6 IEList];
    LOBYTE(IEList) = IEList == v39;
    if (IEList || !self->_IEList)
    {

      v34 = v49;
      if (v48 == v49)
      {
LABEL_59:

        goto LABEL_60;
      }
    }

    else
    {
      v44 = v39;
      v40 = [v6 IEList];
      if (v40)
      {
        v41 = self->_IEList;
        v43 = v40;
        v42 = [v6 IEList];
        v12 = [(NSData *)v41 isEqual:v42];

        if (v48 != v49)
        {
        }

        goto LABEL_62;
      }

      v34 = v49;
      if (v48 == v49)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_55;
  }

  if (channel != v15)
  {

    goto LABEL_41;
  }

LABEL_42:

  v12 = 0;
LABEL_43:
  if (SSID != v8)
  {
    goto LABEL_44;
  }

LABEL_45:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFHostAPConfiguration *)self isEqualToHostAPConfiguration:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  SSID = self->_SSID;
  v5 = a3;
  [v5 encodeObject:SSID forKey:@"_SSID"];
  [v5 encodeInteger:self->_securityType forKey:@"_securityType"];
  [v5 encodeObject:self->_channel forKey:@"_channel"];
  [v5 encodeObject:self->_password forKey:@"_password"];
  [v5 encodeInteger:self->_PHYMode forKey:@"_PHYMode"];
  [v5 encodeBool:self->_forceHiddenMode forKey:@"_forceHiddenMode"];
  [v5 encodeBool:self->_forceBeaconInterval100ms forKey:@"_forceBeaconInterval100ms"];
  [v5 encodeInteger:self->_bridgeMode forKey:@"_bridgeMode"];
  [v5 encodeInteger:self->_bridgeType forKey:@"_bridgeType"];
  [v5 encodeObject:self->_bridgeInterfaceName forKey:@"_bridgeInterfaceName"];
  [v5 encodeObject:self->_IEList forKey:@"_IEList"];
}

- (CWFHostAPConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CWFHostAPConfiguration;
  v5 = [(CWFHostAPConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v5->_securityType = [v4 decodeIntegerForKey:@"_securityType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v10;

    v5->_PHYMode = [v4 decodeIntegerForKey:@"_PHYMode"];
    v5->_forceHiddenMode = [v4 decodeBoolForKey:@"_forceHiddenMode"];
    v5->_forceBeaconInterval100ms = [v4 decodeBoolForKey:@"_forceBeaconInterval100ms"];
    v5->_bridgeMode = [v4 decodeIntegerForKey:@"_bridgeMode"];
    v5->_bridgeType = [v4 decodeIntegerForKey:@"_bridgeType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bridgeInterfaceName"];
    bridgeInterfaceName = v5->_bridgeInterfaceName;
    v5->_bridgeInterfaceName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_IEList"];
    IEList = v5->_IEList;
    v5->_IEList = v14;
  }

  return v5;
}

@end