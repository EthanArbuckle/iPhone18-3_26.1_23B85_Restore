@interface PUProtoStartRemoteAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PUProtoStartRemoteAction

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoStartRemoteAction;
  v3 = [(PUProtoStartRemoteAction *)&v7 description];
  dictionaryRepresentation = [(PUProtoStartRemoteAction *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:self->_actionID];
  [v3 setObject:v4 forKey:@"actionID"];

  if (*&self->_has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_passcodeType];
    [v3 setObject:v5 forKey:@"passcodeType"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionID = self->_actionID;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    passcodeType = self->_passcodeType;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_actionID;
  if (*&self->_has)
  {
    *(to + 3) = self->_passcodeType;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_actionID;
  if (*&self->_has)
  {
    *(result + 3) = self->_passcodeType;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_actionID != *(equalCopy + 2))
  {
    goto LABEL_7;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_passcodeType == *(equalCopy + 3))
    {
      v5 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_passcodeType;
  }

  else
  {
    v2 = 0;
  }

  return v2 ^ (2654435761 * self->_actionID);
}

- (void)mergeFrom:(id)from
{
  self->_actionID = *(from + 2);
  if (*(from + 16))
  {
    self->_passcodeType = *(from + 3);
    *&self->_has |= 1u;
  }
}

@end