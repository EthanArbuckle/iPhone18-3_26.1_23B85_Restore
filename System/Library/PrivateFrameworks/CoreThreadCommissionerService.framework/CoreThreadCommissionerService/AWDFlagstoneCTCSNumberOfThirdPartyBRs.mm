@interface AWDFlagstoneCTCSNumberOfThirdPartyBRs
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumberOfThirdPartyBorderRouters:(BOOL)routers;
- (void)writeTo:(id)to;
@end

@implementation AWDFlagstoneCTCSNumberOfThirdPartyBRs

- (void)setHasNumberOfThirdPartyBorderRouters:(BOOL)routers
{
  if (routers)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDFlagstoneCTCSNumberOfThirdPartyBRs;
  v3 = [(AWDFlagstoneCTCSNumberOfThirdPartyBRs *)&v7 description];
  dictionaryRepresentation = [(AWDFlagstoneCTCSNumberOfThirdPartyBRs *)self dictionaryRepresentation];
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

  if ((*&self->_has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_numberOfThirdPartyBorderRouters];
    [v3 setObject:v7 forKey:@"number_of_third_party_border_routers"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    numberOfThirdPartyBorderRouters = self->_numberOfThirdPartyBorderRouters;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 28) |= 1u;
  }

  if (self->_header)
  {
    v5 = toCopy;
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 6) = self->_numberOfThirdPartyBorderRouters;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 6) = self->_numberOfThirdPartyBorderRouters;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_14;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(AWDHeaderInfoS *)header isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_numberOfThirdPartyBorderRouters != *(equalCopy + 6))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
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

  v4 = [(AWDHeaderInfoS *)self->_header hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numberOfThirdPartyBorderRouters;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  header = self->_header;
  v7 = v5[2];
  if (header)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(AWDHeaderInfoS *)header mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(AWDFlagstoneCTCSNumberOfThirdPartyBRs *)self setHeader:?];
  }

  v5 = v8;
LABEL_9:
  if ((*(v5 + 28) & 2) != 0)
  {
    self->_numberOfThirdPartyBorderRouters = *(v5 + 6);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end