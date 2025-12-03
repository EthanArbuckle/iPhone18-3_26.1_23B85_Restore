@interface CompatibilityBridge
+ (BOOL)WriteJetsamMemoryReportWithVisibilityEndowmentSet:(id)set audioAssertionSet:(id)assertionSet;
- (_TtC15CoreDiagnostics19CompatibilityBridge)init;
@end

@implementation CompatibilityBridge

+ (BOOL)WriteJetsamMemoryReportWithVisibilityEndowmentSet:(id)set audioAssertionSet:(id)assertionSet
{
  setCopy = set;
  if (set)
  {
    sub_1D97FBFCC();
    sub_1D97FC078();
    setCopy = sub_1D984A0A4();
  }

  if (assertionSet)
  {
    sub_1D97FBFCC();
    sub_1D97FC078();
    assertionSet = sub_1D984A0A4();
  }

  v6 = _s15CoreDiagnostics19CompatibilityBridgeC23WriteJetsamMemoryReport22visibilityEndowmentSet014audioAssertionK0SbShySo8NSNumberCGSg_AJtFZ_0(setCopy, assertionSet);

  return v6 & 1;
}

- (_TtC15CoreDiagnostics19CompatibilityBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CompatibilityBridge();
  return [(CompatibilityBridge *)&v3 init];
}

@end