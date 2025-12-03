@interface ICDocCamPageContentViewController
- (ICDocCamPageContentViewTapDelegate)tapDelegate;
- (UIImageView)imageView;
- (void)didReceiveMemoryWarning;
- (void)handleSingleTap:(id)tap;
- (void)viewDidLoad;
@end

@implementation ICDocCamPageContentViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ICDocCamPageContentViewController;
  [(ICDocCamPageContentViewController *)&v7 viewDidLoad];
  image = [(ICDocCamPageContentViewController *)self image];
  imageView = [(ICDocCamPageContentViewController *)self imageView];
  [imageView setImage:image];

  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleSingleTap_];
  [v5 setNumberOfTapsRequired:1];
  view = [(ICDocCamPageContentViewController *)self view];
  [view addGestureRecognizer:v5];
}

- (void)handleSingleTap:(id)tap
{
  tapDelegate = [(ICDocCamPageContentViewController *)self tapDelegate];
  [tapDelegate pageContentViewDidTap:{-[ICDocCamPageContentViewController pageIndex](self, "pageIndex")}];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = ICDocCamPageContentViewController;
  [(ICDocCamPageContentViewController *)&v2 didReceiveMemoryWarning];
}

- (ICDocCamPageContentViewTapDelegate)tapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tapDelegate);

  return WeakRetained;
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

@end