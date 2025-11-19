@interface BugCapture
+ (void)reportBugWithDomain:(id)a3 type:(id)a4 subType:(id)a5 name:(id)a6 value:(id)a7;
- (_TtC18ContactsFoundation10BugCapture)init;
@end

@implementation BugCapture

+ (void)reportBugWithDomain:(id)a3 type:(id)a4 subType:(id)a5 name:(id)a6 value:(id)a7
{
  v21 = sub_185A7E914();
  v8 = v7;
  v9 = sub_185A7E914();
  v11 = v10;
  v12 = sub_185A7E914();
  v14 = v13;
  v15 = sub_185A7E914();
  v17 = v16;
  v18 = sub_185A7E914();
  v20 = v19;
  swift_getObjCClassMetadata();
  static BugCapture.reportBug(domain:type:subType:name:value:)(v21, v8, v9, v11, v12, v14, v15, v17, v18, v20);
}

- (_TtC18ContactsFoundation10BugCapture)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BugCapture *)&v3 init];
}

@end