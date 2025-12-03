@interface SGSelectiveTransformer
+ (id)withTransformer:(id)transformer appliedToInputKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSGSelectiveTransformer:(id)transformer;
- (SGSelectiveTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (SGSelectiveTransformer)initWithTransformer:(id)transformer appliedToInputKey:(id)key;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (unint64_t)hash;
@end

@implementation SGSelectiveTransformer

- (unint64_t)hash
{
  transformer = [(SGSelectiveTransformer *)self transformer];
  v4 = [transformer hash];

  inputKey = [(SGSelectiveTransformer *)self inputKey];
  v6 = [inputKey hash] - v4 + 32 * v4;

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSelectiveTransformer *)self isEqualToSGSelectiveTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToSGSelectiveTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    transformer = [(SGSelectiveTransformer *)self transformer];
    transformer2 = [transformerCopy transformer];
    if (transformer == transformer2 || (-[SGSelectiveTransformer transformer](self, "transformer"), v3 = objc_claimAutoreleasedReturnValue(), [transformerCopy transformer], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      inputKey = [(SGSelectiveTransformer *)self inputKey];
      inputKey2 = [transformerCopy inputKey];
      v12 = inputKey2;
      if (inputKey == inputKey2)
      {

        v9 = 1;
      }

      else
      {
        inputKey3 = [(SGSelectiveTransformer *)self inputKey];
        inputKey4 = [transformerCopy inputKey];
        v9 = [inputKey3 isEqual:inputKey4];
      }

      if (transformer == transformer2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (SGSelectiveTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v8 = MEMORY[0x277D41F60];
  contextCopy = context;
  chunksCopy = chunks;
  plistCopy = plist;
  v12 = [v8 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [plistCopy objectForKeyedSubscript:@"TRANSFORMER"];
  v15 = [v13 readObjectWithPlist:v14 chunks:chunksCopy context:contextCopy];

  v16 = [plistCopy objectForKeyedSubscript:@"INPUTKEY"];

  v17 = [(SGSelectiveTransformer *)self initWithTransformer:v15 appliedToInputKey:v16];
  return v17;
}

- (id)toPlistWithChunks:(id)chunks
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D41F60];
  chunksCopy = chunks;
  v6 = [v4 alloc];
  v7 = [v6 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14[0] = @"TRANSFORMER";
  transformer = [(SGSelectiveTransformer *)self transformer];
  v9 = [v7 writeToPlistWithObject:transformer andChunks:chunksCopy];

  v14[1] = @"INPUTKEY";
  v15[0] = v9;
  inputKey = [(SGSelectiveTransformer *)self inputKey];
  v15[1] = inputKey;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[SGSelectiveTransformer inputKey](self, "inputKey"), v6 = objc_claimAutoreleasedReturnValue(), [transformCopy objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    inputKey = [(SGSelectiveTransformer *)self inputKey];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSelectiveTransformer.m" lineNumber:46 description:{@"Unexpected input: %@. %@ requires dictionary with inputKey: %@.", transformCopy, v10, inputKey}];
  }

  v12 = [transformCopy mutableCopy];
  inputKey2 = [(SGSelectiveTransformer *)self inputKey];
  v14 = [transformCopy objectForKeyedSubscript:inputKey2];

  transformer = [(SGSelectiveTransformer *)self transformer];
  v16 = [transformer transform:v14];
  inputKey3 = [(SGSelectiveTransformer *)self inputKey];
  [v12 setObject:v16 forKeyedSubscript:inputKey3];

  return v12;
}

- (SGSelectiveTransformer)initWithTransformer:(id)transformer appliedToInputKey:(id)key
{
  transformerCopy = transformer;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = SGSelectiveTransformer;
  v8 = [(SGSelectiveTransformer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SGSelectiveTransformer *)v8 setTransformer:transformerCopy];
    [(SGSelectiveTransformer *)v9 setInputKey:keyCopy];
  }

  return v9;
}

+ (id)withTransformer:(id)transformer appliedToInputKey:(id)key
{
  keyCopy = key;
  transformerCopy = transformer;
  v7 = [[SGSelectiveTransformer alloc] initWithTransformer:transformerCopy appliedToInputKey:keyCopy];

  return v7;
}

@end