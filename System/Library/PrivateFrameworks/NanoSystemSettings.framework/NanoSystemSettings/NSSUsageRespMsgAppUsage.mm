@interface NSSUsageRespMsgAppUsage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSUsageRespMsgAppUsage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgAppUsage;
  v4 = [(NSSUsageRespMsgAppUsage *)&v8 description];
  dictionaryRepresentation = [(NSSUsageRespMsgAppUsage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
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

- (void)writeTo:(id)to
{
  name = self->_name;
  toCopy = to;
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

- (void)copyTo:(id)to
{
  name = self->_name;
  toCopy = to;
  [toCopy setName:name];
  [toCopy setBundleIdentifier:self->_bundleIdentifier];
  [toCopy setBundleVersion:self->_bundleVersion];
  toCopy[3] = self->_staticSizeInBytes;
  toCopy[1] = self->_dynamicSizeInBytes;
  toCopy[2] = self->_sharedSizeInBytes;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v5[3] = self->_staticSizeInBytes;
  v5[1] = self->_dynamicSizeInBytes;
  v5[2] = self->_sharedSizeInBytes;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[6])) || -[NSString isEqual:](name, "isEqual:")) && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | equalCopy[4])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")) && ((bundleVersion = self->_bundleVersion, !(bundleVersion | equalCopy[5])) || -[NSString isEqual:](bundleVersion, "isEqual:")) && self->_staticSizeInBytes == equalCopy[3] && self->_dynamicSizeInBytes == equalCopy[1] && self->_sharedSizeInBytes == equalCopy[2];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_bundleVersion hash]^ (2654435761u * self->_staticSizeInBytes) ^ (2654435761u * self->_dynamicSizeInBytes) ^ (2654435761u * self->_sharedSizeInBytes);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    [(NSSUsageRespMsgAppUsage *)self setName:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(NSSUsageRespMsgAppUsage *)self setBundleIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    [(NSSUsageRespMsgAppUsage *)self setBundleVersion:?];
    fromCopy = v5;
  }

  self->_staticSizeInBytes = fromCopy[3];
  self->_dynamicSizeInBytes = fromCopy[1];
  self->_sharedSizeInBytes = fromCopy[2];
}

@end