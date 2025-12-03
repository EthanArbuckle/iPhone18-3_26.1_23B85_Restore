@interface CCDatabaseCommand
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommand:(id)command;
- (BOOL)updateCommandString:(id)string;
- (BOOL)updateParameters:(id)parameters;
- (CCDatabaseCommand)init;
- (CCDatabaseCommand)initWithCommandString:(id)string parameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)replaceParameters:(id)parameters;
@end

@implementation CCDatabaseCommand

- (CCDatabaseCommand)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseCommand)initWithCommandString:(id)string parameters:(id)parameters
{
  stringCopy = string;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = CCDatabaseCommand;
  v8 = [(CCDatabaseCommand *)&v14 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    commandString = v8->_commandString;
    v8->_commandString = v9;

    v11 = [parametersCopy copy];
    parameters = v8->_parameters;
    v8->_parameters = v11;
  }

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCDatabaseCommand;
  v3 = [(CCDatabaseCommand *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" commandString: %@, parameters: %@", self->_commandString, self->_parameters];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDatabaseCommand *)self isEqualToCommand:v5];
  }

  return v6;
}

- (BOOL)isEqualToCommand:(id)command
{
  commandCopy = command;
  v7 = commandCopy;
  if (!commandCopy)
  {
    v11 = 0;
    goto LABEL_18;
  }

  commandString = self->_commandString;
  parameters = commandString;
  if (!commandString)
  {
    commandString = [commandCopy commandString];
    if (!commandString)
    {
      v10 = 0;
      goto LABEL_10;
    }

    parameters = self->_commandString;
  }

  commandString2 = [v7 commandString];
  if (([parameters isEqual:commandString2] & 1) == 0)
  {

    v11 = 0;
    goto LABEL_16;
  }

  v10 = 1;
LABEL_10:
  parameters = self->_parameters;
  v13 = parameters;
  if (!parameters)
  {
    parameters = [v7 parameters];
    if (!parameters)
    {
      v11 = 1;
      goto LABEL_20;
    }

    v13 = self->_parameters;
  }

  parameters2 = [v7 parameters];
  v11 = [(NSArray *)v13 isEqual:parameters2];

  if (parameters)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:

  if (v10)
  {
LABEL_15:
  }

LABEL_16:
  if (!commandString)
  {
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_commandString hash];
  v4 = [(NSArray *)self->_parameters description];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_commandString copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_parameters copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)replaceParameters:(id)parameters
{
  v4 = [parameters copy];
  parameters = self->_parameters;
  self->_parameters = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)updateParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [(NSArray *)self->_parameters count];
  v6 = [parametersCopy count];
  if (v5 == v6)
  {
    v7 = [parametersCopy copy];
    parameters = self->_parameters;
    self->_parameters = v7;
  }

  return v5 == v6;
}

- (BOOL)updateCommandString:(id)string
{
  v4 = [string copy];
  commandString = self->_commandString;
  self->_commandString = v4;

  return 1;
}

@end