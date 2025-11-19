@interface MTRPluginPBMCommandWithRequiredResponse
+ (id)commandWithRequiredResponse:(id)a3;
+ (id)commandWithRequiredResponseFromMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MTRCommandWithRequiredResponse)commandWithRequiredResponse;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMCommandWithRequiredResponse

+ (id)commandWithRequiredResponseFromMessage:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginPBMCommandWithRequiredResponse alloc];
  v5 = [v3 messageData];

  v6 = [(MTRPluginPBMCommandWithRequiredResponse *)v4 initWithData:v5];
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

+ (id)commandWithRequiredResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTRPluginPBMCommandWithRequiredResponse);
  v5 = [MTRPluginPBMCommandPath alloc];
  v6 = [v3 path];
  v7 = [(MTRPluginPBMCommandPath *)v5 initWithCommandPath:v6];
  [(MTRPluginPBMCommandWithRequiredResponse *)v4 setCommandPath:v7];

  v8 = [v3 commandFields];

  if (v8)
  {
    v9 = [MTRPluginPBMVariableValue alloc];
    v10 = [v3 commandFields];
    v11 = [(MTRPluginPBMVariableValue *)v9 initWithObjectValue:v10];
    [(MTRPluginPBMCommandWithRequiredResponse *)v4 setCommandFields:v11];
  }

  v12 = [v3 requiredResponse];

  if (v12)
  {
    v13 = [MTRPluginPBMVariableValue alloc];
    v14 = [v3 requiredResponse];
    v15 = [(MTRPluginPBMVariableValue *)v13 initWithObjectValue:v14];
    [(MTRPluginPBMCommandWithRequiredResponse *)v4 setRequiredResponse:v15];
  }

  return v4;
}

- (BOOL)isValid
{
  v2 = [(MTRPluginPBMCommandWithRequiredResponse *)self commandPath];
  v3 = [v2 isValid];

  return v3;
}

- (MTRCommandWithRequiredResponse)commandWithRequiredResponse
{
  v4 = objc_alloc(MEMORY[0x277CD52F8]);
  v5 = [(MTRPluginPBMCommandWithRequiredResponse *)self commandPath];
  v6 = [v5 commandPath];
  v7 = [(MTRPluginPBMCommandWithRequiredResponse *)self hasCommandFields];
  if (v7)
  {
    v2 = [(MTRPluginPBMCommandWithRequiredResponse *)self commandFields];
    v8 = [v2 object];
  }

  else
  {
    v8 = 0;
  }

  if (![(MTRPluginPBMCommandWithRequiredResponse *)self hasRequiredResponse])
  {
    v11 = [v4 initWithPath:v6 commandFields:v8 requiredResponse:0];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = [(MTRPluginPBMCommandWithRequiredResponse *)self requiredResponse];
  v10 = [v9 object];
  v11 = [v4 initWithPath:v6 commandFields:v8 requiredResponse:v10];

  if (v7)
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
  v5 = [(MTRPluginPBMCommandWithRequiredResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  commandPath = self->_commandPath;
  if (commandPath)
  {
    v5 = [(MTRPluginPBMCommandPath *)commandPath dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"commandPath"];
  }

  commandFields = self->_commandFields;
  if (commandFields)
  {
    v7 = [(MTRPluginPBMVariableValue *)commandFields dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"commandFields"];
  }

  requiredResponse = self->_requiredResponse;
  if (requiredResponse)
  {
    v9 = [(MTRPluginPBMVariableValue *)requiredResponse dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"requiredResponse"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_commandPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_commandFields)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_requiredResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_commandPath)
  {
    [v4 setCommandPath:?];
    v4 = v5;
  }

  if (self->_commandFields)
  {
    [v5 setCommandFields:?];
    v4 = v5;
  }

  if (self->_requiredResponse)
  {
    [v5 setRequiredResponse:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMCommandPath *)self->_commandPath copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(MTRPluginPBMVariableValue *)self->_commandFields copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(MTRPluginPBMVariableValue *)self->_requiredResponse copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((commandPath = self->_commandPath, !(commandPath | v4[2])) || -[MTRPluginPBMCommandPath isEqual:](commandPath, "isEqual:")) && ((commandFields = self->_commandFields, !(commandFields | v4[1])) || -[MTRPluginPBMVariableValue isEqual:](commandFields, "isEqual:")))
  {
    requiredResponse = self->_requiredResponse;
    if (requiredResponse | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  commandPath = self->_commandPath;
  v6 = v4[2];
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  commandFields = self->_commandFields;
  v8 = v4[1];
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

  v4 = v11;
LABEL_13:
  requiredResponse = self->_requiredResponse;
  v10 = v4[3];
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