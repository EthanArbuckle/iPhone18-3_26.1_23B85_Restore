@interface MBActivityScheduler
+ (_TtC7backupd19MBActivityScheduler)sharedInstance;
- (id)controlWithArguments:(id)a3 error:(id *)a4;
@end

@implementation MBActivityScheduler

+ (_TtC7backupd19MBActivityScheduler)sharedInstance
{
  if (qword_10041DEE0 != -1)
  {
    swift_once();
  }

  v3 = qword_10041EB70;

  return v3;
}

- (id)controlWithArguments:(id)a3 error:(id *)a4
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_10001BEEC(v5);

  sub_1000042B4(&qword_10041EBC8, &qword_1002B96D8);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

@end