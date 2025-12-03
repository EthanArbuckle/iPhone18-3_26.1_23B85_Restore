@interface CWFWiFiNetworkSharingNetworkListUpdate
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingNetworksUpdate:(id)update;
- (CWFWiFiNetworkSharingNetworkListUpdate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingNetworkListUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  networkListUpdateCounter = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter];
  isAskToShareNetworkAvailable = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareNetworkAvailable];
  isAskToShareRequestFromAppPending = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending];
  networkList = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  v8 = [v3 stringWithFormat:@"(updateCounter=%lu, askToShare=%d, askToShareFromApp=%d, networkList=%@)", networkListUpdateCounter, isAskToShareNetworkAvailable, isAskToShareRequestFromAppPending, networkList];

  return v8;
}

- (BOOL)isEqualToWiFiNetworkSharingNetworksUpdate:(id)update
{
  updateCopy = update;
  networkList = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  networkList2 = [updateCopy networkList];
  if (networkList != networkList2)
  {
    networkList3 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
    if (!networkList3)
    {
      v16 = 0;
      goto LABEL_15;
    }

    v3 = networkList3;
    networkList4 = [updateCopy networkList];
    if (!networkList4)
    {
      LOBYTE(v13) = 0;
LABEL_14:

      v16 = v13;
      goto LABEL_15;
    }

    v4 = networkList4;
    networkList5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
    networkList6 = [updateCopy networkList];
    if (![networkList5 isEqual:networkList6])
    {
      LOBYTE(v13) = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  networkListUpdateCounter = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter];
  if (networkListUpdateCounter == [updateCopy networkListUpdateCounter] && (v15 = -[CWFWiFiNetworkSharingNetworkListUpdate isAskToShareNetworkAvailable](self, "isAskToShareNetworkAvailable"), v15 == objc_msgSend(updateCopy, "isAskToShareNetworkAvailable")))
  {
    isAskToShareRequestFromAppPending = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending];
    v13 = isAskToShareRequestFromAppPending ^ [updateCopy isAskToShareRequestFromAppPending] ^ 1;
    v16 = v13;
  }

  else
  {
    LOBYTE(v13) = 0;
    v16 = 0;
  }

  if (networkList != networkList2)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v16;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetworkListUpdate *)self isEqualToWiFiNetworkSharingNetworksUpdate:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  networkList = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  v4 = [networkList hash];
  v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter]^ v4;
  v6 = v5 ^ [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareNetworkAvailable];
  isAskToShareRequestFromAppPending = [(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending];

  return v6 ^ isAskToShareRequestFromAppPending;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingNetworkListUpdate allocWithZone:?]];
  networkList = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setNetworkList:networkList];

  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setNetworkListUpdateCounter:[(CWFWiFiNetworkSharingNetworkListUpdate *)self networkListUpdateCounter]];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setIsAskToShareNetworkAvailable:[(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareNetworkAvailable]];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v4 setIsAskToShareRequestFromAppPending:[(CWFWiFiNetworkSharingNetworkListUpdate *)self isAskToShareRequestFromAppPending]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networkList = [(CWFWiFiNetworkSharingNetworkListUpdate *)self networkList];
  [coderCopy encodeObject:networkList forKey:@"networkList"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFWiFiNetworkSharingNetworkListUpdate networkListUpdateCounter](self, "networkListUpdateCounter")}];
  [coderCopy encodeObject:v5 forKey:@"networkListUpdateCounter"];

  [coderCopy encodeBool:-[CWFWiFiNetworkSharingNetworkListUpdate isAskToShareNetworkAvailable](self forKey:{"isAskToShareNetworkAvailable"), @"isAskToShareNetworkAvailable"}];
  [coderCopy encodeBool:-[CWFWiFiNetworkSharingNetworkListUpdate isAskToShareRequestFromAppPending](self forKey:{"isAskToShareRequestFromAppPending"), @"isAskToShareRequestFromAppPending"}];
}

- (CWFWiFiNetworkSharingNetworkListUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CWFWiFiNetworkSharingNetworkListUpdate;
  v5 = [(CWFWiFiNetworkSharingNetworkListUpdate *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"networkList"];
    [(CWFWiFiNetworkSharingNetworkListUpdate *)v5 setNetworkList:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkListUpdateCounter"];
    -[CWFWiFiNetworkSharingNetworkListUpdate setNetworkListUpdateCounter:](v5, "setNetworkListUpdateCounter:", [v10 unsignedIntegerValue]);

    -[CWFWiFiNetworkSharingNetworkListUpdate setIsAskToShareNetworkAvailable:](v5, "setIsAskToShareNetworkAvailable:", [coderCopy decodeBoolForKey:@"isAskToShareNetworkAvailable"]);
    -[CWFWiFiNetworkSharingNetworkListUpdate setIsAskToShareRequestFromAppPending:](v5, "setIsAskToShareRequestFromAppPending:", [coderCopy decodeBoolForKey:@"isAskToShareRequestFromAppPending"]);
  }

  return v5;
}

@end