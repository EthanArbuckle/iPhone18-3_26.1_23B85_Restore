@interface WBObjectFactory
+ (WrdObject)create:(int)a3;
@end

@implementation WBObjectFactory

+ (WrdObject)create:(int)a3
{
  if (+[WBObjectFactory create:]::once != -1)
  {
    +[WBObjectFactory create:];
  }

  v3 = *(*s_objectFactory + 16);

  return v3();
}

@end