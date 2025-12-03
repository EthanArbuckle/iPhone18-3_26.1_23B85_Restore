@interface AWDFlagstoneEngagementMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDFlagstoneEngagementMetrics

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneEngagementMetrics;
  v3 = [(AWDFlagstoneEngagementMetrics *)&v7 description];
  dictionaryRepresentation = [(AWDFlagstoneEngagementMetrics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(AWDHeaderInfoS *)header dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"header"];
  }

  sCntrsEngagement = self->_sCntrsEngagement;
  if (sCntrsEngagement)
  {
    dictionaryRepresentation2 = [(AWDCountersEngagementS *)sCntrsEngagement dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"s_cntrs_engagement"];
  }

  sCntrsDiscoveryJoin = self->_sCntrsDiscoveryJoin;
  if (sCntrsDiscoveryJoin)
  {
    dictionaryRepresentation3 = [(AWDCountersDiscoveryJoinS *)sCntrsDiscoveryJoin dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"s_cntrs_discovery_join"];
  }

  sCntrsReachability = self->_sCntrsReachability;
  if (sCntrsReachability)
  {
    dictionaryRepresentation4 = [(AWDCountersReachabilityS *)sCntrsReachability dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"s_cntrs_reachability"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sCntrsEngagement)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sCntrsDiscoveryJoin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sCntrsReachability)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_sCntrsEngagement)
  {
    [v5 setSCntrsEngagement:?];
    toCopy = v5;
  }

  if (self->_sCntrsDiscoveryJoin)
  {
    [v5 setSCntrsDiscoveryJoin:?];
    toCopy = v5;
  }

  if (self->_sCntrsReachability)
  {
    [v5 setSCntrsReachability:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(AWDCountersEngagementS *)self->_sCntrsEngagement copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(AWDCountersDiscoveryJoinS *)self->_sCntrsDiscoveryJoin copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(AWDCountersReachabilityS *)self->_sCntrsReachability copyWithZone:zone];
  v14 = v6[5];
  v6[5] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:

    return 0;
  }

  header = self->_header;
  if (header | *(equalCopy + 2) && ![(AWDHeaderInfoS *)header isEqual:?])
  {
    goto LABEL_15;
  }

  sCntrsEngagement = self->_sCntrsEngagement;
  if (sCntrsEngagement | *(equalCopy + 4))
  {
    if (![(AWDCountersEngagementS *)sCntrsEngagement isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sCntrsDiscoveryJoin = self->_sCntrsDiscoveryJoin;
  if (sCntrsDiscoveryJoin | *(equalCopy + 3))
  {
    if (![(AWDCountersDiscoveryJoinS *)sCntrsDiscoveryJoin isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sCntrsReachability = self->_sCntrsReachability;
  if (sCntrsReachability | *(equalCopy + 5))
  {
    v11 = [(AWDCountersReachabilityS *)sCntrsReachability isEqual:?];

    return v11;
  }

  else
  {

    return 1;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDHeaderInfoS *)self->_header hash]^ v3;
  v5 = [(AWDCountersEngagementS *)self->_sCntrsEngagement hash];
  v6 = v4 ^ v5 ^ [(AWDCountersDiscoveryJoinS *)self->_sCntrsDiscoveryJoin hash];
  return v6 ^ [(AWDCountersReachabilityS *)self->_sCntrsReachability hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[2];
  v14 = v5;
  if (header)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDHeaderInfoS *)header mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDFlagstoneEngagementMetrics *)self setHeader:?];
  }

  v5 = v14;
LABEL_9:
  sCntrsEngagement = self->_sCntrsEngagement;
  v9 = v5[4];
  if (sCntrsEngagement)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDCountersEngagementS *)sCntrsEngagement mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDFlagstoneEngagementMetrics *)self setSCntrsEngagement:?];
  }

  v5 = v14;
LABEL_15:
  sCntrsDiscoveryJoin = self->_sCntrsDiscoveryJoin;
  v11 = v5[3];
  if (sCntrsDiscoveryJoin)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDCountersDiscoveryJoinS *)sCntrsDiscoveryJoin mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDFlagstoneEngagementMetrics *)self setSCntrsDiscoveryJoin:?];
  }

  v5 = v14;
LABEL_21:
  sCntrsReachability = self->_sCntrsReachability;
  v13 = v5[5];
  if (sCntrsReachability)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDCountersReachabilityS *)sCntrsReachability mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDFlagstoneEngagementMetrics *)self setSCntrsReachability:?];
  }

  v5 = v14;
LABEL_27:
}

@end