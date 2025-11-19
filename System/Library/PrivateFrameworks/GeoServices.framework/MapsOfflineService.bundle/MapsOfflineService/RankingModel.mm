@interface RankingModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (RankingModel)init;
- (RankingModel)initWithConfiguration:(id)a3 error:(id *)a4;
- (RankingModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (RankingModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (RankingModel)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromPOPULARITY:(double)a3 DISTANCE:(double)a4 SCORE:(double)a5 NORMALIZED_RATING_SCORE:(double)a6 COUNTRY_CODE:(double)a7 ADDRESS_ACCURACY:(double)a8 ADDRESS_FEATURE_TYPE:(double)a9 NUM_TOKENS_MATCH_QUERY_RESULT:(double)a10 TYPE_OF_QUERY_RESULT_MATCH:(double)a11 IS_CATEGORY_QUERY:(double)a12 CATEGORY_TRIGGER_POPULARITY:(double)a13 JACCARD_SIMILARITY_UNION:(double)a14 JACCARD_SIMILARITY_RESULT:(double)a15 IS_NEGATIVE_CATEGORY:(double)a16 IS_PREFERRED_LANGUAGE:(double)a17 DEVICE_LOCALE:(double)a18 SUBSTRING_SIMILARITY:(double)a19 PREFIX_SIMILARITY:(double)a20 DIST_USER_TO_VIEWPORT:(double)a21 IS_USER_IN_VIEWPORT:(double)a22 IS_DEVICELOCATION_IN_VIEWPORT:(double)a23 DIST_RESULT_TO_VIEWPORT:(double)a24 IS_RESULT_IN_VIEWPORT:(double)a25 TIME_SINCE_VIEWPORT_CHANGED:(double)a26 IS_VIEWPORT_FRESH:(double)a27 CATEGORY_MATCH_NORMALIZED_SCORE:(double)a28 error:(id *)a29;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (RankingModel)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = RankingModel;
    v6 = [(RankingModel *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (RankingModel)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(RankingModel *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (RankingModel)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(RankingModel *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (RankingModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(RankingModel *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RankingModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(RankingModel *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_21B42B4;
  v8[3] = &unk_2729050;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(RankingModel *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(RankingModel *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

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

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RankingModel *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_21B456C;
  v10[3] = &unk_2729078;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(RankingModel *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_21B472C;
  v13[3] = &unk_2729078;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromPOPULARITY:(double)a3 DISTANCE:(double)a4 SCORE:(double)a5 NORMALIZED_RATING_SCORE:(double)a6 COUNTRY_CODE:(double)a7 ADDRESS_ACCURACY:(double)a8 ADDRESS_FEATURE_TYPE:(double)a9 NUM_TOKENS_MATCH_QUERY_RESULT:(double)a10 TYPE_OF_QUERY_RESULT_MATCH:(double)a11 IS_CATEGORY_QUERY:(double)a12 CATEGORY_TRIGGER_POPULARITY:(double)a13 JACCARD_SIMILARITY_UNION:(double)a14 JACCARD_SIMILARITY_RESULT:(double)a15 IS_NEGATIVE_CATEGORY:(double)a16 IS_PREFERRED_LANGUAGE:(double)a17 DEVICE_LOCALE:(double)a18 SUBSTRING_SIMILARITY:(double)a19 PREFIX_SIMILARITY:(double)a20 DIST_USER_TO_VIEWPORT:(double)a21 IS_USER_IN_VIEWPORT:(double)a22 IS_DEVICELOCATION_IN_VIEWPORT:(double)a23 DIST_RESULT_TO_VIEWPORT:(double)a24 IS_RESULT_IN_VIEWPORT:(double)a25 TIME_SINCE_VIEWPORT_CHANGED:(double)a26 IS_VIEWPORT_FRESH:(double)a27 CATEGORY_MATCH_NORMALIZED_SCORE:(double)a28 error:(id *)a29
{
  v31 = [[RankingModelInput alloc] initWithPOPULARITY:a3 DISTANCE:a4 SCORE:a5 NORMALIZED_RATING_SCORE:a6 COUNTRY_CODE:a7 ADDRESS_ACCURACY:a8 ADDRESS_FEATURE_TYPE:a9 NUM_TOKENS_MATCH_QUERY_RESULT:a10 TYPE_OF_QUERY_RESULT_MATCH:*&a11 IS_CATEGORY_QUERY:*&a12 CATEGORY_TRIGGER_POPULARITY:*&a13 JACCARD_SIMILARITY_UNION:*&a14 JACCARD_SIMILARITY_RESULT:*&a15 IS_NEGATIVE_CATEGORY:*&a16 IS_PREFERRED_LANGUAGE:*&a17 DEVICE_LOCALE:*&a18 SUBSTRING_SIMILARITY:*&a19 PREFIX_SIMILARITY:*&a20 DIST_USER_TO_VIEWPORT:*&a21 IS_USER_IN_VIEWPORT:*&a22 IS_DEVICELOCATION_IN_VIEWPORT:*&a23 DIST_RESULT_TO_VIEWPORT:*&a24 IS_RESULT_IN_VIEWPORT:*&a25 TIME_SINCE_VIEWPORT_CHANGED:*&a26 IS_VIEWPORT_FRESH:*&a27 CATEGORY_MATCH_NORMALIZED_SCORE:*&a28];
  v32 = [(RankingModel *)self predictionFromFeatures:v31 error:a29];

  return v32;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(RankingModel *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

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