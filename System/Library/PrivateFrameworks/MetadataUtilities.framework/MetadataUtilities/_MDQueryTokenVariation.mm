@interface _MDQueryTokenVariation
- (NSString)variation;
- (_MDQueryTokenVariation)initWithVariation:(id)variation type:(int64_t)type confidence:(float)confidence;
- (float)confidence;
- (int64_t)type;
- (void)dealloc;
- (void)setConfidence:(float)confidence;
- (void)setType:(int64_t)type;
@end

@implementation _MDQueryTokenVariation

- (_MDQueryTokenVariation)initWithVariation:(id)variation type:(int64_t)type confidence:(float)confidence
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _MDQueryTokenVariation;
  v8 = [(_MDQueryTokenVariation *)&v11 init];
  if (v8)
  {
    v8->_variation = [variation copy];
    v8->_type = type;
    v8->_confidence = confidence;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = _MDQueryTokenVariation;
  [(_MDQueryTokenVariation *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (NSString)variation
{
  result = self->_variation;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (float)confidence
{
  result = self->_confidence;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setConfidence:(float)confidence
{
  v4 = *MEMORY[0x1E69E9840];
  self->_confidence = confidence;
  v3 = *MEMORY[0x1E69E9840];
}

- (int64_t)type
{
  result = self->_type;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setType:(int64_t)type
{
  v4 = *MEMORY[0x1E69E9840];
  self->_type = type;
  v3 = *MEMORY[0x1E69E9840];
}

@end