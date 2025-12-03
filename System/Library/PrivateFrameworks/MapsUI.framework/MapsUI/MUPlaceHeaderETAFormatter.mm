@interface MUPlaceHeaderETAFormatter
+ (id)etaStringFromSeconds:(unint64_t)seconds isRenderingInFullWidth:(BOOL)width;
@end

@implementation MUPlaceHeaderETAFormatter

+ (id)etaStringFromSeconds:(unint64_t)seconds isRenderingInFullWidth:(BOOL)width
{
  v4 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:? andAbbreviationType:?];

  return v4;
}

@end