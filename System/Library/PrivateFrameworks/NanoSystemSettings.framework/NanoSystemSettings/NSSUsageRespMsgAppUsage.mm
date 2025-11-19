@interface NSSUsageRespMsgAppUsage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSUsageRespMsgAppUsage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgAppUsage;
  v4 = [(NSSUsageRespMsgAppUsage *)&v8 description];
  v5 = [(NSSUsageRespMsgAppUsage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    [v4 setObject:bundleVersion forKey:@"bundleVersion"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_staticSizeInBytes];
  [v4 setObject:v8 forKey:@"staticSizeInBytes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dynamicSizeInBytes];
  [v4 setObject:v9 forKey:@"dynamicSizeInBytes"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sharedSizeInBytes];
  [v4 setObject:v10 forKey:@"sharedSizeInBytes"];

  return v4;
}

- (void)writeTo:(id)a3
{
  name = self->_name;
  v10 = a3;
  PBDataWriterWriteStringField();
  bundleIdentifier = self->_bundleIdentifier;
  PBDataWriterWriteStringField();
  bundleVersion = self->_bundleVersion;
  PBDataWriterWriteStringField();
  staticSizeInBytes = self->_staticSizeInBytes;
  PBDataWriterWriteUint64Field();
  dynamicSizeInBytes = self->_dynamicSizeInBytes;
  PBDataWriterWriteUint64Field();
  sharedSizeInBytes = self->_sharedSizeInBytes;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 setName:name];
  [v5 setBundleIdentifier:self->_bundleIdentifier];
  [v5 setBundleVersion:self->_bundleVersion];
  v5[3] = self->_staticSizeInBytes;
  v5[1] = self->_dynamicSizeInBytes;
  v5[2] = self->_sharedSizeInBytes;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v5[3] = self->_staticSizeInBytes;
  v5[1] = self->_dynamicSizeInBytes;
  v5[2] = self->_sharedSizeInBytes;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = [v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[6])) || -[NSString isEqual:](name, "isEqual:")) && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | v4[4])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")) && ((bundleVersion = self->_bundleVersion, !(bundleVersion | v4[5])) || -[NSString isEqual:](bundleVersion, "isEqual:")) && self->_staticSizeInBytes == v4[3] && self->_dynamicSizeInBytes == v4[1] && self->_sharedSizeInBytes == v4[2];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_bundleVersion hash]^ (2654435761u * self->_staticSizeInBytes) ^ (2654435761u * self->_dynamicSizeInBytes) ^ (2654435761u * self->_sharedSizeInBytes);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    [(NSSUsageRespMsgAppUsage *)self setName:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(NSSUsageRespMsgAppUsage *)self setBundleIdentifier:?];
    v4 = v5;
  }

  if (v4[5])
  {
    [(NSSUsageRespMsgAppUsage *)self setBundleVersion:?];
    v4 = v5;
  }

  self->_staticSizeInBytes = v4[3];
  self->_dynamicSizeInBytes = v4[1];
  self->_sharedSizeInBytes = v4[2];
}

@end