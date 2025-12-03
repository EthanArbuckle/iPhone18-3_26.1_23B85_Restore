@interface MLRTaskParameters
- (MLRTaskParameters)initWithCoder:(id)coder;
- (MLRTaskParameters)initWithDESRecipe:(id)recipe;
- (MLRTaskParameters)initWithParametersDict:(id)dict;
- (MLRTaskParameters)initWithURL:(id)l error:(id *)error;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation MLRTaskParameters

- (MLRTaskParameters)initWithParametersDict:(id)dict
{
  dictCopy = dict;
  v9.receiver = self;
  v9.super_class = MLRTaskParameters;
  v5 = [(MLRTaskParameters *)&v9 init];
  if (v5)
  {
    v6 = [dictCopy copy];
    recipeUserInfo = v5->_recipeUserInfo;
    v5->_recipeUserInfo = v6;
  }

  return v5;
}

- (MLRTaskParameters)initWithDESRecipe:(id)recipe
{
  if (recipe)
  {
    recipeUserInfo = [recipe recipeUserInfo];
    self = [(MLRTaskParameters *)self initWithParametersDict:recipeUserInfo];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MLRTaskParameters)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (!lCopy)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Nil fileURL" userInfo:0];
    objc_exception_throw(v12);
  }

  v7 = lCopy;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:8 error:error];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:error];
    if (v9)
    {
      self = [(MLRTaskParameters *)self initWithParametersDict:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(%@)", v5, self->_recipeUserInfo];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(NSDictionary *)self->_recipeUserInfo copy];

  return v2;
}

- (MLRTaskParameters)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"recipeUserInfo"];

  if (v11)
  {
    self = [(MLRTaskParameters *)self initWithParametersDict:v11];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end