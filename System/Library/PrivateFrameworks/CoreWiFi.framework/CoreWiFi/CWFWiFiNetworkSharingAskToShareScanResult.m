@interface CWFWiFiNetworkSharingAskToShareScanResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingAskToShareScanResult:(id)a3;
- (CWFWiFiNetworkSharingAskToShareScanResult)initWithCoder:(id)a3;
- (NSString)networkName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingAskToShareScanResult

- (NSString)networkName
{
  v2 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v3 = CWFHumanReadableStringFromData(v2);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v5 = CWFHexadecimalStringFromData(v4);
  v6 = [v5 redactedForWiFi];
  v7 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self networkName];
  v8 = [v7 redactedForWiFi];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  v10 = v9;
  v11 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnected];
  v12 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self wasFoundOnAccessory];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  v14 = [v3 stringWithFormat:@"(ssid=%@ ('%@'), signal=%.2f, connected=%d, accessory=[found=%d, signal=%.2f, connected=%d])", v6, v8, v10, v11, v12, v13, -[CWFWiFiNetworkSharingAskToShareScanResult isConnectedOnAccessory](self, "isConnectedOnAccessory")];

  return v14;
}

- (BOOL)isEqualToWiFiNetworkSharingAskToShareScanResult:(id)a3
{
  v6 = a3;
  v7 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v8 = [v6 SSID];
  if (v7 != v8)
  {
    v9 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
    if (!v9)
    {
      v20 = 0;
      goto LABEL_18;
    }

    v3 = v9;
    v10 = [v6 SSID];
    if (!v10)
    {
      LOBYTE(v19) = 0;
LABEL_17:

      v20 = v19;
      goto LABEL_18;
    }

    v4 = v10;
    v11 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
    v12 = [v6 SSID];
    if (![v11 isEqual:v12])
    {
      LOBYTE(v19) = 0;
LABEL_16:

      goto LABEL_17;
    }

    v29 = v12;
    v30 = v11;
  }

  v13 = MEMORY[0x1E696AD98];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  v14 = [v13 numberWithDouble:?];
  v15 = MEMORY[0x1E696AD98];
  [v6 signalStrength];
  v16 = [v15 numberWithDouble:?];
  if ([v14 isEqualToNumber:v16] && (v17 = -[CWFWiFiNetworkSharingAskToShareScanResult isConnected](self, "isConnected"), v17 == objc_msgSend(v6, "isConnected")) && (v18 = -[CWFWiFiNetworkSharingAskToShareScanResult wasFoundOnAccessory](self, "wasFoundOnAccessory"), v18 == objc_msgSend(v6, "wasFoundOnAccessory")))
  {
    v23 = MEMORY[0x1E696AD98];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
    v24 = [v23 numberWithDouble:?];
    v25 = MEMORY[0x1E696AD98];
    [v6 signalStrengthOnAccessory];
    v27 = [v25 numberWithDouble:?];
    v28 = v24;
    if ([v24 isEqualToNumber:v27])
    {
      v26 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnectedOnAccessory];
      v19 = v26 ^ [v6 isConnectedOnAccessory] ^ 1;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    v11 = v30;

    v20 = v19;
    v21 = v7 == v8;
  }

  else
  {

    LOBYTE(v19) = 0;
    v20 = 0;
    v21 = v7 == v8;
    v11 = v30;
  }

  v12 = v29;
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_18:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingAskToShareScanResult *)self isEqualToWiFiNetworkSharingAskToShareScanResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v4 = [v3 hash];
  v5 = MEMORY[0x1E696AD98];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  v8 = v4 ^ [(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnected];
  v9 = v7 ^ v8 ^ [(CWFWiFiNetworkSharingAskToShareScanResult *)self wasFoundOnAccessory];
  v10 = MEMORY[0x1E696AD98];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  v11 = [v10 numberWithDouble:?];
  v12 = [v11 hash] ^ self->_isConnectedOnAccessory;

  return v9 ^ v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingAskToShareScanResult allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setSSID:v5];

  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setSignalStrength:?];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setIsConnected:[(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnected]];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setWasFoundOnAccessory:[(CWFWiFiNetworkSharingAskToShareScanResult *)self wasFoundOnAccessory]];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setSignalStrengthOnAccessory:?];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setIsConnectedOnAccessory:[(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnectedOnAccessory]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  [v5 encodeObject:v4 forKey:@"SSID"];

  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  [v5 encodeDouble:@"signalStrength" forKey:?];
  [v5 encodeBool:-[CWFWiFiNetworkSharingAskToShareScanResult isConnected](self forKey:{"isConnected"), @"isConnected"}];
  [v5 encodeBool:-[CWFWiFiNetworkSharingAskToShareScanResult wasFoundOnAccessory](self forKey:{"wasFoundOnAccessory"), @"wasFoundOnAccessory"}];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  [v5 encodeDouble:@"signalStrengthOnAccessory" forKey:?];
  [v5 encodeBool:-[CWFWiFiNetworkSharingAskToShareScanResult isConnectedOnAccessory](self forKey:{"isConnectedOnAccessory"), @"isConnectedOnAccessory"}];
}

- (CWFWiFiNetworkSharingAskToShareScanResult)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingAskToShareScanResult;
  v5 = [(CWFWiFiNetworkSharingAskToShareScanResult *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)v5 setSSID:v6];

    [v4 decodeDoubleForKey:@"signalStrength"];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)v5 setSignalStrength:?];
    -[CWFWiFiNetworkSharingAskToShareScanResult setIsConnected:](v5, "setIsConnected:", [v4 decodeBoolForKey:@"isConnected"]);
    -[CWFWiFiNetworkSharingAskToShareScanResult setWasFoundOnAccessory:](v5, "setWasFoundOnAccessory:", [v4 decodeBoolForKey:@"wasFoundOnAccessory"]);
    [v4 decodeDoubleForKey:@"signalStrengthOnAccessory"];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)v5 setSignalStrengthOnAccessory:?];
    -[CWFWiFiNetworkSharingAskToShareScanResult setIsConnectedOnAccessory:](v5, "setIsConnectedOnAccessory:", [v4 decodeBoolForKey:@"isConnectedOnAccessory"]);
  }

  return v5;
}

@end