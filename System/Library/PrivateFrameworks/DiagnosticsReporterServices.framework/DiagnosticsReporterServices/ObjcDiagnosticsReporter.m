@interface ObjcDiagnosticsReporter
+ (void)initAlertDelegate;
+ (void)launchAppWith:(int64_t)a3 options:(id)a4 completion:(id)a5;
- (ObjcDiagnosticsReporter)init;
@end

@implementation ObjcDiagnosticsReporter

+ (void)launchAppWith:(int64_t)a3 options:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  v9 = a4;
  sub_21DD70CD4(a3, v9, ObjCClassMetadata, v7);
  _Block_release(v7);
  _Block_release(v7);
}

+ (void)initAlertDelegate
{
  if (qword_281221B08 != -1)
  {
    swift_once();
  }
}

- (ObjcDiagnosticsReporter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiagnosticsReporter();
  return [(ObjcDiagnosticsReporter *)&v3 init];
}

@end