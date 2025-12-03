@interface CWFWiFiNetworkSharingNetwork
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingNetwork:(id)network;
- (CWFWiFiNetworkSharingNetwork)initWithCoder:(id)coder;
- (CWFWiFiNetworkSharingNetworkID)wifiNetworkSharingNetworkID;
- (NSString)networkName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingNetwork

- (CWFWiFiNetworkSharingNetworkID)wifiNetworkSharingNetworkID
{
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  if (sSID)
  {
    v3 = [[CWFWiFiNetworkSharingNetworkID alloc] initWithSSID:sSID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)networkName
{
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v3 = CWFHumanReadableStringFromData(sSID);

  return v3;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  networkName = [(CWFWiFiNetworkSharingNetwork *)self networkName];
  redactedForWiFi = [networkName redactedForWiFi];
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v22 = CWFHexadecimalStringFromData(sSID);
  redactedForWiFi2 = [v22 redactedForWiFi];
  v14 = sub_1E0BD331C([(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes], 0, 0);
  isCaptive = [(CWFWiFiNetworkSharingNetwork *)self isCaptive];
  isHidden = [(CWFWiFiNetworkSharingNetwork *)self isHidden];
  firstSharedDate = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  v11 = sub_1E0BCC248(firstSharedDate);
  lastModifiedDate = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  v3 = sub_1E0BCC248(lastModifiedDate);
  password = [(CWFWiFiNetworkSharingNetwork *)self password];
  password2 = [(CWFWiFiNetworkSharingNetwork *)self password];
  redactedSensitiveContentForWiFi = [password2 redactedSensitiveContentForWiFi];
  captivePortalCredentials = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  captivePortalCredentials2 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  v8 = [captivePortalCredentials2 description];
  redactedSensitiveContentForWiFi2 = [v8 redactedSensitiveContentForWiFi];
  v21 = [v20 stringWithFormat:@"(ssid=%@ (0x%@), security=%@, captive=%d, hidden=%d, firstShared=%@, modified=%@, hasPassword=%d (%@), hasCaptivePortalCreds=%d (%@))", redactedForWiFi, redactedForWiFi2, v14, isCaptive, isHidden, v11, v3, password != 0, redactedSensitiveContentForWiFi, captivePortalCredentials != 0, redactedSensitiveContentForWiFi2];

  return v21;
}

- (BOOL)isEqualToWiFiNetworkSharingNetwork:(id)network
{
  networkCopy = network;
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  sSID2 = [networkCopy SSID];
  if (sSID != sSID2)
  {
    sSID3 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
    if (!sSID3)
    {
      v12 = 0;
      goto LABEL_53;
    }

    v3 = sSID3;
    sSID4 = [networkCopy SSID];
    if (!sSID4)
    {
      v12 = 0;
LABEL_52:

      goto LABEL_53;
    }

    sSID5 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
    sSID6 = [networkCopy SSID];
    if (![sSID5 isEqual:sSID6])
    {
      v12 = 0;
LABEL_51:

      goto LABEL_52;
    }
  }

  supportedSecurityTypes = [(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes];
  if (supportedSecurityTypes != [networkCopy supportedSecurityTypes])
  {
    goto LABEL_49;
  }

  isHidden = [(CWFWiFiNetworkSharingNetwork *)self isHidden];
  if (isHidden != [networkCopy isHidden])
  {
    goto LABEL_49;
  }

  isCaptive = [(CWFWiFiNetworkSharingNetwork *)self isCaptive];
  if (isCaptive != [networkCopy isCaptive])
  {
    goto LABEL_49;
  }

  firstSharedDate = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  firstSharedDate2 = [networkCopy firstSharedDate];
  v18 = firstSharedDate2;
  if (firstSharedDate != firstSharedDate2)
  {
    firstSharedDate3 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
    if (firstSharedDate3)
    {
      v60 = firstSharedDate3;
      firstSharedDate4 = [networkCopy firstSharedDate];
      if (firstSharedDate4)
      {
        v62 = v18;
        v63 = firstSharedDate;
        v59 = firstSharedDate4;
        firstSharedDate5 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
        firstSharedDate6 = [networkCopy firstSharedDate];
        if ([firstSharedDate5 isEqual:firstSharedDate6])
        {
          v51 = firstSharedDate6;
          v52 = firstSharedDate5;
          goto LABEL_17;
        }

LABEL_49:
        v12 = 0;
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v62 = firstSharedDate2;
  v63 = firstSharedDate;
LABEL_17:
  lastModifiedDate = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  lastModifiedDate2 = [networkCopy lastModifiedDate];
  if (lastModifiedDate == lastModifiedDate2)
  {
    goto LABEL_22;
  }

  lastModifiedDate3 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  if (!lastModifiedDate3)
  {
    goto LABEL_35;
  }

  v53 = lastModifiedDate3;
  lastModifiedDate4 = [networkCopy lastModifiedDate];
  if (!lastModifiedDate4)
  {

LABEL_35:
    goto LABEL_37;
  }

  v54 = lastModifiedDate;
  v50 = lastModifiedDate4;
  lastModifiedDate5 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  lastModifiedDate6 = [networkCopy lastModifiedDate];
  if (([lastModifiedDate5 isEqual:lastModifiedDate6] & 1) == 0)
  {

LABEL_37:
    if (v63 != v62)
    {
    }

LABEL_48:

    goto LABEL_49;
  }

  v47 = lastModifiedDate5;
  v49 = lastModifiedDate6;
  lastModifiedDate = v54;
LABEL_22:
  password = [(CWFWiFiNetworkSharingNetwork *)self password];
  [networkCopy password];
  v58 = v57 = password;
  if (password != v58)
  {
    v55 = lastModifiedDate;
    password2 = [(CWFWiFiNetworkSharingNetwork *)self password];
    if (password2)
    {
      v48 = password2;
      password3 = [networkCopy password];
      if (password3)
      {
        v46 = password3;
        password4 = [(CWFWiFiNetworkSharingNetwork *)self password];
        password5 = [networkCopy password];
        if ([password4 isEqual:password5])
        {
          v44 = password5;
          v45 = password4;
          lastModifiedDate = v55;
          goto LABEL_30;
        }

        password3 = v46;
        password = v57;
      }

      v37 = v49;
    }

    else
    {
      v37 = v49;
    }

    if (v55 != lastModifiedDate2)
    {
    }

    if (v63 != v62)
    {
    }

    goto LABEL_48;
  }

LABEL_30:
  captivePortalCredentials = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  captivePortalCredentials2 = [networkCopy captivePortalCredentials];
  if (captivePortalCredentials == captivePortalCredentials2)
  {

    v12 = 1;
  }

  else
  {
    v56 = captivePortalCredentials2;
    captivePortalCredentials3 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
    if (captivePortalCredentials3)
    {
      v43 = captivePortalCredentials3;
      captivePortalCredentials4 = [networkCopy captivePortalCredentials];
      if (captivePortalCredentials4)
      {
        v42 = captivePortalCredentials4;
        captivePortalCredentials5 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
        captivePortalCredentials6 = [networkCopy captivePortalCredentials];
        v12 = [captivePortalCredentials5 isEqual:captivePortalCredentials6];

        captivePortalCredentials4 = v42;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {

      v12 = 0;
    }
  }

  v39 = v58;
  if (v57 != v58)
  {

    v39 = v58;
  }

  if (lastModifiedDate != lastModifiedDate2)
  {
  }

  if (v63 != v62)
  {
  }

LABEL_50:
  if (sSID != sSID2)
  {
    goto LABEL_51;
  }

LABEL_53:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetwork *)self isEqualToWiFiNetworkSharingNetwork:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v4 = [sSID hash];
  v5 = [(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes]^ v4;
  v6 = v5 ^ [(CWFWiFiNetworkSharingNetwork *)self isHidden];
  isCaptive = [(CWFWiFiNetworkSharingNetwork *)self isCaptive];
  firstSharedDate = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  v9 = v6 ^ isCaptive ^ [firstSharedDate hash];
  lastModifiedDate = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  v11 = [lastModifiedDate hash];
  password = [(CWFWiFiNetworkSharingNetwork *)self password];
  v13 = v11 ^ [password hash];
  captivePortalCredentials = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  v15 = v13 ^ [captivePortalCredentials hash];

  return v9 ^ v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingNetwork allocWithZone:?]];
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  [(CWFWiFiNetworkSharingNetwork *)v4 setSSID:sSID];

  [(CWFWiFiNetworkSharingNetwork *)v4 setSupportedSecurityTypes:[(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes]];
  [(CWFWiFiNetworkSharingNetwork *)v4 setIsHidden:[(CWFWiFiNetworkSharingNetwork *)self isHidden]];
  [(CWFWiFiNetworkSharingNetwork *)v4 setIsCaptive:[(CWFWiFiNetworkSharingNetwork *)self isCaptive]];
  firstSharedDate = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  [(CWFWiFiNetworkSharingNetwork *)v4 setFirstSharedDate:firstSharedDate];

  lastModifiedDate = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  [(CWFWiFiNetworkSharingNetwork *)v4 setLastModifiedDate:lastModifiedDate];

  password = [(CWFWiFiNetworkSharingNetwork *)self password];
  [(CWFWiFiNetworkSharingNetwork *)v4 setPassword:password];

  captivePortalCredentials = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  [(CWFWiFiNetworkSharingNetwork *)v4 setCaptivePortalCredentials:captivePortalCredentials];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sSID = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  [coderCopy encodeObject:sSID forKey:@"SSID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFWiFiNetworkSharingNetwork supportedSecurityTypes](self, "supportedSecurityTypes")}];
  [coderCopy encodeObject:v6 forKey:@"supportedSecurityTypes"];

  [coderCopy encodeBool:-[CWFWiFiNetworkSharingNetwork isHidden](self forKey:{"isHidden"), @"isHidden"}];
  [coderCopy encodeBool:-[CWFWiFiNetworkSharingNetwork isCaptive](self forKey:{"isCaptive"), @"isCaptive"}];
  firstSharedDate = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  [coderCopy encodeObject:firstSharedDate forKey:@"firstSharedDate"];

  lastModifiedDate = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];

  password = [(CWFWiFiNetworkSharingNetwork *)self password];
  [coderCopy encodeObject:password forKey:@"password"];

  captivePortalCredentials = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  [coderCopy encodeObject:captivePortalCredentials forKey:@"captivePortalCredentials"];
}

- (CWFWiFiNetworkSharingNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CWFWiFiNetworkSharingNetwork;
  v5 = [(CWFWiFiNetworkSharingNetwork *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setSSID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedSecurityTypes"];
    -[CWFWiFiNetworkSharingNetwork setSupportedSecurityTypes:](v5, "setSupportedSecurityTypes:", [v7 unsignedIntegerValue]);

    -[CWFWiFiNetworkSharingNetwork setIsHidden:](v5, "setIsHidden:", [coderCopy decodeBoolForKey:@"isHidden"]);
    -[CWFWiFiNetworkSharingNetwork setIsCaptive:](v5, "setIsCaptive:", [coderCopy decodeBoolForKey:@"isCaptive"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstSharedDate"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setFirstSharedDate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setLastModifiedDate:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setPassword:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"captivePortalCredentials"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setCaptivePortalCredentials:v14];
  }

  return v5;
}

@end