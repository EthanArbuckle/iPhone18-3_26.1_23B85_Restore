@interface XPCEKSandboxExtensionContainer
- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)init;
- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCEKSandboxExtensionContainer

- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)initWithCoder:(id)a3
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v4, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);
  v5 = a3;
  v6 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v5, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);
  v6 = a3;
  v7 = self;
  sub_20DF47B34();
}

- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end