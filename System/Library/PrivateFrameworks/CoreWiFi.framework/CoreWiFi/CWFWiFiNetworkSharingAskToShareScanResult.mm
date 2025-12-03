@interface CWFWiFiNetworkSharingAskToShareScanResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingAskToShareScanResult:(id)result;
- (CWFWiFiNetworkSharingAskToShareScanResult)initWithCoder:(id)coder;
- (NSString)networkName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingAskToShareScanResult

- (NSString)networkName
{
  sSID = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v3 = CWFHumanReadableStringFromData(sSID);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sSID = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v5 = CWFHexadecimalStringFromData(sSID);
  redactedForWiFi = [v5 redactedForWiFi];
  networkName = [(CWFWiFiNetworkSharingAskToShareScanResult *)self networkName];
  redactedForWiFi2 = [networkName redactedForWiFi];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  v10 = v9;
  isConnected = [(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnected];
  wasFoundOnAccessory = [(CWFWiFiNetworkSharingAskToShareScanResult *)self wasFoundOnAccessory];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  v14 = [v3 stringWithFormat:@"(ssid=%@ ('%@'), signal=%.2f, connected=%d, accessory=[found=%d, signal=%.2f, connected=%d])", redactedForWiFi, redactedForWiFi2, v10, isConnected, wasFoundOnAccessory, v13, -[CWFWiFiNetworkSharingAskToShareScanResult isConnectedOnAccessory](self, "isConnectedOnAccessory")];

  return v14;
}

- (BOOL)isEqualToWiFiNetworkSharingAskToShareScanResult:(id)result
{
  resultCopy = result;
  sSID = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  sSID2 = [resultCopy SSID];
  if (sSID != sSID2)
  {
    sSID3 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
    if (!sSID3)
    {
      v20 = 0;
      goto LABEL_18;
    }

    v3 = sSID3;
    sSID4 = [resultCopy SSID];
    if (!sSID4)
    {
      LOBYTE(v19) = 0;
LABEL_17:

      v20 = v19;
      goto LABEL_18;
    }

    v4 = sSID4;
    sSID5 = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
    sSID6 = [resultCopy SSID];
    if (![sSID5 isEqual:sSID6])
    {
      LOBYTE(v19) = 0;
LABEL_16:

      goto LABEL_17;
    }

    v29 = sSID6;
    v30 = sSID5;
  }

  v13 = MEMORY[0x1E696AD98];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  v14 = [v13 numberWithDouble:?];
  v15 = MEMORY[0x1E696AD98];
  [resultCopy signalStrength];
  v16 = [v15 numberWithDouble:?];
  if ([v14 isEqualToNumber:v16] && (v17 = -[CWFWiFiNetworkSharingAskToShareScanResult isConnected](self, "isConnected"), v17 == objc_msgSend(resultCopy, "isConnected")) && (v18 = -[CWFWiFiNetworkSharingAskToShareScanResult wasFoundOnAccessory](self, "wasFoundOnAccessory"), v18 == objc_msgSend(resultCopy, "wasFoundOnAccessory")))
  {
    v23 = MEMORY[0x1E696AD98];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
    v24 = [v23 numberWithDouble:?];
    v25 = MEMORY[0x1E696AD98];
    [resultCopy signalStrengthOnAccessory];
    v27 = [v25 numberWithDouble:?];
    v28 = v24;
    if ([v24 isEqualToNumber:v27])
    {
      isConnectedOnAccessory = [(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnectedOnAccessory];
      v19 = isConnectedOnAccessory ^ [resultCopy isConnectedOnAccessory] ^ 1;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    sSID5 = v30;

    v20 = v19;
    v21 = sSID == sSID2;
  }

  else
  {

    LOBYTE(v19) = 0;
    v20 = 0;
    v21 = sSID == sSID2;
    sSID5 = v30;
  }

  sSID6 = v29;
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_18:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingAskToShareScanResult *)self isEqualToWiFiNetworkSharingAskToShareScanResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  sSID = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  v4 = [sSID hash];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingAskToShareScanResult allocWithZone:?]];
  sSID = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setSSID:sSID];

  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setSignalStrength:?];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setIsConnected:[(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnected]];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setWasFoundOnAccessory:[(CWFWiFiNetworkSharingAskToShareScanResult *)self wasFoundOnAccessory]];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setSignalStrengthOnAccessory:?];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)v4 setIsConnectedOnAccessory:[(CWFWiFiNetworkSharingAskToShareScanResult *)self isConnectedOnAccessory]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sSID = [(CWFWiFiNetworkSharingAskToShareScanResult *)self SSID];
  [coderCopy encodeObject:sSID forKey:@"SSID"];

  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrength];
  [coderCopy encodeDouble:@"signalStrength" forKey:?];
  [coderCopy encodeBool:-[CWFWiFiNetworkSharingAskToShareScanResult isConnected](self forKey:{"isConnected"), @"isConnected"}];
  [coderCopy encodeBool:-[CWFWiFiNetworkSharingAskToShareScanResult wasFoundOnAccessory](self forKey:{"wasFoundOnAccessory"), @"wasFoundOnAccessory"}];
  [(CWFWiFiNetworkSharingAskToShareScanResult *)self signalStrengthOnAccessory];
  [coderCopy encodeDouble:@"signalStrengthOnAccessory" forKey:?];
  [coderCopy encodeBool:-[CWFWiFiNetworkSharingAskToShareScanResult isConnectedOnAccessory](self forKey:{"isConnectedOnAccessory"), @"isConnectedOnAccessory"}];
}

- (CWFWiFiNetworkSharingAskToShareScanResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingAskToShareScanResult;
  v5 = [(CWFWiFiNetworkSharingAskToShareScanResult *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)v5 setSSID:v6];

    [coderCopy decodeDoubleForKey:@"signalStrength"];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)v5 setSignalStrength:?];
    -[CWFWiFiNetworkSharingAskToShareScanResult setIsConnected:](v5, "setIsConnected:", [coderCopy decodeBoolForKey:@"isConnected"]);
    -[CWFWiFiNetworkSharingAskToShareScanResult setWasFoundOnAccessory:](v5, "setWasFoundOnAccessory:", [coderCopy decodeBoolForKey:@"wasFoundOnAccessory"]);
    [coderCopy decodeDoubleForKey:@"signalStrengthOnAccessory"];
    [(CWFWiFiNetworkSharingAskToShareScanResult *)v5 setSignalStrengthOnAccessory:?];
    -[CWFWiFiNetworkSharingAskToShareScanResult setIsConnectedOnAccessory:](v5, "setIsConnectedOnAccessory:", [coderCopy decodeBoolForKey:@"isConnectedOnAccessory"]);
  }

  return v5;
}

@end