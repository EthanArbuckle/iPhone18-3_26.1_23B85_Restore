@interface CDMToken
- (BOOL)getHasCleanValues;
- (BOOL)hasValue:(id)value from:(int64_t)from to:(int64_t)to;
- (CDMToken)initWithProtoToken:(id)token;
- (CDMToken)initWithValue:(id)value;
- (CDMToken)initWithValue:(id)value begin:(int64_t)begin end:(int64_t)end significant:(BOOL)significant whitespace:(BOOL)whitespace cleanValue:(id)cleanValue tokenIndex:(int64_t)index nonWhitespaceTokenIndex:(int64_t)self0;
- (CDMToken)initWithValue:(id)value begin:(int64_t)begin end:(int64_t)end significant:(BOOL)significant whitespace:(BOOL)whitespace cleanValue:(id)cleanValue tokenIndex:(int64_t)index nonWhitespaceTokenIndex:(int64_t)self0 normalizedValues:(id)self1;
- (NSArray)cleanValues;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation CDMToken

- (BOOL)getHasCleanValues
{
  if (!self->_cleanValue)
  {
    return 0;
  }

  cleanValues = [(CDMToken *)self cleanValues];
  v3 = [cleanValues count] != 0;

  return v3;
}

- (NSArray)cleanValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_cleanValue)
  {
    v5[0] = self->_cleanValue;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)dictionaryRepresentation
{
  v14[6] = *MEMORY[0x1E69E9840];
  begin = self->_begin;
  v14[0] = self->_value;
  v13[0] = @"value";
  v13[1] = @"begin";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:begin];
  v14[1] = v4;
  v13[2] = @"end";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_end];
  v6 = v5;
  v7 = @"YES";
  if (!self->_isSignificant)
  {
    v7 = @"NO";
  }

  v14[2] = v5;
  v14[3] = v7;
  v13[3] = @"significant";
  v13[4] = @"cleanValue";
  cleanValue = self->_cleanValue;
  v13[5] = @"normalizedValues";
  normalizedValues = self->_normalizedValues;
  v14[4] = cleanValue;
  v14[5] = normalizedValues;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isSignificant)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isWhiteSpace)
  {
    v2 = @"YES";
  }

  cleanValue = self->_cleanValue;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{ value: %@, begin: %td, end: %td, significant: %@, whitespace: %@, cleanValue: %@, normalizedValues: %@}", *&self->_value, self->_end, v3, v2, cleanValue, self->_normalizedValues];
}

- (BOOL)hasValue:(id)value from:(int64_t)from to:(int64_t)to
{
  valueCopy = value;
  if ([(CDMToken *)self begin]<= from && [(CDMToken *)self end]>= to)
  {
    value = [(CDMToken *)self value];
    v9 = [value isEqualToString:valueCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CDMToken)initWithProtoToken:(id)token
{
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = CDMToken;
  v5 = [(CDMToken *)&v14 init];
  if (v5)
  {
    value = [tokenCopy value];
    value = v5->_value;
    v5->_value = value;

    v5->_begin = [tokenCopy begin];
    v5->_end = [tokenCopy end];
    v5->_isSignificant = [tokenCopy isSignificant];
    v5->_isWhiteSpace = [tokenCopy isWhitespace];
    v5->_tokenIndex = [tokenCopy tokenIndex];
    v5->_nonWhitespaceTokenIndex = [tokenCopy nonWhitespaceTokenIndex];
    cleanValue = [tokenCopy cleanValue];
    cleanValue = v5->_cleanValue;
    v5->_cleanValue = cleanValue;

    normalizedValues = [tokenCopy normalizedValues];
    v11 = [normalizedValues copy];
    normalizedValues = v5->_normalizedValues;
    v5->_normalizedValues = v11;
  }

  return v5;
}

- (CDMToken)initWithValue:(id)value begin:(int64_t)begin end:(int64_t)end significant:(BOOL)significant whitespace:(BOOL)whitespace cleanValue:(id)cleanValue tokenIndex:(int64_t)index nonWhitespaceTokenIndex:(int64_t)self0 normalizedValues:(id)self1
{
  valueCopy = value;
  cleanValueCopy = cleanValue;
  valuesCopy = values;
  v24.receiver = self;
  v24.super_class = CDMToken;
  v20 = [(CDMToken *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_value, value);
    v21->_begin = begin;
    v21->_end = end;
    v21->_isSignificant = significant;
    v21->_isWhiteSpace = whitespace;
    v21->_tokenIndex = index;
    v21->_nonWhitespaceTokenIndex = tokenIndex;
    objc_storeStrong(&v21->_cleanValue, cleanValue);
    objc_storeStrong(&v21->_normalizedValues, values);
  }

  return v21;
}

- (CDMToken)initWithValue:(id)value begin:(int64_t)begin end:(int64_t)end significant:(BOOL)significant whitespace:(BOOL)whitespace cleanValue:(id)cleanValue tokenIndex:(int64_t)index nonWhitespaceTokenIndex:(int64_t)self0
{
  valueCopy = value;
  cleanValueCopy = cleanValue;
  v24.receiver = self;
  v24.super_class = CDMToken;
  v19 = [(CDMToken *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_value, value);
    v20->_begin = begin;
    v20->_end = end;
    v20->_isSignificant = significant;
    v20->_isWhiteSpace = whitespace;
    v20->_tokenIndex = index;
    v20->_nonWhitespaceTokenIndex = tokenIndex;
    objc_storeStrong(&v20->_cleanValue, cleanValue);
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    normalizedValues = v20->_normalizedValues;
    v20->_normalizedValues = v21;
  }

  return v20;
}

- (CDMToken)initWithValue:(id)value
{
  valueCopy = value;
  v5 = -[CDMToken initWithValue:begin:end:significant:](self, "initWithValue:begin:end:significant:", valueCopy, 0, [valueCopy length], 1);

  return v5;
}

@end