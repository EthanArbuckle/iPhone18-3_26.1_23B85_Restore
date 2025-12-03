@interface IMSharedMessageDTSummary
+ (id)previewSummary;
@end

@implementation IMSharedMessageDTSummary

+ (id)previewSummary
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___IMSharedMessageDTSummary;
  v2 = objc_msgSendSuper2(&v4, sel_previewSummary);
  if (![v2 length])
  {
    return [IMSharedUtilitiesFrameworkBundle() localizedStringForKey:@"Digital Touch Message" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  }

  return v2;
}

@end