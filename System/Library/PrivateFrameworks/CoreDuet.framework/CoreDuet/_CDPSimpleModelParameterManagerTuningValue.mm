@interface _CDPSimpleModelParameterManagerTuningValue
- (_CDPSimpleModelParameterManagerTuningValue)initWithCoder:(id)a3;
- (_CDPSimpleModelParameterManagerTuningValue)initWithLambda:(float)a3 w0:(float)a4 threshold:(float)a5 score:(float)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDPSimpleModelParameterManagerTuningValue

- (_CDPSimpleModelParameterManagerTuningValue)initWithLambda:(float)a3 w0:(float)a4 threshold:(float)a5 score:(float)a6
{
  v11.receiver = self;
  v11.super_class = _CDPSimpleModelParameterManagerTuningValue;
  result = [(_CDPSimpleModelParameterManagerTuningValue *)&v11 init];
  result->_lambda = a3;
  result->_w0 = a4;
  result->_threshold = a5;
  result->_score = a6;
  return result;
}

- (_CDPSimpleModelParameterManagerTuningValue)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"lambda"];
  v6 = v5;
  [v4 decodeFloatForKey:@"w0"];
  v8 = v7;
  [v4 decodeFloatForKey:@"threshold"];
  v10 = v9;
  [v4 decodeFloatForKey:@"score"];
  v12 = v11;

  LODWORD(v13) = v6;
  LODWORD(v14) = v8;
  LODWORD(v15) = v10;
  LODWORD(v16) = v12;

  return [(_CDPSimpleModelParameterManagerTuningValue *)self initWithLambda:v13 w0:v14 threshold:v15 score:v16];
}

- (void)encodeWithCoder:(id)a3
{
  lambda = self->_lambda;
  v9 = a3;
  *&v5 = lambda;
  [v9 encodeFloat:@"lambda" forKey:v5];
  *&v6 = self->_w0;
  [v9 encodeFloat:@"w0" forKey:v6];
  *&v7 = self->_threshold;
  [v9 encodeFloat:@"threshold" forKey:v7];
  *&v8 = self->_score;
  [v9 encodeFloat:@"score" forKey:v8];
}

@end