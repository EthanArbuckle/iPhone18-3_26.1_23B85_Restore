@interface BugCapture
+ (void)reportBugWithType:(id)a3 subType:(id)a4 name:(id)a5 value:(id)a6;
- (_TtC11MobileTimer10BugCapture)init;
@end

@implementation BugCapture

+ (void)reportBugWithType:(id)a3 subType:(id)a4 name:(id)a5 value:(id)a6
{
  v6 = sub_1B20A9A74();
  v8 = v7;
  v9 = sub_1B20A9A74();
  v11 = v10;
  v12 = sub_1B20A9A74();
  v14 = v13;
  v15 = sub_1B20A9A74();
  _s11MobileTimer10BugCaptureC06reportC04type7subType4name5valueySS_S3StFZ_0(v6, v8, v9, v11, v12, v14, v15, v16);
}

- (_TtC11MobileTimer10BugCapture)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BugCapture *)&v3 init];
}

@end