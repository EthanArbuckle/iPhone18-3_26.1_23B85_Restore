@interface _NTKCFaceDetailPhotoCropViewController
- (_NTKCFaceDetailPhotoCropViewController)initWithIndex:(unint64_t)index inPhotosEditor:(id)editor forFace:(id)face timeStyle:(id)style completionHandler:(id)handler;
- (void)_cancelPressed;
- (void)_deletePressed;
- (void)dismissWithSaving:(BOOL)saving;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _NTKCFaceDetailPhotoCropViewController

- (_NTKCFaceDetailPhotoCropViewController)initWithIndex:(unint64_t)index inPhotosEditor:(id)editor forFace:(id)face timeStyle:(id)style completionHandler:(id)handler
{
  v33[5] = *MEMORY[0x277D85DE8];
  editorCopy = editor;
  faceCopy = face;
  styleCopy = style;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = _NTKCFaceDetailPhotoCropViewController;
  v16 = [(_NTKCFaceDetailPhotoCropViewController *)&v32 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    [(_NTKCFaceDetailPhotoCropViewController *)v16 setIndex:index];
    [(_NTKCFaceDetailPhotoCropViewController *)v17 setEditor:editorCopy];
    [(_NTKCFaceDetailPhotoCropViewController *)v17 setFace:faceCopy];
    [(_NTKCFaceDetailPhotoCropViewController *)v17 setTimeStyle:styleCopy];
    navigationItem = [(_NTKCFaceDetailPhotoCropViewController *)v17 navigationItem];
    [navigationItem setHidesBackButton:1];

    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:16 target:v17 action:sel__deletePressed];
    deleteButton = v17->_deleteButton;
    v17->_deleteButton = v19;

    [(UIBarButtonItem *)v17->_deleteButton setEnabled:[(NTKCompanionCustomPhotosEditor *)v17->_editor photosCount]> 1];
    v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v17 action:sel__cancelPressed];
    cancelButton = v17->_cancelButton;
    v17->_cancelButton = v21;

    v33[0] = v17->_cancelButton;
    v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v33[1] = v23;
    v33[2] = v17->_deleteButton;
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v33[3] = v24;
    v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v17 action:sel__donePressed];
    v33[4] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
    [(_NTKCFaceDetailPhotoCropViewController *)v17 setToolbarItems:v26];

    v28 = NTKCCustomizationLocalizedString(@"PHOTOS_CROP_TITLE", @"Move and Scale", v27);
    [(_NTKCFaceDetailPhotoCropViewController *)v17 setTitle:v28];

    v29 = _Block_copy(handlerCopy);
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v29;
  }

  return v17;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = _NTKCFaceDetailPhotoCropViewController;
  [(_NTKCFaceDetailPhotoCropViewController *)&v41 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  layer = [MEMORY[0x277CD9F90] layer];
  reverseMask = self->_reverseMask;
  self->_reverseMask = layer;

  v7 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  -[CAShapeLayer setFillColor:](self->_reverseMask, "setFillColor:", [v7 CGColor]);

  view2 = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  layer2 = [view2 layer];
  [layer2 addSublayer:self->_reverseMask];

  v10 = [NTKCCenteringScrollView alloc];
  view3 = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  [view3 bounds];
  v12 = [(NTKCCenteringScrollView *)v10 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v12;

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(NTKCCenteringScrollView *)self->_scrollView setBackgroundColor:systemBackgroundColor2];

  [(NTKCCenteringScrollView *)self->_scrollView setMinimumZoomScale:0.1];
  if ([(NTKCompanionCustomPhotosEditor *)self->_editor canChangeOriginalCropOfPhotoAtIndex:self->_index])
  {
    [(NTKCompanionCustomPhotosEditor *)self->_editor minimumNormalizedCropSizeForPhotoAtIndex:self->_index];
    v16 = 1.0 / v15;
    v18 = 1.0 / v17;
    if (v16 >= v18)
    {
      v16 = v18;
    }

    [(NTKCCenteringScrollView *)self->_scrollView setMaximumZoomRatio:v16];
  }

  else
  {
    [(NTKCCenteringScrollView *)self->_scrollView setMaximumZoomRatio:1.0];
    [(NTKCCenteringScrollView *)self->_scrollView setScrollEnabled:0];
    [(UIBarButtonItem *)self->_cancelButton setEnabled:0];
  }

  view4 = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  [view4 addSubview:self->_scrollView];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53___NTKCFaceDetailPhotoCropViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_27877FDF0;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  editor = self->_editor;
  index = self->_index;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53___NTKCFaceDetailPhotoCropViewController_viewDidLoad__block_invoke_2;
  v38[3] = &unk_27877FE40;
  v38[4] = self;
  v39 = v20;
  v23 = v20;
  [(NTKCompanionCustomPhotosEditor *)editor imageInPhotoLibraryForPhotoAtIndex:index completion:v38];
  layer3 = [MEMORY[0x277CD9F90] layer];
  mask = self->_mask;
  self->_mask = layer3;

  [(CAShapeLayer *)self->_mask setFillRule:*MEMORY[0x277CDA248]];
  v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  -[CAShapeLayer setFillColor:](self->_mask, "setFillColor:", [v26 CGColor]);

  view5 = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  layer4 = [view5 layer];
  [layer4 addSublayer:self->_mask];

  v29 = objc_opt_new();
  timeContainer = self->_timeContainer;
  self->_timeContainer = v29;

  [(UIView *)self->_timeContainer setUserInteractionEnabled:0];
  view6 = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  [view6 addSubview:self->_timeContainer];

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v33 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:0 forDevice:currentDevice];
  time = self->_time;
  self->_time = v33;

  [(NTKDigitalTimeLabel *)self->_time setUsesLegibility:1];
  v35 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
  [(NTKDigitalTimeLabel *)self->_time setTextColor:v35];

  v36 = +[NTKDate faceDate];
  timeFormatter = [(CLKUITimeLabel *)self->_time timeFormatter];
  [timeFormatter setOverrideDate:v36];

  [(NTKDigitalTimeLabel *)self->_time setStyle:self->_timeStyle];
  [(UIView *)self->_timeContainer addSubview:self->_time];
}

- (void)viewDidLayoutSubviews
{
  v55.receiver = self;
  v55.super_class = _NTKCFaceDetailPhotoCropViewController;
  [(_NTKCFaceDetailPhotoCropViewController *)&v55 viewDidLayoutSubviews];
  view = [(_NTKCFaceDetailPhotoCropViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  face = [(_NTKCFaceDetailPhotoCropViewController *)self face];
  device = [face device];
  [device screenBounds];
  v49 = v15;
  v50 = v14;
  v51 = v17;
  v52 = v16;

  face2 = [(_NTKCFaceDetailPhotoCropViewController *)self face];
  device2 = [face2 device];
  [device2 screenCornerRadius];
  v48 = v20;

  v47 = v5;
  [(NTKCCenteringScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
  [(NTKCCenteringScrollView *)self->_scrollView setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  UIRectCenteredIntegralRectScale();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(NTKCCenteringScrollView *)self->_scrollView safeAreaInsets];
  v30 = v29;
  [(NTKCCenteringScrollView *)self->_scrollView safeAreaInsets];
  v32 = v30 - v31;
  v56.origin.x = v22;
  v56.origin.y = v24;
  v56.size.width = v26;
  v56.size.height = v28;
  v57 = CGRectOffset(v56, 0.0, v32);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  [(CAShapeLayer *)self->_mask setFrame:v47, v7, v9, v11];
  v37 = MEMORY[0x277D75208];
  [(CAShapeLayer *)self->_mask bounds];
  v38 = [v37 bezierPathWithRect:?];
  v39 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v48}];
  [v38 appendPath:v39];

  -[CAShapeLayer setPath:](self->_mask, "setPath:", [v38 CGPath]);
  [(CAShapeLayer *)self->_reverseMask setFrame:x, y, width, height];
  v40 = MEMORY[0x277D75208];
  [(CAShapeLayer *)self->_reverseMask bounds];
  v41 = [v40 bezierPathWithRoundedRect:? cornerRadius:?];
  -[CAShapeLayer setPath:](self->_reverseMask, "setPath:", [v41 CGPath]);

  timeContainer = self->_timeContainer;
  v43 = *(MEMORY[0x277CBF2C0] + 16);
  *&v54.a = *MEMORY[0x277CBF2C0];
  *&v54.c = v43;
  *&v54.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)timeContainer setTransform:&v54];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_timeContainer setFrame:0];
  v58.origin.x = v50;
  v58.origin.y = v49;
  v58.size.width = v52;
  v58.size.height = v51;
  v44 = 272.0 / CGRectGetWidth(v58);
  v59.origin.x = v50;
  v59.origin.y = v49;
  v59.size.width = v52;
  v59.size.height = v51;
  v45 = 340.0 / CGRectGetHeight(v59);
  if (v44 >= v45)
  {
    v45 = v44;
  }

  CGAffineTransformMakeScale(&v53, v45, v45);
  v46 = self->_timeContainer;
  v54 = v53;
  [(UIView *)v46 setTransform:&v54];
  [(NTKDigitalTimeLabel *)self->_time setFrameUsingCurrentStyle];
  [(NTKCCenteringScrollView *)self->_scrollView setMinimumDisplaySize:width, height];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _NTKCFaceDetailPhotoCropViewController;
  [(_NTKCFaceDetailPhotoCropViewController *)&v5 viewWillDisappear:disappear];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2]();
  }
}

- (void)_cancelPressed
{
  [(NTKCCenteringScrollView *)self->_scrollView cropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKCompanionCustomPhotosEditor *)self->_editor originalCropForPhotoAtIndex:self->_index];
  v28.origin.x = v11;
  v28.origin.y = v12;
  v28.size.width = v13;
  v28.size.height = v14;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  if (CGRectEqualToRect(v27, v28))
  {
    self->_cancelConfirmed = 1;
  }

  else if (!self->_cancelConfirmed)
  {
    v15 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v16 = MEMORY[0x277D750F8];
    v18 = NTKCCustomizationLocalizedString(@"PHOTOS_CROP_CANCEL", @"Discard Changes", v17);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56___NTKCFaceDetailPhotoCropViewController__cancelPressed__block_invoke;
    v25[3] = &unk_27877E528;
    v25[4] = self;
    v19 = [v16 actionWithTitle:v18 style:0 handler:v25];
    [v15 addAction:v19];

    v20 = MEMORY[0x277D750F8];
    v22 = NTKCCustomizationLocalizedString(@"PHOTOS_CANCEL_BUTTON", @"Cancel", v21);
    v23 = [v20 actionWithTitle:v22 style:1 handler:0];
    [v15 addAction:v23];

    parentViewController = [(_NTKCFaceDetailPhotoCropViewController *)self parentViewController];
    [parentViewController presentViewController:v15 animated:1 completion:0];

    return;
  }

  self->_cancelConfirmed = 0;

  [(_NTKCFaceDetailPhotoCropViewController *)self dismissWithSaving:0];
}

- (void)_deletePressed
{
  if (self->_deleteConfirmed)
  {
    self->_deleteConfirmed = 0;
    [(NTKCompanionCustomPhotosEditor *)self->_editor deletePhotoAtIndex:self->_index];

    [(_NTKCFaceDetailPhotoCropViewController *)self dismissWithSaving:0];
  }

  else
  {
    v4 = NTKCCustomizationLocalizedString(@"PHOTOS_DELETE_CONFIRMATION_SINGULAR", @"Delete Confirmation", v2);
    v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v4 preferredStyle:0];
    v7 = NTKCCustomizationLocalizedString(@"PHOTOS_DELETE_BUTTON_SINGULAR", @"Delete Photos", v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56___NTKCFaceDetailPhotoCropViewController__deletePressed__block_invoke;
    v13[3] = &unk_27877E528;
    v13[4] = self;
    v8 = [MEMORY[0x277D750F8] actionWithTitle:v7 style:2 handler:v13];
    [v5 addAction:v8];

    v9 = MEMORY[0x277D750F8];
    v11 = NTKCCustomizationLocalizedString(@"PHOTOS_CANCEL_BUTTON", @"Cancel", v10);
    v12 = [v9 actionWithTitle:v11 style:1 handler:0];
    [v5 addAction:v12];

    [(_NTKCFaceDetailPhotoCropViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)dismissWithSaving:(BOOL)saving
{
  if (saving)
  {
    [(NTKCCenteringScrollView *)self->_scrollView cropRect];
    if (!CGRectIsEmpty(v14))
    {
      [(NTKCCenteringScrollView *)self->_scrollView cropRect];
      x = v4;
      y = v6;
      width = v8;
      height = v10;
      photoScale = self->_photoScale;
      if (photoScale != 0.0)
      {
        CGAffineTransformMakeScale(&v13, photoScale, self->_photoScale);
        v15.origin.x = x;
        v15.origin.y = y;
        v15.size.width = width;
        v15.size.height = height;
        v16 = CGRectApplyAffineTransform(v15, &v13);
        x = v16.origin.x;
        y = v16.origin.y;
        width = v16.size.width;
        height = v16.size.height;
      }

      [(NTKCompanionCustomPhotosEditor *)self->_editor setOriginalCrop:self->_index forPhotoAtIndex:x, y, width, height];
    }
  }

  [(_NTKCFaceDetailPhotoCropViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end