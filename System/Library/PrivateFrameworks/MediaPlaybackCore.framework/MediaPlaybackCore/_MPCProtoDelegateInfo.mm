@interface _MPCProtoDelegateInfo
+ (_MPCProtoDelegateInfo)currentDeviceDelegateInfo;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)accountCapabilitiesAtIndex:(uint64_t)index;
- (uint64_t)accountID;
- (uint64_t)setAccountID:(uint64_t)result;
- (uint64_t)tokenA;
- (uint64_t)tokenE;
- (unint64_t)hash;
- (void)dealloc;
- (void)setTokenA:(uint64_t)a;
- (void)setTokenE:(uint64_t)e;
- (void)setUuid:(uint64_t)uuid;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoDelegateInfo

+ (_MPCProtoDelegateInfo)currentDeviceDelegateInfo
{
  v2 = objc_alloc_init(self);
  v3 = objc_alloc(MEMORY[0x1E69E4618]);
  defaultInfo = [MEMORY[0x1E69E43B0] defaultInfo];
  v5 = [v3 initWithClientInfo:defaultInfo];

  deviceInfo = [v5 deviceInfo];
  deviceGUID = [deviceInfo deviceGUID];
  if (v2)
  {
    objc_storeStrong(v2 + 6, deviceGUID);
  }

  deviceName = [deviceInfo deviceName];
  if (v2)
  {
    objc_storeStrong(v2 + 7, deviceName);
  }

  userAgent = [v5 userAgent];
  if (v2)
  {
    objc_storeStrong(v2 + 8, userAgent);
  }

  systemReleaseType = [deviceInfo systemReleaseType];
  if ([systemReleaseType isEqualToString:*MEMORY[0x1E69E4168]])
  {
    v11 = 3;
  }

  else if ([systemReleaseType isEqualToString:*MEMORY[0x1E69E4170]])
  {
    v11 = 4;
  }

  else if ([systemReleaseType isEqualToString:*MEMORY[0x1E69E4160]])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v2)
  {
    *(v2 + 124) |= 4u;
    *(v2 + 18) = v11;
  }

  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  name = [defaultTimeZone name];
  if (v2)
  {
    objc_storeStrong(v2 + 10, name);
  }

  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  isPrivateListeningEnabled = [standardUserDefaults isPrivateListeningEnabled];

  if ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E6970548], "isPrivateListeningEnabledForCurrentUserAndAccessory")}];

    isPrivateListeningEnabled = v16;
  }

  if (isPrivateListeningEnabled)
  {
    bOOLValue = [isPrivateListeningEnabled BOOLValue];
    if (v2)
    {
      *(v2 + 124) |= 8u;
      *(v2 + 120) = bOOLValue;
    }
  }

  return v2;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_delegateInfoID;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761u * self->_accountID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_uuid hash];
  v6 = [(NSString *)self->_deviceGUID hash];
  v7 = [(NSString *)self->_deviceName hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_systemReleaseType;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_requestUserAgent hash];
  v10 = [(NSString *)self->_timeZoneName hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_privateListeningEnabled;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v13 = v11 ^ PBRepeatedInt32Hash();
  v14 = v13 ^ [(_MPCProtoDelegateInfoTokenA *)self->_tokenA hash];
  v15 = v14 ^ [(_MPCProtoDelegateInfoTokenE *)self->_tokenE hash];
  return v12 ^ v15 ^ [(_MPCProtoDelegateInfoTokenB *)self->_tokenB hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 124) & 2) == 0 || self->_delegateInfoID != *(equalCopy + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 124) & 2) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 124) & 1) == 0 || self->_accountID != *(equalCopy + 4))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_37;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 14) && ![(NSString *)uuid isEqual:?])
  {
    goto LABEL_37;
  }

  deviceGUID = self->_deviceGUID;
  if (deviceGUID | *(equalCopy + 6))
  {
    if (![(NSString *)deviceGUID isEqual:?])
    {
      goto LABEL_37;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 7))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_37;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 124) & 4) == 0 || self->_systemReleaseType != *(equalCopy + 18))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 124) & 4) != 0)
  {
    goto LABEL_37;
  }

  requestUserAgent = self->_requestUserAgent;
  if (requestUserAgent | *(equalCopy + 8) && ![(NSString *)requestUserAgent isEqual:?])
  {
    goto LABEL_37;
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(equalCopy + 10))
  {
    if (![(NSString *)timeZoneName isEqual:?])
    {
      goto LABEL_37;
    }
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 124) & 8) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    v13 = 0;
    goto LABEL_38;
  }

  if ((*(equalCopy + 124) & 8) == 0)
  {
    goto LABEL_37;
  }

  if (self->_privateListeningEnabled)
  {
    if ((*(equalCopy + 120) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 120))
  {
    goto LABEL_37;
  }

LABEL_29:
  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_37;
  }

  tokenA = self->_tokenA;
  if (tokenA | *(equalCopy + 11))
  {
    if (![(_MPCProtoDelegateInfoTokenA *)tokenA isEqual:?])
    {
      goto LABEL_37;
    }
  }

  tokenE = self->_tokenE;
  if (tokenE | *(equalCopy + 13))
  {
    if (![(_MPCProtoDelegateInfoTokenE *)tokenE isEqual:?])
    {
      goto LABEL_37;
    }
  }

  tokenB = self->_tokenB;
  if (tokenB | *(equalCopy + 12))
  {
    v13 = [(_MPCProtoDelegateInfoTokenB *)tokenB isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_38:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_delegateInfoID;
    *(v5 + 124) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_accountID;
    *(v5 + 124) |= 1u;
  }

  v8 = [(NSString *)self->_uuid copyWithZone:zone];
  v9 = *(v6 + 112);
  *(v6 + 112) = v8;

  v10 = [(NSString *)self->_deviceGUID copyWithZone:zone];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  v12 = [(NSString *)self->_deviceName copyWithZone:zone];
  v13 = *(v6 + 56);
  *(v6 + 56) = v12;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 72) = self->_systemReleaseType;
    *(v6 + 124) |= 4u;
  }

  v14 = [(NSString *)self->_requestUserAgent copyWithZone:zone];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  v16 = [(NSString *)self->_timeZoneName copyWithZone:zone];
  v17 = *(v6 + 80);
  *(v6 + 80) = v16;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 120) = self->_privateListeningEnabled;
    *(v6 + 124) |= 8u;
  }

  PBRepeatedInt32Copy();
  v18 = [(_MPCProtoDelegateInfoTokenA *)self->_tokenA copyWithZone:zone];
  v19 = *(v6 + 88);
  *(v6 + 88) = v18;

  v20 = [(_MPCProtoDelegateInfoTokenE *)self->_tokenE copyWithZone:zone];
  v21 = *(v6 + 104);
  *(v6 + 104) = v20;

  v22 = [(_MPCProtoDelegateInfoTokenB *)self->_tokenB copyWithZone:zone];
  v23 = *(v6 + 96);
  *(v6 + 96) = v22;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_deviceGUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_requestUserAgent)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_timeZoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_accountCapabilities.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      toCopy = v7;
      ++v6;
    }

    while (v6 < self->_accountCapabilities.count);
  }

  if (self->_tokenA)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_tokenE)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_tokenB)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_delegateInfoID];
    [dictionary setObject:v5 forKey:@"delegateInfoID"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_accountID];
    [dictionary setObject:v6 forKey:@"accountID"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  deviceGUID = self->_deviceGUID;
  if (deviceGUID)
  {
    [dictionary setObject:deviceGUID forKey:@"deviceGUID"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_systemReleaseType];
    [dictionary setObject:v10 forKey:@"systemReleaseType"];
  }

  requestUserAgent = self->_requestUserAgent;
  if (requestUserAgent)
  {
    [dictionary setObject:requestUserAgent forKey:@"requestUserAgent"];
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName)
  {
    [dictionary setObject:timeZoneName forKey:@"timeZoneName"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_privateListeningEnabled];
    [dictionary setObject:v13 forKey:@"privateListeningEnabled"];
  }

  v14 = PBRepeatedInt32NSArray();
  [dictionary setObject:v14 forKey:@"accountCapabilities"];

  tokenA = self->_tokenA;
  if (tokenA)
  {
    dictionaryRepresentation = [(_MPCProtoDelegateInfoTokenA *)tokenA dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tokenA"];
  }

  tokenB = self->_tokenB;
  if (tokenB)
  {
    dictionaryRepresentation2 = [(_MPCProtoDelegateInfoTokenB *)tokenB dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"tokenB"];
  }

  tokenE = self->_tokenE;
  if (tokenE)
  {
    dictionaryRepresentation3 = [(_MPCProtoDelegateInfoTokenE *)tokenE dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"tokenE"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoDelegateInfo;
  v4 = [(_MPCProtoDelegateInfo *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoDelegateInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = _MPCProtoDelegateInfo;
  [(_MPCProtoDelegateInfo *)&v3 dealloc];
}

- (uint64_t)setAccountID:(uint64_t)result
{
  if (result)
  {
    *(result + 124) |= 1u;
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)accountCapabilitiesAtIndex:(uint64_t)index
{
  v4 = *(index + 16);
  if (v4 <= a2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695DA20];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a2, v4];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    [v8 raise];
  }

  return *(*(index + 8) + 4 * a2);
}

- (void)setUuid:(uint64_t)uuid
{
  if (uuid)
  {
    objc_storeStrong((uuid + 112), a2);
  }
}

- (void)setTokenA:(uint64_t)a
{
  if (a)
  {
    objc_storeStrong((a + 88), a2);
  }
}

- (void)setTokenE:(uint64_t)e
{
  if (e)
  {
    objc_storeStrong((e + 104), a2);
  }
}

- (uint64_t)accountID
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)tokenA
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)tokenE
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

@end