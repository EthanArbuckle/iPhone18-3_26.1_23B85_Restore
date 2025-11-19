@interface HDCodablePinnedContentState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodablePinnedContentState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodablePinnedContentState;
  v4 = [(HDCodablePinnedContentState *)&v8 description];
  v5 = [(HDCodablePinnedContentState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  pinnedContentStateData = self->_pinnedContentStateData;
  if (pinnedContentStateData)
  {
    [v3 setObject:pinnedContentStateData forKey:@"pinnedContentStateData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_epoch];
    [v4 setObject:v6 forKey:@"epoch"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_pinnedContentStateData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    epoch = self->_epoch;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_pinnedContentStateData)
  {
    v5 = v4;
    [v4 setPinnedContentStateData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_epoch;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_pinnedContentStateData copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_epoch;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  pinnedContentStateData = self->_pinnedContentStateData;
  if (pinnedContentStateData | *(v4 + 2))
  {
    if (![(NSData *)pinnedContentStateData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_epoch == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_pinnedContentStateData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_epoch;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(HDCodablePinnedContentState *)self setPinnedContentStateData:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_epoch = v4[1];
    *&self->_has |= 1u;
  }
}

@end