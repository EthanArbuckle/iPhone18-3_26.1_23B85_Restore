@interface CWFWiFiNetworkSharingClientID
+ (CWFWiFiNetworkSharingClientID)clientIDWithAccessoryID:(id)d bundleID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingClientID:(id)d;
- (CWFWiFiNetworkSharingClientID)initWithAccessoryID:(id)d bundleID:(id)iD;
- (CWFWiFiNetworkSharingClientID)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingClientID

+ (CWFWiFiNetworkSharingClientID)clientIDWithAccessoryID:(id)d bundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [[CWFWiFiNetworkSharingClientID alloc] initWithAccessoryID:dCopy bundleID:iDCopy];

  return v7;
}

- (CWFWiFiNetworkSharingClientID)initWithAccessoryID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = CWFWiFiNetworkSharingClientID;
  v8 = [(CWFWiFiNetworkSharingClientID *)&v11 init];
  v9 = v8;
  if (dCopy && v8 && ([(CWFWiFiNetworkSharingClientID *)v8 setAccessoryID:dCopy], iDCopy))
  {
    [(CWFWiFiNetworkSharingClientID *)v9 setBundleID:iDCopy];
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
  bundleID = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  accessoryID = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  redactedForWiFi = [accessoryID redactedForWiFi];
  v7 = [v3 stringWithFormat:@"(%@/%@)", bundleID, redactedForWiFi];

  return v7;
}

- (BOOL)isEqualToWiFiNetworkSharingClientID:(id)d
{
  dCopy = d;
  accessoryID = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  accessoryID2 = [dCopy accessoryID];
  if (accessoryID != accessoryID2)
  {
    accessoryID3 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
    if (!accessoryID3)
    {
      v20 = 0;
      goto LABEL_20;
    }

    v3 = accessoryID3;
    accessoryID4 = [dCopy accessoryID];
    if (!accessoryID4)
    {
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    accessoryID5 = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
    accessoryID6 = [dCopy accessoryID];
    if (![accessoryID5 isEqual:accessoryID6])
    {
      v20 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v24 = accessoryID6;
    v25 = accessoryID5;
  }

  bundleID = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  bundleID2 = [dCopy bundleID];
  v14 = bundleID2;
  if (bundleID == bundleID2)
  {

    v20 = 1;
  }

  else
  {
    bundleID3 = [(CWFWiFiNetworkSharingClientID *)self bundleID];
    if (bundleID3)
    {
      v16 = bundleID3;
      bundleID4 = [dCopy bundleID];
      if (bundleID4)
      {
        [(CWFWiFiNetworkSharingClientID *)self bundleID];
        v18 = v22 = accessoryID4;
        [dCopy bundleID];
        v19 = v23 = v3;
        v20 = [v18 isEqual:v19];

        v3 = v23;
        accessoryID4 = v22;
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

  accessoryID6 = v24;
  accessoryID5 = v25;
  if (accessoryID != accessoryID2)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v20;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingClientID *)self isEqualToWiFiNetworkSharingClientID:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  accessoryID = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  v4 = [accessoryID hash];
  bundleID = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  v6 = [bundleID hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingClientID allocWithZone:?]];
  accessoryID = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  [(CWFWiFiNetworkSharingClientID *)v4 setAccessoryID:accessoryID];

  bundleID = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  [(CWFWiFiNetworkSharingClientID *)v4 setBundleID:bundleID];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryID = [(CWFWiFiNetworkSharingClientID *)self accessoryID];
  [coderCopy encodeObject:accessoryID forKey:@"accessoryID"];

  bundleID = [(CWFWiFiNetworkSharingClientID *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
}

- (CWFWiFiNetworkSharingClientID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CWFWiFiNetworkSharingClientID *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryID"];
    [(CWFWiFiNetworkSharingClientID *)v5 setAccessoryID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(CWFWiFiNetworkSharingClientID *)v5 setBundleID:v7];
  }

  return v5;
}

@end