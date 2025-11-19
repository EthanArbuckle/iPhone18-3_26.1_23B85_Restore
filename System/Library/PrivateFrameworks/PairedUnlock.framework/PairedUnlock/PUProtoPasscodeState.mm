@interface PUProtoPasscodeState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PUProtoPasscodeState

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoPasscodeState;
  v3 = [(PUProtoPasscodeState *)&v7 description];
  v4 = [(PUProtoPasscodeState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v9 = [(PUProtoPasscodePolicy *)policy dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"policy"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v8 = v9;
  if (self->_policy)
  {
    PBDataWriterWriteSubmessage();
    v8 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[16] = self->_hasPasscode;
  v4[17] = self->_isLocked;
  v4[18] = self->_isUnlockOnly;
  if (*&self->_has)
  {
    v4[19] = self->_isWristDetectionEnabled;
    v4[20] |= 1u;
  }

  if (self->_policy)
  {
    v5 = v4;
    [v4 setPolicy:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  v5[16] = self->_hasPasscode;
  v5[17] = self->_isLocked;
  v5[18] = self->_isUnlockOnly;
  if (*&self->_has)
  {
    v5[19] = self->_isWristDetectionEnabled;
    v5[20] |= 1u;
  }

  v7 = [(PUProtoPasscodePolicy *)self->_policy copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 16);
  if (self->_hasPasscode)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_19;
  }

  v6 = *(v4 + 17);
  if (self->_isLocked)
  {
    if ((*(v4 + 17) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 17))
  {
    goto LABEL_19;
  }

  v7 = *(v4 + 18);
  if (self->_isUnlockOnly)
  {
    if ((*(v4 + 18) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 18))
  {
    goto LABEL_19;
  }

  v8 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(v4 + 19);
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

  if ((*(v4 + 19) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  policy = self->_policy;
  if (policy | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  self->_hasPasscode = v4[16];
  self->_isLocked = v4[17];
  self->_isUnlockOnly = v4[18];
  if (v4[20])
  {
    self->_isWristDetectionEnabled = v4[19];
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