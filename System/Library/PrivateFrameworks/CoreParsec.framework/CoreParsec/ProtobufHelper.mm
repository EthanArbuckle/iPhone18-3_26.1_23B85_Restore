@interface ProtobufHelper
+ (void)processProtobuf:(id)protobuf result:(id)result data:(id)data;
@end

@implementation ProtobufHelper

+ (void)processProtobuf:(id)protobuf result:(id)result data:(id)data
{
  protobufCopy = protobuf;
  swift_unknownObjectRetain();
  dataCopy = data;
  v10 = sub_1B11218CC();
  v12 = v11;

  swift_getObjCClassMetadata();
  swift_getObjectType();
  sub_1B108D438(protobuf, result, v10, v12);
  sub_1B106C204(v10, v12);

  swift_unknownObjectRelease();
}

@end