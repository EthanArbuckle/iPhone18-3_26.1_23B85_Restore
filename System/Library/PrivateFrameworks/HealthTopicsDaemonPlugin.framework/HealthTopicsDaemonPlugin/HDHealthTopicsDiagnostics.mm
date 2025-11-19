@interface HDHealthTopicsDiagnostics
- (HDHealthTopicsDiagnostics)init;
- (id)diagnosticDescription;
@end

@implementation HDHealthTopicsDiagnostics

- (HDHealthTopicsDiagnostics)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v4 = [(HDHealthTopicsDiagnostics *)&v9 init];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 sharedDiagnosticManager];
  [v7 addObject_];

  return v6;
}

- (id)diagnosticDescription
{
  if (swift_weakLoadStrong())
  {
    v3 = self;
    sub_251F5A0A8();
  }

  v4 = sub_251F639B4();

  return v4;
}

@end