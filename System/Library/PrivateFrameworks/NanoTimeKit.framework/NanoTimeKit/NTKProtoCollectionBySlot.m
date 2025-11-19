@interface NTKProtoCollectionBySlot
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NTKProtoCollectionBySlot

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoCollectionBySlot;
  v4 = [(NTKProtoCollectionBySlot *)&v8 description];
  v5 = [(NTKProtoCollectionBySlot *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  slot = self->_slot;
  if (slot)
  {
    [v3 setObject:slot forKey:@"slot"];
  }

  collection = self->_collection;
  if (collection)
  {
    v7 = [(NTKProtoPigmentCollection *)collection dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"collection"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_slot)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_collection)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_slot)
  {
    [v4 setSlot:?];
    v4 = v5;
  }

  if (self->_collection)
  {
    [v5 setCollection:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_slot copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NTKProtoPigmentCollection *)self->_collection copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((slot = self->_slot, !(slot | v4[2])) || -[NSString isEqual:](slot, "isEqual:")))
  {
    collection = self->_collection;
    if (collection | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(NTKProtoCollectionBySlot *)self setSlot:?];
    v4 = v7;
  }

  collection = self->_collection;
  v6 = v4[1];
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

  v4 = v7;
LABEL_9:
}

@end