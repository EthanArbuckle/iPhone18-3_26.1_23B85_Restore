@interface NARPBApplicationStateWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsRestricted:(BOOL)restricted;
- (void)writeTo:(id)to;
@end

@implementation NARPBApplicationStateWrapper

- (void)setHasIsRestricted:(BOOL)restricted
{
  if (restricted)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NARPBApplicationStateWrapper;
  v3 = [(NARPBApplicationStateWrapper *)&v7 description];
  dictionaryRepresentation = [(NARPBApplicationStateWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithBool:self->_isRestricted];
    [v3 setObject:v5 forKey:@"isRestricted"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithBool:self->_isRemovedSystemApp];
    [v3 setObject:v6 forKey:@"isRemovedSystemApp"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    isRestricted = self->_isRestricted;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    isRemovedSystemApp = self->_isRemovedSystemApp;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_isRestricted;
    toCopy[12] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[8] = self->_isRemovedSystemApp;
    toCopy[12] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 9) = self->_isRestricted;
    *(result + 12) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 8) = self->_isRemovedSystemApp;
    *(result + 12) |= 1u;
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

  if ((*&self->_has & 2) == 0)
  {
    if ((equalCopy[12] & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((equalCopy[12] & 2) == 0)
  {
    goto LABEL_10;
  }

  v7 = equalCopy[9];
  if (self->_isRestricted)
  {
    if ((equalCopy[9] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (equalCopy[9])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if (equalCopy[12])
    {
      if (self->_isRemovedSystemApp)
      {
        if (equalCopy[8])
        {
          goto LABEL_18;
        }
      }

      else if (!equalCopy[8])
      {
LABEL_18:
        v5 = 1;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_isRestricted;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isRemovedSystemApp;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if ((v5 & 2) != 0)
  {
    self->_isRestricted = fromCopy[9];
    *&self->_has |= 2u;
    v5 = fromCopy[12];
  }

  if (v5)
  {
    self->_isRemovedSystemApp = fromCopy[8];
    *&self->_has |= 1u;
  }
}

@end