@interface ProtobufHelper
+ (void)processProtobuf:(id)a3 result:(id)a4 data:(id)a5;
@end

@implementation ProtobufHelper

+ (void)processProtobuf:(id)a3 result:(id)a4 data:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = sub_1B11218CC();
  v12 = v11;

  swift_getObjCClassMetadata();
  swift_getObjectType();
  sub_1B108D438(a3, a4, v10, v12);
  sub_1B106C204(v10, v12);

  swift_unknownObjectRelease();
}

@end