@interface SGTokenJoiningTransformer
+ (id)withSeparator:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSGTokenJoiningTransformer:(id)a3;
- (SGTokenJoiningTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (SGTokenJoiningTransformer)initWithSeparator:(id)a3;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
@end

@implementation SGTokenJoiningTransformer

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGTokenJoiningTransformer *)self isEqualToSGTokenJoiningTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToSGTokenJoiningTransformer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SGTokenJoiningTransformer *)self separator];
    v6 = [v4 separator];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(SGTokenJoiningTransformer *)self separator];
      v8 = [v4 separator];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SGTokenJoiningTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = [a3 objectForKeyedSubscript:{@"SEPARATOR", a4, a5}];
  v7 = [(SGTokenJoiningTransformer *)self initWithSeparator:v6];

  return v7;
}

- (id)toPlistWithChunks:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  separator = self->_separator;
  v7 = @"SEPARATOR";
  v8[0] = separator;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)transform:(id)a3
{
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"SGTokenJoiningTransformer.m" lineNumber:40 description:{@"Unexpected input: %@. %@ requires an NSArray.", v5, v10}];
  }

  v6 = [v5 _pas_componentsJoinedByString:self->_separator];

  return v6;
}

- (SGTokenJoiningTransformer)initWithSeparator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGTokenJoiningTransformer;
  v6 = [(SGTokenJoiningTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_separator, a3);
  }

  return v7;
}

+ (id)withSeparator:(id)a3
{
  v3 = a3;
  v4 = [[SGTokenJoiningTransformer alloc] initWithSeparator:v3];

  return v4;
}

@end