@interface CWFWiFiNetworkSharingEventID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingEventID:(id)a3;
- (CWFWiFiNetworkSharingEventID)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingEventID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingEventID;
  v4 = [(CWFEventID *)&v9 description];
  v5 = [(CWFWiFiNetworkSharingEventID *)self clientID];
  v6 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  v7 = [v3 stringWithFormat:@"%@, clientID=%@, hasPredicateData=%d", v4, v5, v6 != 0];

  return v7;
}

- (BOOL)isEqualToWiFiNetworkSharingEventID:(id)a3
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = CWFWiFiNetworkSharingEventID;
  if ([(CWFEventID *)&v26 isEqual:v6])
  {
    v7 = [(CWFWiFiNetworkSharingEventID *)self clientID];
    v8 = [v6 clientID];
    if (v7 != v8)
    {
      v9 = [(CWFWiFiNetworkSharingEventID *)self clientID];
      if (!v9)
      {
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v3 = v9;
      v4 = [v6 clientID];
      if (!v4)
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v10 = [(CWFWiFiNetworkSharingEventID *)self clientID];
      v11 = [v6 clientID];
      if (![v10 isEqual:v11])
      {
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v24 = v11;
      v25 = v10;
    }

    v13 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
    v14 = [v6 networkListUpdateEventPredicateData];
    v15 = v14;
    if (v13 == v14)
    {

      v12 = 1;
    }

    else
    {
      v16 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
      if (v16)
      {
        v17 = v16;
        v18 = [v6 networkListUpdateEventPredicateData];
        if (v18)
        {
          [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
          v19 = v22 = v4;
          [v6 networkListUpdateEventPredicateData];
          v20 = v23 = v3;
          v12 = [v19 isEqual:v20];

          v3 = v23;
          v4 = v22;
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

    v11 = v24;
    v10 = v25;
    if (v7 == v8)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v12 = 0;
LABEL_23:

  return v12;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingEventID *)self isEqualToWiFiNetworkSharingEventID:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingEventID;
  v3 = [(CWFEventID *)&v9 hash];
  v4 = [(CWFWiFiNetworkSharingEventID *)self clientID];
  v5 = [v4 hash];
  v6 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CWFWiFiNetworkSharingEventID;
  v4 = [(CWFEventID *)&v8 copyWithZone:a3];
  v5 = [(CWFWiFiNetworkSharingEventID *)self clientID];
  [v4 setClientID:v5];

  v6 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  [v4 setNetworkListUpdateEventPredicateData:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CWFWiFiNetworkSharingEventID;
  v4 = a3;
  [(CWFEventID *)&v7 encodeWithCoder:v4];
  v5 = [(CWFWiFiNetworkSharingEventID *)self clientID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"clientID"];

  v6 = [(CWFWiFiNetworkSharingEventID *)self networkListUpdateEventPredicateData];
  [v4 encodeObject:v6 forKey:@"networkListUpdateEventPredicateData"];
}

- (CWFWiFiNetworkSharingEventID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CWFWiFiNetworkSharingEventID;
  v5 = [(CWFEventID *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    [(CWFWiFiNetworkSharingEventID *)v5 setClientID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkListUpdateEventPredicateData"];
    [(CWFWiFiNetworkSharingEventID *)v5 setNetworkListUpdateEventPredicateData:v7];
  }

  return v5;
}

@end