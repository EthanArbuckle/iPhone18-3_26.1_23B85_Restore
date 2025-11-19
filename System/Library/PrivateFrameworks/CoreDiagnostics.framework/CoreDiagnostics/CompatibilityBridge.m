@interface CompatibilityBridge
+ (BOOL)WriteJetsamMemoryReportWithVisibilityEndowmentSet:(id)a3 audioAssertionSet:(id)a4;
- (_TtC15CoreDiagnostics19CompatibilityBridge)init;
@end

@implementation CompatibilityBridge

+ (BOOL)WriteJetsamMemoryReportWithVisibilityEndowmentSet:(id)a3 audioAssertionSet:(id)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1D97FBFCC();
    sub_1D97FC078();
    v5 = sub_1D984A0A4();
  }

  if (a4)
  {
    sub_1D97FBFCC();
    sub_1D97FC078();
    a4 = sub_1D984A0A4();
  }

  v6 = _s15CoreDiagnostics19CompatibilityBridgeC23WriteJetsamMemoryReport22visibilityEndowmentSet014audioAssertionK0SbShySo8NSNumberCGSg_AJtFZ_0(v5, a4);

  return v6 & 1;
}

- (_TtC15CoreDiagnostics19CompatibilityBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CompatibilityBridge();
  return [(CompatibilityBridge *)&v3 init];
}

@end