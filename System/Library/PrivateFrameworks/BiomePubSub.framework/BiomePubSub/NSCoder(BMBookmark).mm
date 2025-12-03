@interface NSCoder(BMBookmark)
+ (id)bm_allowedClassesForSecureCodingBMBookmark;
+ (void)bm_allowClassesForSecureCodingBMBookmark:()BMBookmark;
@end

@implementation NSCoder(BMBookmark)

+ (id)bm_allowedClassesForSecureCodingBMBookmark
{
  v0 = +[BMBookmarkClasses sharedInstance];
  allowedClassesForSecureCodingBMBookmark = [v0 allowedClassesForSecureCodingBMBookmark];

  return allowedClassesForSecureCodingBMBookmark;
}

+ (void)bm_allowClassesForSecureCodingBMBookmark:()BMBookmark
{
  v3 = a3;
  v4 = +[BMBookmarkClasses sharedInstance];
  [v4 allowClassesForSecureCodingBMBookmark:v3];
}

@end