@interface PUProtoStartRemoteAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PUProtoStartRemoteAction

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoStartRemoteAction;
  v3 = [(PUProtoStartRemoteAction *)&v7 description];
  v4 = [(PUProtoStartRemoteAction *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  actionID = self->_actionID;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    passcodeType = self->_passcodeType;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_actionID;
  if (*&self->_has)
  {
    *(a3 + 3) = self->_passcodeType;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_actionID;
  if (*&self->_has)
  {
    *(result + 3) = self->_passcodeType;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_actionID != *(v4 + 2))
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_passcodeType == *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  self->_actionID = *(a3 + 2);
  if (*(a3 + 16))
  {
    self->_passcodeType = *(a3 + 3);
    *&self->_has |= 1u;
  }
}

@end