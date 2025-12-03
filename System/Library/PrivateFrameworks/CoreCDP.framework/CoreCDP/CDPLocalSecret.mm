@interface CDPLocalSecret
- (CDPLocalSecret)initWithCoder:(id)coder;
- (CDPLocalSecret)initWithValidatedSecret:(id)secret secretType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDPLocalSecret

- (CDPLocalSecret)initWithValidatedSecret:(id)secret secretType:(unint64_t)type
{
  secretCopy = secret;
  v11.receiver = self;
  v11.super_class = CDPLocalSecret;
  v8 = [(CDPLocalSecret *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_validatedSecret, secret);
    v9->_secretType = type;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  validatedSecret = self->_validatedSecret;
  coderCopy = coder;
  [coderCopy encodeObject:validatedSecret forKey:@"_validatedSecret"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_secretType];
  [coderCopy encodeObject:v6 forKey:@"_secretType"];
}

- (CDPLocalSecret)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CDPLocalSecret *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_validatedSecret"];
    validatedSecret = v5->_validatedSecret;
    v5->_validatedSecret = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secretType"];
    v5->_secretType = [v8 integerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CDPLocalSecret alloc];
  validatedSecret = self->_validatedSecret;
  secretType = self->_secretType;

  return [(CDPLocalSecret *)v4 initWithValidatedSecret:validatedSecret secretType:secretType];
}

@end