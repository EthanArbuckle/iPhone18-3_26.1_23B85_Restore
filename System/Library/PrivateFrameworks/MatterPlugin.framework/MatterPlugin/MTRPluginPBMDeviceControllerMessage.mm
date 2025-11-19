@interface MTRPluginPBMDeviceControllerMessage
+ (id)deviceControllerMessageFromMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceControllerMessage

+ (id)deviceControllerMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceControllerMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceControllerMessage *)v4 initWithData:v5];
  if ([(MTRPluginPBMDeviceControllerMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isValid
{
  v3 = [(MTRPluginPBMDeviceControllerMessage *)self hasHeader];
  if (v3)
  {
    v4 = [(MTRPluginPBMDeviceControllerMessage *)self header];
    v5 = [v4 isValid];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceControllerMessage;
  v4 = [(MTRPluginPBMDeviceControllerMessage *)&v8 description];
  v5 = [(MTRPluginPBMDeviceControllerMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  value = self->_value;
  if (value)
  {
    v7 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"value"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[1])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
    {
      v7 = [(MTRPluginPBMVariableValue *)value isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[1];
  v9 = v4;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMDeviceControllerMessage *)self setHeader:?];
  }

  v4 = v9;
LABEL_7:
  value = self->_value;
  v8 = v4[2];
  if (value)
  {
    if (v8)
    {
      [(MTRPluginPBMVariableValue *)value mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MTRPluginPBMDeviceControllerMessage *)self setValue:?];
  }

  MEMORY[0x2821F96F8]();
}

@end