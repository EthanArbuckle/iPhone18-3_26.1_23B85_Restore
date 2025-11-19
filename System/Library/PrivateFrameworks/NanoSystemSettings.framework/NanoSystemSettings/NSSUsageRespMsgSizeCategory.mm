@interface NSSUsageRespMsgSizeCategory
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSUsageRespMsgSizeCategory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgSizeCategory;
  v4 = [(NSSUsageRespMsgSizeCategory *)&v8 description];
  v5 = [(NSSUsageRespMsgSizeCategory *)self dictionaryRepresentation];
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

  categoryIdentifier = self->_categoryIdentifier;
  if (categoryIdentifier)
  {
    [v4 setObject:categoryIdentifier forKey:@"categoryIdentifier"];
  }

  size = self->_size;
  if (size)
  {
    v8 = [(NSSUsageSize *)size dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"size"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_categoryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_size)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_categoryIdentifier)
  {
    [v5 setCategoryIdentifier:?];
    v4 = v5;
  }

  if (self->_size)
  {
    [v5 setSize:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_categoryIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSSUsageSize *)self->_size copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[2])) || -[NSString isEqual:](name, "isEqual:")) && ((categoryIdentifier = self->_categoryIdentifier, !(categoryIdentifier | v4[1])) || -[NSString isEqual:](categoryIdentifier, "isEqual:")))
  {
    size = self->_size;
    if (size | v4[3])
    {
      v8 = [(NSSUsageSize *)size isEqual:?];
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
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_categoryIdentifier hash]^ v3;
  return v4 ^ [(NSSUsageSize *)self->_size hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(NSSUsageRespMsgSizeCategory *)self setName:?];
    v4 = v7;
  }

  if (v4[1])
  {
    [(NSSUsageRespMsgSizeCategory *)self setCategoryIdentifier:?];
    v4 = v7;
  }

  size = self->_size;
  v6 = v4[3];
  if (size)
  {
    if (v6)
    {
      [(NSSUsageSize *)size mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSSUsageRespMsgSizeCategory *)self setSize:?];
  }

  MEMORY[0x2821F96F8]();
}

@end