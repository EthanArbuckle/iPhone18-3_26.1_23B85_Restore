@interface MapsSuggestionsTransportModePrediction
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (MapsSuggestionsTransportModePrediction)init;
- (MapsSuggestionsTransportModePrediction)initWithConfiguration:(id)a3 error:(id *)a4;
- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MapsSuggestionsTransportModePrediction)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromTemperature:(double)a3 ChanceOfPrecipitation:(double)a4 TimeOfDay:(double)a5 DayOfWeek:(double)a6 TouristBit:(double)a7 DistanceFromOriginToDestination:(double)a8 DistanceFromHereToOrigin:(double)a9 distanceFromOriginToDestination:(double)a10 DistanceFromHereToHome:(double)a11 DistanceFromHereToWork:(double)a12 DistanceFromHereToParkedCar:(double)a13 UserPreferenceForTransportType_1:(double)a14 UserPreferenceForTransportType_3:(double)a15 UserPreferenceForTransportType_2:(double)a16 MapType_3:(double)a17 MapType_0:(double)a18 MapType_2:(double)a19 MapType_1:(double)a20 MapType_4:(double)a21 error:(id *)a22;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation MapsSuggestionsTransportModePrediction

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"MapsSuggestionsTransportModePrediction" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E8B4();
    }

    v4 = 0;
  }

  return v4;
}

- (MapsSuggestionsTransportModePrediction)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MapsSuggestionsTransportModePrediction;
    v6 = [(MapsSuggestionsTransportModePrediction *)&v10 init];
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

- (MapsSuggestionsTransportModePrediction)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(MapsSuggestionsTransportModePrediction *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (MapsSuggestionsTransportModePrediction)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(MapsSuggestionsTransportModePrediction *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(MapsSuggestionsTransportModePrediction *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(MapsSuggestionsTransportModePrediction *)self initWithMLModel:v6];
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
  v8[2] = sub_100041908;
  v8[3] = &unk_100076898;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(MapsSuggestionsTransportModePrediction *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MapsSuggestionsTransportModePrediction *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [MapsSuggestionsTransportModePredictionOutput alloc];
    v13 = [v11 featureValueForName:@"actualTransportMode"];
    v14 = [v13 stringValue];
    v15 = [v11 featureValueForName:@"actualTransportModeProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(MapsSuggestionsTransportModePredictionOutput *)v12 initWithActualTransportMode:v14 actualTransportModeProbability:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MapsSuggestionsTransportModePrediction *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100041C08;
  v10[3] = &unk_1000768C0;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MapsSuggestionsTransportModePrediction *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041E18;
  v13[3] = &unk_1000768C0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromTemperature:(double)a3 ChanceOfPrecipitation:(double)a4 TimeOfDay:(double)a5 DayOfWeek:(double)a6 TouristBit:(double)a7 DistanceFromOriginToDestination:(double)a8 DistanceFromHereToOrigin:(double)a9 distanceFromOriginToDestination:(double)a10 DistanceFromHereToHome:(double)a11 DistanceFromHereToWork:(double)a12 DistanceFromHereToParkedCar:(double)a13 UserPreferenceForTransportType_1:(double)a14 UserPreferenceForTransportType_3:(double)a15 UserPreferenceForTransportType_2:(double)a16 MapType_3:(double)a17 MapType_0:(double)a18 MapType_2:(double)a19 MapType_1:(double)a20 MapType_4:(double)a21 error:(id *)a22
{
  v24 = [[MapsSuggestionsTransportModePredictionInput alloc] initWithTemperature:a3 ChanceOfPrecipitation:a4 TimeOfDay:a5 DayOfWeek:a6 TouristBit:a7 DistanceFromOriginToDestination:a8 DistanceFromHereToOrigin:a9 distanceFromOriginToDestination:a10 DistanceFromHereToHome:*&a11 DistanceFromHereToWork:*&a12 DistanceFromHereToParkedCar:*&a13 UserPreferenceForTransportType_1:*&a14 UserPreferenceForTransportType_3:*&a15 UserPreferenceForTransportType_2:*&a16 MapType_3:*&a17 MapType_0:*&a18 MapType_2:*&a19 MapType_1:*&a20 MapType_4:*&a21];
  v25 = [(MapsSuggestionsTransportModePrediction *)self predictionFromFeatures:v24 error:a22];

  return v25;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(MapsSuggestionsTransportModePrediction *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = v9;
      v25 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [MapsSuggestionsTransportModePredictionOutput alloc];
        v17 = [v15 featureValueForName:@"actualTransportMode"];
        v18 = [v17 stringValue];
        v19 = [v15 featureValueForName:@"actualTransportModeProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(MapsSuggestionsTransportModePredictionOutput *)v16 initWithActualTransportMode:v18 actualTransportModeProbability:v20];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v24;
      v8 = v25;
      v10 = v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end