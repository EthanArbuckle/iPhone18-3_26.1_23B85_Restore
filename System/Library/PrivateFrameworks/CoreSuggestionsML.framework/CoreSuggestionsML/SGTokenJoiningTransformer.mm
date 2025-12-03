@interface SGTokenJoiningTransformer
+ (id)withSeparator:(id)separator;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSGTokenJoiningTransformer:(id)transformer;
- (SGTokenJoiningTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (SGTokenJoiningTransformer)initWithSeparator:(id)separator;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
@end

@implementation SGTokenJoiningTransformer

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGTokenJoiningTransformer *)self isEqualToSGTokenJoiningTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToSGTokenJoiningTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    separator = [(SGTokenJoiningTransformer *)self separator];
    separator2 = [transformerCopy separator];
    if (separator == separator2)
    {
      v9 = 1;
    }

    else
    {
      separator3 = [(SGTokenJoiningTransformer *)self separator];
      separator4 = [transformerCopy separator];
      v9 = [separator3 isEqual:separator4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SGTokenJoiningTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v6 = [plist objectForKeyedSubscript:{@"SEPARATOR", chunks, context}];
  v7 = [(SGTokenJoiningTransformer *)self initWithSeparator:v6];

  return v7;
}

- (id)toPlistWithChunks:(id)chunks
{
  v8[1] = *MEMORY[0x277D85DE8];
  separator = self->_separator;
  v7 = @"SEPARATOR";
  v8[0] = separator;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  if (!transformCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTokenJoiningTransformer.m" lineNumber:40 description:{@"Unexpected input: %@. %@ requires an NSArray.", transformCopy, v10}];
  }

  v6 = [transformCopy _pas_componentsJoinedByString:self->_separator];

  return v6;
}

- (SGTokenJoiningTransformer)initWithSeparator:(id)separator
{
  separatorCopy = separator;
  v9.receiver = self;
  v9.super_class = SGTokenJoiningTransformer;
  v6 = [(SGTokenJoiningTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_separator, separator);
  }

  return v7;
}

+ (id)withSeparator:(id)separator
{
  separatorCopy = separator;
  v4 = [[SGTokenJoiningTransformer alloc] initWithSeparator:separatorCopy];

  return v4;
}

@end