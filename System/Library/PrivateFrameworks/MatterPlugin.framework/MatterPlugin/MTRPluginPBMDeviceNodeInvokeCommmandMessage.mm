@interface MTRPluginPBMDeviceNodeInvokeCommmandMessage
+ (id)deviceNodeInvokeCommandMessageFromMessage:(id)a3;
+ (id)deviceNodeInvokeCommandMessageWithNodeID:(id)a3 invokeCommandWithEndpointID:(id)a4 clusterID:(id)a5 commandID:(id)a6 commandFields:(id)a7 expectedValues:(id)a8 expectedValueInterval:(id)a9 timedInvokeTimeout:(id)a10 serverSideProcessingTimeout:(id)a11;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasServerSideProcessingTimeout:(BOOL)a3;
- (void)setHasTimedInvokeTimeout:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDeviceNodeInvokeCommmandMessage

+ (id)deviceNodeInvokeCommandMessageFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v4 initWithData:v5];
  if ([(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceNodeInvokeCommandMessageWithNodeID:(id)a3 invokeCommandWithEndpointID:(id)a4 clusterID:(id)a5 commandID:(id)a6 commandFields:(id)a7 expectedValues:(id)a8 expectedValueInterval:(id)a9 timedInvokeTimeout:(id)a10 serverSideProcessingTimeout:(id)a11
{
  v16 = a7;
  v30 = a8;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = objc_alloc_init(MTRPluginPBMDeviceNodeInvokeCommmandMessage);
  v25 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:v23];

  [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setNode:v25];
  v26 = [MTRPluginPBMCommandPath commandPathWithEndpointID:v22 clusterID:v21 commandID:v20];

  [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setCommandPath:v26];
  if (v16)
  {
    v27 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v16];
    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setCommandFields:v27];
  }

  if (v30)
  {
    v28 = [[MTRPluginPBMVariableValueList alloc] initWithArray:v30];
    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setExpectedValues:v28];
  }

  if (v17)
  {
    -[MTRPluginPBMDeviceNodeInvokeCommmandMessage setExpectedValueInterval:](v24, "setExpectedValueInterval:", [v17 unsignedLongLongValue]);
  }

  if (v18)
  {
    -[MTRPluginPBMDeviceNodeInvokeCommmandMessage setTimedInvokeTimeout:](v24, "setTimedInvokeTimeout:", [v18 unsignedLongLongValue]);
  }

  if (v19)
  {
    -[MTRPluginPBMDeviceNodeInvokeCommmandMessage setServerSideProcessingTimeout:](v24, "setServerSideProcessingTimeout:", [v19 unsignedLongLongValue]);
  }

  return v24;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self hasHeader])
  {
    return 0;
  }

  v3 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self header];
  if ([v3 isValid] && -[MTRPluginPBMDeviceNodeInvokeCommmandMessage hasNode](self, "hasNode"))
  {
    v4 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self node];
    if ([v4 isValid])
    {
      v5 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self commandPath];
      if (v5)
      {
        v6 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self commandPath];
        v7 = [v6 isValid];
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

- (void)setHasTimedInvokeTimeout:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasServerSideProcessingTimeout:(BOOL)a3
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
  v8.super_class = MTRPluginPBMDeviceNodeInvokeCommmandMessage;
  v4 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)&v8 description];
  v5 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self dictionaryRepresentation];
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

  commandPath = self->_commandPath;
  if (commandPath)
  {
    v9 = [(MTRPluginPBMCommandPath *)commandPath dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"commandPath"];
  }

  commandFields = self->_commandFields;
  if (commandFields)
  {
    v11 = [(MTRPluginPBMVariableValue *)commandFields dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"commandFields"];
  }

  expectedValues = self->_expectedValues;
  if (expectedValues)
  {
    v13 = [(MTRPluginPBMVariableValueList *)expectedValues dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"expectedValues"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_expectedValueInterval];
    [v3 setObject:v17 forKey:@"expectedValueInterval"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timedInvokeTimeout];
  [v3 setObject:v18 forKey:@"timedInvokeTimeout"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverSideProcessingTimeout];
    [v3 setObject:v15 forKey:@"serverSideProcessingTimeout"];
  }

LABEL_15:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_commandPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_commandFields)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_expectedValues)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    expectedValueInterval = self->_expectedValueInterval;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  timedInvokeTimeout = self->_timedInvokeTimeout;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    serverSideProcessingTimeout = self->_serverSideProcessingTimeout;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

LABEL_15:
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

  if (self->_commandPath)
  {
    [v6 setCommandPath:?];
    v4 = v6;
  }

  if (self->_commandFields)
  {
    [v6 setCommandFields:?];
    v4 = v6;
  }

  if (self->_expectedValues)
  {
    [v6 setExpectedValues:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_expectedValueInterval;
    *(v4 + 72) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 3) = self->_timedInvokeTimeout;
  *(v4 + 72) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    *(v4 + 2) = self->_serverSideProcessingTimeout;
    *(v4 + 72) |= 2u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:a3];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(MTRPluginPBMCommandPath *)self->_commandPath copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(MTRPluginPBMVariableValue *)self->_commandFields copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(MTRPluginPBMVariableValueList *)self->_expectedValues copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_timedInvokeTimeout;
    *(v5 + 72) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_expectedValueInterval;
  *(v5 + 72) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_serverSideProcessingTimeout;
    *(v5 + 72) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  header = self->_header;
  if (header | *(v4 + 7))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_26;
    }
  }

  node = self->_node;
  if (node | *(v4 + 8))
  {
    if (![(MTRPluginPBMDeviceNode *)node isEqual:?])
    {
      goto LABEL_26;
    }
  }

  commandPath = self->_commandPath;
  if (commandPath | *(v4 + 5))
  {
    if (![(MTRPluginPBMCommandPath *)commandPath isEqual:?])
    {
      goto LABEL_26;
    }
  }

  commandFields = self->_commandFields;
  if (commandFields | *(v4 + 4))
  {
    if (![(MTRPluginPBMVariableValue *)commandFields isEqual:?])
    {
      goto LABEL_26;
    }
  }

  expectedValues = self->_expectedValues;
  if (expectedValues | *(v4 + 6))
  {
    if (![(MTRPluginPBMVariableValueList *)expectedValues isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_expectedValueInterval != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_timedInvokeTimeout != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(v4 + 72) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_serverSideProcessingTimeout != *(v4 + 2))
    {
      goto LABEL_26;
    }

    v10 = 1;
  }

LABEL_27:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMDeviceNode *)self->_node hash];
  v5 = [(MTRPluginPBMCommandPath *)self->_commandPath hash];
  v6 = [(MTRPluginPBMVariableValue *)self->_commandFields hash];
  v7 = [(MTRPluginPBMVariableValueList *)self->_expectedValues hash];
  if ((*&self->_has & 1) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v8 = 2654435761u * self->_expectedValueInterval;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = 2654435761u * self->_timedInvokeTimeout;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = 2654435761u * self->_serverSideProcessingTimeout;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[7];
  v16 = v4;
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

    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self setHeader:?];
  }

  v4 = v16;
LABEL_7:
  node = self->_node;
  v8 = v4[8];
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

    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self setNode:?];
  }

  v4 = v16;
LABEL_13:
  commandPath = self->_commandPath;
  v10 = v4[5];
  if (commandPath)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MTRPluginPBMCommandPath *)commandPath mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self setCommandPath:?];
  }

  v4 = v16;
LABEL_19:
  commandFields = self->_commandFields;
  v12 = v4[4];
  if (commandFields)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(MTRPluginPBMVariableValue *)commandFields mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self setCommandFields:?];
  }

  v4 = v16;
LABEL_25:
  expectedValues = self->_expectedValues;
  v14 = v4[6];
  if (expectedValues)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(MTRPluginPBMVariableValueList *)expectedValues mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self setExpectedValues:?];
  }

  v4 = v16;
LABEL_31:
  v15 = *(v4 + 72);
  if (v15)
  {
    self->_expectedValueInterval = v4[1];
    *&self->_has |= 1u;
    v15 = *(v4 + 72);
    if ((v15 & 4) == 0)
    {
LABEL_33:
      if ((v15 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((v4[9] & 4) == 0)
  {
    goto LABEL_33;
  }

  self->_timedInvokeTimeout = v4[3];
  *&self->_has |= 4u;
  if ((v4[9] & 2) != 0)
  {
LABEL_34:
    self->_serverSideProcessingTimeout = v4[2];
    *&self->_has |= 2u;
  }

LABEL_35:

  MEMORY[0x2821F96F8]();
}

@end