@interface MUPlaceHeaderETAFormatter
+ (id)etaStringFromSeconds:(unint64_t)a3 isRenderingInFullWidth:(BOOL)a4;
@end

@implementation MUPlaceHeaderETAFormatter

+ (id)etaStringFromSeconds:(unint64_t)a3 isRenderingInFullWidth:(BOOL)a4
{
  v4 = [MEMORY[0x1E696AEC0] _navigation_stringWithSeconds:? andAbbreviationType:?];

  return v4;
}

@end