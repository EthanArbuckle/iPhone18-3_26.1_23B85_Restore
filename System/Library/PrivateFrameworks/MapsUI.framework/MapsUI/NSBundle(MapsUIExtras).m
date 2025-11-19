@interface NSBundle(MapsUIExtras)
+ (id)_mapsuiBundle;
@end

@implementation NSBundle(MapsUIExtras)

+ (id)_mapsuiBundle
{
  if (_mapsuiBundle_onceToken != -1)
  {
    dispatch_once(&_mapsuiBundle_onceToken, &__block_literal_global_166);
  }

  v1 = _mapsuiBundle_bundle;

  return v1;
}

@end