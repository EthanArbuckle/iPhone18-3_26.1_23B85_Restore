@interface MTRPluginPBMDeviceNodeMessage
+ (id)deviceNodeMessageFromMessage:(id)a3;
+ (id)deviceNodeMessageWithNodeID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeMessage

+ (id)deviceNodeMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeMessage *)v4 initWithData:v5];
  if ([(MTRPluginPBMDeviceNodeMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeMessageWithNodeID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTRPluginPBMDeviceNodeMessage);
  v5 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v3];

  [(MTRPluginPBMDeviceNodeMessage *)v4 setNode:v5];

  return v4;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeMessage *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeMessage *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeMessage hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeMessage *)self node];
    v5 = [v4 isValid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeMessage;
  v4 = [(MTRPluginPBMDeviceNodeMessage *)&v8 description];
  v5 = [(MTRPluginPBMDeviceNodeMessage *)self dictionaryRepresentation];
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

  node = self->_node;
  if (node)
  {
    v7 = [(MTRPluginPBMDeviceNode *)node dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"node"];
  }

  value = self->_value;
  if (value)
  {
    v9 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"value"];
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

  if (self->_node)
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

  if (self->_node)
  {
    [v5 setNode:?];
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

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[1])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")) && ((node = self->_node, !(node | v4[2])) || -[MTRPluginPBMDeviceNode isEqual:](node, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[3])
    {
      v8 = [(MTRPluginPBMVariableValue *)value isEqual:?];
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
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMDeviceNode *)self->_node hash]^ v3;
  return v4 ^ [(MTRPluginPBMVariableValue *)self->_value hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[1];
  v11 = v4;
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

    [(MTRPluginPBMDeviceNodeMessage *)self setHeader:?];
  }

  v4 = v11;
LABEL_7:
  node = self->_node;
  v8 = v4[2];
  if (node)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMDeviceNode *)node mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMDeviceNodeMessage *)self setNode:?];
  }

  v4 = v11;
LABEL_13:
  value = self->_value;
  v10 = v4[3];
  if (value)
  {
    if (v10)
    {
      [(MTRPluginPBMVariableValue *)value mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(MTRPluginPBMDeviceNodeMessage *)self setValue:?];
  }

  MEMORY[0x2821F96F8]();
}

@end