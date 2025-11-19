@interface CKOperation
+ (id)cplOperationClassDescription;
- (id)cplOperationClassDescription;
@end

@implementation CKOperation

+ (id)cplOperationClassDescription
{
  swift_getObjCClassMetadata();
  sub_1000BB130(&qword_1002C0D30, &unk_100244FF0);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)cplOperationClassDescription
{
  swift_getObjectType();
  sub_1000BB130(&qword_1002C0D30, &unk_100244FF0);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end