@interface CDPLocalSecret
- (CDPLocalSecret)initWithCoder:(id)a3;
- (CDPLocalSecret)initWithValidatedSecret:(id)a3 secretType:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDPLocalSecret

- (CDPLocalSecret)initWithValidatedSecret:(id)a3 secretType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CDPLocalSecret;
  v8 = [(CDPLocalSecret *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_validatedSecret, a3);
    v9->_secretType = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  validatedSecret = self->_validatedSecret;
  v5 = a3;
  [v5 encodeObject:validatedSecret forKey:@"_validatedSecret"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_secretType];
  [v5 encodeObject:v6 forKey:@"_secretType"];
}

- (CDPLocalSecret)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CDPLocalSecret *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_validatedSecret"];
    validatedSecret = v5->_validatedSecret;
    v5->_validatedSecret = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secretType"];
    v5->_secretType = [v8 integerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CDPLocalSecret alloc];
  validatedSecret = self->_validatedSecret;
  secretType = self->_secretType;

  return [(CDPLocalSecret *)v4 initWithValidatedSecret:validatedSecret secretType:secretType];
}

@end