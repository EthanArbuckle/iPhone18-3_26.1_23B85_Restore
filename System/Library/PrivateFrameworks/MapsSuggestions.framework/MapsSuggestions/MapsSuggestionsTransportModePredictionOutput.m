@interface MapsSuggestionsTransportModePredictionOutput
- (MapsSuggestionsTransportModePredictionOutput)initWithActualTransportMode:(id)a3 actualTransportModeProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation MapsSuggestionsTransportModePredictionOutput

- (MapsSuggestionsTransportModePredictionOutput)initWithActualTransportMode:(id)a3 actualTransportModeProbability:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsTransportModePredictionOutput;
  v9 = [(MapsSuggestionsTransportModePredictionOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actualTransportMode, a3);
    objc_storeStrong(&v10->_actualTransportModeProbability, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"actualTransportMode"])
  {
    v5 = [(MapsSuggestionsTransportModePredictionOutput *)self actualTransportMode];
    v6 = [MLFeatureValue featureValueWithString:v5];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"actualTransportModeProbability"])
  {
    v5 = [(MapsSuggestionsTransportModePredictionOutput *)self actualTransportModeProbability];
    v6 = [MLFeatureValue featureValueWithDictionary:v5 error:0];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end