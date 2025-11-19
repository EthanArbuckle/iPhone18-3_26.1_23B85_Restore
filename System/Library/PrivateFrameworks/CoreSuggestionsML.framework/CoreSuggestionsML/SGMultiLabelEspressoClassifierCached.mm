@interface SGMultiLabelEspressoClassifierCached
+ (id)classifierWithEspressoModelFile:(id)a3;
- (SGMultiLabelEspressoClassifierCached)initWithEspressoModelFile:(id)a3;
- (id)predict:(id)a3;
- (unint64_t)outputDimension;
@end

@implementation SGMultiLabelEspressoClassifierCached

- (unint64_t)outputDimension
{
  v3 = +[SGMultiLabelEspressoClassifierCache sharedInstance];
  v4 = [v3 outputDimensionWithFile:self->_espressoModelFile];

  return v4;
}

- (id)predict:(id)a3
{
  v4 = a3;
  v5 = +[SGMultiLabelEspressoClassifierCache sharedInstance];
  v6 = [v5 predict:v4 withFile:self->_espressoModelFile];

  return v6;
}

- (SGMultiLabelEspressoClassifierCached)initWithEspressoModelFile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGMultiLabelEspressoClassifierCached;
  v6 = [(SGMultiLabelEspressoClassifierCached *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_espressoModelFile, a3);
  }

  return v7;
}

+ (id)classifierWithEspressoModelFile:(id)a3
{
  v4 = a3;
  if ([v4 length] && (+[SGMultiLabelEspressoClassifierCache sharedInstance](SGMultiLabelEspressoClassifierCache, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "setCachedEspressoClassifierWithFile:", v4), v5, v6))
  {
    v7 = [[a1 alloc] initWithEspressoModelFile:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end