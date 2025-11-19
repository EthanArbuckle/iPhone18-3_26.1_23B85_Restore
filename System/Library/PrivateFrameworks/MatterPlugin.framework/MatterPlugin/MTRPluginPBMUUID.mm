@interface MTRPluginPBMUUID
- (BOOL)isEqual:(id)a3;
- (MTRPluginPBMUUID)initWithUUID:(id)a3;
- (NSUUID)uuid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setUuid:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMUUID

- (MTRPluginPBMUUID)initWithUUID:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMUUID *)self init]) != 0)
  {
    v5 = [v4 UUIDString];
    [(MTRPluginPBMUUID *)self setValue:v5];

    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUuid:(id)a3
{
  v4 = [a3 UUIDString];
  [(MTRPluginPBMUUID *)self setValue:v4];
}

- (NSUUID)uuid
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(MTRPluginPBMUUID *)self value];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMUUID;
  v4 = [(MTRPluginPBMUUID *)&v8 description];
  v5 = [(MTRPluginPBMUUID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_value)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  value = self->_value;
  if (value)
  {
    [a3 setValue:value];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | v4[1])
    {
      v6 = [(NSString *)value isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(MTRPluginPBMUUID *)self setValue:?];
  }
}

@end