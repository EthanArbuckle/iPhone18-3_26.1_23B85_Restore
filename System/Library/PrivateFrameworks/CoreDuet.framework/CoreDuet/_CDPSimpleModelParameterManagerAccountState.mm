@interface _CDPSimpleModelParameterManagerAccountState
- (_CDPSimpleModelParameterManagerAccountState)init;
- (_CDPSimpleModelParameterManagerAccountState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDPSimpleModelParameterManagerAccountState

- (_CDPSimpleModelParameterManagerAccountState)init
{
  v13.receiver = self;
  v13.super_class = _CDPSimpleModelParameterManagerAccountState;
  v2 = [(_CDPSimpleModelParameterManagerAccountState *)&v13 init];
  v3 = [_CDPSimpleModelParameterManagerTuningValue alloc];
  LODWORD(v4) = 30.0;
  LODWORD(v5) = 5.0;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 0.5;
  v8 = [(_CDPSimpleModelParameterManagerTuningValue *)v3 initWithLambda:v4 w0:v5 threshold:v6 score:v7];
  previousBestTuningValue = v2->_previousBestTuningValue;
  v2->_previousBestTuningValue = v8;

  array = [MEMORY[0x1E695DF70] array];
  tuningValues = v2->_tuningValues;
  v2->_tuningValues = array;

  return v2;
}

- (_CDPSimpleModelParameterManagerAccountState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_CDPSimpleModelParameterManagerAccountState *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousBestTuningValue"];
  previousBestTuningValue = v5->_previousBestTuningValue;
  v5->_previousBestTuningValue = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tuningValues"];
  tuningValues = v5->_tuningValues;
  v5->_tuningValues = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastTuningState"];

  lastTuningState = v5->_lastTuningState;
  v5->_lastTuningState = v10;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  previousBestTuningValue = self->_previousBestTuningValue;
  coderCopy = coder;
  [coderCopy encodeObject:previousBestTuningValue forKey:@"previousBestTuningValue"];
  [coderCopy encodeObject:self->_tuningValues forKey:@"tuningValues"];
  [coderCopy encodeObject:self->_lastTuningState forKey:@"lastTuningState"];
}

@end