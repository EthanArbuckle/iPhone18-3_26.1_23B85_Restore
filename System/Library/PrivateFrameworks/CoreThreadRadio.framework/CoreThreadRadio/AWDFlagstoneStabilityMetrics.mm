@interface AWDFlagstoneStabilityMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDFlagstoneStabilityMetrics

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneStabilityMetrics;
  v3 = [(AWDFlagstoneStabilityMetrics *)&v7 description];
  dictionaryRepresentation = [(AWDFlagstoneStabilityMetrics *)self dictionaryRepresentation];
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

  sCntrsStability = self->_sCntrsStability;
  if (sCntrsStability)
  {
    dictionaryRepresentation2 = [(AWDCountersStabilityS *)sCntrsStability dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"s_cntrs_stability"];
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

  if (self->_sCntrsStability)
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
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_sCntrsStability)
  {
    [v5 setSCntrsStability:?];
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
    *(v5 + 32) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(AWDCountersStabilityS *)self->_sCntrsStability copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:

    return 0;
  }

  header = self->_header;
  if (header | *(equalCopy + 2) && ![(AWDHeaderInfoS *)header isEqual:?])
  {
    goto LABEL_11;
  }

  sCntrsStability = self->_sCntrsStability;
  if (sCntrsStability | *(equalCopy + 3))
  {
    v9 = [(AWDCountersStabilityS *)sCntrsStability isEqual:?];

    return v9;
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
  return v4 ^ [(AWDCountersStabilityS *)self->_sCntrsStability hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[2];
  v10 = v5;
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

    [(AWDFlagstoneStabilityMetrics *)self setHeader:?];
  }

  v5 = v10;
LABEL_9:
  sCntrsStability = self->_sCntrsStability;
  v9 = v5[3];
  if (sCntrsStability)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDCountersStabilityS *)sCntrsStability mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDFlagstoneStabilityMetrics *)self setSCntrsStability:?];
  }

  v5 = v10;
LABEL_15:
}

@end