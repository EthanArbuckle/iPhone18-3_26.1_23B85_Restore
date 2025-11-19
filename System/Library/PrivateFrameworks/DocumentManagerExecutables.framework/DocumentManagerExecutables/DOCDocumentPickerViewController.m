@interface DOCDocumentPickerViewController
- (DOCDocumentPickerDelegate)pickerDelegate;
- (DOCDocumentPickerViewController)initWithConfiguration:(id)a3 context:(id)a4;
- (DOCDocumentPickerViewController)initWithConfiguration:(id)a3 sourceObserver:(id)a4;
- (DOCDocumentPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (DOCDocumentPickerViewController)initWithStyle:(int64_t)a3;
- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation DOCDocumentPickerViewController

- (DOCDocumentPickerDelegate)pickerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (DOCDocumentPickerViewController)initWithConfiguration:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized DOCDocumentPickerViewController.init(configuration:context:)(v5, a4);

  return v7;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  DOCDocumentPickerViewController.viewDidDisappear(_:)(a3);
}

- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized DOCDocumentPickerViewController.documentBrowser(_:didPickDocumentsAt:)(v6);
}

- (DOCDocumentPickerViewController)initWithConfiguration:(id)a3 sourceObserver:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DOCDocumentPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DOCDocumentPickerViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCDocumentPickerViewController.effectiveAppearanceDidChange(_:)(v4);
}

@end