@interface CUIKOROccurrenceStateCachedLocation
- (CUIKOROccurrenceStateCachedLocation)initWithGeneratedLocationString:(id)a3 locationImageName:(id)a4 originalOccurrenceLocation:(id)a5 originalOccurrenceLocationWithoutPrediction:(id)a6 originalOccurrenceLocationIsPrediction:(BOOL)a7 originalHasNewTimeProposed:(BOOL)a8 originalConferenceURL:(id)a9;
@end

@implementation CUIKOROccurrenceStateCachedLocation

- (CUIKOROccurrenceStateCachedLocation)initWithGeneratedLocationString:(id)a3 locationImageName:(id)a4 originalOccurrenceLocation:(id)a5 originalOccurrenceLocationWithoutPrediction:(id)a6 originalOccurrenceLocationIsPrediction:(BOOL)a7 originalHasNewTimeProposed:(BOOL)a8 originalConferenceURL:(id)a9
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = CUIKOROccurrenceStateCachedLocation;
  v18 = [(CUIKOROccurrenceStateCachedLocation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_generatedLocationString, a3);
    objc_storeStrong(&v19->_locationImageName, a4);
    objc_storeStrong(&v19->_originalOccurrenceLocation, a5);
    objc_storeStrong(&v19->_originalOccurrenceLocationWithoutPrediction, a6);
    v19->_originalOccurrenceLocationIsPrediction = a7;
    v19->_originalHasNewTimeProposed = a8;
    objc_storeStrong(&v19->_originalConferenceURL, a9);
  }

  return v19;
}

@end