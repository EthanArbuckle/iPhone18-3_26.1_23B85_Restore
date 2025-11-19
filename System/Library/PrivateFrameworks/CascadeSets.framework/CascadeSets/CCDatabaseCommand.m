@interface CCDatabaseCommand
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommand:(id)a3;
- (BOOL)updateCommandString:(id)a3;
- (BOOL)updateParameters:(id)a3;
- (CCDatabaseCommand)init;
- (CCDatabaseCommand)initWithCommandString:(id)a3 parameters:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)replaceParameters:(id)a3;
@end

@implementation CCDatabaseCommand

- (CCDatabaseCommand)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseCommand)initWithCommandString:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CCDatabaseCommand;
  v8 = [(CCDatabaseCommand *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    commandString = v8->_commandString;
    v8->_commandString = v9;

    v11 = [v7 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDatabaseCommand *)self isEqualToCommand:v5];
  }

  return v6;
}

- (BOOL)isEqualToCommand:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_18;
  }

  commandString = self->_commandString;
  v9 = commandString;
  if (!commandString)
  {
    v3 = [v6 commandString];
    if (!v3)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = self->_commandString;
  }

  v4 = [v7 commandString];
  if (([v9 isEqual:v4] & 1) == 0)
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
    v9 = [v7 parameters];
    if (!v9)
    {
      v11 = 1;
      goto LABEL_20;
    }

    v13 = self->_parameters;
  }

  v14 = [v7 parameters];
  v11 = [(NSArray *)v13 isEqual:v14];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_commandString copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_parameters copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)replaceParameters:(id)a3
{
  v4 = [a3 copy];
  parameters = self->_parameters;
  self->_parameters = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)updateParameters:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_parameters count];
  v6 = [v4 count];
  if (v5 == v6)
  {
    v7 = [v4 copy];
    parameters = self->_parameters;
    self->_parameters = v7;
  }

  return v5 == v6;
}

- (BOOL)updateCommandString:(id)a3
{
  v4 = [a3 copy];
  commandString = self->_commandString;
  self->_commandString = v4;

  return 1;
}

@end