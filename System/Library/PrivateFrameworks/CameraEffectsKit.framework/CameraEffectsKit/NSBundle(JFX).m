@interface NSBundle(JFX)
+ (id)jfxBundle;
@end

@implementation NSBundle(JFX)

+ (id)jfxBundle
{
  if (jfxBundle_onceToken != -1)
  {
    +[NSBundle(JFX) jfxBundle];
  }

  v1 = jfxBundle_jfxBundle;

  return v1;
}

@end