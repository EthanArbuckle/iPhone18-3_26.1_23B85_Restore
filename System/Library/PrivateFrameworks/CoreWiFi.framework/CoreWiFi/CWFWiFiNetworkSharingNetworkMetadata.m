@interface CWFWiFiNetworkSharingNetworkMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWiFiNetworkSharingNetworkMetadata:(id)a3;
- (CWFWiFiNetworkSharingNetworkMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFWiFiNetworkSharingNetworkMetadata

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  v4 = sub_1E0BCC248(v3);
  v5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  v6 = sub_1E0BCC248(v5);
  v7 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  v8 = sub_1E0BCC248(v7);
  v9 = sub_1E0BF1E78([(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus]);
  v10 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  v11 = sub_1E0BCC248(v10);
  v12 = [v14 stringWithFormat:@"(shared=%@, firstShared=%@, lastModified=%@, askToShareStatus=%@ (%@), waitingForAssoc=%d)", v4, v6, v8, v9, v11, -[CWFWiFiNetworkSharingNetworkMetadata waitingForAssociation](self, "waitingForAssociation")];

  return v12;
}

- (BOOL)isEqualToWiFiNetworkSharingNetworkMetadata:(id)a3
{
  v5 = a3;
  v6 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  v7 = [v5 mostRecentlySharedDate];
  if (v6 != v7)
  {
    v8 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
    if (!v8)
    {
      LOBYTE(v19) = 0;
      goto LABEL_42;
    }

    v3 = v8;
    v9 = [v5 mostRecentlySharedDate];
    if (!v9)
    {
      LOBYTE(v19) = 0;
LABEL_41:

      goto LABEL_42;
    }

    v10 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
    v11 = [v5 mostRecentlySharedDate];
    if (![v10 isEqual:v11])
    {
      LOBYTE(v19) = 0;
LABEL_40:

      goto LABEL_41;
    }

    v55 = v3;
    v56 = v11;
    v57 = v10;
    v58 = v9;
  }

  v12 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  v13 = [v5 firstSharedDate];
  if (v12 != v13)
  {
    v14 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = v14;
    v16 = [v5 firstSharedDate];
    if (v16)
    {
      v17 = v16;
      v18 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
      v3 = [v5 firstSharedDate];
      if ([v18 isEqual:v3])
      {
        v50 = v18;
        v51 = v17;
        v52 = v15;
        goto LABEL_12;
      }
    }

    goto LABEL_38;
  }

LABEL_12:
  v20 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  v21 = [v5 lastModifiedDate];
  v22 = v21;
  if (v20 != v21)
  {
    v23 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
    if (v23)
    {
      v24 = v23;
      v25 = [v5 lastModifiedDate];
      if (v25)
      {
        v53 = v22;
        v54 = v20;
        v48 = v25;
        v26 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
        v27 = [v5 lastModifiedDate];
        if ([v26 isEqual:v27])
        {
          v46 = v27;
          v47 = v26;
          v49 = v24;
          goto LABEL_20;
        }

        v25 = v48;
        v22 = v53;
        v20 = v54;
      }
    }

    if (v12 != v13)
    {
    }

LABEL_38:

    LOBYTE(v19) = 0;
    goto LABEL_39;
  }

  v53 = v21;
  v54 = v20;
LABEL_20:
  v28 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus];
  if (v28 == [v5 askToShareStatus])
  {
    v29 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
    v30 = [v5 askToShareStatusUpdatedTimestamp];
    v31 = v30;
    v32 = v49;
    if (v29 == v30)
    {
      v36 = v30;
    }

    else
    {
      v33 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
      if (!v33)
      {

        LOBYTE(v19) = 0;
        goto LABEL_52;
      }

      v45 = v33;
      v34 = [v5 askToShareStatusUpdatedTimestamp];
      if (!v34)
      {
        LOBYTE(v19) = 0;
LABEL_51:

LABEL_52:
        v38 = v53;
        v37 = v54;
        if (v54 == v53)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v41 = v29;
      v44 = v34;
      v35 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
      v42 = [v5 askToShareStatusUpdatedTimestamp];
      v43 = v35;
      if (![v35 isEqual:v42])
      {
        LOBYTE(v19) = 0;
        v29 = v41;
        goto LABEL_50;
      }

      v36 = v31;
      v29 = v41;
    }

    v40 = [(CWFWiFiNetworkSharingNetworkMetadata *)self waitingForAssociation];
    v19 = v40 ^ [v5 waitingForAssociation] ^ 1;
    v31 = v36;
    if (v29 != v36)
    {
      v32 = v49;
LABEL_50:

      goto LABEL_51;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  v38 = v53;
  v37 = v54;
  v32 = v49;
  if (v54 != v53)
  {
LABEL_28:
  }

LABEL_29:

  if (v12 != v13)
  {
  }

LABEL_39:
  v10 = v57;
  v9 = v58;
  v11 = v56;
  v3 = v55;
  if (v6 != v7)
  {
    goto LABEL_40;
  }

LABEL_42:

  return v19;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetworkMetadata *)self isEqualToWiFiNetworkSharingNetworkMetadata:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  v4 = [v3 hash];
  v5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus];
  v10 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  v11 = [v10 hash];
  v12 = v11 ^ [(CWFWiFiNetworkSharingNetworkMetadata *)self waitingForAssociation];

  return v9 ^ v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFWiFiNetworkSharingNetworkMetadata allocWithZone:?]];
  v5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setMostRecentlySharedDate:v5];

  v6 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setFirstSharedDate:v6];

  v7 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setLastModifiedDate:v7];

  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setAskToShareStatus:[(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus]];
  v8 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setAskToShareStatusUpdatedTimestamp:v8];

  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setWaitingForAssociation:[(CWFWiFiNetworkSharingNetworkMetadata *)self waitingForAssociation]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  [v8 encodeObject:v4 forKey:@"mostRecentlySharedDate"];

  v5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  [v8 encodeObject:v5 forKey:@"firstSharedDate"];

  v6 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  [v8 encodeObject:v6 forKey:@"lastModifiedDate"];

  [v8 encodeInteger:-[CWFWiFiNetworkSharingNetworkMetadata askToShareStatus](self forKey:{"askToShareStatus"), @"askToShareStatus"}];
  v7 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  [v8 encodeObject:v7 forKey:@"askToShareStatusUpdatedTimestamp"];

  [v8 encodeBool:-[CWFWiFiNetworkSharingNetworkMetadata waitingForAssociation](self forKey:{"waitingForAssociation"), @"waitingForAssociation"}];
}

- (CWFWiFiNetworkSharingNetworkMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CWFWiFiNetworkSharingNetworkMetadata;
  v5 = [(CWFWiFiNetworkSharingNetworkMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlySharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setMostRecentlySharedDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstSharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setFirstSharedDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setLastModifiedDate:v8];

    -[CWFWiFiNetworkSharingNetworkMetadata setAskToShareStatus:](v5, "setAskToShareStatus:", [v4 decodeIntegerForKey:@"askToShareStatus"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"askToShareStatusUpdatedTimestamp"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setAskToShareStatusUpdatedTimestamp:v9];

    -[CWFWiFiNetworkSharingNetworkMetadata setWaitingForAssociation:](v5, "setWaitingForAssociation:", [v4 decodeBoolForKey:@"waitingForAssociation"]);
  }

  return v5;
}

@end