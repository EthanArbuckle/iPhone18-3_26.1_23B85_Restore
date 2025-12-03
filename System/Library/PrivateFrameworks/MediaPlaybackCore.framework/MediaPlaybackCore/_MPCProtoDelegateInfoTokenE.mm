@interface _MPCProtoDelegateInfoTokenE
- (BOOL)isEqual:(id)equal;
- (double)expirationDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)playerDelegateInfoData;
- (uint64_t)sessionID;
- (uint64_t)setExpirationDate:(uint64_t)result;
- (uint64_t)setSessionID:(uint64_t)result;
- (uint64_t)storefront;
- (unint64_t)hash;
- (void)setPlayerDelegateInfoData:(uint64_t)data;
- (void)setStorefront:(uint64_t)storefront;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoDelegateInfoTokenE

- (unint64_t)hash
{
  v3 = [(NSData *)self->_playerDelegateInfoData hash];
  v4 = [(NSString *)self->_storefront hash];
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v5.i64 = floor(expirationDate + 0.5);
    v9 = (expirationDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761u * self->_sessionID;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  playerDelegateInfoData = self->_playerDelegateInfoData;
  if (playerDelegateInfoData | *(equalCopy + 3))
  {
    if (![(NSData *)playerDelegateInfoData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  storefront = self->_storefront;
  if (storefront | *(equalCopy + 4))
  {
    if (![(NSString *)storefront isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_expirationDate != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_sessionID != *(equalCopy + 2))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_playerDelegateInfoData copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_storefront copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_expirationDate;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_sessionID;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_playerDelegateInfoData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_storefront)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  playerDelegateInfoData = self->_playerDelegateInfoData;
  if (playerDelegateInfoData)
  {
    [dictionary setObject:playerDelegateInfoData forKey:@"playerDelegateInfoData"];
  }

  storefront = self->_storefront;
  if (storefront)
  {
    [v4 setObject:storefront forKey:@"storefront"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expirationDate];
    [v4 setObject:v8 forKey:@"expirationDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sessionID];
    [v4 setObject:v9 forKey:@"sessionID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoDelegateInfoTokenE;
  v4 = [(_MPCProtoDelegateInfoTokenE *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoDelegateInfoTokenE *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (uint64_t)setExpirationDate:(uint64_t)result
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setSessionID:(uint64_t)result
{
  if (result)
  {
    *(result + 40) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (void)setPlayerDelegateInfoData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 24), a2);
  }
}

- (void)setStorefront:(uint64_t)storefront
{
  if (storefront)
  {
    objc_storeStrong((storefront + 32), a2);
  }
}

- (uint64_t)playerDelegateInfoData
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)storefront
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (double)expirationDate
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)sessionID
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end