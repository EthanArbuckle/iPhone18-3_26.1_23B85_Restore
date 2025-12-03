@interface SGMultiHeadEspressoModelCached
+ (id)classifierWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality;
- (SGMultiHeadEspressoModelCached)initWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality;
- (id)headDimensionality;
- (id)predict:(id)predict;
- (id)predict:(id)predict heads:(id)heads;
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

- (id)predict:(id)predict
{
  predictCopy = predict;
  v5 = +[SGMultiHeadEspressoModelCache sharedInstance];
  v6 = [v5 predict:predictCopy withFile:self->_espressoModelFile inputName:self->_inputName headDimensionality:self->_headDimensionality];

  return v6;
}

- (id)predict:(id)predict heads:(id)heads
{
  headsCopy = heads;
  predictCopy = predict;
  v8 = +[SGMultiHeadEspressoModelCache sharedInstance];
  v9 = [v8 predict:predictCopy heads:headsCopy withFile:self->_espressoModelFile inputName:self->_inputName headDimensionality:self->_headDimensionality];

  return v9;
}

- (SGMultiHeadEspressoModelCached)initWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality
{
  fileCopy = file;
  nameCopy = name;
  dimensionalityCopy = dimensionality;
  v15.receiver = self;
  v15.super_class = SGMultiHeadEspressoModelCached;
  v12 = [(SGMultiHeadEspressoModelCached *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_espressoModelFile, file);
    objc_storeStrong(&v13->_inputName, name);
    objc_storeStrong(&v13->_headDimensionality, dimensionality);
  }

  return v13;
}

+ (id)classifierWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality
{
  fileCopy = file;
  nameCopy = name;
  dimensionalityCopy = dimensionality;
  if ([fileCopy length] && (+[SGMultiHeadEspressoModelCache sharedInstance](SGMultiHeadEspressoModelCache, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "setCachedEspressoClassifierWithFile:inputName:headDimensionality:", fileCopy, nameCopy, dimensionalityCopy), v11, v12))
  {
    v13 = [[self alloc] initWithEspressoModelFile:fileCopy inputName:nameCopy headDimensionality:dimensionalityCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end