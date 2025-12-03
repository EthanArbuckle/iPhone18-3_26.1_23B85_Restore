@interface NTKProtoCollectionBySlot
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NTKProtoCollectionBySlot

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoCollectionBySlot;
  v4 = [(NTKProtoCollectionBySlot *)&v8 description];
  dictionaryRepresentation = [(NTKProtoCollectionBySlot *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  slot = self->_slot;
  if (slot)
  {
    [dictionary setObject:slot forKey:@"slot"];
  }

  collection = self->_collection;
  if (collection)
  {
    dictionaryRepresentation = [(NTKProtoPigmentCollection *)collection dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"collection"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_slot)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_collection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_slot)
  {
    [toCopy setSlot:?];
    toCopy = v5;
  }

  if (self->_collection)
  {
    [v5 setCollection:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_slot copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NTKProtoPigmentCollection *)self->_collection copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((slot = self->_slot, !(slot | equalCopy[2])) || -[NSString isEqual:](slot, "isEqual:")))
  {
    collection = self->_collection;
    if (collection | equalCopy[1])
    {
      v7 = [(NTKProtoPigmentCollection *)collection isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(NTKProtoCollectionBySlot *)self setSlot:?];
    fromCopy = v7;
  }

  collection = self->_collection;
  v6 = fromCopy[1];
  if (collection)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NTKProtoPigmentCollection *)collection mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NTKProtoCollectionBySlot *)self setCollection:?];
  }

  fromCopy = v7;
LABEL_9:
}

@end