@interface AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumberOfPreferredNwByAppleBorderRouters:(BOOL)a3;
- (void)setHasNumberOfPreferredNwByThirdPartyBorderRouters:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters

- (void)setHasNumberOfPreferredNwByThirdPartyBorderRouters:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumberOfPreferredNwByAppleBorderRouters:(BOOL)a3
{
  if (a3)
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
  v7.super_class = AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters;
  v3 = [(AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters *)&v7 description];
  v4 = [(AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v6 = [(AWDHeaderInfoS *)header dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"header"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_numberOfPreferredNwByThirdPartyBorderRouters];
    [v3 setObject:v8 forKey:@"number_of_preferred_nw_by_third_party_border_routers"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_numberOfPreferredNwByAppleBorderRouters];
    [v3 setObject:v9 forKey:@"number_of_preferred_nw_by_Apple_border_routers"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    numberOfPreferredNwByThirdPartyBorderRouters = self->_numberOfPreferredNwByThirdPartyBorderRouters;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    numberOfPreferredNwByAppleBorderRouters = self->_numberOfPreferredNwByAppleBorderRouters;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
  }

  if (self->_header)
  {
    v6 = v4;
    [v4 setHeader:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 7) = self->_numberOfPreferredNwByThirdPartyBorderRouters;
    *(v4 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_numberOfPreferredNwByAppleBorderRouters;
    *(v4 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  v7 = [(AWDHeaderInfoS *)self->_header copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 7) = self->_numberOfPreferredNwByThirdPartyBorderRouters;
    *(v6 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 6) = self->_numberOfPreferredNwByAppleBorderRouters;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_19;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(AWDHeaderInfoS *)header isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_numberOfPreferredNwByThirdPartyBorderRouters != *(v4 + 7))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  v8 = (*(v4 + 32) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_numberOfPreferredNwByAppleBorderRouters != *(v4 + 6))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

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
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_numberOfPreferredNwByThirdPartyBorderRouters;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_numberOfPreferredNwByAppleBorderRouters;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[4])
  {
    self->_timestamp = v4[1];
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

    v9 = v5;
    [(AWDHeaderInfoS *)header mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = v5;
    [(AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters *)self setHeader:?];
  }

  v5 = v9;
LABEL_9:
  v8 = *(v5 + 32);
  if ((v8 & 4) != 0)
  {
    self->_numberOfPreferredNwByThirdPartyBorderRouters = *(v5 + 7);
    *&self->_has |= 4u;
    v8 = *(v5 + 32);
  }

  if ((v8 & 2) != 0)
  {
    self->_numberOfPreferredNwByAppleBorderRouters = *(v5 + 6);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end