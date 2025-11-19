@interface SGMultiHeadEspressoModelCached
+ (id)classifierWithEspressoModelFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5;
- (SGMultiHeadEspressoModelCached)initWithEspressoModelFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5;
- (id)headDimensionality;
- (id)predict:(id)a3;
- (id)predict:(id)a3 heads:(id)a4;
- (unint64_t)inputNumParameters;
@end

@implementation SGMultiHeadEspressoModelCached

- (id)headDimensionality
{
  v3 = +[SGMultiHeadEspressoModelCache sharedInstance];
  v4 = [v3 headDimensionalityWithFile:self->_espressoModelFile inputName:self->_inputName headDimensionality:self->_headDimensionality];

  return v4;
}

- (unint64_t)inputNumParameters
{
  v3 = +[SGMultiHeadEspressoModelCache sharedInstance];
  v4 = [v3 inputNumParametersWithFile:self->_espressoModelFile inputName:self->_inputName headDimensionality:self->_headDimensionality];

  return v4;
}

- (id)predict:(id)a3
{
  v4 = a3;
  v5 = +[SGMultiHeadEspressoModelCache sharedInstance];
  v6 = [v5 predict:v4 withFile:self->_espressoModelFile inputName:self->_inputName headDimensionality:self->_headDimensionality];

  return v6;
}

- (id)predict:(id)a3 heads:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SGMultiHeadEspressoModelCache sharedInstance];
  v9 = [v8 predict:v7 heads:v6 withFile:self->_espressoModelFile inputName:self->_inputName headDimensionality:self->_headDimensionality];

  return v9;
}

- (SGMultiHeadEspressoModelCached)initWithEspressoModelFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SGMultiHeadEspressoModelCached;
  v12 = [(SGMultiHeadEspressoModelCached *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_espressoModelFile, a3);
    objc_storeStrong(&v13->_inputName, a4);
    objc_storeStrong(&v13->_headDimensionality, a5);
  }

  return v13;
}

+ (id)classifierWithEspressoModelFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && (+[SGMultiHeadEspressoModelCache sharedInstance](SGMultiHeadEspressoModelCache, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "setCachedEspressoClassifierWithFile:inputName:headDimensionality:", v8, v9, v10), v11, v12))
  {
    v13 = [[a1 alloc] initWithEspressoModelFile:v8 inputName:v9 headDimensionality:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end