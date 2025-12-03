@interface NMSMediaSyncServiceModelObject
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContainerType:(id)type;
- (int)containerType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsContainerType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Album"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Playlist"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSMediaSyncServiceModelObject;
  v4 = [(NMSMediaSyncServiceModelObject *)&v8 description];
  dictionaryRepresentation = [(NMSMediaSyncServiceModelObject *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  dataMultiverseID = self->_dataMultiverseID;
  if (dataMultiverseID)
  {
    [dictionary setObject:dataMultiverseID forKey:@"dataMultiverseID"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dataMultiverseID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    containerType = self->_containerType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_dataMultiverseID)
  {
    v5 = toCopy;
    [toCopy setDataMultiverseID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_containerType;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_dataMultiverseID copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_containerType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  dataMultiverseID = self->_dataMultiverseID;
  if (dataMultiverseID | *(equalCopy + 2))
  {
    if (![(NSData *)dataMultiverseID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_containerType == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(NMSMediaSyncServiceModelObject *)self setDataMultiverseID:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_containerType = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end