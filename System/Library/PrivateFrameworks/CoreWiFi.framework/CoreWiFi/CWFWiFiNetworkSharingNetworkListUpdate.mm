@interface CWFWiFiNetworkSharingNetworkListUpdate
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingNetworksUpdate:(id)a3;
- (CWFWiFiNetworkSharingNetworkListUpdate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingNetworkListUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter];
  v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareNetworkAvailable];
  v6 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending];
  v7 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  v8 = [v3 stringWithFormat:@"(updateCounter=%lu, askToShare=%d, askToShareFromApp=%d, networkList=%@)", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqualToWiFiNetworkSharingNetworksUpdate:(id)a3
{
  v8 = a3;
  v9 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  v10 = [v8 networkList];
  if (v9 != v10)
  {
    v11 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
    if (!v11)
    {
      v16 = 0;
      goto LABEL_15;
    }

    v3 = v11;
    v12 = [v8 networkList];
    if (!v12)
    {
      LOBYTE(v13) = 0;
LABEL_14:

      v16 = v13;
      goto LABEL_15;
    }

    v4 = v12;
    v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
    v6 = [v8 networkList];
    if (![v5 isEqual:v6])
    {
      LOBYTE(v13) = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v14 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter];
  if (v14 == [v8 networkListUpdateCounter] && (v15 = -[CWFWiFiNetworkSharingNetworkListUpdate isAskToShareNetworkAvailable](self, "isAskToShareNetworkAvailable"), v15 == objc_msgSend(v8, "isAskToShareNetworkAvailable")))
  {
    v17 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending];
    v13 = v17 ^ [v8 isAskToShareRequestFromAppPending] ^ 1;
    v16 = v13;
  }

  else
  {
    LOBYTE(v13) = 0;
    v16 = 0;
  }

  if (v9 != v10)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetworkListUpdate *)self isEqualToWiFiNetworkSharingNetworksUpdate:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  v4 = [v3 hash];
  v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter]^ v4;
  v6 = v5 ^ [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareNetworkAvailable];
  v7 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending];

  return v6 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingNetworkListUpdate allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setNetworkList:v5];

  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setNetworkListUpdateCounter:[(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter]];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setIsAskToShareNetworkAvailable:[(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareNetworkAvailable]];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setIsAskToShareRequestFromAppPending:[(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  [v6 encodeObject:v4 forKey:@"networkList"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFWiFiNetworkSharingNetworkListUpdate networkListUpdateCounter](self, "networkListUpdateCounter")}];
  [v6 encodeObject:v5 forKey:@"networkListUpdateCounter"];

  [v6 encodeBool:-[CWFWiFiNetworkSharingNetworkListUpdate isAskToShareNetworkAvailable](self forKey:{"isAskToShareNetworkAvailable"), @"isAskToShareNetworkAvailable"}];
  [v6 encodeBool:-[CWFWiFiNetworkSharingNetworkListUpdate isAskToShareRequestFromAppPending](self forKey:{"isAskToShareRequestFromAppPending"), @"isAskToShareRequestFromAppPending"}];
}

- (CWFWiFiNetworkSharingNetworkListUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CWFWiFiNetworkSharingNetworkListUpdate;
  v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"networkList"];
    [(CWFWiFiNetworkSharingNetworkListUpdate *)v5 setNetworkList:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkListUpdateCounter"];
    -[CWFWiFiNetworkSharingNetworkListUpdate setNetworkListUpdateCounter:](v5, "setNetworkListUpdateCounter:", [v10 unsignedIntegerValue]);

    -[CWFWiFiNetworkSharingNetworkListUpdate setIsAskToShareNetworkAvailable:](v5, "setIsAskToShareNetworkAvailable:", [v4 decodeBoolForKey:@"isAskToShareNetworkAvailable"]);
    -[CWFWiFiNetworkSharingNetworkListUpdate setIsAskToShareRequestFromAppPending:](v5, "setIsAskToShareRequestFromAppPending:", [v4 decodeBoolForKey:@"isAskToShareRequestFromAppPending"]);
  }

  return v5;
}

@end