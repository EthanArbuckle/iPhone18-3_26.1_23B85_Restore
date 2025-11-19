@interface NMSMediaSyncServiceModelObject
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContainerType:(id)a3;
- (int)containerType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NMSMediaSyncServiceModelObject

- (int)containerType
{
  if (*&self->_has)
  {
    return self->_containerType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsContainerType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Album"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Playlist"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSMediaSyncServiceModelObject;
  v4 = [(NMSMediaSyncServiceModelObject *)&v8 description];
  v5 = [(NMSMediaSyncServiceModelObject *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  dataMultiverseID = self->_dataMultiverseID;
  if (dataMultiverseID)
  {
    [v3 setObject:dataMultiverseID forKey:@"dataMultiverseID"];
  }

  if (*&self->_has)
  {
    containerType = self->_containerType;
    if (containerType)
    {
      if (containerType == 1)
      {
        v7 = @"Playlist";
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_containerType];
      }
    }

    else
    {
      v7 = @"Album";
    }

    [v4 setObject:v7 forKey:@"containerType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dataMultiverseID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    containerType = self->_containerType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_dataMultiverseID)
  {
    v5 = v4;
    [v4 setDataMultiverseID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_containerType;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_dataMultiverseID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_containerType;
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

  dataMultiverseID = self->_dataMultiverseID;
  if (dataMultiverseID | *(v4 + 2))
  {
    if (![(NSData *)dataMultiverseID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_containerType == *(v4 + 2))
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
  v3 = [(NSData *)self->_dataMultiverseID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_containerType;
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
  if (*(v4 + 2))
  {
    v5 = v4;
    [(NMSMediaSyncServiceModelObject *)self setDataMultiverseID:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_containerType = v4[2];
    *&self->_has |= 1u;
  }
}

@end