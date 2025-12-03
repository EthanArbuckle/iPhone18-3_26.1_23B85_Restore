@interface CUIKOROccurrenceStateCachedLocation
- (CUIKOROccurrenceStateCachedLocation)initWithGeneratedLocationString:(id)string locationImageName:(id)name originalOccurrenceLocation:(id)location originalOccurrenceLocationWithoutPrediction:(id)prediction originalOccurrenceLocationIsPrediction:(BOOL)isPrediction originalHasNewTimeProposed:(BOOL)proposed originalConferenceURL:(id)l;
@end

@implementation CUIKOROccurrenceStateCachedLocation

- (CUIKOROccurrenceStateCachedLocation)initWithGeneratedLocationString:(id)string locationImageName:(id)name originalOccurrenceLocation:(id)location originalOccurrenceLocationWithoutPrediction:(id)prediction originalOccurrenceLocationIsPrediction:(BOOL)isPrediction originalHasNewTimeProposed:(BOOL)proposed originalConferenceURL:(id)l
{
  stringCopy = string;
  nameCopy = name;
  locationCopy = location;
  predictionCopy = prediction;
  lCopy = l;
  v24.receiver = self;
  v24.super_class = CUIKOROccurrenceStateCachedLocation;
  v18 = [(CUIKOROccurrenceStateCachedLocation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_generatedLocationString, string);
    objc_storeStrong(&v19->_locationImageName, name);
    objc_storeStrong(&v19->_originalOccurrenceLocation, location);
    objc_storeStrong(&v19->_originalOccurrenceLocationWithoutPrediction, prediction);
    v19->_originalOccurrenceLocationIsPrediction = isPrediction;
    v19->_originalHasNewTimeProposed = proposed;
    objc_storeStrong(&v19->_originalConferenceURL, l);
  }

  return v19;
}

@end