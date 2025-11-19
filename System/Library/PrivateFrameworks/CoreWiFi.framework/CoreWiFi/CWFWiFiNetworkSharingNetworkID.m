@interface CWFWiFiNetworkSharingNetworkID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingNetworkID:(id)a3;
- (CWFWiFiNetworkSharingNetworkID)initWithCoder:(id)a3;
- (CWFWiFiNetworkSharingNetworkID)initWithDescriptor:(id)a3;
- (CWFWiFiNetworkSharingNetworkID)initWithSSID:(id)a3;
- (NSString)descriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingNetworkID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v5 = CWFHumanReadableStringFromData(v4);
  v6 = [v5 redactedForWiFi];
  v7 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v8 = CWFHexadecimalStringFromData(v7);
  v9 = [v8 redactedForWiFi];
  v10 = [v3 stringWithFormat:@"(ssid='%@' (0x%@))", v6, v9];

  return v10;
}

- (BOOL)isEqualToWiFiNetworkSharingNetworkID:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v6 = [v4 SSID];
  if (v5 == v6)
  {
    v11 = 1;
  }

  else
  {
    v7 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
    if (v7)
    {
      v8 = [v4 SSID];
      if (v8)
      {
        v9 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
        v10 = [v4 SSID];
        v11 = [v9 isEqual:v10];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetworkID *)self isEqualToWiFiNetworkSharingNetworkID:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingNetworkID allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  [(CWFWiFiNetworkSharingNetworkID *)v4 setSSID:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  [v4 encodeObject:v5 forKey:@"SSID"];
}

- (CWFWiFiNetworkSharingNetworkID)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingNetworkID;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    [(CWFWiFiNetworkSharingNetworkID *)v5 setSSID:v6];
  }

  return v5;
}

- (CWFWiFiNetworkSharingNetworkID)initWithSSID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingNetworkID;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)&v8 init];
  v6 = v5;
  if (v4 && v5)
  {
    [(CWFWiFiNetworkSharingNetworkID *)v5 setSSID:v4];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (CWFWiFiNetworkSharingNetworkID)initWithDescriptor:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CWFWiFiNetworkSharingNetworkID;
  v5 = [(CWFWiFiNetworkSharingNetworkID *)&v13 init];
  v6 = v5;
  v7 = 0;
  if (!v4 || !v5)
  {
    v9 = v5;
    v8 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v8 = [v4 componentsSeparatedByString:@"."];
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
  v2 = [(CWFWiFiNetworkSharingNetworkID *)self SSID];
  v3 = v2;
  if (v2)
  {
    v4 = CWFHumanReadableStringFromData(v2);
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