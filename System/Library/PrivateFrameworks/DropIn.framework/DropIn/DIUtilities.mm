@interface DIUtilities
+ (void)onQueue:(id)queue block:(id)block;
@end

@implementation DIUtilities

+ (void)onQueue:(id)queue block:(id)block
{
  v5 = _Block_copy(block);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v5);
  queueCopy = queue;
  sub_249DCC7BC(queue, ObjCClassMetadata, v5);
  _Block_release(v5);
}

@end