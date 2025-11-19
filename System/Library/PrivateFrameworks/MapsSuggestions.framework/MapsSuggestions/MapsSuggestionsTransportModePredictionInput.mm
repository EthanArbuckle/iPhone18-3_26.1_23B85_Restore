@interface MapsSuggestionsTransportModePredictionInput
- (MapsSuggestionsTransportModePredictionInput)initWithTemperature:(double)a3 ChanceOfPrecipitation:(double)a4 TimeOfDay:(double)a5 DayOfWeek:(double)a6 TouristBit:(double)a7 DistanceFromOriginToDestination:(double)a8 DistanceFromHereToOrigin:(double)a9 distanceFromOriginToDestination:(double)a10 DistanceFromHereToHome:(double)a11 DistanceFromHereToWork:(double)a12 DistanceFromHereToParkedCar:(double)a13 UserPreferenceForTransportType_1:(double)a14 UserPreferenceForTransportType_3:(double)a15 UserPreferenceForTransportType_2:(double)a16 MapType_3:(double)a17 MapType_0:(double)a18 MapType_2:(double)a19 MapType_1:(double)a20 MapType_4:(double)a21;
- (id)featureValueForName:(id)a3;
@end

@implementation MapsSuggestionsTransportModePredictionInput

- (MapsSuggestionsTransportModePredictionInput)initWithTemperature:(double)a3 ChanceOfPrecipitation:(double)a4 TimeOfDay:(double)a5 DayOfWeek:(double)a6 TouristBit:(double)a7 DistanceFromOriginToDestination:(double)a8 DistanceFromHereToOrigin:(double)a9 distanceFromOriginToDestination:(double)a10 DistanceFromHereToHome:(double)a11 DistanceFromHereToWork:(double)a12 DistanceFromHereToParkedCar:(double)a13 UserPreferenceForTransportType_1:(double)a14 UserPreferenceForTransportType_3:(double)a15 UserPreferenceForTransportType_2:(double)a16 MapType_3:(double)a17 MapType_0:(double)a18 MapType_2:(double)a19 MapType_1:(double)a20 MapType_4:(double)a21
{
  v30.receiver = self;
  v30.super_class = MapsSuggestionsTransportModePredictionInput;
  result = [(MapsSuggestionsTransportModePredictionInput *)&v30 init];
  if (result)
  {
    result->_Temperature = a3;
    result->_ChanceOfPrecipitation = a4;
    result->_TimeOfDay = a5;
    result->_DayOfWeek = a6;
    result->_TouristBit = a7;
    result->_DistanceFromOriginToDestination = a8;
    result->_DistanceFromHereToOrigin = a9;
    result->_distanceFromOriginToDestination = a10;
    result->_DistanceFromHereToHome = a11;
    result->_DistanceFromHereToWork = a12;
    result->_DistanceFromHereToParkedCar = a13;
    result->_UserPreferenceForTransportType_1 = a14;
    result->_UserPreferenceForTransportType_3 = a15;
    result->_UserPreferenceForTransportType_2 = a16;
    result->_MapType_3 = a17;
    result->_MapType_0 = a18;
    result->_MapType_2 = a19;
    result->_MapType_1 = a20;
    result->_MapType_4 = a21;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Temperature"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self Temperature];
LABEL_36:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"ChanceOfPrecipitation"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self ChanceOfPrecipitation];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"TimeOfDay"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self TimeOfDay];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"DayOfWeek"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DayOfWeek];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"TouristBit"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self TouristBit];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"DistanceFromOriginToDestination"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromOriginToDestination];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"DistanceFromHereToOrigin"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToOrigin];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"distanceFromOriginToDestination"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self distanceFromOriginToDestination];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"DistanceFromHereToHome"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToHome];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"DistanceFromHereToWork"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToWork];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"DistanceFromHereToParkedCar"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToParkedCar];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"UserPreferenceForTransportType:1"] || objc_msgSend(v4, "isEqualToString:", @"UserPreferenceForTransportType:3") || objc_msgSend(v4, "isEqualToString:", @"UserPreferenceForTransportType:2"))
  {
    [(MapsSuggestionsTransportModePredictionInput *)self UserPreferenceForTransportType];
    goto LABEL_36;
  }

  if ([v4 isEqualToString:@"MapType:3"] || objc_msgSend(v4, "isEqualToString:", @"MapType:0") || objc_msgSend(v4, "isEqualToString:", @"MapType:2") || objc_msgSend(v4, "isEqualToString:", @"MapType:1") || objc_msgSend(v4, "isEqualToString:", @"MapType:4"))
  {
    [(MapsSuggestionsTransportModePredictionInput *)self MapType];
    goto LABEL_36;
  }

  v5 = 0;
LABEL_37:

  return v5;
}

@end