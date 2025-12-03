@interface DOCDocumentPickerViewController
- (DOCDocumentPickerDelegate)pickerDelegate;
- (DOCDocumentPickerViewController)initWithConfiguration:(id)configuration context:(id)context;
- (DOCDocumentPickerViewController)initWithConfiguration:(id)configuration sourceObserver:(id)observer;
- (DOCDocumentPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (DOCDocumentPickerViewController)initWithStyle:(int64_t)style;
- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation DOCDocumentPickerViewController

- (DOCDocumentPickerDelegate)pickerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (DOCDocumentPickerViewController)initWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v7 = specialized DOCDocumentPickerViewController.init(configuration:context:)(configurationCopy, context);

  return v7;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCDocumentPickerViewController.viewDidDisappear(_:)(disappear);
}

- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  specialized DOCDocumentPickerViewController.documentBrowser(_:didPickDocumentsAt:)(v6);
}

- (DOCDocumentPickerViewController)initWithConfiguration:(id)configuration sourceObserver:(id)observer
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DOCDocumentPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DOCDocumentPickerViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)effectiveAppearanceDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCDocumentPickerViewController.effectiveAppearanceDidChange(_:)(changeCopy);
}

@end