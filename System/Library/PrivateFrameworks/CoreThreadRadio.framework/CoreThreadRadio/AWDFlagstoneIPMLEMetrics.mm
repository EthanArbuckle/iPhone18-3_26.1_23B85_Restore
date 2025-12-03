@interface AWDFlagstoneIPMLEMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDFlagstoneIPMLEMetrics

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneIPMLEMetrics;
  v3 = [(AWDFlagstoneIPMLEMetrics *)&v7 description];
  dictionaryRepresentation = [(AWDFlagstoneIPMLEMetrics *)self dictionaryRepresentation];
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

  sCntrsIp = self->_sCntrsIp;
  if (sCntrsIp)
  {
    dictionaryRepresentation2 = [(AWDCountersIpv6S *)sCntrsIp dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"s_cntrs_ip"];
  }

  sCntrsMle = self->_sCntrsMle;
  if (sCntrsMle)
  {
    dictionaryRepresentation3 = [(AWDCountersThreadMleS *)sCntrsMle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"s_cntrs_mle"];
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

  if (self->_sCntrsIp)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sCntrsMle)
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
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_sCntrsIp)
  {
    [v5 setSCntrsIp:?];
    toCopy = v5;
  }

  if (self->_sCntrsMle)
  {
    [v5 setSCntrsMle:?];
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
    *(v5 + 40) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(AWDCountersIpv6S *)self->_sCntrsIp copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(AWDCountersThreadMleS *)self->_sCntrsMle copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:

    return 0;
  }

  header = self->_header;
  if (header | *(equalCopy + 2) && ![(AWDHeaderInfoS *)header isEqual:?])
  {
    goto LABEL_13;
  }

  sCntrsIp = self->_sCntrsIp;
  if (sCntrsIp | *(equalCopy + 3))
  {
    if (![(AWDCountersIpv6S *)sCntrsIp isEqual:?])
    {
      goto LABEL_13;
    }
  }

  sCntrsMle = self->_sCntrsMle;
  if (sCntrsMle | *(equalCopy + 4))
  {
    v10 = [(AWDCountersThreadMleS *)sCntrsMle isEqual:?];

    return v10;
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
  v5 = [(AWDCountersIpv6S *)self->_sCntrsIp hash];
  return v4 ^ v5 ^ [(AWDCountersThreadMleS *)self->_sCntrsMle hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[2];
  v12 = v5;
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

    [(AWDFlagstoneIPMLEMetrics *)self setHeader:?];
  }

  v5 = v12;
LABEL_9:
  sCntrsIp = self->_sCntrsIp;
  v9 = v5[3];
  if (sCntrsIp)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDCountersIpv6S *)sCntrsIp mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDFlagstoneIPMLEMetrics *)self setSCntrsIp:?];
  }

  v5 = v12;
LABEL_15:
  sCntrsMle = self->_sCntrsMle;
  v11 = v5[4];
  if (sCntrsMle)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDCountersThreadMleS *)sCntrsMle mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDFlagstoneIPMLEMetrics *)self setSCntrsMle:?];
  }

  v5 = v12;
LABEL_21:
}

@end