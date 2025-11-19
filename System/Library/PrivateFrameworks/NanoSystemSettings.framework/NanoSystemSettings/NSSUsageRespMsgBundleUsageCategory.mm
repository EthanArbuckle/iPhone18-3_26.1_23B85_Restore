@interface NSSUsageRespMsgBundleUsageCategory
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSUsageRespMsgBundleUsageCategory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgBundleUsageCategory;
  v4 = [(NSSUsageRespMsgBundleUsageCategory *)&v8 description];
  v5 = [(NSSUsageRespMsgBundleUsageCategory *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_usageInBytes];
  [v4 setObject:v6 forKey:@"usageInBytes"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  usageInBytes = self->_usageInBytes;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_name)
  {
    v5 = v4;
    [v4 setName:?];
    v4 = v5;
  }

  v4[1] = self->_usageInBytes;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_usageInBytes;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[2])) || -[NSString isEqual:](name, "isEqual:")) && self->_usageInBytes == v4[1];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(NSSUsageRespMsgBundleUsageCategory *)self setName:?];
    v4 = v5;
  }

  self->_usageInBytes = v4[1];
}

@end