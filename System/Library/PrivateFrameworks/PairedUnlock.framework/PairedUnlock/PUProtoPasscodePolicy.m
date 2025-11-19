@interface PUProtoPasscodePolicy
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PUProtoPasscodePolicy

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoPasscodePolicy;
  v3 = [(PUProtoPasscodePolicy *)&v7 description];
  v4 = [(PUProtoPasscodePolicy *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_modificationAllowed];
  [v3 setObject:v4 forKey:@"modificationAllowed"];

  if (*&self->_has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_minimumLength];
    [v3 setObject:v5 forKey:@"minimumLength"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  modificationAllowed = self->_modificationAllowed;
  v7 = v4;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    minimumLength = self->_minimumLength;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 12) = self->_modificationAllowed;
  if (*&self->_has)
  {
    *(a3 + 2) = self->_minimumLength;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 12) = self->_modificationAllowed;
  if (*&self->_has)
  {
    *(result + 2) = self->_minimumLength;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(v4 + 12);
  if (self->_modificationAllowed)
  {
    if ((*(v4 + 12) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (*(v4 + 12))
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_minimumLength != *(v4 + 2))
    {
      goto LABEL_10;
    }

    v6 = 1;
  }

LABEL_11:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_minimumLength;
  }

  else
  {
    v2 = 0;
  }

  return v2 ^ (2654435761 * self->_modificationAllowed);
}

- (void)mergeFrom:(id)a3
{
  self->_modificationAllowed = *(a3 + 12);
  if (*(a3 + 16))
  {
    self->_minimumLength = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end