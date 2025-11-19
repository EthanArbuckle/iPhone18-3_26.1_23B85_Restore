@interface CKContextUIClasses
+ (BOOL)isPDFView:(id)a3;
+ (BOOL)isSFSafariView:(id)a3;
+ (BOOL)isWKWebView:(id)a3;
+ (void)lookupClasses;
@end

@implementation CKContextUIClasses

+ (void)lookupClasses
{
  classWKWebView = objc_lookUpClass("WKWebView");
  classPDFView = objc_lookUpClass("PDFView");
  classSFSafariView = objc_lookUpClass("SFSafariView");
}

+ (BOOL)isWKWebView:(id)a3
{
  if (classWKWebView)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)isPDFView:(id)a3
{
  if (classPDFView)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)isSFSafariView:(id)a3
{
  if (classSFSafariView)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end