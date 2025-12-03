@interface AWDFlagstoneCoexMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDFlagstoneCoexMetrics

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneCoexMetrics;
  v3 = [(AWDFlagstoneCoexMetrics *)&v7 description];
  dictionaryRepresentation = [(AWDFlagstoneCoexMetrics *)self dictionaryRepresentation];
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

  sCntrsCoex = self->_sCntrsCoex;
  if (sCntrsCoex)
  {
    dictionaryRepresentation2 = [(AWDCountersCoexS *)sCntrsCoex dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"s_cntrs_coex"];
  }

  sHistCoex = self->_sHistCoex;
  if (sHistCoex)
  {
    dictionaryRepresentation3 = [(AWDHistogramsCoexS *)sHistCoex dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"s_hist_coex"];
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

  if (self->_sCntrsCoex)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_sHistCoex)
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

  if (self->_sCntrsCoex)
  {
    [v5 setSCntrsCoex:?];
    toCopy = v5;
  }

  if (self->_sHistCoex)
  {
    [v5 setSHistCoex:?];
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

  v9 = [(AWDCountersCoexS *)self->_sCntrsCoex copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(AWDHistogramsCoexS *)self->_sHistCoex copyWithZone:zone];
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

  sCntrsCoex = self->_sCntrsCoex;
  if (sCntrsCoex | *(equalCopy + 3))
  {
    if (![(AWDCountersCoexS *)sCntrsCoex isEqual:?])
    {
      goto LABEL_13;
    }
  }

  sHistCoex = self->_sHistCoex;
  if (sHistCoex | *(equalCopy + 4))
  {
    v10 = [(AWDHistogramsCoexS *)sHistCoex isEqual:?];

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
  v5 = [(AWDCountersCoexS *)self->_sCntrsCoex hash];
  return v4 ^ v5 ^ [(AWDHistogramsCoexS *)self->_sHistCoex hash];
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

    [(AWDFlagstoneCoexMetrics *)self setHeader:?];
  }

  v5 = v12;
LABEL_9:
  sCntrsCoex = self->_sCntrsCoex;
  v9 = v5[3];
  if (sCntrsCoex)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDCountersCoexS *)sCntrsCoex mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDFlagstoneCoexMetrics *)self setSCntrsCoex:?];
  }

  v5 = v12;
LABEL_15:
  sHistCoex = self->_sHistCoex;
  v11 = v5[4];
  if (sHistCoex)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDHistogramsCoexS *)sHistCoex mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDFlagstoneCoexMetrics *)self setSHistCoex:?];
  }

  v5 = v12;
LABEL_21:
}

@end