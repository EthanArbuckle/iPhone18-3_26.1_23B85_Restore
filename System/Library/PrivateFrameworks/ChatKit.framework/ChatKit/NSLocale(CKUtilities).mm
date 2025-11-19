@interface NSLocale(CKUtilities)
+ (id)__ck_currentLocale;
+ (void)__ck_setTestLocale:()CKUtilities;
@end

@implementation NSLocale(CKUtilities)

+ (id)__ck_currentLocale
{
  if (__ck_currentLocale_once != -1)
  {
    +[NSLocale(CKUtilities) __ck_currentLocale];
  }

  if (sTestLocale)
  {
    v1 = sTestLocale;
  }

  else
  {
    v1 = __ck_currentLocale_sLocale;
  }

  return v1;
}

+ (void)__ck_setTestLocale:()CKUtilities
{
  v4 = a3;
  if (sTestLocale != v4)
  {
    v5 = v4;
    objc_storeStrong(&sTestLocale, a3);
    v4 = v5;
  }
}

@end