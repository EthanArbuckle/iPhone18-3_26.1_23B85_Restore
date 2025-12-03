@interface MapsSuggestionsTransportModePredictionInput
- (MapsSuggestionsTransportModePredictionInput)initWithTemperature:(double)temperature ChanceOfPrecipitation:(double)precipitation TimeOfDay:(double)day DayOfWeek:(double)week TouristBit:(double)bit DistanceFromOriginToDestination:(double)destination DistanceFromHereToOrigin:(double)origin distanceFromOriginToDestination:(double)self0 DistanceFromHereToHome:(double)self1 DistanceFromHereToWork:(double)self2 DistanceFromHereToParkedCar:(double)self3 UserPreferenceForTransportType_1:(double)self4 UserPreferenceForTransportType_3:(double)self5 UserPreferenceForTransportType_2:(double)self6 MapType_3:(double)self7 MapType_0:(double)self8 MapType_2:(double)self9 MapType_1:(double)mapType_1 MapType_4:(double)type_4;
- (id)featureValueForName:(id)name;
@end

@implementation MapsSuggestionsTransportModePredictionInput

- (MapsSuggestionsTransportModePredictionInput)initWithTemperature:(double)temperature ChanceOfPrecipitation:(double)precipitation TimeOfDay:(double)day DayOfWeek:(double)week TouristBit:(double)bit DistanceFromOriginToDestination:(double)destination DistanceFromHereToOrigin:(double)origin distanceFromOriginToDestination:(double)self0 DistanceFromHereToHome:(double)self1 DistanceFromHereToWork:(double)self2 DistanceFromHereToParkedCar:(double)self3 UserPreferenceForTransportType_1:(double)self4 UserPreferenceForTransportType_3:(double)self5 UserPreferenceForTransportType_2:(double)self6 MapType_3:(double)self7 MapType_0:(double)self8 MapType_2:(double)self9 MapType_1:(double)mapType_1 MapType_4:(double)type_4
{
  v30.receiver = self;
  v30.super_class = MapsSuggestionsTransportModePredictionInput;
  result = [(MapsSuggestionsTransportModePredictionInput *)&v30 init];
  if (result)
  {
    result->_Temperature = temperature;
    result->_ChanceOfPrecipitation = precipitation;
    result->_TimeOfDay = day;
    result->_DayOfWeek = week;
    result->_TouristBit = bit;
    result->_DistanceFromOriginToDestination = destination;
    result->_DistanceFromHereToOrigin = origin;
    result->_distanceFromOriginToDestination = toDestination;
    result->_DistanceFromHereToHome = home;
    result->_DistanceFromHereToWork = work;
    result->_DistanceFromHereToParkedCar = car;
    result->_UserPreferenceForTransportType_1 = type_1;
    result->_UserPreferenceForTransportType_3 = type_3;
    result->_UserPreferenceForTransportType_2 = type_2;
    result->_MapType_3 = mapType_3;
    result->_MapType_0 = type_0;
    result->_MapType_2 = mapType_2;
    result->_MapType_1 = mapType_1;
    result->_MapType_4 = type_4;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Temperature"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self Temperature];
LABEL_36:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_37;
  }

  if ([nameCopy isEqualToString:@"ChanceOfPrecipitation"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self ChanceOfPrecipitation];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"TimeOfDay"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self TimeOfDay];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"DayOfWeek"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DayOfWeek];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"TouristBit"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self TouristBit];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"DistanceFromOriginToDestination"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromOriginToDestination];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"DistanceFromHereToOrigin"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToOrigin];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"distanceFromOriginToDestination"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self distanceFromOriginToDestination];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"DistanceFromHereToHome"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToHome];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"DistanceFromHereToWork"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToWork];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"DistanceFromHereToParkedCar"])
  {
    [(MapsSuggestionsTransportModePredictionInput *)self DistanceFromHereToParkedCar];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"UserPreferenceForTransportType:1"] || objc_msgSend(nameCopy, "isEqualToString:", @"UserPreferenceForTransportType:3") || objc_msgSend(nameCopy, "isEqualToString:", @"UserPreferenceForTransportType:2"))
  {
    [(MapsSuggestionsTransportModePredictionInput *)self UserPreferenceForTransportType];
    goto LABEL_36;
  }

  if ([nameCopy isEqualToString:@"MapType:3"] || objc_msgSend(nameCopy, "isEqualToString:", @"MapType:0") || objc_msgSend(nameCopy, "isEqualToString:", @"MapType:2") || objc_msgSend(nameCopy, "isEqualToString:", @"MapType:1") || objc_msgSend(nameCopy, "isEqualToString:", @"MapType:4"))
  {
    [(MapsSuggestionsTransportModePredictionInput *)self MapType];
    goto LABEL_36;
  }

  v5 = 0;
LABEL_37:

  return v5;
}

@end