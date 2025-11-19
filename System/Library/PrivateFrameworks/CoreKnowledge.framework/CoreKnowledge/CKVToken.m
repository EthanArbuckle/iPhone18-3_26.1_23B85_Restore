@interface CKVToken
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToToken:(id)a3;
- (CKVToken)init;
- (CKVToken)initWithCoder:(id)a3;
- (CKVToken)initWithValue:(id)a3 cleanValue:(id)a4 beginIndex:(unint64_t)a5 endIndex:(unint64_t)a6 isSignificant:(BOOL)a7 isWhitespace:(BOOL)a8 normalizedValues:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKVToken

- (unint64_t)hash
{
  v3 = [(NSString *)self->_value hash];
  v4 = [(NSString *)self->_cleanValue hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_beginIndex];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_endIndex];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSignificant];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isWhitespace];
  v12 = [v11 hash];
  v13 = v12 ^ [(NSArray *)self->_normalizedValues hash];

  return v10 ^ v13;
}

- (BOOL)isEqualToToken:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = [v4 value];
  LODWORD(value) = [(NSString *)value isEqualToString:v6];

  if (value && (cleanValue = self->_cleanValue, [v4 cleanValue], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(cleanValue) = -[NSString isEqualToString:](cleanValue, "isEqualToString:", v8), v8, cleanValue) && (beginIndex = self->_beginIndex, beginIndex == objc_msgSend(v4, "beginIndex")) && (endIndex = self->_endIndex, endIndex == objc_msgSend(v4, "endIndex")) && (isSignificant = self->_isSignificant, isSignificant == objc_msgSend(v4, "isSignificant")) && (isWhitespace = self->_isWhitespace, isWhitespace == objc_msgSend(v4, "isWhitespace")))
  {
    normalizedValues = self->_normalizedValues;
    v14 = normalizedValues;
    if (!normalizedValues)
    {
      isWhitespace = [v4 normalizedValues];
      if (!isWhitespace)
      {
        v16 = 1;
LABEL_15:

        goto LABEL_13;
      }

      v14 = self->_normalizedValues;
    }

    v15 = [v4 normalizedValues];
    v16 = [(NSArray *)v14 isEqual:v15];

    if (!normalizedValues)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_13:

  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVToken *)self isEqualToToken:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_value copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_cleanValue copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 32) = self->_beginIndex;
  *(v5 + 40) = self->_endIndex;
  *(v5 + 8) = self->_isSignificant;
  *(v5 + 9) = self->_isWhitespace;
  objc_storeStrong((v5 + 48), self->_normalizedValues);
  return v5;
}

- (CKVToken)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKVToken;
  v5 = [(CKVToken *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cleanValue"];
    cleanValue = v5->_cleanValue;
    v5->_cleanValue = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    v5->_beginIndex = [v10 unsignedLongValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"e"];
    v5->_endIndex = [v11 unsignedLongValue];

    v5->_isSignificant = [v4 decodeBoolForKey:@"isSignificant"];
    v5->_isWhitespace = [v4 decodeBoolForKey:@"isWhitespace"];
    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"normalizedValues"];
    normalizedValues = v5->_normalizedValues;
    v5->_normalizedValues = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v7 = a3;
  [v7 encodeObject:value forKey:@"value"];
  [v7 encodeObject:self->_cleanValue forKey:@"cleanValue"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_beginIndex];
  [v7 encodeObject:v5 forKey:@"b"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_endIndex];
  [v7 encodeObject:v6 forKey:@"e"];

  [v7 encodeBool:self->_isSignificant forKey:@"isSignificant"];
  [v7 encodeBool:self->_isWhitespace forKey:@"isWhitespace"];
  [v7 encodeObject:self->_normalizedValues forKey:@"normalizedValues"];
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CKVToken;
  v3 = [(CKVToken *)&v10 description];
  value = self->_value;
  cleanValue = self->_cleanValue;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_beginIndex];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_endIndex];
  v8 = [v3 stringByAppendingFormat:@" value: %@, cleanValue: %@, beginIndex: %@, endIndex: %@, isSignificant: %d, isWhitespace: %d, normalizedValues: %@", value, cleanValue, v6, v7, self->_isSignificant, self->_isWhitespace, self->_normalizedValues];

  return v8;
}

- (CKVToken)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use -initWithValue:" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVToken)initWithValue:(id)a3 cleanValue:(id)a4 beginIndex:(unint64_t)a5 endIndex:(unint64_t)a6 isSignificant:(BOOL)a7 isWhitespace:(BOOL)a8 normalizedValues:(id)a9
{
  v32 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v29.receiver = self;
  v29.super_class = CKVToken;
  v18 = [(CKVToken *)&v29 init];
  if (!v18)
  {
LABEL_6:
    v26 = v18;
    goto LABEL_10;
  }

  v19 = [v15 copy];
  value = v18->_value;
  v18->_value = v19;

  v21 = v18->_value;
  if (v21 && [(NSString *)v21 length])
  {
    v22 = [v16 copy];
    cleanValue = v18->_cleanValue;
    v18->_cleanValue = v22;

    v18->_beginIndex = a5;
    v18->_endIndex = a6;
    v18->_isSignificant = a7;
    v18->_isWhitespace = a8;
    if ([v17 count])
    {
      v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
      normalizedValues = v18->_normalizedValues;
      v18->_normalizedValues = v24;
    }

    goto LABEL_6;
  }

  v27 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v31 = "[CKVToken initWithValue:cleanValue:beginIndex:endIndex:isSignificant:isWhitespace:normalizedValues:]";
    _os_log_error_impl(&dword_1C8683000, v27, OS_LOG_TYPE_ERROR, "%s Cannot construct token with nil value", buf, 0xCu);
  }

  v26 = 0;
LABEL_10:

  return v26;
}

@end