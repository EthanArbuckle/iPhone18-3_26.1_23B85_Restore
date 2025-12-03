@interface RankingModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (RankingModel)init;
- (RankingModel)initWithConfiguration:(id)configuration error:(id *)error;
- (RankingModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (RankingModel)initWithContentsOfURL:(id)l error:(id *)error;
- (RankingModel)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromPOPULARITY:(double)y DISTANCE:(double)e SCORE:(double)rE NORMALIZED_RATING_SCORE:(double)oRE COUNTRY_CODE:(double)dE ADDRESS_ACCURACY:(double)cY ADDRESS_FEATURE_TYPE:(double)pE NUM_TOKENS_MATCH_QUERY_RESULT:(double)self0 TYPE_OF_QUERY_RESULT_MATCH:(double)self1 IS_CATEGORY_QUERY:(double)self2 CATEGORY_TRIGGER_POPULARITY:(double)self3 JACCARD_SIMILARITY_UNION:(double)self4 JACCARD_SIMILARITY_RESULT:(double)self5 IS_NEGATIVE_CATEGORY:(double)self6 IS_PREFERRED_LANGUAGE:(double)self7 DEVICE_LOCALE:(double)self8 SUBSTRING_SIMILARITY:(double)self9 PREFIX_SIMILARITY:(double)rITY DIST_USER_TO_VIEWPORT:(double)rT IS_USER_IN_VIEWPORT:(double)oRT IS_DEVICELOCATION_IN_VIEWPORT:(double)pORT DIST_RESULT_TO_VIEWPORT:(double)wPORT IS_RESULT_IN_VIEWPORT:(double)eWPORT TIME_SINCE_VIEWPORT_CHANGED:(double)d IS_VIEWPORT_FRESH:(double)sH CATEGORY_MATCH_NORMALIZED_SCORE:(double)cORE error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation RankingModel

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"RankingModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_21B4B0C();
    }

    v4 = 0;
  }

  return v4;
}

- (RankingModel)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = RankingModel;
    v6 = [(RankingModel *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RankingModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(RankingModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (RankingModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(RankingModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (RankingModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(RankingModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RankingModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(RankingModel *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_21B42B4;
  v8[3] = &unk_2729050;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(RankingModel *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(RankingModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [RankingModelOutput alloc];
    v13 = [v11 featureValueForName:@"target"];
    [v13 doubleValue];
    v14 = [(RankingModelOutput *)v12 initWithTarget:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(RankingModel *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_21B456C;
  v10[3] = &unk_2729078;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(RankingModel *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_21B472C;
  v13[3] = &unk_2729078;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromPOPULARITY:(double)y DISTANCE:(double)e SCORE:(double)rE NORMALIZED_RATING_SCORE:(double)oRE COUNTRY_CODE:(double)dE ADDRESS_ACCURACY:(double)cY ADDRESS_FEATURE_TYPE:(double)pE NUM_TOKENS_MATCH_QUERY_RESULT:(double)self0 TYPE_OF_QUERY_RESULT_MATCH:(double)self1 IS_CATEGORY_QUERY:(double)self2 CATEGORY_TRIGGER_POPULARITY:(double)self3 JACCARD_SIMILARITY_UNION:(double)self4 JACCARD_SIMILARITY_RESULT:(double)self5 IS_NEGATIVE_CATEGORY:(double)self6 IS_PREFERRED_LANGUAGE:(double)self7 DEVICE_LOCALE:(double)self8 SUBSTRING_SIMILARITY:(double)self9 PREFIX_SIMILARITY:(double)rITY DIST_USER_TO_VIEWPORT:(double)rT IS_USER_IN_VIEWPORT:(double)oRT IS_DEVICELOCATION_IN_VIEWPORT:(double)pORT DIST_RESULT_TO_VIEWPORT:(double)wPORT IS_RESULT_IN_VIEWPORT:(double)eWPORT TIME_SINCE_VIEWPORT_CHANGED:(double)d IS_VIEWPORT_FRESH:(double)sH CATEGORY_MATCH_NORMALIZED_SCORE:(double)cORE error:(id *)error
{
  v31 = [[RankingModelInput alloc] initWithPOPULARITY:y DISTANCE:e SCORE:rE NORMALIZED_RATING_SCORE:oRE COUNTRY_CODE:dE ADDRESS_ACCURACY:cY ADDRESS_FEATURE_TYPE:pE NUM_TOKENS_MATCH_QUERY_RESULT:t TYPE_OF_QUERY_RESULT_MATCH:*&h IS_CATEGORY_QUERY:*&rY CATEGORY_TRIGGER_POPULARITY:*&tY JACCARD_SIMILARITY_UNION:*&n JACCARD_SIMILARITY_RESULT:*&lT IS_NEGATIVE_CATEGORY:*&oRY IS_PREFERRED_LANGUAGE:*&gE DEVICE_LOCALE:*&lE SUBSTRING_SIMILARITY:*&iTY PREFIX_SIMILARITY:*&rITY DIST_USER_TO_VIEWPORT:*&rT IS_USER_IN_VIEWPORT:*&oRT IS_DEVICELOCATION_IN_VIEWPORT:*&pORT DIST_RESULT_TO_VIEWPORT:*&wPORT IS_RESULT_IN_VIEWPORT:*&eWPORT TIME_SINCE_VIEWPORT_CHANGED:*&d IS_VIEWPORT_FRESH:*&sH CATEGORY_MATCH_NORMALIZED_SCORE:*&cORE];
  v32 = [(RankingModel *)self predictionFromFeatures:v31 error:error];

  return v32;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(RankingModel *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [RankingModelOutput alloc];
        v17 = [v15 featureValueForName:@"target"];
        [v17 doubleValue];
        v18 = [(RankingModelOutput *)v16 initWithTarget:?];

        [v13 addObject:v18];
        ++v14;
      }

      while (v14 < [v12 count]);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end