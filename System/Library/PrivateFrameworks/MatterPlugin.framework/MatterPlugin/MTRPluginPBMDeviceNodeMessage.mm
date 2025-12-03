@interface MTRPluginPBMDeviceNodeMessage
+ (id)deviceNodeMessageFromMessage:(id)message;
+ (id)deviceNodeMessageWithNodeID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceNodeMessage

+ (id)deviceNodeMessageFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMDeviceNodeMessage *)v4 initWithData:messageData];
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

+ (id)deviceNodeMessageWithNodeID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(MTRPluginPBMDeviceNodeMessage);
  v5 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:dCopy];

  [(MTRPluginPBMDeviceNodeMessage *)v4 setNode:v5];

  return v4;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeMessage *)self hasHeader])
  {
    return 0;
  }

  header = [(MTRPluginPBMDeviceNodeMessage *)self header];
  if ([header isValid] && -[MTRPluginPBMDeviceNodeMessage hasNode](self, "hasNode"))
  {
    node = [(MTRPluginPBMDeviceNodeMessage *)self node];
    isValid = [node isValid];
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeMessage;
  v4 = [(MTRPluginPBMDeviceNodeMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceNodeMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  node = self->_node;
  if (node)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMDeviceNode *)node dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"node"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"value"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_node)
  {
    [v5 setNode:?];
    toCopy = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[1])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")) && ((node = self->_node, !(node | equalCopy[2])) || -[MTRPluginPBMDeviceNode isEqual:](node, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[1];
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  node = self->_node;
  v8 = fromCopy[2];
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

  fromCopy = v11;
LABEL_13:
  value = self->_value;
  v10 = fromCopy[3];
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