@interface XPCEKSandboxExtensionContainer
- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)init;
- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCEKSandboxExtensionContainer

- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v4, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);
  coderCopy = coder;
  v6 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v5, type metadata accessor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70);
  coderCopy = coder;
  selfCopy = self;
  sub_20DF47B34();
}

- (_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end