@interface CWFWiFiNetworkSharingNetworkMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiNetworkSharingNetworkMetadata:(id)metadata;
- (CWFWiFiNetworkSharingNetworkMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFWiFiNetworkSharingNetworkMetadata

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  mostRecentlySharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  v4 = sub_1E0BCC248(mostRecentlySharedDate);
  firstSharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  v6 = sub_1E0BCC248(firstSharedDate);
  lastModifiedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  v8 = sub_1E0BCC248(lastModifiedDate);
  v9 = sub_1E0BF1E78([(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus]);
  askToShareStatusUpdatedTimestamp = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  v11 = sub_1E0BCC248(askToShareStatusUpdatedTimestamp);
  v12 = [v14 stringWithFormat:@"(shared=%@, firstShared=%@, lastModified=%@, askToShareStatus=%@ (%@), waitingForAssoc=%d)", v4, v6, v8, v9, v11, -[CWFWiFiNetworkSharingNetworkMetadata waitingForAssociation](self, "waitingForAssociation")];

  return v12;
}

- (BOOL)isEqualToWiFiNetworkSharingNetworkMetadata:(id)metadata
{
  metadataCopy = metadata;
  mostRecentlySharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  mostRecentlySharedDate2 = [metadataCopy mostRecentlySharedDate];
  if (mostRecentlySharedDate != mostRecentlySharedDate2)
  {
    mostRecentlySharedDate3 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
    if (!mostRecentlySharedDate3)
    {
      LOBYTE(v19) = 0;
      goto LABEL_42;
    }

    firstSharedDate6 = mostRecentlySharedDate3;
    mostRecentlySharedDate4 = [metadataCopy mostRecentlySharedDate];
    if (!mostRecentlySharedDate4)
    {
      LOBYTE(v19) = 0;
LABEL_41:

      goto LABEL_42;
    }

    mostRecentlySharedDate5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
    mostRecentlySharedDate6 = [metadataCopy mostRecentlySharedDate];
    if (![mostRecentlySharedDate5 isEqual:mostRecentlySharedDate6])
    {
      LOBYTE(v19) = 0;
LABEL_40:

      goto LABEL_41;
    }

    v55 = firstSharedDate6;
    v56 = mostRecentlySharedDate6;
    v57 = mostRecentlySharedDate5;
    v58 = mostRecentlySharedDate4;
  }

  firstSharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  firstSharedDate2 = [metadataCopy firstSharedDate];
  if (firstSharedDate != firstSharedDate2)
  {
    firstSharedDate3 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
    if (!firstSharedDate3)
    {
      goto LABEL_38;
    }

    v15 = firstSharedDate3;
    firstSharedDate4 = [metadataCopy firstSharedDate];
    if (firstSharedDate4)
    {
      v17 = firstSharedDate4;
      firstSharedDate5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
      firstSharedDate6 = [metadataCopy firstSharedDate];
      if ([firstSharedDate5 isEqual:firstSharedDate6])
      {
        v50 = firstSharedDate5;
        v51 = v17;
        v52 = v15;
        goto LABEL_12;
      }
    }

    goto LABEL_38;
  }

LABEL_12:
  lastModifiedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  lastModifiedDate2 = [metadataCopy lastModifiedDate];
  v22 = lastModifiedDate2;
  if (lastModifiedDate != lastModifiedDate2)
  {
    lastModifiedDate3 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
    if (lastModifiedDate3)
    {
      v24 = lastModifiedDate3;
      lastModifiedDate4 = [metadataCopy lastModifiedDate];
      if (lastModifiedDate4)
      {
        v53 = v22;
        v54 = lastModifiedDate;
        v48 = lastModifiedDate4;
        lastModifiedDate5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
        lastModifiedDate6 = [metadataCopy lastModifiedDate];
        if ([lastModifiedDate5 isEqual:lastModifiedDate6])
        {
          v46 = lastModifiedDate6;
          v47 = lastModifiedDate5;
          v49 = v24;
          goto LABEL_20;
        }

        lastModifiedDate4 = v48;
        v22 = v53;
        lastModifiedDate = v54;
      }
    }

    if (firstSharedDate != firstSharedDate2)
    {
    }

LABEL_38:

    LOBYTE(v19) = 0;
    goto LABEL_39;
  }

  v53 = lastModifiedDate2;
  v54 = lastModifiedDate;
LABEL_20:
  askToShareStatus = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus];
  if (askToShareStatus == [metadataCopy askToShareStatus])
  {
    askToShareStatusUpdatedTimestamp = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
    askToShareStatusUpdatedTimestamp2 = [metadataCopy askToShareStatusUpdatedTimestamp];
    v31 = askToShareStatusUpdatedTimestamp2;
    v32 = v49;
    if (askToShareStatusUpdatedTimestamp == askToShareStatusUpdatedTimestamp2)
    {
      v36 = askToShareStatusUpdatedTimestamp2;
    }

    else
    {
      askToShareStatusUpdatedTimestamp3 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
      if (!askToShareStatusUpdatedTimestamp3)
      {

        LOBYTE(v19) = 0;
        goto LABEL_52;
      }

      v45 = askToShareStatusUpdatedTimestamp3;
      askToShareStatusUpdatedTimestamp4 = [metadataCopy askToShareStatusUpdatedTimestamp];
      if (!askToShareStatusUpdatedTimestamp4)
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

      v41 = askToShareStatusUpdatedTimestamp;
      v44 = askToShareStatusUpdatedTimestamp4;
      askToShareStatusUpdatedTimestamp5 = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
      askToShareStatusUpdatedTimestamp6 = [metadataCopy askToShareStatusUpdatedTimestamp];
      v43 = askToShareStatusUpdatedTimestamp5;
      if (![askToShareStatusUpdatedTimestamp5 isEqual:askToShareStatusUpdatedTimestamp6])
      {
        LOBYTE(v19) = 0;
        askToShareStatusUpdatedTimestamp = v41;
        goto LABEL_50;
      }

      v36 = v31;
      askToShareStatusUpdatedTimestamp = v41;
    }

    waitingForAssociation = [(CWFWiFiNetworkSharingNetworkMetadata *)self waitingForAssociation];
    v19 = waitingForAssociation ^ [metadataCopy waitingForAssociation] ^ 1;
    v31 = v36;
    if (askToShareStatusUpdatedTimestamp != v36)
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

  if (firstSharedDate != firstSharedDate2)
  {
  }

LABEL_39:
  mostRecentlySharedDate5 = v57;
  mostRecentlySharedDate4 = v58;
  mostRecentlySharedDate6 = v56;
  firstSharedDate6 = v55;
  if (mostRecentlySharedDate != mostRecentlySharedDate2)
  {
    goto LABEL_40;
  }

LABEL_42:

  return v19;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFWiFiNetworkSharingNetworkMetadata *)self isEqualToWiFiNetworkSharingNetworkMetadata:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  mostRecentlySharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  v4 = [mostRecentlySharedDate hash];
  firstSharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  v6 = [firstSharedDate hash] ^ v4;
  lastModifiedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  v8 = [lastModifiedDate hash];
  v9 = v6 ^ v8 ^ [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus];
  askToShareStatusUpdatedTimestamp = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  v11 = [askToShareStatusUpdatedTimestamp hash];
  v12 = v11 ^ [(CWFWiFiNetworkSharingNetworkMetadata *)self waitingForAssociation];

  return v9 ^ v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFWiFiNetworkSharingNetworkMetadata allocWithZone:?]];
  mostRecentlySharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setMostRecentlySharedDate:mostRecentlySharedDate];

  firstSharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setFirstSharedDate:firstSharedDate];

  lastModifiedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setLastModifiedDate:lastModifiedDate];

  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setAskToShareStatus:[(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatus]];
  askToShareStatusUpdatedTimestamp = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setAskToShareStatusUpdatedTimestamp:askToShareStatusUpdatedTimestamp];

  [(CWFWiFiNetworkSharingNetworkMetadata *)v4 setWaitingForAssociation:[(CWFWiFiNetworkSharingNetworkMetadata *)self waitingForAssociation]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mostRecentlySharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self mostRecentlySharedDate];
  [coderCopy encodeObject:mostRecentlySharedDate forKey:@"mostRecentlySharedDate"];

  firstSharedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self firstSharedDate];
  [coderCopy encodeObject:firstSharedDate forKey:@"firstSharedDate"];

  lastModifiedDate = [(CWFWiFiNetworkSharingNetworkMetadata *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];

  [coderCopy encodeInteger:-[CWFWiFiNetworkSharingNetworkMetadata askToShareStatus](self forKey:{"askToShareStatus"), @"askToShareStatus"}];
  askToShareStatusUpdatedTimestamp = [(CWFWiFiNetworkSharingNetworkMetadata *)self askToShareStatusUpdatedTimestamp];
  [coderCopy encodeObject:askToShareStatusUpdatedTimestamp forKey:@"askToShareStatusUpdatedTimestamp"];

  [coderCopy encodeBool:-[CWFWiFiNetworkSharingNetworkMetadata waitingForAssociation](self forKey:{"waitingForAssociation"), @"waitingForAssociation"}];
}

- (CWFWiFiNetworkSharingNetworkMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CWFWiFiNetworkSharingNetworkMetadata;
  v5 = [(CWFWiFiNetworkSharingNetworkMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlySharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setMostRecentlySharedDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstSharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setFirstSharedDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setLastModifiedDate:v8];

    -[CWFWiFiNetworkSharingNetworkMetadata setAskToShareStatus:](v5, "setAskToShareStatus:", [coderCopy decodeIntegerForKey:@"askToShareStatus"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"askToShareStatusUpdatedTimestamp"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v5 setAskToShareStatusUpdatedTimestamp:v9];

    -[CWFWiFiNetworkSharingNetworkMetadata setWaitingForAssociation:](v5, "setWaitingForAssociation:", [coderCopy decodeBoolForKey:@"waitingForAssociation"]);
  }

  return v5;
}

@end