@interface CKVToken
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToToken:(id)token;
- (CKVToken)init;
- (CKVToken)initWithCoder:(id)coder;
- (CKVToken)initWithValue:(id)value cleanValue:(id)cleanValue beginIndex:(unint64_t)index endIndex:(unint64_t)endIndex isSignificant:(BOOL)significant isWhitespace:(BOOL)whitespace normalizedValues:(id)values;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqualToToken:(id)token
{
  tokenCopy = token;
  value = self->_value;
  value = [tokenCopy value];
  LODWORD(value) = [(NSString *)value isEqualToString:value];

  if (value && (cleanValue = self->_cleanValue, [tokenCopy cleanValue], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(cleanValue) = -[NSString isEqualToString:](cleanValue, "isEqualToString:", v8), v8, cleanValue) && (beginIndex = self->_beginIndex, beginIndex == objc_msgSend(tokenCopy, "beginIndex")) && (endIndex = self->_endIndex, endIndex == objc_msgSend(tokenCopy, "endIndex")) && (isSignificant = self->_isSignificant, isSignificant == objc_msgSend(tokenCopy, "isSignificant")) && (isWhitespace = self->_isWhitespace, isWhitespace == objc_msgSend(tokenCopy, "isWhitespace")))
  {
    normalizedValues = self->_normalizedValues;
    v14 = normalizedValues;
    if (!normalizedValues)
    {
      isWhitespace = [tokenCopy normalizedValues];
      if (!isWhitespace)
      {
        v16 = 1;
LABEL_15:

        goto LABEL_13;
      }

      v14 = self->_normalizedValues;
    }

    normalizedValues = [tokenCopy normalizedValues];
    v16 = [(NSArray *)v14 isEqual:normalizedValues];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVToken *)self isEqualToToken:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_cleanValue copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 32) = self->_beginIndex;
  *(v5 + 40) = self->_endIndex;
  *(v5 + 8) = self->_isSignificant;
  *(v5 + 9) = self->_isWhitespace;
  objc_storeStrong((v5 + 48), self->_normalizedValues);
  return v5;
}

- (CKVToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CKVToken;
  v5 = [(CKVToken *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cleanValue"];
    cleanValue = v5->_cleanValue;
    v5->_cleanValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    v5->_beginIndex = [v10 unsignedLongValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
    v5->_endIndex = [v11 unsignedLongValue];

    v5->_isSignificant = [coderCopy decodeBoolForKey:@"isSignificant"];
    v5->_isWhitespace = [coderCopy decodeBoolForKey:@"isWhitespace"];
    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"normalizedValues"];
    normalizedValues = v5->_normalizedValues;
    v5->_normalizedValues = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeObject:self->_cleanValue forKey:@"cleanValue"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_beginIndex];
  [coderCopy encodeObject:v5 forKey:@"b"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_endIndex];
  [coderCopy encodeObject:v6 forKey:@"e"];

  [coderCopy encodeBool:self->_isSignificant forKey:@"isSignificant"];
  [coderCopy encodeBool:self->_isWhitespace forKey:@"isWhitespace"];
  [coderCopy encodeObject:self->_normalizedValues forKey:@"normalizedValues"];
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

- (CKVToken)initWithValue:(id)value cleanValue:(id)cleanValue beginIndex:(unint64_t)index endIndex:(unint64_t)endIndex isSignificant:(BOOL)significant isWhitespace:(BOOL)whitespace normalizedValues:(id)values
{
  v32 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  cleanValueCopy = cleanValue;
  valuesCopy = values;
  v29.receiver = self;
  v29.super_class = CKVToken;
  v18 = [(CKVToken *)&v29 init];
  if (!v18)
  {
LABEL_6:
    v26 = v18;
    goto LABEL_10;
  }

  v19 = [valueCopy copy];
  value = v18->_value;
  v18->_value = v19;

  v21 = v18->_value;
  if (v21 && [(NSString *)v21 length])
  {
    v22 = [cleanValueCopy copy];
    cleanValue = v18->_cleanValue;
    v18->_cleanValue = v22;

    v18->_beginIndex = index;
    v18->_endIndex = endIndex;
    v18->_isSignificant = significant;
    v18->_isWhitespace = whitespace;
    if ([valuesCopy count])
    {
      v24 = [MEMORY[0x1E695DEC8] arrayWithArray:valuesCopy];
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