@interface _MFIMAPCommandParameters
- (_MFIMAPCommandParameters)initWithCommand:(int64_t)a3;
- (_MFIMAPCommandParameters)initWithCommand:(int64_t)a3 arguments:(id)a4;
- (_MFIMAPCommandParameters)initWithCommand:(int64_t)a3 sequenceNumber:(unint64_t)a4;
@end

@implementation _MFIMAPCommandParameters

- (_MFIMAPCommandParameters)initWithCommand:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _MFIMAPCommandParameters;
  result = [(_MFIMAPCommandParameters *)&v5 init];
  if (result)
  {
    result->_command = a3;
  }

  return result;
}

- (_MFIMAPCommandParameters)initWithCommand:(int64_t)a3 arguments:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _MFIMAPCommandParameters;
  v8 = [(_MFIMAPCommandParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_command = a3;
    objc_storeStrong(&v8->_arguments, a4);
  }

  return v9;
}

- (_MFIMAPCommandParameters)initWithCommand:(int64_t)a3 sequenceNumber:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _MFIMAPCommandParameters;
  result = [(_MFIMAPCommandParameters *)&v7 init];
  if (result)
  {
    result->_command = a3;
    result->_sequenceNumber = a4;
  }

  return result;
}

@end