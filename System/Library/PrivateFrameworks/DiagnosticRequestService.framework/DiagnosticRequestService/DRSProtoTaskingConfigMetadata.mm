@interface DRSProtoTaskingConfigMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoTaskingConfigMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingConfigMetadata;
  v4 = [(DRSProtoTaskingConfigMetadata *)&v8 description];
  dictionaryRepresentation = [(DRSProtoTaskingConfigMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  if (taskingDeviceMetadata)
  {
    dictionaryRepresentation = [(DRSProtoTaskingDeviceMetadata *)taskingDeviceMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tasking_device_metadata"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [dictionary setObject:teamId forKey:@"team_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskingDeviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskingDeviceMetadata)
  {
    [toCopy setTaskingDeviceMetadata:?];
    toCopy = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    toCopy = v5;
  }

  if (self->_teamId)
  {
    [v5 setTeamId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoTaskingDeviceMetadata *)self->_taskingDeviceMetadata copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_uuid copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_teamId copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((taskingDeviceMetadata = self->_taskingDeviceMetadata, !(taskingDeviceMetadata | equalCopy[1])) || -[DRSProtoTaskingDeviceMetadata isEqual:](taskingDeviceMetadata, "isEqual:")) && ((uuid = self->_uuid, !(uuid | equalCopy[3])) || -[NSString isEqual:](uuid, "isEqual:")))
  {
    teamId = self->_teamId;
    if (teamId | equalCopy[2])
    {
      v8 = [(NSString *)teamId isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(DRSProtoTaskingDeviceMetadata *)self->_taskingDeviceMetadata hash];
  v4 = [(NSString *)self->_uuid hash]^ v3;
  return v4 ^ [(NSString *)self->_teamId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (taskingDeviceMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingDeviceMetadata *)taskingDeviceMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingConfigMetadata *)self setTaskingDeviceMetadata:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[3])
  {
    [(DRSProtoTaskingConfigMetadata *)self setUuid:?];
    fromCopy = v7;
  }

  if (fromCopy[2])
  {
    [(DRSProtoTaskingConfigMetadata *)self setTeamId:?];
    fromCopy = v7;
  }
}

@end