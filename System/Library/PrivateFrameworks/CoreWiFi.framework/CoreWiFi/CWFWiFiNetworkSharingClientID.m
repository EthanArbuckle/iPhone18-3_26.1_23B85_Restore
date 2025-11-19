@interface CWFWiFiNetworkSharingClientID
+ (CWFWiFiNetworkSharingClientID)clientIDWithAccessoryID:(id)a3 bundleID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingClientID:(id)a3;
- (CWFWiFiNetworkSharingClientID)initWithAccessoryID:(id)a3 bundleID:(id)a4;
- (CWFWiFiNetworkSharingClientID)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingClientID

+ (CWFWiFiNetworkSharingClientID)clientIDWithAccessoryID:(id)a3 bundleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CWFWiFiNetworkSharingClientID alloc] initWithAccessoryID:v6 bundleID:v5];

  return v7;
}

- (CWFWiFiNetworkSharingClientID)initWithAccessoryID:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CWFWiFiNetworkSharingClientID;
  v8 = [(CWFWiFiNetworkSharingClientID *)&v11 init];
  v9 = v8;
  if (v6 && v8 && ([(CWFWiFiNetworkSharingClientID *)v8 setAccessoryID:v6], v7))
  {
    [(CWFWiFiNetworkSharingClientID *)v9 setBundleID:v7];
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  v5 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  v6 = [v5 redactedForWiFi];
  v7 = [v3 stringWithFormat:@"(%@/%@)", v4, v6];

  return v7;
}

- (BOOL)isEqualToWiFiNetworkSharingClientID:(id)a3
{
  v6 = a3;
  v7 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  v8 = [v6 accessoryID];
  if (v7 != v8)
  {
    v9 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
    if (!v9)
    {
      v20 = 0;
      goto LABEL_20;
    }

    v3 = v9;
    v4 = [v6 accessoryID];
    if (!v4)
    {
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
    v11 = [v6 accessoryID];
    if (![v10 isEqual:v11])
    {
      v20 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v24 = v11;
    v25 = v10;
  }

  v12 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  v13 = [v6 bundleID];
  v14 = v13;
  if (v12 == v13)
  {

    v20 = 1;
  }

  else
  {
    v15 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
    if (v15)
    {
      v16 = v15;
      v17 = [v6 bundleID];
      if (v17)
      {
        [(CWFWiFiNetworkSharingClientID *)self bundleID];
        v18 = v22 = v4;
        [v6 bundleID];
        v19 = v23 = v3;
        v20 = [v18 isEqual:v19];

        v3 = v23;
        v4 = v22;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {

      v20 = 0;
    }
  }

  v11 = v24;
  v10 = v25;
  if (v7 != v8)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v20;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingClientID *)self isEqualToWiFiNetworkSharingClientID:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  v4 = [v3 hash];
  v5 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingClientID allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  [(CWFWiFiNetworkSharingClientID *)v4 setAccessoryID:v5];

  v6 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  [(CWFWiFiNetworkSharingClientID *)v4 setBundleID:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  [v4 encodeObject:v5 forKey:@"accessoryID"];

  v6 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  [v4 encodeObject:v6 forKey:@"bundleID"];
}

- (CWFWiFiNetworkSharingClientID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingClientID *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryID"];
    [(CWFWiFiNetworkSharingClientID *)v5 setAccessoryID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(CWFWiFiNetworkSharingClientID *)v5 setBundleID:v7];
  }

  return v5;
}

@end