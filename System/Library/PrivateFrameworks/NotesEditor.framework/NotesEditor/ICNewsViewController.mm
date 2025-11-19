@interface ICNewsViewController
- (ICNewsViewController)initWithURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICNewsViewController

- (ICNewsViewController)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNewsViewController;
  v5 = [(ICNewsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICNewsViewController *)v5 setUrl:v4];
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

  v8 = [(ICNewsViewController *)self newsViewController];
  [v8 setLinkPreviewing:1];

  v9 = [(ICNewsViewController *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(ICNewsViewController *)self newsViewController];
  v19 = [v18 view];
  [v19 setFrame:{v11, v13, v15, v17}];

  v20 = [(ICNewsViewController *)self view];
  v21 = [(ICNewsViewController *)self newsViewController];
  v22 = [v21 view];
  [v20 addSubview:v22];

  v23 = [(ICNewsViewController *)self newsViewController];
  [(ICNewsViewController *)self addChildViewController:v23];
}

@end