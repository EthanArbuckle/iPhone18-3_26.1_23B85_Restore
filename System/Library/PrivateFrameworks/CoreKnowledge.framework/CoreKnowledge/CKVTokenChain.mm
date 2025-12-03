@interface CKVTokenChain
+ (id)tokenChainBuilderForString:(id)string locale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTokenChain:(id)chain;
- (CKVTokenChain)init;
- (CKVTokenChain)initWithCoder:(id)coder;
- (CKVTokenChain)initWithString:(id)string locale:(id)locale tokens:(id)tokens;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKVTokenChain

- (unint64_t)hash
{
  v3 = [(NSString *)self->_normalizedString hash];
  v4 = [(NSLocale *)self->_locale hash]^ v3;
  return v4 ^ [(NSArray *)self->_tokens hash];
}

- (BOOL)isEqualToTokenChain:(id)chain
{
  chainCopy = chain;
  normalizedString = self->_normalizedString;
  normalizedString = [chainCopy normalizedString];
  LODWORD(normalizedString) = [(NSString *)normalizedString isEqualToString:normalizedString];

  if (normalizedString && (locale = self->_locale, [chainCopy locale], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(locale) = -[NSLocale isEqual:](locale, "isEqual:", v8), v8, locale))
  {
    tokens = self->_tokens;
    tokens = [chainCopy tokens];
    v11 = [(NSArray *)tokens isEqualToArray:tokens];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVTokenChain *)self isEqualToTokenChain:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_normalizedString copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSLocale *)self->_locale copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSArray *)self->_tokens copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (CKVTokenChain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKVTokenChain;
  v5 = [(CKVTokenChain *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"normalizedStr"];
    normalizedString = v5->_normalizedString;
    v5->_normalizedString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  normalizedString = self->_normalizedString;
  coderCopy = coder;
  [coderCopy encodeObject:normalizedString forKey:@"normalizedStr"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
  [coderCopy encodeObject:self->_tokens forKey:@"tokens"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CKVTokenChain;
  v3 = [(CKVTokenChain *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" normalizedString: %@, locale: %@, tokens: %@", self->_normalizedString, self->_locale, self->_tokens];

  return v4;
}

- (CKVTokenChain)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use +tokenChainBuilderForString:" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVTokenChain)initWithString:(id)string locale:(id)locale tokens:(id)tokens
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  localeCopy = locale;
  tokensCopy = tokens;
  v23.receiver = self;
  v23.super_class = CKVTokenChain;
  v11 = [(CKVTokenChain *)&v23 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [stringCopy copy];
  normalizedString = v11->_normalizedString;
  v11->_normalizedString = v12;

  v14 = v11->_normalizedString;
  if (!v14 || ![(NSString *)v14 length])
  {
    v20 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[CKVTokenChain initWithString:locale:tokens:]";
      v22 = "%s Cannot construct tokenChain with nil normalized string";
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v15 = [localeCopy copy];
  locale = v11->_locale;
  v11->_locale = v15;

  if (!v11->_locale)
  {
    v20 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[CKVTokenChain initWithString:locale:tokens:]";
      v22 = "%s Cannot construct tokenChain with nil locale";
LABEL_15:
      _os_log_error_impl(&dword_1C8683000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  v17 = [tokensCopy copy];
  tokens = v11->_tokens;
  v11->_tokens = v17;

  if (!v11->_tokens)
  {
    v20 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[CKVTokenChain initWithString:locale:tokens:]";
      v22 = "%s Cannot construct tokenChain with nil tokens";
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_6:
  v19 = v11;
LABEL_9:

  return v19;
}

+ (id)tokenChainBuilderForString:(id)string locale:(id)locale
{
  localeCopy = locale;
  stringCopy = string;
  v7 = [[CKVTokenChainBuilder alloc] initWithString:stringCopy locale:localeCopy];

  return v7;
}

@end