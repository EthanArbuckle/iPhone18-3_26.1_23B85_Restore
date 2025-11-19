@interface DIUtilities
+ (void)onQueue:(id)a3 block:(id)a4;
@end

@implementation DIUtilities

+ (void)onQueue:(id)a3 block:(id)a4
{
  v5 = _Block_copy(a4);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v5);
  v7 = a3;
  sub_249DCC7BC(a3, ObjCClassMetadata, v5);
  _Block_release(v5);
}

@end