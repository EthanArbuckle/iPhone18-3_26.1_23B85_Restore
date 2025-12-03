@interface SGMultiLabelEspressoClassifierCached
+ (id)classifierWithEspressoModelFile:(id)file;
- (SGMultiLabelEspressoClassifierCached)initWithEspressoModelFile:(id)file;
- (id)predict:(id)predict;
- (unint64_t)outputDimension;
@end

@implementation SGMultiLabelEspressoClassifierCached

- (unint64_t)outputDimension
{
  v3 = +[SGMultiLabelEspressoClassifierCache sharedInstance];
  v4 = [v3 outputDimensionWithFile:self->_espressoModelFile];

  return v4;
}

- (id)predict:(id)predict
{
  predictCopy = predict;
  v5 = +[SGMultiLabelEspressoClassifierCache sharedInstance];
  v6 = [v5 predict:predictCopy withFile:self->_espressoModelFile];

  return v6;
}

- (SGMultiLabelEspressoClassifierCached)initWithEspressoModelFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = SGMultiLabelEspressoClassifierCached;
  v6 = [(SGMultiLabelEspressoClassifierCached *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_espressoModelFile, file);
  }

  return v7;
}

+ (id)classifierWithEspressoModelFile:(id)file
{
  fileCopy = file;
  if ([fileCopy length] && (+[SGMultiLabelEspressoClassifierCache sharedInstance](SGMultiLabelEspressoClassifierCache, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "setCachedEspressoClassifierWithFile:", fileCopy), v5, v6))
  {
    v7 = [[self alloc] initWithEspressoModelFile:fileCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end