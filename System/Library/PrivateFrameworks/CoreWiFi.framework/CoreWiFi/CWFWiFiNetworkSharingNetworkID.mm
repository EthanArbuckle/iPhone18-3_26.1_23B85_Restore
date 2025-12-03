@interface CWFWiFiNetworkSharingNetworkID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingNetworkID:(id)d;
- (CWFWiFiNetworkSharingNetworkID)initWithCoder:(id)coder;
- (CWFWiFiNetworkSharingNetworkID)initWithDescriptor:(id)descriptor;
- (CWFWiFiNetworkSharingNetworkID)initWithSSID:(id)d;
- (NSString)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingNetworkID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sSID = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v5 = CWFHumanReadableStringFromData(sSID);
  redactedForWiFi = [v5 redactedForWiFi];
  sSID2 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v8 = CWFHexadecimalStringFromData(sSID2);
  redactedForWiFi2 = [v8 redactedForWiFi];
  v10 = [v3 stringWithFormat:@"(ssid='%@' (0x%@))", redactedForWiFi, redactedForWiFi2];

  return v10;
}

- (BOOL)isEqualToWiFiNetworkSharingNetworkID:(id)d
{
  dCopy = d;
  sSID = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  sSID2 = [dCopy SSID];
  if (sSID == sSID2)
  {
    v11 = 1;
  }

  else
  {
    sSID3 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
    if (sSID3)
    {
      sSID4 = [dCopy SSID];
      if (sSID4)
      {
        sSID5 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
        sSID6 = [dCopy SSID];
        v11 = [sSID5 isEqual:sSID6];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetworkID *)self isEqualToWiFiNetworkSharingNetworkID:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  sSID = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v3 = [sSID hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingNetworkID allocWithZone:?]];
  sSID = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  [(CWFWiFiNetworkSharingNetworkID *)v4 setSSID:sSID];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sSID = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  [coderCopy encodeObject:sSID forKey:@"SSID"];
}

- (CWFWiFiNetworkSharingNetworkID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingNetworkID;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    [(CWFWiFiNetworkSharingNetworkID *)v5 setSSID:v6];
  }

  return v5;
}

- (CWFWiFiNetworkSharingNetworkID)initWithSSID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingNetworkID;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)&v8 init];
  v6 = v5;
  if (dCopy && v5)
  {
    [(CWFWiFiNetworkSharingNetworkID *)v5 setSSID:dCopy];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (CWFWiFiNetworkSharingNetworkID)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = CWFWiFiNetworkSharingNetworkID;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)&v13 init];
  v6 = v5;
  v7 = 0;
  if (!descriptorCopy || !v5)
  {
    v9 = v5;
    v8 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v8 = [descriptorCopy componentsSeparatedByString:@"."];
  if ([v8 count] < 2)
  {
    v7 = 0;
    v9 = v6;
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [v8 objectAtIndexedSubscript:0];
  if ([v7 isEqualToString:@"ssid"])
  {
    v9 = [v8 objectAtIndexedSubscript:1];
    v10 = CWFDataFromHexadecimalString(v9);
LABEL_8:
    v11 = v10;
    [(CWFWiFiNetworkSharingNetworkID *)v6 setSSID:v10];

LABEL_9:
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"name"])
  {
    v9 = [v8 objectAtIndexedSubscript:1];
    v10 = CWFDataFromHumanReadableString(v9, 0);
    goto LABEL_8;
  }

LABEL_10:

  return v6;
}

- (NSString)descriptor
{
  sSID = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v3 = sSID;
  if (sSID)
  {
    v4 = CWFHumanReadableStringFromData(sSID);
    v5 = MEMORY[0x1E696AEC0];
    if (v4)
    {
      v6 = v4;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"name.%@", v4];
    }

    else
    {
      v8 = CWFHexadecimalStringFromData(v3);
      v7 = [v5 stringWithFormat:@"ssid.%@", v8];

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v7;

  return v7;
}

@end