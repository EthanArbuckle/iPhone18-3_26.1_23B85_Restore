@interface MTRPluginPBMDeviceNodeWriteAttributeMessage
+ (id)deviceNodeWriteAttributeMessageFromMessage:(id)message;
+ (id)deviceNodeWriteAttributeMessageWithNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimedWriteTimeout:(BOOL)timeout;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceNodeWriteAttributeMessage

+ (id)deviceNodeWriteAttributeMessageFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMDeviceNodeWriteAttributeMessage alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v4 initWithData:messageData];
  if ([(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeWriteAttributeMessageWithNodeID:(id)d endpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout
{
  intervalCopy = interval;
  timeoutCopy = timeout;
  valueCopy = value;
  attributeIDCopy = attributeID;
  clusterIDCopy = clusterID;
  iDCopy = iD;
  dCopy = d;
  v21 = objc_alloc_init(MTRPluginPBMDeviceNodeWriteAttributeMessage);
  v22 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:dCopy];

  [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v21 setNode:v22];
  v23 = [MTRPluginPBMAttributePath attributePathWithEndpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy];

  [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v21 setAttributePath:v23];
  v24 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:valueCopy];

  [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v21 setValue:v24];
  if (intervalCopy)
  {
    -[MTRPluginPBMDeviceNodeWriteAttributeMessage setExpectedValueInterval:](v21, "setExpectedValueInterval:", [intervalCopy unsignedLongLongValue]);
  }

  if (timeoutCopy)
  {
    -[MTRPluginPBMDeviceNodeWriteAttributeMessage setTimedWriteTimeout:](v21, "setTimedWriteTimeout:", [timeoutCopy unsignedLongLongValue]);
  }

  return v21;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self hasHeader])
  {
    return 0;
  }

  header = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self header];
  if ([header isValid] && -[MTRPluginPBMDeviceNodeWriteAttributeMessage hasNode](self, "hasNode"))
  {
    node = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self node];
    if ([node isValid] && -[MTRPluginPBMDeviceNodeWriteAttributeMessage hasAttributePath](self, "hasAttributePath"))
    {
      attributePath = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self attributePath];
      if ([attributePath isValid] && -[MTRPluginPBMDeviceNodeWriteAttributeMessage hasValue](self, "hasValue"))
      {
        value = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self value];
        v7 = value != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHasTimedWriteTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceNodeWriteAttributeMessage;
  v4 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self dictionaryRepresentation];
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

  attributePath = self->_attributePath;
  if (attributePath)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMAttributePath *)attributePath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"attributePath"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation4 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_expectedValueInterval];
    [dictionary setObject:v13 forKey:@"expectedValueInterval"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timedWriteTimeout];
    [dictionary setObject:v14 forKey:@"timedWriteTimeout"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_attributePath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    expectedValueInterval = self->_expectedValueInterval;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    timedWriteTimeout = self->_timedWriteTimeout;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v6;
  }

  if (self->_node)
  {
    [v6 setNode:?];
    toCopy = v6;
  }

  if (self->_attributePath)
  {
    [v6 setAttributePath:?];
    toCopy = v6;
  }

  if (self->_value)
  {
    [v6 setValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_expectedValueInterval;
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_timedWriteTimeout;
    *(toCopy + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(MTRPluginPBMAttributePath *)self->_attributePath copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_expectedValueInterval;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timedWriteTimeout;
    *(v5 + 56) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  header = self->_header;
  if (header | *(equalCopy + 4))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_19;
    }
  }

  node = self->_node;
  if (node | *(equalCopy + 5))
  {
    if (![(MTRPluginPBMDeviceNode *)node isEqual:?])
    {
      goto LABEL_19;
    }
  }

  attributePath = self->_attributePath;
  if (attributePath | *(equalCopy + 3))
  {
    if (![(MTRPluginPBMAttributePath *)attributePath isEqual:?])
    {
      goto LABEL_19;
    }
  }

  value = self->_value;
  if (value | *(equalCopy + 6))
  {
    if (![(MTRPluginPBMVariableValue *)value isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_expectedValueInterval != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = (*(equalCopy + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_timedWriteTimeout != *(equalCopy + 2))
    {
      goto LABEL_19;
    }

    v9 = 1;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMDeviceNode *)self->_node hash];
  v5 = [(MTRPluginPBMAttributePath *)self->_attributePath hash];
  v6 = [(MTRPluginPBMVariableValue *)self->_value hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_expectedValueInterval;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761u * self->_timedWriteTimeout;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[4];
  v14 = fromCopy;
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

    [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self setHeader:?];
  }

  fromCopy = v14;
LABEL_7:
  node = self->_node;
  v8 = fromCopy[5];
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

    [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self setNode:?];
  }

  fromCopy = v14;
LABEL_13:
  attributePath = self->_attributePath;
  v10 = fromCopy[3];
  if (attributePath)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MTRPluginPBMAttributePath *)attributePath mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self setAttributePath:?];
  }

  fromCopy = v14;
LABEL_19:
  value = self->_value;
  v12 = fromCopy[6];
  if (value)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(MTRPluginPBMVariableValue *)value mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self setValue:?];
  }

  fromCopy = v14;
LABEL_25:
  v13 = *(fromCopy + 56);
  if (v13)
  {
    self->_expectedValueInterval = fromCopy[1];
    *&self->_has |= 1u;
    v13 = *(fromCopy + 56);
  }

  if ((v13 & 2) != 0)
  {
    self->_timedWriteTimeout = fromCopy[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end