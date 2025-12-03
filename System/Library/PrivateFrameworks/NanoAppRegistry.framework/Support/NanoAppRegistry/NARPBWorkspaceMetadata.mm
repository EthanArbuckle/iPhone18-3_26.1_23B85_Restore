@interface NARPBWorkspaceMetadata
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)syncId;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NARPBWorkspaceMetadata

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = NARPBWorkspaceMetadata;
  v3 = [(NARPBWorkspaceMetadata *)&v7 description];
  dictionaryRepresentation = [(NARPBWorkspaceMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_uUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_sequenceNumber;
    *(toCopy + 24) |= 1u;
  }

  if (self->_uUID)
  {
    v5 = toCopy;
    [toCopy setUUID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_sequenceNumber;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_uUID copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_sequenceNumber != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  uUID = self->_uUID;
  if (uUID | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_sequenceNumber = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(NARPBWorkspaceMetadata *)self setUUID:?];
    fromCopy = v5;
  }
}

- (id)syncId
{
  v2 = [NSNumber numberWithUnsignedInt:[(NARPBWorkspaceMetadata *)self sequenceNumber]];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

@end