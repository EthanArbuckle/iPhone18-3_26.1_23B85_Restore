@interface LNConfirmationSystemStyle
+ (id)montaraEnablementWithBundleIdentifier:(id)identifier source:(int64_t)source isExplicitRequest:(BOOL)request;
@end

@implementation LNConfirmationSystemStyle

+ (id)montaraEnablementWithBundleIdentifier:(id)identifier source:(int64_t)source isExplicitRequest:(BOOL)request
{
  v7 = sub_19774EF50();
  v9 = static LNConfirmationSystemStyle.montaraEnablement(bundleIdentifier:source:isExplicitRequest:)(v7, v8, source, request);

  return v9;
}

@end