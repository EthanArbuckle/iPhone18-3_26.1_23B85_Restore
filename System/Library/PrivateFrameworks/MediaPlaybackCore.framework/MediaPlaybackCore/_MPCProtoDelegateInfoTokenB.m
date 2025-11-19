@interface _MPCProtoDelegateInfoTokenB
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)hardwareInfoData;
- (uint64_t)machineIDData;
- (uint64_t)picData;
- (uint64_t)sessionID;
- (uint64_t)setSessionID:(uint64_t)result;
- (uint64_t)userAgent;
- (unint64_t)hash;
- (void)setHardwareInfoData:(uint64_t)a1;
- (void)setMachineIDData:(uint64_t)a1;
- (void)setPicData:(uint64_t)a1;
- (void)setUserAgent:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoDelegateInfoTokenB

- (unint64_t)hash
{
  v3 = [(NSData *)self->_picData hash];
  v4 = [(NSData *)self->_machineIDData hash];
  v5 = [(NSData *)self->_hardwareInfoData hash];
  v6 = [(NSString *)self->_userAgent hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_sessionID;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  picData = self->_picData;
  if (picData | *(v4 + 4))
  {
    if (![(NSData *)picData isEqual:?])
    {
      goto LABEL_14;
    }
  }

  machineIDData = self->_machineIDData;
  if (machineIDData | *(v4 + 3))
  {
    if (![(NSData *)machineIDData isEqual:?])
    {
      goto LABEL_14;
    }
  }

  hardwareInfoData = self->_hardwareInfoData;
  if (hardwareInfoData | *(v4 + 2))
  {
    if (![(NSData *)hardwareInfoData isEqual:?])
    {
      goto LABEL_14;
    }
  }

  userAgent = self->_userAgent;
  if (userAgent | *(v4 + 5))
  {
    if (![(NSString *)userAgent isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_sessionID == *(v4 + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_picData copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_machineIDData copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_hardwareInfoData copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_userAgent copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_sessionID;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_picData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_machineIDData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_hardwareInfoData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  picData = self->_picData;
  if (picData)
  {
    [v3 setObject:picData forKey:@"picData"];
  }

  machineIDData = self->_machineIDData;
  if (machineIDData)
  {
    [v4 setObject:machineIDData forKey:@"machineIDData"];
  }

  hardwareInfoData = self->_hardwareInfoData;
  if (hardwareInfoData)
  {
    [v4 setObject:hardwareInfoData forKey:@"hardwareInfoData"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v4 setObject:userAgent forKey:@"userAgent"];
  }

  if (*&self->_has)
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
  v8.super_class = _MPCProtoDelegateInfoTokenB;
  v4 = [(_MPCProtoDelegateInfoTokenB *)&v8 description];
  v5 = [(_MPCProtoDelegateInfoTokenB *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (uint64_t)setSessionID:(uint64_t)result
{
  if (result)
  {
    *(result + 48) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (void)setPicData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setMachineIDData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)setHardwareInfoData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (void)setUserAgent:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (uint64_t)picData
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)machineIDData
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)hardwareInfoData
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)userAgent
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)sessionID
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end