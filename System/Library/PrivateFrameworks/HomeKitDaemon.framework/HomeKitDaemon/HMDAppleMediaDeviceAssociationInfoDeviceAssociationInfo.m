@interface HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self setAccessoryUUID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self setIdsIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self setIdsDestination:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accessoryUUID hash];
  v4 = [(NSString *)self->_idsIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_idsDestination hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((accessoryUUID = self->_accessoryUUID, !(accessoryUUID | v4[1])) || -[NSString isEqual:](accessoryUUID, "isEqual:")) && ((idsIdentifier = self->_idsIdentifier, !(idsIdentifier | v4[3])) || -[NSString isEqual:](idsIdentifier, "isEqual:")))
  {
    idsDestination = self->_idsDestination;
    if (idsDestination | v4[2])
    {
      v8 = [(NSString *)idsDestination isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accessoryUUID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_idsIdentifier copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_idsDestination copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accessoryUUID)
  {
    [v4 setAccessoryUUID:?];
    v4 = v5;
  }

  if (self->_idsIdentifier)
  {
    [v5 setIdsIdentifier:?];
    v4 = v5;
  }

  if (self->_idsDestination)
  {
    [v5 setIdsDestination:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accessoryUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_idsIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_idsDestination)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v21 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = (v13 >> 3) - 1;
      if (v14 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v15 = off_278677590[v14];
        v16 = PBReaderReadString();
        v17 = *v15;
        v18 = *(&self->super.super.isa + v17);
        *(&self->super.super.isa + v17) = v16;
      }

      v19 = [a3 position];
    }

    while (v19 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  accessoryUUID = self->_accessoryUUID;
  if (accessoryUUID)
  {
    [v3 setObject:accessoryUUID forKey:@"accessoryUUID"];
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v4 setObject:idsIdentifier forKey:@"idsIdentifier"];
  }

  idsDestination = self->_idsDestination;
  if (idsDestination)
  {
    [v4 setObject:idsDestination forKey:@"idsDestination"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo;
  v4 = [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)&v8 description];
  v5 = [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end