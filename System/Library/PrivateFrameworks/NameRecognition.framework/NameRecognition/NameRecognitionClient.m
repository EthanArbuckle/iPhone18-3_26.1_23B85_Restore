@interface NameRecognitionClient
+ (_TtC15NameRecognition21NameRecognitionClient)shared;
- (_TtC15NameRecognition21NameRecognitionClient)init;
@end

@implementation NameRecognitionClient

+ (_TtC15NameRecognition21NameRecognitionClient)shared
{
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v3 = qword_27FA1E140;

  return v3;
}

- (_TtC15NameRecognition21NameRecognitionClient)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient_didStartServer) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient__client) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v4 = [(NameRecognitionClient *)&v8 init];
  sub_25AE6E8FC();
  v6 = v5;

  return v4;
}

@end