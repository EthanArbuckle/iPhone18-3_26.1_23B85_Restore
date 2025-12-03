@interface _MFIMAPCommandParameters
- (_MFIMAPCommandParameters)initWithCommand:(int64_t)command;
- (_MFIMAPCommandParameters)initWithCommand:(int64_t)command arguments:(id)arguments;
- (_MFIMAPCommandParameters)initWithCommand:(int64_t)command sequenceNumber:(unint64_t)number;
@end

@implementation _MFIMAPCommandParameters

- (_MFIMAPCommandParameters)initWithCommand:(int64_t)command
{
  v5.receiver = self;
  v5.super_class = _MFIMAPCommandParameters;
  result = [(_MFIMAPCommandParameters *)&v5 init];
  if (result)
  {
    result->_command = command;
  }

  return result;
}

- (_MFIMAPCommandParameters)initWithCommand:(int64_t)command arguments:(id)arguments
{
  argumentsCopy = arguments;
  v11.receiver = self;
  v11.super_class = _MFIMAPCommandParameters;
  v8 = [(_MFIMAPCommandParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_command = command;
    objc_storeStrong(&v8->_arguments, arguments);
  }

  return v9;
}

- (_MFIMAPCommandParameters)initWithCommand:(int64_t)command sequenceNumber:(unint64_t)number
{
  v7.receiver = self;
  v7.super_class = _MFIMAPCommandParameters;
  result = [(_MFIMAPCommandParameters *)&v7 init];
  if (result)
  {
    result->_command = command;
    result->_sequenceNumber = number;
  }

  return result;
}

@end