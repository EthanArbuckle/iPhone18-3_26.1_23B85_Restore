@interface CKDetailsShowMoreContactsCell
+ (Class)cellClass;
@end

@implementation CKDetailsShowMoreContactsCell

+ (Class)cellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];
  v3 = objc_opt_class();

  return v3;
}

@end