@interface NTKCFaceDetailPhotoCropViewController
- (NTKCFaceDetailPhotoCropViewController)initWithIndex:(unint64_t)index inPhotosEditor:(id)editor forFace:(id)face timeStyle:(id)style completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation NTKCFaceDetailPhotoCropViewController

- (NTKCFaceDetailPhotoCropViewController)initWithIndex:(unint64_t)index inPhotosEditor:(id)editor forFace:(id)face timeStyle:(id)style completionHandler:(id)handler
{
  handlerCopy = handler;
  styleCopy = style;
  faceCopy = face;
  editorCopy = editor;
  v16 = [[_NTKCFaceDetailPhotoCropViewController alloc] initWithIndex:index inPhotosEditor:editorCopy forFace:faceCopy timeStyle:styleCopy completionHandler:handlerCopy];

  v25.receiver = self;
  v25.super_class = NTKCFaceDetailPhotoCropViewController;
  v17 = [(NTKCNavigationController *)&v25 initWithRootViewController:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_implementationVC, v16);
    v19 = objc_alloc_init(MEMORY[0x277D75788]);
    [v19 configureWithOpaqueBackground];
    navigationBar = [(NTKCFaceDetailPhotoCropViewController *)v18 navigationBar];
    [navigationBar setStandardAppearance:v19];

    navigationBar2 = [(NTKCFaceDetailPhotoCropViewController *)v18 navigationBar];
    [navigationBar2 setScrollEdgeAppearance:v19];

    navigationItem = [(NTKCFaceDetailPhotoCropViewController *)v18 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    navigationBar3 = [(NTKCFaceDetailPhotoCropViewController *)v18 navigationBar];
    [navigationBar3 setPrefersLargeTitles:0];
  }

  return v18;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailPhotoCropViewController;
  [(NTKCFaceDetailPhotoCropViewController *)&v3 viewDidLoad];
  [(NTKCFaceDetailPhotoCropViewController *)self setToolbarHidden:0];
}

uint64_t __53___NTKCFaceDetailPhotoCropViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, double x, double y, double width, double height)
{
  v11 = a2;
  [v11 scale];
  v13 = v12;
  *(*(a1 + 32) + 1008) = v12;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17) && v13 != 0.0)
  {
    CGAffineTransformMakeScale(&v16, 1.0 / v13, 1.0 / v13);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectApplyAffineTransform(v18, &v16);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];

  [*(*(a1 + 32) + 1000) setCenteredView:v14];
  return [*(*(a1 + 32) + 1000) setCropRect:{x, y, width, height}];
}

void __53___NTKCFaceDetailPhotoCropViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    [*(*(a1 + 32) + 1080) originalCropForPhotoAtIndex:*(*(a1 + 32) + 1072)];
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 1080);
    v7 = *(v5 + 1072);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53___NTKCFaceDetailPhotoCropViewController_viewDidLoad__block_invoke_3;
    v8[3] = &unk_27877FE18;
    v9 = *(a1 + 40);
    [v6 imageAndCropForPhotoAtIndex:v7 completion:v8];
  }
}

@end