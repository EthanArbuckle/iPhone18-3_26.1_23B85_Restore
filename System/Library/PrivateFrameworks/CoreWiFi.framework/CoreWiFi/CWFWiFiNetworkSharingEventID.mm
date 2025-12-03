@interface CWFWiFiNetworkSharingEventID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingEventID:(id)d;
- (CWFWiFiNetworkSharingEventID)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingEventID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingEventID;
  v4 = [(CWFEventID *)&v9 description];
  clientID = [(CWFWiFiNetworkSharingEventID *)self clientID];
  networkListUpdateEventPredicateData = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  v7 = [v3 stringWithFormat:@"%@, clientID=%@, hasPredicateData=%d", v4, clientID, networkListUpdateEventPredicateData != 0];

  return v7;
}

- (BOOL)isEqualToWiFiNetworkSharingEventID:(id)d
{
  dCopy = d;
  v26.receiver = self;
  v26.super_class = CWFWiFiNetworkSharingEventID;
  if ([(CWFEventID *)&v26 isEqual:dCopy])
  {
    clientID = [(CWFWiFiNetworkSharingEventID *)self clientID];
    clientID2 = [dCopy clientID];
    if (clientID != clientID2)
    {
      clientID3 = [(CWFWiFiNetworkSharingEventID *)self clientID];
      if (!clientID3)
      {
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v3 = clientID3;
      clientID4 = [dCopy clientID];
      if (!clientID4)
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      clientID5 = [(CWFWiFiNetworkSharingEventID *)self clientID];
      clientID6 = [dCopy clientID];
      if (![clientID5 isEqual:clientID6])
      {
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v24 = clientID6;
      v25 = clientID5;
    }

    networkListUpdateEventPredicateData = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
    networkListUpdateEventPredicateData2 = [dCopy networkListUpdateEventPredicateData];
    v15 = networkListUpdateEventPredicateData2;
    if (networkListUpdateEventPredicateData == networkListUpdateEventPredicateData2)
    {

      v12 = 1;
    }

    else
    {
      networkListUpdateEventPredicateData3 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
      if (networkListUpdateEventPredicateData3)
      {
        v17 = networkListUpdateEventPredicateData3;
        networkListUpdateEventPredicateData4 = [dCopy networkListUpdateEventPredicateData];
        if (networkListUpdateEventPredicateData4)
        {
          [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
          v19 = v22 = clientID4;
          [dCopy networkListUpdateEventPredicateData];
          v20 = v23 = v3;
          v12 = [v19 isEqual:v20];

          v3 = v23;
          clientID4 = v22;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {

        v12 = 0;
      }
    }

    clientID6 = v24;
    clientID5 = v25;
    if (clientID == clientID2)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v12 = 0;
LABEL_23:

  return v12;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingEventID *)self isEqualToWiFiNetworkSharingEventID:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingEventID;
  v3 = [(CWFEventID *)&v9 hash];
  clientID = [(CWFWiFiNetworkSharingEventID *)self clientID];
  v5 = [clientID hash];
  networkListUpdateEventPredicateData = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  v7 = v5 ^ [networkListUpdateEventPredicateData hash];

  return v7 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingEventID;
  v4 = [(CWFEventID *)&v8 copyWithZone:zone];
  clientID = [(CWFWiFiNetworkSharingEventID *)self clientID];
  [v4 setClientID:clientID];

  networkListUpdateEventPredicateData = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  [v4 setNetworkListUpdateEventPredicateData:networkListUpdateEventPredicateData];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CWFWiFiNetworkSharingEventID;
  coderCopy = coder;
  [(CWFEventID *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CWFWiFiNetworkSharingEventID *)self clientID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"clientID"];

  networkListUpdateEventPredicateData = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  [coderCopy encodeObject:networkListUpdateEventPredicateData forKey:@"networkListUpdateEventPredicateData"];
}

- (CWFWiFiNetworkSharingEventID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingEventID;
  v5 = [(CWFEventID *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    [(CWFWiFiNetworkSharingEventID *)v5 setClientID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkListUpdateEventPredicateData"];
    [(CWFWiFiNetworkSharingEventID *)v5 setNetworkListUpdateEventPredicateData:v7];
  }

  return v5;
}

@end