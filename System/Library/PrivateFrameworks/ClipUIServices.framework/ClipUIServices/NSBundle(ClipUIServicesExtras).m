@interface NSBundle(ClipUIServicesExtras)
+ (id)cps_clipUIServicesBundle;
@end

@implementation NSBundle(ClipUIServicesExtras)

+ (id)cps_clipUIServicesBundle
{
  if (cps_clipUIServicesBundle_onceToken != -1)
  {
    +[NSBundle(ClipUIServicesExtras) cps_clipUIServicesBundle];
  }

  v1 = cps_clipUIServicesBundle_bundle;

  return v1;
}

@end