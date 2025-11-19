@interface DOCDocumentSharingController
- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithFileURL:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithFileURL:(id)a3 error:(id *)a4;
- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation DOCDocumentSharingController

- (void)presentationControllerWillDismiss:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = one-time initialization token for associatedObjectStorageKey;
    v8 = a3;
    v9 = self;
    if (v7 != -1)
    {
      swift_once();
    }

    v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v6, static UIPopoverPresentationController.associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v12[0] = 0;
    v12[1] = 0;
    (*((*MEMORY[0x277D85000] & *v10) + 0x80))(v12, KeyPath);
  }
}

- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithFileURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = type metadata accessor for DOCDocumentSharingController();
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(UIDocumentSharingController *)&v15 initWithFileURL:v11];

  (*(v5 + 8))(v8, v4);
  return v13;
}

- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithFileURL:(id)a3 error:(id *)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = type metadata accessor for DOCDocumentSharingController();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(UIDocumentSharingController *)&v17 initWithFileURL:v13 error:a4];

  (*(v7 + 8))(v10, v6);
  return v15;
}

- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = a4;
    v10 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    v11 = a4;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for DOCDocumentSharingController();
  v12 = [(DOCDocumentSharingController *)&v14 initWithNibName:v10 bundle:a4];

  return v12;
}

- (_TtC26DocumentManagerExecutablesP33_7A878E456D60960E69A155B93A04520B28DOCDocumentSharingController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCDocumentSharingController();
  v4 = a3;
  v5 = [(DOCDocumentSharingController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end