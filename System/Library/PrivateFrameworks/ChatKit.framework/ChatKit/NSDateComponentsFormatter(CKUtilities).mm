@interface NSDateComponentsFormatter(CKUtilities)
+ (id)__ck_durationFormatter;
@end

@implementation NSDateComponentsFormatter(CKUtilities)

+ (id)__ck_durationFormatter
{
  v0 = objc_opt_new();
  [v0 setUnitsStyle:0];
  [v0 setZeroFormattingBehavior:0x10000];

  return v0;
}

@end