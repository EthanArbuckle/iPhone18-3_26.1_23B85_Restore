@interface MTRPluginPBMDeviceControllerMessage
+ (id)deviceControllerMessageFromMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDeviceControllerMessage

+ (id)deviceControllerMessageFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMDeviceControllerMessage alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMDeviceControllerMessage *)v4 initWithData:messageData];
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
  hasHeader = [(MTRPluginPBMDeviceControllerMessage *)self hasHeader];
  if (hasHeader)
  {
    header = [(MTRPluginPBMDeviceControllerMessage *)self header];
    isValid = [header isValid];

    LOBYTE(hasHeader) = isValid;
  }

  return hasHeader;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDeviceControllerMessage;
  v4 = [(MTRPluginPBMDeviceControllerMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDeviceControllerMessage *)self dictionaryRepresentation];
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

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"value"];
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

  v8 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[1])) || -[MTRPluginPBMHeader isEqual:](header, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  value = self->_value;
  v8 = fromCopy[2];
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