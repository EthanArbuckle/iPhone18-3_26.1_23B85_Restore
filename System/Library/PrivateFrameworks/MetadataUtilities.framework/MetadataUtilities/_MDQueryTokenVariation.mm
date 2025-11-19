@interface _MDQueryTokenVariation
- (NSString)variation;
- (_MDQueryTokenVariation)initWithVariation:(id)a3 type:(int64_t)a4 confidence:(float)a5;
- (float)confidence;
- (int64_t)type;
- (void)dealloc;
- (void)setConfidence:(float)a3;
- (void)setType:(int64_t)a3;
@end

@implementation _MDQueryTokenVariation

- (_MDQueryTokenVariation)initWithVariation:(id)a3 type:(int64_t)a4 confidence:(float)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _MDQueryTokenVariation;
  v8 = [(_MDQueryTokenVariation *)&v11 init];
  if (v8)
  {
    v8->_variation = [a3 copy];
    v8->_type = a4;
    v8->_confidence = a5;
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

- (void)setConfidence:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_confidence = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (int64_t)type
{
  result = self->_type;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setType:(int64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_type = a3;
  v3 = *MEMORY[0x1E69E9840];
}

@end