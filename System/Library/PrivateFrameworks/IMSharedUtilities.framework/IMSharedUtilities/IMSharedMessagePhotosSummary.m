@interface IMSharedMessagePhotosSummary
+ (id)previewSummary;
@end

@implementation IMSharedMessagePhotosSummary

+ (id)previewSummary
{
  v2 = IMSharedUtilitiesFrameworkBundle();

  return [v2 localizedStringForKey:@"Photo Message" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
}

@end