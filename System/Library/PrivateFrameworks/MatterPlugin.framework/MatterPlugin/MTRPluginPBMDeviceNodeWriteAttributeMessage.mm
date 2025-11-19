@interface MTRPluginPBMDeviceNodeWriteAttributeMessage
+ (id)deviceNodeWriteAttributeMessageFromMessage:(id)a3;
+ (id)deviceNodeWriteAttributeMessageWithNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 attributeID:(id)a6 value:(id)a7 expectedValueInterval:(id)a8 timedWriteTimeout:(id)a9;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimedWriteTimeout:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeWriteAttributeMessage

+ (id)deviceNodeWriteAttributeMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeWriteAttributeMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v4 initWithData:v5];
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

+ (id)deviceNodeWriteAttributeMessageWithNodeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 attributeID:(id)a6 value:(id)a7 expectedValueInterval:(id)a8 timedWriteTimeout:(id)a9
{
  v14 = a8;
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(MTRPluginPBMDeviceNodeWriteAttributeMessage);
  v22 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v20];

  [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v21 setNode:v22];
  v23 = [MTRPluginPBMAttributePath attributePathWithEndpointID:v19 clusterID:v18 attributeID:v17];

  [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v21 setAttributePath:v23];
  v24 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v16];

  [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)v21 setValue:v24];
  if (v14)
  {
    -[MTRPluginPBMDeviceNodeWriteAttributeMessage setExpectedValueInterval:](v21, "setExpectedValueInterval:", [v14 unsignedLongLongValue]);
  }

  if (v15)
  {
    -[MTRPluginPBMDeviceNodeWriteAttributeMessage setTimedWriteTimeout:](v21, "setTimedWriteTimeout:", [v15 unsignedLongLongValue]);
  }

  return v21;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeWriteAttributeMessage hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self node];
    if ([v4 isValid] && -[MTRPluginPBMDeviceNodeWriteAttributeMessage hasAttributePath](self, "hasAttributePath"))
    {
      v5 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self attributePath];
      if ([v5 isValid] && -[MTRPluginPBMDeviceNodeWriteAttributeMessage hasValue](self, "hasValue"))
      {
        v6 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self value];
        v7 = v6 != 0;
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

- (void)setHasTimedWriteTimeout:(BOOL)a3
{
  if (a3)
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
  v5 = [(MTRPluginPBMDeviceNodeWriteAttributeMessage *)self dictionaryRepresentation];
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

  attributePath = self->_attributePath;
  if (attributePath)
  {
    v9 = [(MTRPluginPBMAttributePath *)attributePath dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"attributePath"];
  }

  value = self->_value;
  if (value)
  {
    v11 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_expectedValueInterval];
    [v3 setObject:v13 forKey:@"expectedValueInterval"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timedWriteTimeout];
    [v3 setObject:v14 forKey:@"timedWriteTimeout"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_attributePath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    expectedValueInterval = self->_expectedValueInterval;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    timedWriteTimeout = self->_timedWriteTimeout;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v6;
  }

  if (self->_node)
  {
    [v6 setNode:?];
    v4 = v6;
  }

  if (self->_attributePath)
  {
    [v6 setAttributePath:?];
    v4 = v6;
  }

  if (self->_value)
  {
    [v6 setValue:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_expectedValueInterval;
    *(v4 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_timedWriteTimeout;
    *(v4 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(MTRPluginPBMAttributePath *)self->_attributePath copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  header = self->_header;
  if (header | *(v4 + 4))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_19;
    }
  }

  node = self->_node;
  if (node | *(v4 + 5))
  {
    if (![(MTRPluginPBMDeviceNode *)node isEqual:?])
    {
      goto LABEL_19;
    }
  }

  attributePath = self->_attributePath;
  if (attributePath | *(v4 + 3))
  {
    if (![(MTRPluginPBMAttributePath *)attributePath isEqual:?])
    {
      goto LABEL_19;
    }
  }

  value = self->_value;
  if (value | *(v4 + 6))
  {
    if (![(MTRPluginPBMVariableValue *)value isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_expectedValueInterval != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = (*(v4 + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_timedWriteTimeout != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[4];
  v14 = v4;
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

  v4 = v14;
LABEL_7:
  node = self->_node;
  v8 = v4[5];
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

  v4 = v14;
LABEL_13:
  attributePath = self->_attributePath;
  v10 = v4[3];
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

  v4 = v14;
LABEL_19:
  value = self->_value;
  v12 = v4[6];
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

  v4 = v14;
LABEL_25:
  v13 = *(v4 + 56);
  if (v13)
  {
    self->_expectedValueInterval = v4[1];
    *&self->_has |= 1u;
    v13 = *(v4 + 56);
  }

  if ((v13 & 2) != 0)
  {
    self->_timedWriteTimeout = v4[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end