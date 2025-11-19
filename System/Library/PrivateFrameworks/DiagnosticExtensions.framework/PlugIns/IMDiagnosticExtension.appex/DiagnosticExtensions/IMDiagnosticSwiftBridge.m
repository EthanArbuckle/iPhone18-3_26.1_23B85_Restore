@interface IMDiagnosticSwiftBridge
+ (id)dictionaryForCodingObject:(id)a3;
- (IMDiagnosticSwiftBridge)init;
@end

@implementation IMDiagnosticSwiftBridge

+ (id)dictionaryForCodingObject:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_10000306C(a3);
  swift_unknownObjectRelease();
  if (v4)
  {
    v5.super.isa = sub_1000033EC().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (IMDiagnosticSwiftBridge)init
{
  v3.receiver = self;
  v3.super_class = IMDiagnosticSwiftBridge;
  return [(IMDiagnosticSwiftBridge *)&v3 init];
}

@end