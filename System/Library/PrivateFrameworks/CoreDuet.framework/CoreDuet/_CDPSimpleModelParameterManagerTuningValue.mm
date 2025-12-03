@interface _CDPSimpleModelParameterManagerTuningValue
- (_CDPSimpleModelParameterManagerTuningValue)initWithCoder:(id)coder;
- (_CDPSimpleModelParameterManagerTuningValue)initWithLambda:(float)lambda w0:(float)w0 threshold:(float)threshold score:(float)score;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDPSimpleModelParameterManagerTuningValue

- (_CDPSimpleModelParameterManagerTuningValue)initWithLambda:(float)lambda w0:(float)w0 threshold:(float)threshold score:(float)score
{
  v11.receiver = self;
  v11.super_class = _CDPSimpleModelParameterManagerTuningValue;
  result = [(_CDPSimpleModelParameterManagerTuningValue *)&v11 init];
  result->_lambda = lambda;
  result->_w0 = w0;
  result->_threshold = threshold;
  result->_score = score;
  return result;
}

- (_CDPSimpleModelParameterManagerTuningValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"lambda"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"w0"];
  v8 = v7;
  [coderCopy decodeFloatForKey:@"threshold"];
  v10 = v9;
  [coderCopy decodeFloatForKey:@"score"];
  v12 = v11;

  LODWORD(v13) = v6;
  LODWORD(v14) = v8;
  LODWORD(v15) = v10;
  LODWORD(v16) = v12;

  return [(_CDPSimpleModelParameterManagerTuningValue *)self initWithLambda:v13 w0:v14 threshold:v15 score:v16];
}

- (void)encodeWithCoder:(id)coder
{
  lambda = self->_lambda;
  coderCopy = coder;
  *&v5 = lambda;
  [coderCopy encodeFloat:@"lambda" forKey:v5];
  *&v6 = self->_w0;
  [coderCopy encodeFloat:@"w0" forKey:v6];
  *&v7 = self->_threshold;
  [coderCopy encodeFloat:@"threshold" forKey:v7];
  *&v8 = self->_score;
  [coderCopy encodeFloat:@"score" forKey:v8];
}

@end