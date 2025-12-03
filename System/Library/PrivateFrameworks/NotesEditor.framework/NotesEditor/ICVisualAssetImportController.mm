@interface ICVisualAssetImportController
- (BOOL)isShowing;
- (ICVisualAssetImportController)init;
- (ICVisualAssetImportController)initWithCoder:(id)coder;
- (ICVisualAssetImportController)initWithNote:(id)note textView:(id)view;
- (void)addImageData:(id)data typeIdentifier:(id)identifier;
- (void)addImageData:(id)data typeIdentifier:(id)identifier forceAddToPaper:(BOOL)paper;
- (void)presentVisualAssetCaptureControllerWithDisableAutorotate:(BOOL)autorotate;
- (void)presentVisualAssetPickerController;
- (void)setIsShowing:(BOOL)showing;
@end

@implementation ICVisualAssetImportController

- (ICVisualAssetImportController)initWithNote:(id)note textView:(id)view
{
  noteCopy = note;
  viewCopy = view;
  v7 = sub_2151AEB64(noteCopy, viewCopy);

  return v7;
}

- (ICVisualAssetImportController)initWithCoder:(id)coder
{
  *(&self->super.isa + OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController) = 0;
  *(&self->super.isa + OBJC_IVAR___ICVisualAssetImportController_captureController) = 0;
  *(&self->super.isa + OBJC_IVAR___ICVisualAssetImportController_doNotAdvanceInsertionPointAfterInsertingAttachment) = 0;
  *(&self->super.isa + OBJC_IVAR___ICVisualAssetImportController_isShowing) = 0;
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (BOOL)isShowing
{
  v3 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsShowing:(BOOL)showing
{
  v5 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  *(&self->super.isa + v5) = showing;
}

- (void)presentVisualAssetPickerController
{
  selfCopy = self;
  VisualAssetImportController.presentVisualAssetPickerController()();
}

- (void)presentVisualAssetCaptureControllerWithDisableAutorotate:(BOOL)autorotate
{
  selfCopy = self;
  VisualAssetImportController.presentVisualAssetCaptureController(disableAutorotate:)(autorotate);
}

- (void)addImageData:(id)data typeIdentifier:(id)identifier
{
  v6 = sub_2154A1F4C();
  if (identifier)
  {
    v7 = sub_2154A1D6C();
    identifier = v8;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  v10.value._countAndFlagsBits = v7;
  v10.value._object = identifier;
  VisualAssetImportController.add(_:typeIdentifier:forceAddToPaper:)(v6, v10, 0);
}

- (void)addImageData:(id)data typeIdentifier:(id)identifier forceAddToPaper:(BOOL)paper
{
  v8 = sub_2154A1F4C();
  if (identifier)
  {
    v9 = sub_2154A1D6C();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12.value._countAndFlagsBits = v9;
  v12.value._object = identifier;
  VisualAssetImportController.add(_:typeIdentifier:forceAddToPaper:)(v8, v12, paper);
}

- (ICVisualAssetImportController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end