@interface MTRPluginPBMDeviceNodeInvokeCommmandMessage
+ (id)deviceNodeInvokeCommandMessageFromMessage:(id)message;
+ (id)deviceNodeInvokeCommandMessageWithNodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)self0 serverSideProcessingTimeout:(id)self1;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasServerSideProcessingTimeout:(BOOL)timeout;
- (void)setHasTimedInvokeTimeout:(BOOL)timeout;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceNodeInvokeCommmandMessage

+ (id)deviceNodeInvokeCommandMessageFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v4 initWithData:messageData];
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

+ (id)deviceNodeInvokeCommandMessageWithNodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)self0 serverSideProcessingTimeout:(id)self1
{
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  commandIDCopy = commandID;
  clusterIDCopy = clusterID;
  iDCopy = iD;
  dCopy = d;
  v24 = objc_alloc_init(MTRPluginPBMDeviceNodeInvokeCommmandMessage);
  v25 = [MTRPluginPBMDeviceNode deviceNodeWithNodeID:dCopy];

  [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setNode:v25];
  v26 = [MTRPluginPBMCommandPath commandPathWithEndpointID:iDCopy clusterID:clusterIDCopy commandID:commandIDCopy];

  [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setCommandPath:v26];
  if (fieldsCopy)
  {
    v27 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:fieldsCopy];
    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setCommandFields:v27];
  }

  if (valuesCopy)
  {
    v28 = [[MTRPluginPBMVariableValueList alloc] initWithArray:valuesCopy];
    [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)v24 setExpectedValues:v28];
  }

  if (intervalCopy)
  {
    -[MTRPluginPBMDeviceNodeInvokeCommmandMessage setExpectedValueInterval:](v24, "setExpectedValueInterval:", [intervalCopy unsignedLongLongValue]);
  }

  if (timeoutCopy)
  {
    -[MTRPluginPBMDeviceNodeInvokeCommmandMessage setTimedInvokeTimeout:](v24, "setTimedInvokeTimeout:", [timeoutCopy unsignedLongLongValue]);
  }

  if (processingTimeoutCopy)
  {
    -[MTRPluginPBMDeviceNodeInvokeCommmandMessage setServerSideProcessingTimeout:](v24, "setServerSideProcessingTimeout:", [processingTimeoutCopy unsignedLongLongValue]);
  }

  return v24;
}

- (BOOL)isValid
{
  if (![(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self hasHeader])
  {
    return 0;
  }

  header = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self header];
  if ([header isValid] && -[MTRPluginPBMDeviceNodeInvokeCommmandMessage hasNode](self, "hasNode"))
  {
    node = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self node];
    if ([node isValid])
    {
      commandPath = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self commandPath];
      if (commandPath)
      {
        commandPath2 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self commandPath];
        isValid = [commandPath2 isValid];
      }

      else
      {
        isValid = 0;
      }
    }

    else
    {
      isValid = 0;
    }
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

- (void)setHasTimedInvokeTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasServerSideProcessingTimeout:(BOOL)timeout
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
  v8.super_class = MTRPluginPBMDeviceNodeInvokeCommmandMessage;
  v4 = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceNodeInvokeCommmandMessage *)self dictionaryRepresentation];
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

  commandPath = self->_commandPath;
  if (commandPath)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMCommandPath *)commandPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"commandPath"];
  }

  commandFields = self->_commandFields;
  if (commandFields)
  {
    dictionaryRepresentation4 = [(MTRPluginPBMVariableValue *)commandFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"commandFields"];
  }

  expectedValues = self->_expectedValues;
  if (expectedValues)
  {
    dictionaryRepresentation5 = [(MTRPluginPBMVariableValueList *)expectedValues dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"expectedValues"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_expectedValueInterval];
    [dictionary setObject:v17 forKey:@"expectedValueInterval"];

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
  [dictionary setObject:v18 forKey:@"timedInvokeTimeout"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverSideProcessingTimeout];
    [dictionary setObject:v15 forKey:@"serverSideProcessingTimeout"];
  }

LABEL_15:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_node)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_commandPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_commandFields)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_expectedValues)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    expectedValueInterval = self->_expectedValueInterval;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    serverSideProcessingTimeout = self->_serverSideProcessingTimeout;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_15:
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

  if (self->_commandPath)
  {
    [v6 setCommandPath:?];
    toCopy = v6;
  }

  if (self->_commandFields)
  {
    [v6 setCommandFields:?];
    toCopy = v6;
  }

  if (self->_expectedValues)
  {
    [v6 setExpectedValues:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_expectedValueInterval;
    *(toCopy + 72) |= 1u;
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

  *(toCopy + 3) = self->_timedInvokeTimeout;
  *(toCopy + 72) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    *(toCopy + 2) = self->_serverSideProcessingTimeout;
    *(toCopy + 72) |= 2u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(MTRPluginPBMDeviceNode *)self->_node copyWithZone:zone];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(MTRPluginPBMCommandPath *)self->_commandPath copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(MTRPluginPBMVariableValue *)self->_commandFields copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(MTRPluginPBMVariableValueList *)self->_expectedValues copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  header = self->_header;
  if (header | *(equalCopy + 7))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_26;
    }
  }

  node = self->_node;
  if (node | *(equalCopy + 8))
  {
    if (![(MTRPluginPBMDeviceNode *)node isEqual:?])
    {
      goto LABEL_26;
    }
  }

  commandPath = self->_commandPath;
  if (commandPath | *(equalCopy + 5))
  {
    if (![(MTRPluginPBMCommandPath *)commandPath isEqual:?])
    {
      goto LABEL_26;
    }
  }

  commandFields = self->_commandFields;
  if (commandFields | *(equalCopy + 4))
  {
    if (![(MTRPluginPBMVariableValue *)commandFields isEqual:?])
    {
      goto LABEL_26;
    }
  }

  expectedValues = self->_expectedValues;
  if (expectedValues | *(equalCopy + 6))
  {
    if (![(MTRPluginPBMVariableValueList *)expectedValues isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_expectedValueInterval != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_timedInvokeTimeout != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(equalCopy + 72) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_serverSideProcessingTimeout != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[7];
  v16 = fromCopy;
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

  fromCopy = v16;
LABEL_7:
  node = self->_node;
  v8 = fromCopy[8];
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

  fromCopy = v16;
LABEL_13:
  commandPath = self->_commandPath;
  v10 = fromCopy[5];
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

  fromCopy = v16;
LABEL_19:
  commandFields = self->_commandFields;
  v12 = fromCopy[4];
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

  fromCopy = v16;
LABEL_25:
  expectedValues = self->_expectedValues;
  v14 = fromCopy[6];
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

  fromCopy = v16;
LABEL_31:
  v15 = *(fromCopy + 72);
  if (v15)
  {
    self->_expectedValueInterval = fromCopy[1];
    *&self->_has |= 1u;
    v15 = *(fromCopy + 72);
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

  else if ((fromCopy[9] & 4) == 0)
  {
    goto LABEL_33;
  }

  self->_timedInvokeTimeout = fromCopy[3];
  *&self->_has |= 4u;
  if ((fromCopy[9] & 2) != 0)
  {
LABEL_34:
    self->_serverSideProcessingTimeout = fromCopy[2];
    *&self->_has |= 2u;
  }

LABEL_35:

  MEMORY[0x2821F96F8]();
}

@end