@interface CWFWiFiNetworkSharingNetwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingNetwork:(id)a3;
- (CWFWiFiNetworkSharingNetwork)initWithCoder:(id)a3;
- (CWFWiFiNetworkSharingNetworkID)wifiNetworkSharingNetworkID;
- (NSString)networkName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingNetwork

- (CWFWiFiNetworkSharingNetworkID)wifiNetworkSharingNetworkID
{
  v2 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  if (v2)
  {
    v3 = [[CWFWiFiNetworkSharingNetworkID alloc] initWithSSID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)networkName
{
  v2 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v3 = CWFHumanReadableStringFromData(v2);

  return v3;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v24 = [(CWFWiFiNetworkSharingNetwork *)self networkName];
  v18 = [v24 redactedForWiFi];
  v23 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v22 = CWFHexadecimalStringFromData(v23);
  v16 = [v22 redactedForWiFi];
  v14 = sub_1E0BD331C([(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes], 0, 0);
  v13 = [(CWFWiFiNetworkSharingNetwork *)self isCaptive];
  v12 = [(CWFWiFiNetworkSharingNetwork *)self isHidden];
  v19 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  v11 = sub_1E0BCC248(v19);
  v17 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  v3 = sub_1E0BCC248(v17);
  v15 = [(CWFWiFiNetworkSharingNetwork *)self password];
  v4 = [(CWFWiFiNetworkSharingNetwork *)self password];
  v5 = [v4 redactedSensitiveContentForWiFi];
  v6 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  v7 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  v8 = [v7 description];
  v9 = [v8 redactedSensitiveContentForWiFi];
  v21 = [v20 stringWithFormat:@"(ssid=%@ (0x%@), security=%@, captive=%d, hidden=%d, firstShared=%@, modified=%@, hasPassword=%d (%@), hasCaptivePortalCreds=%d (%@))", v18, v16, v14, v13, v12, v11, v3, v15 != 0, v5, v6 != 0, v9];

  return v21;
}

- (BOOL)isEqualToWiFiNetworkSharingNetwork:(id)a3
{
  v8 = a3;
  v9 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v10 = [v8 SSID];
  if (v9 != v10)
  {
    v11 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_53;
    }

    v3 = v11;
    v4 = [v8 SSID];
    if (!v4)
    {
      v12 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v5 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
    v6 = [v8 SSID];
    if (![v5 isEqual:v6])
    {
      v12 = 0;
LABEL_51:

      goto LABEL_52;
    }
  }

  v13 = [(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes];
  if (v13 != [v8 supportedSecurityTypes])
  {
    goto LABEL_49;
  }

  v14 = [(CWFWiFiNetworkSharingNetwork *)self isHidden];
  if (v14 != [v8 isHidden])
  {
    goto LABEL_49;
  }

  v15 = [(CWFWiFiNetworkSharingNetwork *)self isCaptive];
  if (v15 != [v8 isCaptive])
  {
    goto LABEL_49;
  }

  v16 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  v17 = [v8 firstSharedDate];
  v18 = v17;
  if (v16 != v17)
  {
    v19 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
    if (v19)
    {
      v60 = v19;
      v20 = [v8 firstSharedDate];
      if (v20)
      {
        v62 = v18;
        v63 = v16;
        v59 = v20;
        v21 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
        v22 = [v8 firstSharedDate];
        if ([v21 isEqual:v22])
        {
          v51 = v22;
          v52 = v21;
          goto LABEL_17;
        }

LABEL_49:
        v12 = 0;
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v62 = v17;
  v63 = v16;
LABEL_17:
  v23 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  v61 = [v8 lastModifiedDate];
  if (v23 == v61)
  {
    goto LABEL_22;
  }

  v24 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  if (!v24)
  {
    goto LABEL_35;
  }

  v53 = v24;
  v25 = [v8 lastModifiedDate];
  if (!v25)
  {

LABEL_35:
    goto LABEL_37;
  }

  v54 = v23;
  v50 = v25;
  v26 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  v27 = [v8 lastModifiedDate];
  if (([v26 isEqual:v27] & 1) == 0)
  {

LABEL_37:
    if (v63 != v62)
    {
    }

LABEL_48:

    goto LABEL_49;
  }

  v47 = v26;
  v49 = v27;
  v23 = v54;
LABEL_22:
  v28 = [(CWFWiFiNetworkSharingNetwork *)self password];
  [v8 password];
  v58 = v57 = v28;
  if (v28 != v58)
  {
    v55 = v23;
    v29 = [(CWFWiFiNetworkSharingNetwork *)self password];
    if (v29)
    {
      v48 = v29;
      v30 = [v8 password];
      if (v30)
      {
        v46 = v30;
        v31 = [(CWFWiFiNetworkSharingNetwork *)self password];
        v32 = [v8 password];
        if ([v31 isEqual:v32])
        {
          v44 = v32;
          v45 = v31;
          v23 = v55;
          goto LABEL_30;
        }

        v30 = v46;
        v28 = v57;
      }

      v37 = v49;
    }

    else
    {
      v37 = v49;
    }

    if (v55 != v61)
    {
    }

    if (v63 != v62)
    {
    }

    goto LABEL_48;
  }

LABEL_30:
  v33 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  v34 = [v8 captivePortalCredentials];
  if (v33 == v34)
  {

    v12 = 1;
  }

  else
  {
    v56 = v34;
    v35 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
    if (v35)
    {
      v43 = v35;
      v36 = [v8 captivePortalCredentials];
      if (v36)
      {
        v42 = v36;
        v41 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
        v40 = [v8 captivePortalCredentials];
        v12 = [v41 isEqual:v40];

        v36 = v42;
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

  if (v23 != v61)
  {
  }

  if (v63 != v62)
  {
  }

LABEL_50:
  if (v9 != v10)
  {
    goto LABEL_51;
  }

LABEL_53:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetwork *)self isEqualToWiFiNetworkSharingNetwork:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  v4 = [v3 hash];
  v5 = [(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes]^ v4;
  v6 = v5 ^ [(CWFWiFiNetworkSharingNetwork *)self isHidden];
  v7 = [(CWFWiFiNetworkSharingNetwork *)self isCaptive];
  v8 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  v11 = [v10 hash];
  v12 = [(CWFWiFiNetworkSharingNetwork *)self password];
  v13 = v11 ^ [v12 hash];
  v14 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  v15 = v13 ^ [v14 hash];

  return v9 ^ v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingNetwork allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  [(CWFWiFiNetworkSharingNetwork *)v4 setSSID:v5];

  [(CWFWiFiNetworkSharingNetwork *)v4 setSupportedSecurityTypes:[(CWFWiFiNetworkSharingNetwork *)self supportedSecurityTypes]];
  [(CWFWiFiNetworkSharingNetwork *)v4 setIsHidden:[(CWFWiFiNetworkSharingNetwork *)self isHidden]];
  [(CWFWiFiNetworkSharingNetwork *)v4 setIsCaptive:[(CWFWiFiNetworkSharingNetwork *)self isCaptive]];
  v6 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  [(CWFWiFiNetworkSharingNetwork *)v4 setFirstSharedDate:v6];

  v7 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  [(CWFWiFiNetworkSharingNetwork *)v4 setLastModifiedDate:v7];

  v8 = [(CWFWiFiNetworkSharingNetwork *)self password];
  [(CWFWiFiNetworkSharingNetwork *)v4 setPassword:v8];

  v9 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  [(CWFWiFiNetworkSharingNetwork *)v4 setCaptivePortalCredentials:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingNetwork *)self SSID];
  [v4 encodeObject:v5 forKey:@"SSID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFWiFiNetworkSharingNetwork supportedSecurityTypes](self, "supportedSecurityTypes")}];
  [v4 encodeObject:v6 forKey:@"supportedSecurityTypes"];

  [v4 encodeBool:-[CWFWiFiNetworkSharingNetwork isHidden](self forKey:{"isHidden"), @"isHidden"}];
  [v4 encodeBool:-[CWFWiFiNetworkSharingNetwork isCaptive](self forKey:{"isCaptive"), @"isCaptive"}];
  v7 = [(CWFWiFiNetworkSharingNetwork *)self firstSharedDate];
  [v4 encodeObject:v7 forKey:@"firstSharedDate"];

  v8 = [(CWFWiFiNetworkSharingNetwork *)self lastModifiedDate];
  [v4 encodeObject:v8 forKey:@"lastModifiedDate"];

  v9 = [(CWFWiFiNetworkSharingNetwork *)self password];
  [v4 encodeObject:v9 forKey:@"password"];

  v10 = [(CWFWiFiNetworkSharingNetwork *)self captivePortalCredentials];
  [v4 encodeObject:v10 forKey:@"captivePortalCredentials"];
}

- (CWFWiFiNetworkSharingNetwork)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CWFWiFiNetworkSharingNetwork;
  v5 = [(CWFWiFiNetworkSharingNetwork *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setSSID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedSecurityTypes"];
    -[CWFWiFiNetworkSharingNetwork setSupportedSecurityTypes:](v5, "setSupportedSecurityTypes:", [v7 unsignedIntegerValue]);

    -[CWFWiFiNetworkSharingNetwork setIsHidden:](v5, "setIsHidden:", [v4 decodeBoolForKey:@"isHidden"]);
    -[CWFWiFiNetworkSharingNetwork setIsCaptive:](v5, "setIsCaptive:", [v4 decodeBoolForKey:@"isCaptive"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstSharedDate"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setFirstSharedDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setLastModifiedDate:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setPassword:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"captivePortalCredentials"];
    [(CWFWiFiNetworkSharingNetwork *)v5 setCaptivePortalCredentials:v14];
  }

  return v5;
}

@end