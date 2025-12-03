@interface NSSUsageRespMsgBundleUsageCategory
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSUsageRespMsgBundleUsageCategory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgBundleUsageCategory;
  v4 = [(NSSUsageRespMsgBundleUsageCategory *)&v8 description];
  dictionaryRepresentation = [(NSSUsageRespMsgBundleUsageCategory *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_usageInBytes];
  [v4 setObject:v6 forKey:@"usageInBytes"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  usageInBytes = self->_usageInBytes;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    v5 = toCopy;
    [toCopy setName:?];
    toCopy = v5;
  }

  toCopy[1] = self->_usageInBytes;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_usageInBytes;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[2])) || -[NSString isEqual:](name, "isEqual:")) && self->_usageInBytes == equalCopy[1];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(NSSUsageRespMsgBundleUsageCategory *)self setName:?];
    fromCopy = v5;
  }

  self->_usageInBytes = fromCopy[1];
}

@end