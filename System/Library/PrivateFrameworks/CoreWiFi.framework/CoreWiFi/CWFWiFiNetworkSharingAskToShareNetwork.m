@interface CWFWiFiNetworkSharingAskToShareNetwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingAskToShareNetwork:(id)a3;
- (CWFWiFiNetworkSharingAskToShareNetwork)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingAskToShareNetwork

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  v5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  v6 = [v3 stringWithFormat:@"(scanResult=%@, network=%@)", v4, v5];

  return v6;
}

- (BOOL)isEqualToWiFiNetworkSharingAskToShareNetwork:(id)a3
{
  v6 = a3;
  v7 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  v8 = [v6 scanResult];
  if (v7 != v8)
  {
    v9 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
    if (!v9)
    {
      v20 = 0;
      goto LABEL_20;
    }

    v3 = v9;
    v4 = [v6 scanResult];
    if (!v4)
    {
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
    v11 = [v6 scanResult];
    if (![v10 isEqual:v11])
    {
      v20 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v24 = v11;
    v25 = v10;
  }

  v12 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  v13 = [v6 network];
  v14 = v13;
  if (v12 == v13)
  {

    v20 = 1;
  }

  else
  {
    v15 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
    if (v15)
    {
      v16 = v15;
      v17 = [v6 network];
      if (v17)
      {
        [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
        v18 = v22 = v4;
        [v6 network];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingAskToShareNetwork *)self isEqualToWiFiNetworkSharingAskToShareNetwork:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  v4 = [v3 hash];
  v5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingAskToShareNetwork allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  [(CWFWiFiNetworkSharingAskToShareNetwork *)v4 setScanResult:v5];

  v6 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  [(CWFWiFiNetworkSharingAskToShareNetwork *)v4 setNetwork:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self scanResult];
  [v4 encodeObject:v5 forKey:@"scanResult"];

  v6 = [(CWFWiFiNetworkSharingAskToShareNetwork *)self network];
  [v4 encodeObject:v6 forKey:@"network"];
}

- (CWFWiFiNetworkSharingAskToShareNetwork)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingAskToShareNetwork;
  v5 = [(CWFWiFiNetworkSharingAskToShareNetwork *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanResult"];
    [(CWFWiFiNetworkSharingAskToShareNetwork *)v5 setScanResult:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"network"];
    [(CWFWiFiNetworkSharingAskToShareNetwork *)v5 setNetwork:v7];
  }

  return v5;
}

@end