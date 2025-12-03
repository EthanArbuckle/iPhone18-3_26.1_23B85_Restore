@interface IMSharedMessageHandwritingSummary
+ (id)previewSummary;
@end

@implementation IMSharedMessageHandwritingSummary

+ (id)previewSummary
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___IMSharedMessageHandwritingSummary;
  v2 = objc_msgSendSuper2(&v4, sel_previewSummary);
  if (![v2 length])
  {
    return [IMSharedUtilitiesFrameworkBundle() localizedStringForKey:@"Handwritten Message" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  }

  return v2;
}

@end