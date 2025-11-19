@interface MLRTaskParameters
- (MLRTaskParameters)initWithCoder:(id)a3;
- (MLRTaskParameters)initWithDESRecipe:(id)a3;
- (MLRTaskParameters)initWithParametersDict:(id)a3;
- (MLRTaskParameters)initWithURL:(id)a3 error:(id *)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation MLRTaskParameters

- (MLRTaskParameters)initWithParametersDict:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MLRTaskParameters;
  v5 = [(MLRTaskParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    recipeUserInfo = v5->_recipeUserInfo;
    v5->_recipeUserInfo = v6;
  }

  return v5;
}

- (MLRTaskParameters)initWithDESRecipe:(id)a3
{
  if (a3)
  {
    v4 = [a3 recipeUserInfo];
    self = [(MLRTaskParameters *)self initWithParametersDict:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MLRTaskParameters)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Nil fileURL" userInfo:0];
    objc_exception_throw(v12);
  }

  v7 = v6;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:8 error:a4];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:a4];
    if (v9)
    {
      self = [(MLRTaskParameters *)self initWithParametersDict:v9];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (MLRTaskParameters)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v5 decodeObjectOfClasses:v10 forKey:@"recipeUserInfo"];

  if (v11)
  {
    self = [(MLRTaskParameters *)self initWithParametersDict:v11];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end