@interface HomeKitEventsDiagnosticExtension
- (_TtC32HomeKitEventsDiagnosticExtension32HomeKitEventsDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation HomeKitEventsDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_1000047B4();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1000012E8(v4);
  v7 = v6;

  if (v7)
  {
    v8.super.isa = sub_100004804().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

- (_TtC32HomeKitEventsDiagnosticExtension32HomeKitEventsDiagnosticExtension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeKitEventsDiagnosticExtension();
  return [(HomeKitEventsDiagnosticExtension *)&v3 init];
}

@end