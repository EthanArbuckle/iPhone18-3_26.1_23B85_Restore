@interface ICVisualAssetImportController
- (BOOL)isShowing;
- (ICVisualAssetImportController)init;
- (ICVisualAssetImportController)initWithCoder:(id)a3;
- (ICVisualAssetImportController)initWithNote:(id)a3 textView:(id)a4;
- (void)addImageData:(id)a3 typeIdentifier:(id)a4;
- (void)addImageData:(id)a3 typeIdentifier:(id)a4 forceAddToPaper:(BOOL)a5;
- (void)presentVisualAssetCaptureControllerWithDisableAutorotate:(BOOL)a3;
- (void)presentVisualAssetPickerController;
- (void)setIsShowing:(BOOL)a3;
@end

@implementation ICVisualAssetImportController

- (ICVisualAssetImportController)initWithNote:(id)a3 textView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_2151AEB64(v5, v6);

  return v7;
}

- (ICVisualAssetImportController)initWithCoder:(id)a3
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

- (void)setIsShowing:(BOOL)a3
{
  v5 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)presentVisualAssetPickerController
{
  v2 = self;
  VisualAssetImportController.presentVisualAssetPickerController()();
}

- (void)presentVisualAssetCaptureControllerWithDisableAutorotate:(BOOL)a3
{
  v4 = self;
  VisualAssetImportController.presentVisualAssetCaptureController(disableAutorotate:)(a3);
}

- (void)addImageData:(id)a3 typeIdentifier:(id)a4
{
  v6 = sub_2154A1F4C();
  if (a4)
  {
    v7 = sub_2154A1D6C();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = self;
  v10.value._countAndFlagsBits = v7;
  v10.value._object = a4;
  VisualAssetImportController.add(_:typeIdentifier:forceAddToPaper:)(v6, v10, 0);
}

- (void)addImageData:(id)a3 typeIdentifier:(id)a4 forceAddToPaper:(BOOL)a5
{
  v8 = sub_2154A1F4C();
  if (a4)
  {
    v9 = sub_2154A1D6C();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12.value._countAndFlagsBits = v9;
  v12.value._object = a4;
  VisualAssetImportController.add(_:typeIdentifier:forceAddToPaper:)(v8, v12, a5);
}

- (ICVisualAssetImportController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end