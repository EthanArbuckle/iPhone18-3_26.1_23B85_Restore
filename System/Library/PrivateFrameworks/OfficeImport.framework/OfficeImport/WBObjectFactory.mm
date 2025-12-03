@interface WBObjectFactory
+ (WrdObject)create:(int)create;
@end

@implementation WBObjectFactory

+ (WrdObject)create:(int)create
{
  if (+[WBObjectFactory create:]::once != -1)
  {
    +[WBObjectFactory create:];
  }

  v3 = *(*s_objectFactory + 16);

  return v3();
}

@end