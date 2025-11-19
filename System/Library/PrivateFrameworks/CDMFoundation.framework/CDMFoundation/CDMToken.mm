@interface CDMToken
- (BOOL)getHasCleanValues;
- (BOOL)hasValue:(id)a3 from:(int64_t)a4 to:(int64_t)a5;
- (CDMToken)initWithProtoToken:(id)a3;
- (CDMToken)initWithValue:(id)a3;
- (CDMToken)initWithValue:(id)a3 begin:(int64_t)a4 end:(int64_t)a5 significant:(BOOL)a6 whitespace:(BOOL)a7 cleanValue:(id)a8 tokenIndex:(int64_t)a9 nonWhitespaceTokenIndex:(int64_t)a10;
- (CDMToken)initWithValue:(id)a3 begin:(int64_t)a4 end:(int64_t)a5 significant:(BOOL)a6 whitespace:(BOOL)a7 cleanValue:(id)a8 tokenIndex:(int64_t)a9 nonWhitespaceTokenIndex:(int64_t)a10 normalizedValues:(id)a11;
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

  v2 = [(CDMToken *)self cleanValues];
  v3 = [v2 count] != 0;

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

- (BOOL)hasValue:(id)a3 from:(int64_t)a4 to:(int64_t)a5
{
  v8 = a3;
  if ([(CDMToken *)self begin]<= a4 && [(CDMToken *)self end]>= a5)
  {
    v10 = [(CDMToken *)self value];
    v9 = [v10 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CDMToken)initWithProtoToken:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CDMToken;
  v5 = [(CDMToken *)&v14 init];
  if (v5)
  {
    v6 = [v4 value];
    value = v5->_value;
    v5->_value = v6;

    v5->_begin = [v4 begin];
    v5->_end = [v4 end];
    v5->_isSignificant = [v4 isSignificant];
    v5->_isWhiteSpace = [v4 isWhitespace];
    v5->_tokenIndex = [v4 tokenIndex];
    v5->_nonWhitespaceTokenIndex = [v4 nonWhitespaceTokenIndex];
    v8 = [v4 cleanValue];
    cleanValue = v5->_cleanValue;
    v5->_cleanValue = v8;

    v10 = [v4 normalizedValues];
    v11 = [v10 copy];
    normalizedValues = v5->_normalizedValues;
    v5->_normalizedValues = v11;
  }

  return v5;
}

- (CDMToken)initWithValue:(id)a3 begin:(int64_t)a4 end:(int64_t)a5 significant:(BOOL)a6 whitespace:(BOOL)a7 cleanValue:(id)a8 tokenIndex:(int64_t)a9 nonWhitespaceTokenIndex:(int64_t)a10 normalizedValues:(id)a11
{
  v18 = a3;
  v19 = a8;
  v23 = a11;
  v24.receiver = self;
  v24.super_class = CDMToken;
  v20 = [(CDMToken *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_value, a3);
    v21->_begin = a4;
    v21->_end = a5;
    v21->_isSignificant = a6;
    v21->_isWhiteSpace = a7;
    v21->_tokenIndex = a9;
    v21->_nonWhitespaceTokenIndex = a10;
    objc_storeStrong(&v21->_cleanValue, a8);
    objc_storeStrong(&v21->_normalizedValues, a11);
  }

  return v21;
}

- (CDMToken)initWithValue:(id)a3 begin:(int64_t)a4 end:(int64_t)a5 significant:(BOOL)a6 whitespace:(BOOL)a7 cleanValue:(id)a8 tokenIndex:(int64_t)a9 nonWhitespaceTokenIndex:(int64_t)a10
{
  v17 = a3;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = CDMToken;
  v19 = [(CDMToken *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_value, a3);
    v20->_begin = a4;
    v20->_end = a5;
    v20->_isSignificant = a6;
    v20->_isWhiteSpace = a7;
    v20->_tokenIndex = a9;
    v20->_nonWhitespaceTokenIndex = a10;
    objc_storeStrong(&v20->_cleanValue, a8);
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    normalizedValues = v20->_normalizedValues;
    v20->_normalizedValues = v21;
  }

  return v20;
}

- (CDMToken)initWithValue:(id)a3
{
  v4 = a3;
  v5 = -[CDMToken initWithValue:begin:end:significant:](self, "initWithValue:begin:end:significant:", v4, 0, [v4 length], 1);

  return v5;
}

@end