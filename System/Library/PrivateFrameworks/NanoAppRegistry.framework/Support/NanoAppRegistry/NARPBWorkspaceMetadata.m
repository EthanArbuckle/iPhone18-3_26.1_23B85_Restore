@interface NARPBWorkspaceMetadata
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)syncId;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NARPBWorkspaceMetadata

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = NARPBWorkspaceMetadata;
  v3 = [(NARPBWorkspaceMetadata *)&v7 description];
  v4 = [(NARPBWorkspaceMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_sequenceNumber];
    [v3 setObject:v4 forKey:@"sequenceNumber"];
  }

  uUID = self->_uUID;
  if (uUID)
  {
    [v3 setObject:uUID forKey:@"UUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_uUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_sequenceNumber;
    *(v4 + 24) |= 1u;
  }

  if (self->_uUID)
  {
    v5 = v4;
    [v4 setUUID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_sequenceNumber;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_uUID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_sequenceNumber != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  uUID = self->_uUID;
  if (uUID | *(v4 + 2))
  {
    v7 = [(NSString *)uUID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sequenceNumber;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_uUID hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_sequenceNumber = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(NARPBWorkspaceMetadata *)self setUUID:?];
    v4 = v5;
  }
}

- (id)syncId
{
  v2 = [NSNumber numberWithUnsignedInt:[(NARPBWorkspaceMetadata *)self sequenceNumber]];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

@end