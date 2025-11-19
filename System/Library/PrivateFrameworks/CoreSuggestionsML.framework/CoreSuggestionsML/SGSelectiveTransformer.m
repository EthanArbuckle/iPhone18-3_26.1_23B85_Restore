@interface SGSelectiveTransformer
+ (id)withTransformer:(id)a3 appliedToInputKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSGSelectiveTransformer:(id)a3;
- (SGSelectiveTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (SGSelectiveTransformer)initWithTransformer:(id)a3 appliedToInputKey:(id)a4;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (unint64_t)hash;
@end

@implementation SGSelectiveTransformer

- (unint64_t)hash
{
  v3 = [(SGSelectiveTransformer *)self transformer];
  v4 = [v3 hash];

  v5 = [(SGSelectiveTransformer *)self inputKey];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSelectiveTransformer *)self isEqualToSGSelectiveTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToSGSelectiveTransformer:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = [(SGSelectiveTransformer *)self transformer];
    v8 = [v6 transformer];
    if (v7 == v8 || (-[SGSelectiveTransformer transformer](self, "transformer"), v3 = objc_claimAutoreleasedReturnValue(), [v6 transformer], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v10 = [(SGSelectiveTransformer *)self inputKey];
      v11 = [v6 inputKey];
      v12 = v11;
      if (v10 == v11)
      {

        v9 = 1;
      }

      else
      {
        v13 = [(SGSelectiveTransformer *)self inputKey];
        v14 = [v6 inputKey];
        v9 = [v13 isEqual:v14];
      }

      if (v7 == v8)
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

- (SGSelectiveTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = MEMORY[0x277D41F60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [v12 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14 = [v11 objectForKeyedSubscript:@"TRANSFORMER"];
  v15 = [v13 readObjectWithPlist:v14 chunks:v10 context:v9];

  v16 = [v11 objectForKeyedSubscript:@"INPUTKEY"];

  v17 = [(SGSelectiveTransformer *)self initWithTransformer:v15 appliedToInputKey:v16];
  return v17;
}

- (id)toPlistWithChunks:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D41F60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v14[0] = @"TRANSFORMER";
  v8 = [(SGSelectiveTransformer *)self transformer];
  v9 = [v7 writeToPlistWithObject:v8 andChunks:v5];

  v14[1] = @"INPUTKEY";
  v15[0] = v9;
  v10 = [(SGSelectiveTransformer *)self inputKey];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)transform:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[SGSelectiveTransformer inputKey](self, "inputKey"), v6 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(SGSelectiveTransformer *)self inputKey];
    [v8 handleFailureInMethod:a2 object:self file:@"SGSelectiveTransformer.m" lineNumber:46 description:{@"Unexpected input: %@. %@ requires dictionary with inputKey: %@.", v5, v10, v11}];
  }

  v12 = [v5 mutableCopy];
  v13 = [(SGSelectiveTransformer *)self inputKey];
  v14 = [v5 objectForKeyedSubscript:v13];

  v15 = [(SGSelectiveTransformer *)self transformer];
  v16 = [v15 transform:v14];
  v17 = [(SGSelectiveTransformer *)self inputKey];
  [v12 setObject:v16 forKeyedSubscript:v17];

  return v12;
}

- (SGSelectiveTransformer)initWithTransformer:(id)a3 appliedToInputKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SGSelectiveTransformer;
  v8 = [(SGSelectiveTransformer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SGSelectiveTransformer *)v8 setTransformer:v6];
    [(SGSelectiveTransformer *)v9 setInputKey:v7];
  }

  return v9;
}

+ (id)withTransformer:(id)a3 appliedToInputKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SGSelectiveTransformer alloc] initWithTransformer:v6 appliedToInputKey:v5];

  return v7;
}

@end