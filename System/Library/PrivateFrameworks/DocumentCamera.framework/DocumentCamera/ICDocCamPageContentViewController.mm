@interface ICDocCamPageContentViewController
- (ICDocCamPageContentViewTapDelegate)tapDelegate;
- (UIImageView)imageView;
- (void)didReceiveMemoryWarning;
- (void)handleSingleTap:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICDocCamPageContentViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ICDocCamPageContentViewController;
  [(ICDocCamPageContentViewController *)&v7 viewDidLoad];
  v3 = [(ICDocCamPageContentViewController *)self image];
  v4 = [(ICDocCamPageContentViewController *)self imageView];
  [v4 setImage:v3];

  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleSingleTap_];
  [v5 setNumberOfTapsRequired:1];
  v6 = [(ICDocCamPageContentViewController *)self view];
  [v6 addGestureRecognizer:v5];
}

- (void)handleSingleTap:(id)a3
{
  v4 = [(ICDocCamPageContentViewController *)self tapDelegate];
  [v4 pageContentViewDidTap:{-[ICDocCamPageContentViewController pageIndex](self, "pageIndex")}];
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