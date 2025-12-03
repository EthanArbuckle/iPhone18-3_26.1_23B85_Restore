@interface MapsSuggestionsTransportModePredictionOutput
- (MapsSuggestionsTransportModePredictionOutput)initWithActualTransportMode:(id)mode actualTransportModeProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation MapsSuggestionsTransportModePredictionOutput

- (MapsSuggestionsTransportModePredictionOutput)initWithActualTransportMode:(id)mode actualTransportModeProbability:(id)probability
{
  modeCopy = mode;
  probabilityCopy = probability;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsTransportModePredictionOutput;
  v9 = [(MapsSuggestionsTransportModePredictionOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actualTransportMode, mode);
    objc_storeStrong(&v10->_actualTransportModeProbability, probability);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"actualTransportMode"])
  {
    actualTransportMode = [(MapsSuggestionsTransportModePredictionOutput *)self actualTransportMode];
    v6 = [MLFeatureValue featureValueWithString:actualTransportMode];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"actualTransportModeProbability"])
  {
    actualTransportMode = [(MapsSuggestionsTransportModePredictionOutput *)self actualTransportModeProbability];
    v6 = [MLFeatureValue featureValueWithDictionary:actualTransportMode error:0];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end