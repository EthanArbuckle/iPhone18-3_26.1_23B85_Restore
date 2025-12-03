@interface MTRPluginPBMCommandWithRequiredResponse
+ (id)commandWithRequiredResponse:(id)response;
+ (id)commandWithRequiredResponseFromMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRCommandWithRequiredResponse)commandWithRequiredResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMCommandWithRequiredResponse

+ (id)commandWithRequiredResponseFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMCommandWithRequiredResponse alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMCommandWithRequiredResponse *)v4 initWithData:messageData];
  if ([(MTRPluginPBMCommandWithRequiredResponse *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)commandWithRequiredResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(MTRPluginPBMCommandWithRequiredResponse);
  v5 = [MTRPluginPBMCommandPath alloc];
  path = [responseCopy path];
  v7 = [(MTRPluginPBMCommandPath *)v5 initWithCommandPath:path];
  [(MTRPluginPBMCommandWithRequiredResponse *)v4 setCommandPath:v7];

  commandFields = [responseCopy commandFields];

  if (commandFields)
  {
    v9 = [MTRPluginPBMVariableValue alloc];
    commandFields2 = [responseCopy commandFields];
    v11 = [(MTRPluginPBMVariableValue *)v9 initWithObjectValue:commandFields2];
    [(MTRPluginPBMCommandWithRequiredResponse *)v4 setCommandFields:v11];
  }

  requiredResponse = [responseCopy requiredResponse];

  if (requiredResponse)
  {
    v13 = [MTRPluginPBMVariableValue alloc];
    requiredResponse2 = [responseCopy requiredResponse];
    v15 = [(MTRPluginPBMVariableValue *)v13 initWithObjectValue:requiredResponse2];
    [(MTRPluginPBMCommandWithRequiredResponse *)v4 setRequiredResponse:v15];
  }

  return v4;
}

- (BOOL)isValid
{
  commandPath = [(MTRPluginPBMCommandWithRequiredResponse *)self commandPath];
  isValid = [commandPath isValid];

  return isValid;
}

- (MTRCommandWithRequiredResponse)commandWithRequiredResponse
{
  v4 = objc_alloc(MEMORY[0x277CD52F8]);
  commandPath = [(MTRPluginPBMCommandWithRequiredResponse *)self commandPath];
  v5CommandPath = [commandPath commandPath];
  hasCommandFields = [(MTRPluginPBMCommandWithRequiredResponse *)self hasCommandFields];
  if (hasCommandFields)
  {
    commandFields = [(MTRPluginPBMCommandWithRequiredResponse *)self commandFields];
    object = [commandFields object];
  }

  else
  {
    object = 0;
  }

  if (![(MTRPluginPBMCommandWithRequiredResponse *)self hasRequiredResponse])
  {
    v11 = [v4 initWithPath:v5CommandPath commandFields:object requiredResponse:0];
    if (!hasCommandFields)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  requiredResponse = [(MTRPluginPBMCommandWithRequiredResponse *)self requiredResponse];
  object2 = [requiredResponse object];
  v11 = [v4 initWithPath:v5CommandPath commandFields:object requiredResponse:object2];

  if (hasCommandFields)
  {
LABEL_8:
  }

LABEL_9:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMCommandWithRequiredResponse;
  v4 = [(MTRPluginPBMCommandWithRequiredResponse *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMCommandWithRequiredResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  commandPath = self->_commandPath;
  if (commandPath)
  {
    dictionaryRepresentation = [(MTRPluginPBMCommandPath *)commandPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"commandPath"];
  }

  commandFields = self->_commandFields;
  if (commandFields)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMVariableValue *)commandFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"commandFields"];
  }

  requiredResponse = self->_requiredResponse;
  if (requiredResponse)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMVariableValue *)requiredResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"requiredResponse"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_commandPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_commandFields)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_requiredResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_commandPath)
  {
    [toCopy setCommandPath:?];
    toCopy = v5;
  }

  if (self->_commandFields)
  {
    [v5 setCommandFields:?];
    toCopy = v5;
  }

  if (self->_requiredResponse)
  {
    [v5 setRequiredResponse:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMCommandPath *)self->_commandPath copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(MTRPluginPBMVariableValue *)self->_commandFields copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(MTRPluginPBMVariableValue *)self->_requiredResponse copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((commandPath = self->_commandPath, !(commandPath | equalCopy[2])) || -[MTRPluginPBMCommandPath isEqual:](commandPath, "isEqual:")) && ((commandFields = self->_commandFields, !(commandFields | equalCopy[1])) || -[MTRPluginPBMVariableValue isEqual:](commandFields, "isEqual:")))
  {
    requiredResponse = self->_requiredResponse;
    if (requiredResponse | equalCopy[3])
    {
      v8 = [(MTRPluginPBMVariableValue *)requiredResponse isEqual:?];
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
  v3 = [(MTRPluginPBMCommandPath *)self->_commandPath hash];
  v4 = [(MTRPluginPBMVariableValue *)self->_commandFields hash]^ v3;
  return v4 ^ [(MTRPluginPBMVariableValue *)self->_requiredResponse hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  commandPath = self->_commandPath;
  v6 = fromCopy[2];
  v11 = fromCopy;
  if (commandPath)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMCommandPath *)commandPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMCommandWithRequiredResponse *)self setCommandPath:?];
  }

  fromCopy = v11;
LABEL_7:
  commandFields = self->_commandFields;
  v8 = fromCopy[1];
  if (commandFields)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMVariableValue *)commandFields mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMCommandWithRequiredResponse *)self setCommandFields:?];
  }

  fromCopy = v11;
LABEL_13:
  requiredResponse = self->_requiredResponse;
  v10 = fromCopy[3];
  if (requiredResponse)
  {
    if (v10)
    {
      [(MTRPluginPBMVariableValue *)requiredResponse mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(MTRPluginPBMCommandWithRequiredResponse *)self setRequiredResponse:?];
  }

  MEMORY[0x2821F96F8]();
}

@end