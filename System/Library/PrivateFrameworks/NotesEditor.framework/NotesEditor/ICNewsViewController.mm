@interface ICNewsViewController
- (ICNewsViewController)initWithURL:(id)l;
- (void)viewDidLoad;
@end

@implementation ICNewsViewController

- (ICNewsViewController)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ICNewsViewController;
  v5 = [(ICNewsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICNewsViewController *)v5 setUrl:lCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = ICNewsViewController;
  [(ICNewsViewController *)&v24 viewDidLoad];
  gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(v3);
  v5 = objc_alloc(*(v4 + 3096));
  v6 = [(ICNewsViewController *)self url];
  v7 = [v5 initWithURL:v6];
  [(ICNewsViewController *)self setNewsViewController:v7];

  newsViewController = [(ICNewsViewController *)self newsViewController];
  [newsViewController setLinkPreviewing:1];

  view = [(ICNewsViewController *)self view];
  [view bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  newsViewController2 = [(ICNewsViewController *)self newsViewController];
  view2 = [newsViewController2 view];
  [view2 setFrame:{v11, v13, v15, v17}];

  view3 = [(ICNewsViewController *)self view];
  newsViewController3 = [(ICNewsViewController *)self newsViewController];
  view4 = [newsViewController3 view];
  [view3 addSubview:view4];

  newsViewController4 = [(ICNewsViewController *)self newsViewController];
  [(ICNewsViewController *)self addChildViewController:newsViewController4];
}

@end