@interface MIBULoopbackServerClient
+ (_TtC17MobileInBoxUpdate24MIBULoopbackServerClient)sharedInstance;
- (BOOL)startServerWithWebPort:(unsigned __int16)port webRoot:(id)root waitTillDone:(BOOL)done error:(id *)error;
- (_TtC17MobileInBoxUpdate24MIBULoopbackServerClient)init;
@end

@implementation MIBULoopbackServerClient

+ (_TtC17MobileInBoxUpdate24MIBULoopbackServerClient)sharedInstance
{
  if (qword_27F9E3D98 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9E3DA0;

  return v3;
}

- (BOOL)startServerWithWebPort:(unsigned __int16)port webRoot:(id)root waitTillDone:(BOOL)done error:(id *)error
{
  v9 = sub_259AEBF14();
  v11 = v10;
  selfCopy = self;
  sub_259AD78E4(port, v9, v11, done);

  return 1;
}

- (_TtC17MobileInBoxUpdate24MIBULoopbackServerClient)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MIBULoopbackServerClient *)&v3 init];
}

@end