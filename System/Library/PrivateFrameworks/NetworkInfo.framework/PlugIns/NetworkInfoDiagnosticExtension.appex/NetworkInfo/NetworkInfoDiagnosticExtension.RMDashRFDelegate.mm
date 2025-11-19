@interface NetworkInfoDiagnosticExtension.RMDashRFDelegate
- (BOOL)fileManager:(id)a3 shouldRemoveItemAtURL:(id)a4;
- (_TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate)init;
@end

@implementation NetworkInfoDiagnosticExtension.RMDashRFDelegate

- (BOOL)fileManager:(id)a3 shouldRemoveItemAtURL:(id)a4
{
  v5 = sub_10000D02C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CFEC();
  v10 = self;
  sub_10000CFFC();
  v11 = *(&v10->super.isa + OBJC_IVAR____TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate_basePath);
  v12 = *&v10->basePath[OBJC_IVAR____TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate_basePath];

  v16._countAndFlagsBits = v11;
  v16._object = v12;
  v13 = sub_10000D2DC(v16);

  (*(v6 + 8))(v9, v5);
  return v13;
}

- (_TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end