@interface MapsSuggestionsTransportModePrediction
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (MapsSuggestionsTransportModePrediction)init;
- (MapsSuggestionsTransportModePrediction)initWithConfiguration:(id)configuration error:(id *)error;
- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)l error:(id *)error;
- (MapsSuggestionsTransportModePrediction)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromTemperature:(double)temperature ChanceOfPrecipitation:(double)precipitation TimeOfDay:(double)day DayOfWeek:(double)week TouristBit:(double)bit DistanceFromOriginToDestination:(double)destination DistanceFromHereToOrigin:(double)origin distanceFromOriginToDestination:(double)self0 DistanceFromHereToHome:(double)self1 DistanceFromHereToWork:(double)self2 DistanceFromHereToParkedCar:(double)self3 UserPreferenceForTransportType_1:(double)self4 UserPreferenceForTransportType_3:(double)self5 UserPreferenceForTransportType_2:(double)self6 MapType_3:(double)self7 MapType_0:(double)self8 MapType_2:(double)self9 MapType_1:(double)mapType_1 MapType_4:(double)type_4 error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
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

- (MapsSuggestionsTransportModePrediction)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = MapsSuggestionsTransportModePrediction;
    v6 = [(MapsSuggestionsTransportModePrediction *)&v10 init];
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

- (MapsSuggestionsTransportModePrediction)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(MapsSuggestionsTransportModePrediction *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (MapsSuggestionsTransportModePrediction)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(MapsSuggestionsTransportModePrediction *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(MapsSuggestionsTransportModePrediction *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MapsSuggestionsTransportModePrediction)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(MapsSuggestionsTransportModePrediction *)self initWithMLModel:v6];
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
  v8[2] = sub_100041908;
  v8[3] = &unk_100076898;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(MapsSuggestionsTransportModePrediction *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(MapsSuggestionsTransportModePrediction *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [MapsSuggestionsTransportModePredictionOutput alloc];
    v13 = [v11 featureValueForName:@"actualTransportMode"];
    stringValue = [v13 stringValue];
    v15 = [v11 featureValueForName:@"actualTransportModeProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(MapsSuggestionsTransportModePredictionOutput *)v12 initWithActualTransportMode:stringValue actualTransportModeProbability:dictionaryValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(MapsSuggestionsTransportModePrediction *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100041C08;
  v10[3] = &unk_1000768C0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(MapsSuggestionsTransportModePrediction *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041E18;
  v13[3] = &unk_1000768C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromTemperature:(double)temperature ChanceOfPrecipitation:(double)precipitation TimeOfDay:(double)day DayOfWeek:(double)week TouristBit:(double)bit DistanceFromOriginToDestination:(double)destination DistanceFromHereToOrigin:(double)origin distanceFromOriginToDestination:(double)self0 DistanceFromHereToHome:(double)self1 DistanceFromHereToWork:(double)self2 DistanceFromHereToParkedCar:(double)self3 UserPreferenceForTransportType_1:(double)self4 UserPreferenceForTransportType_3:(double)self5 UserPreferenceForTransportType_2:(double)self6 MapType_3:(double)self7 MapType_0:(double)self8 MapType_2:(double)self9 MapType_1:(double)mapType_1 MapType_4:(double)type_4 error:(id *)error
{
  v24 = [[MapsSuggestionsTransportModePredictionInput alloc] initWithTemperature:temperature ChanceOfPrecipitation:precipitation TimeOfDay:day DayOfWeek:week TouristBit:bit DistanceFromOriginToDestination:destination DistanceFromHereToOrigin:origin distanceFromOriginToDestination:toDestination DistanceFromHereToHome:*&home DistanceFromHereToWork:*&work DistanceFromHereToParkedCar:*&car UserPreferenceForTransportType_1:*&type_1 UserPreferenceForTransportType_3:*&type_3 UserPreferenceForTransportType_2:*&type_2 MapType_3:*&mapType_3 MapType_0:*&type_0 MapType_2:*&mapType_2 MapType_1:*&mapType_1 MapType_4:*&type_4];
  v25 = [(MapsSuggestionsTransportModePrediction *)self predictionFromFeatures:v24 error:error];

  return v25;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(MapsSuggestionsTransportModePrediction *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [MapsSuggestionsTransportModePredictionOutput alloc];
        v17 = [v15 featureValueForName:@"actualTransportMode"];
        stringValue = [v17 stringValue];
        v19 = [v15 featureValueForName:@"actualTransportModeProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(MapsSuggestionsTransportModePredictionOutput *)v16 initWithActualTransportMode:stringValue actualTransportModeProbability:dictionaryValue];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
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