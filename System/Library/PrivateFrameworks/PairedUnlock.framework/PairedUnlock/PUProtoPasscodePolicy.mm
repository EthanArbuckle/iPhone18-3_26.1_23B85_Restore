@interface PUProtoPasscodePolicy
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PUProtoPasscodePolicy

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoPasscodePolicy;
  v3 = [(PUProtoPasscodePolicy *)&v7 description];
  dictionaryRepresentation = [(PUProtoPasscodePolicy *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  modificationAllowed = self->_modificationAllowed;
  v7 = toCopy;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    minimumLength = self->_minimumLength;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  *(to + 12) = self->_modificationAllowed;
  if (*&self->_has)
  {
    *(to + 2) = self->_minimumLength;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 12) = self->_modificationAllowed;
  if (*&self->_has)
  {
    *(result + 2) = self->_minimumLength;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(equalCopy + 12);
  if (self->_modificationAllowed)
  {
    if ((*(equalCopy + 12) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (*(equalCopy + 12))
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_minimumLength != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  self->_modificationAllowed = *(from + 12);
  if (*(from + 16))
  {
    self->_minimumLength = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end