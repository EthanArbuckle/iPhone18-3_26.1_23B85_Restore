@interface HealthBalanceDiagnosticExtensionProvider
- (_TtC32HealthBalanceDiagnosticExtension40HealthBalanceDiagnosticExtensionProvider)init;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation HealthBalanceDiagnosticExtensionProvider

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_1000051F4();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_100001628(v4);

  if (v6)
  {
    v7.super.isa = sub_1000052A4().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (_TtC32HealthBalanceDiagnosticExtension40HealthBalanceDiagnosticExtensionProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HealthBalanceDiagnosticExtensionProvider *)&v3 init];
}

@end