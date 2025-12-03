@interface CKContextUIClasses
+ (BOOL)isPDFView:(id)view;
+ (BOOL)isSFSafariView:(id)view;
+ (BOOL)isWKWebView:(id)view;
+ (void)lookupClasses;
@end

@implementation CKContextUIClasses

+ (void)lookupClasses
{
  classWKWebView = objc_lookUpClass("WKWebView");
  classPDFView = objc_lookUpClass("PDFView");
  classSFSafariView = objc_lookUpClass("SFSafariView");
}

+ (BOOL)isWKWebView:(id)view
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

+ (BOOL)isPDFView:(id)view
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

+ (BOOL)isSFSafariView:(id)view
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