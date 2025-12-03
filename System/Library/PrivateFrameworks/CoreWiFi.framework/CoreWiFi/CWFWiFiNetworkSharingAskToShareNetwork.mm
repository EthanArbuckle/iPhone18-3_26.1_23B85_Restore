@interface CWFWiFiNetworkSharingAskToShareNetwork
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingAskToShareNetwork:(id)network;
- (CWFWiFiNetworkSharingAskToShareNetwork)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingAskToShareNetwork

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  scanResult = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  network = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  v6 = [v3 stringWithFormat:@"(scanResult=%@, network=%@)", scanResult, network];

  return v6;
}

- (BOOL)isEqualToWiFiNetworkSharingAskToShareNetwork:(id)network
{
  networkCopy = network;
  scanResult = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  scanResult2 = [networkCopy scanResult];
  if (scanResult != scanResult2)
  {
    scanResult3 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
    if (!scanResult3)
    {
      v20 = 0;
      goto LABEL_20;
    }

    v3 = scanResult3;
    scanResult4 = [networkCopy scanResult];
    if (!scanResult4)
    {
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    scanResult5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
    scanResult6 = [networkCopy scanResult];
    if (![scanResult5 isEqual:scanResult6])
    {
      v20 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v24 = scanResult6;
    v25 = scanResult5;
  }

  network = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  network2 = [networkCopy network];
  v14 = network2;
  if (network == network2)
  {

    v20 = 1;
  }

  else
  {
    network3 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
    if (network3)
    {
      v16 = network3;
      network4 = [networkCopy network];
      if (network4)
      {
        [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
        v18 = v22 = scanResult4;
        [networkCopy network];
        v19 = v23 = v3;
        v20 = [v18 isEqual:v19];

        v3 = v23;
        scanResult4 = v22;
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

  scanResult6 = v24;
  scanResult5 = v25;
  if (scanResult != scanResult2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingAskToShareNetwork *)self isEqualToWiFiNetworkSharingAskToShareNetwork:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  scanResult = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  v4 = [scanResult hash];
  network = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  v6 = [network hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingAskToShareNetwork allocWithZone:?]];
  scanResult = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  [(CWFWiFiNetworkSharingAskToShareNetwork *)v4 setScanResult:scanResult];

  network = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  [(CWFWiFiNetworkSharingAskToShareNetwork *)v4 setNetwork:network];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  scanResult = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  [coderCopy encodeObject:scanResult forKey:@"scanResult"];

  network = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  [coderCopy encodeObject:network forKey:@"network"];
}

- (CWFWiFiNetworkSharingAskToShareNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingAskToShareNetwork;
  v5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanResult"];
    [(CWFWiFiNetworkSharingAskToShareNetwork *)v5 setScanResult:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"network"];
    [(CWFWiFiNetworkSharingAskToShareNetwork *)v5 setNetwork:v7];
  }

  return v5;
}

@end