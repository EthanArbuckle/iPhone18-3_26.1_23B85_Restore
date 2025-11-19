@interface AEAHandler
+ (BOOL)encryptWithSourceURL:(id)a3 destinationURL:(id)a4;
- (_TtC26DiagnosticExtensionsDaemon10AEAHandler)init;
@end

@implementation AEAHandler

+ (BOOL)encryptWithSourceURL:(id)a3 destinationURL:(id)a4
{
  v4 = sub_248B4B6C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_248B4B6B8();
  sub_248B4B6B8();
  v12 = _s26DiagnosticExtensionsDaemon10AEAHandlerC7encrypt9sourceURL011destinationG0Sb10Foundation0G0V_AItFZ_0(v11, v9);
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  return v12 & 1;
}

- (_TtC26DiagnosticExtensionsDaemon10AEAHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AEAHandler();
  return [(AEAHandler *)&v3 init];
}

@end