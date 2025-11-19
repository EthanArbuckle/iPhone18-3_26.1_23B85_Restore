@interface MapsUILocalizationBridge
+ (id)dropPinAtCurrentLocationTitle;
+ (id)removeDroppedPinTitle;
@end

@implementation MapsUILocalizationBridge

+ (id)removeDroppedPinTitle
{
  if (+[MULibraryUIUtilities isMyPlacesEnabled])
  {
    v2 = @"Remove Marked Location [Place Card]";
  }

  else
  {
    v2 = @"Remove Dropped Pin [Place Card]";
  }

  v3 = _MULocalizedStringFromThisBundle(v2);

  return v3;
}

+ (id)dropPinAtCurrentLocationTitle
{
  if (+[MULibraryUIUtilities isMyPlacesEnabled])
  {
    v2 = @"Mark My Location [Place Card]";
  }

  else
  {
    v2 = @"Drop Pin [Place Card]";
  }

  v3 = _MULocalizedStringFromThisBundle(v2);

  return v3;
}

@end