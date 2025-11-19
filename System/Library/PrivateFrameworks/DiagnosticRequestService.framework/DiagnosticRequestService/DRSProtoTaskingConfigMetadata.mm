@interface DRSProtoTaskingConfigMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoTaskingConfigMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingConfigMetadata;
  v4 = [(DRSProtoTaskingConfigMetadata *)&v8 description];
  v5 = [(DRSProtoTaskingConfigMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  if (taskingDeviceMetadata)
  {
    v5 = [(DRSProtoTaskingDeviceMetadata *)taskingDeviceMetadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"tasking_device_metadata"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v3 setObject:teamId forKey:@"team_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskingDeviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskingDeviceMetadata)
  {
    [v4 setTaskingDeviceMetadata:?];
    v4 = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    v4 = v5;
  }

  if (self->_teamId)
  {
    [v5 setTeamId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DRSProtoTaskingDeviceMetadata *)self->_taskingDeviceMetadata copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_uuid copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_teamId copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((taskingDeviceMetadata = self->_taskingDeviceMetadata, !(taskingDeviceMetadata | v4[1])) || -[DRSProtoTaskingDeviceMetadata isEqual:](taskingDeviceMetadata, "isEqual:")) && ((uuid = self->_uuid, !(uuid | v4[3])) || -[NSString isEqual:](uuid, "isEqual:")))
  {
    teamId = self->_teamId;
    if (teamId | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[3])
  {
    [(DRSProtoTaskingConfigMetadata *)self setUuid:?];
    v4 = v7;
  }

  if (v4[2])
  {
    [(DRSProtoTaskingConfigMetadata *)self setTeamId:?];
    v4 = v7;
  }
}

@end