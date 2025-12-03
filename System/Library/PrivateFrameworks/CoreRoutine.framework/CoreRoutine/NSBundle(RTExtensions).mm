@interface NSBundle(RTExtensions)
+ (id)_coreroutine_LocalizedStringForKey:()RTExtensions;
+ (uint64_t)_coreroutineBundle;
@end

@implementation NSBundle(RTExtensions)

+ (uint64_t)_coreroutineBundle
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

+ (id)_coreroutine_LocalizedStringForKey:()RTExtensions
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  _coreroutineBundle = [v3 _coreroutineBundle];
  v6 = [_coreroutineBundle localizedStringForKey:v4 value:v4 table:0];

  return v6;
}

@end