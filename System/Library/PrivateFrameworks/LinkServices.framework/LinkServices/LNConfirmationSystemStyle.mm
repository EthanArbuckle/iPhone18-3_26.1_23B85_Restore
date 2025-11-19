@interface LNConfirmationSystemStyle
+ (id)montaraEnablementWithBundleIdentifier:(id)a3 source:(int64_t)a4 isExplicitRequest:(BOOL)a5;
@end

@implementation LNConfirmationSystemStyle

+ (id)montaraEnablementWithBundleIdentifier:(id)a3 source:(int64_t)a4 isExplicitRequest:(BOOL)a5
{
  v7 = sub_19774EF50();
  v9 = static LNConfirmationSystemStyle.montaraEnablement(bundleIdentifier:source:isExplicitRequest:)(v7, v8, a4, a5);

  return v9;
}

@end