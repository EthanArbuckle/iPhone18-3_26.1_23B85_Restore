@interface PUProtoPasscodeState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PUProtoPasscodeState

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoPasscodeState;
  v3 = [(PUProtoPasscodeState *)&v7 description];
  dictionaryRepresentation = [(PUProtoPasscodeState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_hasPasscode];
  [v3 setObject:v4 forKey:@"hasPasscode"];

  v5 = [NSNumber numberWithBool:self->_isLocked];
  [v3 setObject:v5 forKey:@"isLocked"];

  v6 = [NSNumber numberWithBool:self->_isUnlockOnly];
  [v3 setObject:v6 forKey:@"isUnlockOnly"];

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithBool:self->_isWristDetectionEnabled];
    [v3 setObject:v7 forKey:@"isWristDetectionEnabled"];
  }

  policy = self->_policy;
  if (policy)
  {
    dictionaryRepresentation = [(PUProtoPasscodePolicy *)policy dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"policy"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  hasPasscode = self->_hasPasscode;
  PBDataWriterWriteBOOLField();
  isLocked = self->_isLocked;
  PBDataWriterWriteBOOLField();
  isUnlockOnly = self->_isUnlockOnly;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    isWristDetectionEnabled = self->_isWristDetectionEnabled;
    PBDataWriterWriteBOOLField();
  }

  v8 = toCopy;
  if (self->_policy)
  {
    PBDataWriterWriteSubmessage();
    v8 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[16] = self->_hasPasscode;
  toCopy[17] = self->_isLocked;
  toCopy[18] = self->_isUnlockOnly;
  if (*&self->_has)
  {
    toCopy[19] = self->_isWristDetectionEnabled;
    toCopy[20] |= 1u;
  }

  if (self->_policy)
  {
    v5 = toCopy;
    [toCopy setPolicy:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  v5[16] = self->_hasPasscode;
  v5[17] = self->_isLocked;
  v5[18] = self->_isUnlockOnly;
  if (*&self->_has)
  {
    v5[19] = self->_isWristDetectionEnabled;
    v5[20] |= 1u;
  }

  v7 = [(PUProtoPasscodePolicy *)self->_policy copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 16);
  if (self->_hasPasscode)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_19;
  }

  v6 = *(equalCopy + 17);
  if (self->_isLocked)
  {
    if ((*(equalCopy + 17) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 17))
  {
    goto LABEL_19;
  }

  v7 = *(equalCopy + 18);
  if (self->_isUnlockOnly)
  {
    if ((*(equalCopy + 18) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 18))
  {
    goto LABEL_19;
  }

  v8 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(equalCopy + 19);
  if (!self->_isWristDetectionEnabled)
  {
LABEL_15:
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if ((*(equalCopy + 19) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  policy = self->_policy;
  if (policy | *(equalCopy + 1))
  {
    v10 = [(PUProtoPasscodePolicy *)policy isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_isWristDetectionEnabled;
  }

  else
  {
    v9 = 0;
  }

  hasPasscode = self->_hasPasscode;
  isLocked = self->_isLocked;
  isUnlockOnly = self->_isUnlockOnly;
  return (2654435761 * isLocked) ^ (2654435761 * hasPasscode) ^ (2654435761 * isUnlockOnly) ^ v9 ^ [(PUProtoPasscodePolicy *)self->_policy hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  self->_hasPasscode = fromCopy[16];
  self->_isLocked = fromCopy[17];
  self->_isUnlockOnly = fromCopy[18];
  if (fromCopy[20])
  {
    self->_isWristDetectionEnabled = fromCopy[19];
    *&self->_has |= 1u;
  }

  policy = self->_policy;
  v7 = *(v5 + 1);
  if (policy)
  {
    if (v7)
    {
      [(PUProtoPasscodePolicy *)policy mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PUProtoPasscodeState *)self setPolicy:?];
  }

  _objc_release_x1();
}

@end