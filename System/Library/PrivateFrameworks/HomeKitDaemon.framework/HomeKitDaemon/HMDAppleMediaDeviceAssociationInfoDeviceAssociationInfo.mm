@interface HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self setAccessoryUUID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self setIdsIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self setIdsDestination:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accessoryUUID hash];
  v4 = [(NSString *)self->_idsIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_idsDestination hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((accessoryUUID = self->_accessoryUUID, !(accessoryUUID | equalCopy[1])) || -[NSString isEqual:](accessoryUUID, "isEqual:")) && ((idsIdentifier = self->_idsIdentifier, !(idsIdentifier | equalCopy[3])) || -[NSString isEqual:](idsIdentifier, "isEqual:")))
  {
    idsDestination = self->_idsDestination;
    if (idsDestination | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accessoryUUID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_idsIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_idsDestination copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accessoryUUID)
  {
    [toCopy setAccessoryUUID:?];
    toCopy = v5;
  }

  if (self->_idsIdentifier)
  {
    [v5 setIdsIdentifier:?];
    toCopy = v5;
  }

  if (self->_idsDestination)
  {
    [v5 setIdsDestination:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accessoryUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_idsIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_idsDestination)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v21 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  accessoryUUID = self->_accessoryUUID;
  if (accessoryUUID)
  {
    [dictionary setObject:accessoryUUID forKey:@"accessoryUUID"];
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
  dictionaryRepresentation = [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end