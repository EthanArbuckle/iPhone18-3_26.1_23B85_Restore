@interface NSSArticleViewControllerInternal
- (NSSArticleViewControllerInternal)initWithArticle:(id)a3;
- (NSSArticleViewControllerInternal)initWithNotification:(id)a3;
- (NSSArticleViewControllerInternal)initWithSpotlightIdentifier:(id)a3;
- (void)_tickleArticleView;
- (void)_tickleSpinner;
- (void)presentArticle:(id)a3 completion:(id)a4;
- (void)setArticle:(id)a3;
- (void)setArticleLoading:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NSSArticleViewControllerInternal

- (NSSArticleViewControllerInternal)initWithArticle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NSSArticleViewControllerInternal;
  v5 = [(NSSArticleViewControllerInternal *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(NSSArticleViewControllerInternal *)v5 setArticle:v4];
  }

  return v6;
}

- (NSSArticleViewControllerInternal)initWithNotification:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NSSArticleViewControllerInternal;
  v5 = [(NSSArticleViewControllerInternal *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_articleLoading = v4 != 0;
    objc_initWeak(&location, v5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__NSSArticleViewControllerInternal_initWithNotification___block_invoke;
    v8[3] = &unk_279980D70;
    objc_copyWeak(&v9, &location);
    [NSSArticleInternal articleFromNotification:v4 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __57__NSSArticleViewControllerInternal_initWithNotification___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setArticle:v4];
  }

  [WeakRetained setArticleLoading:0];
}

- (NSSArticleViewControllerInternal)initWithSpotlightIdentifier:(id)a3
{
  v4 = a3;
  if ([NSSArticleInternal coreSpotlightIdentifierRepresentsArticleIdentifier:v4])
  {
    v12.receiver = self;
    v12.super_class = NSSArticleViewControllerInternal;
    v5 = [(NSSArticleViewControllerInternal *)&v12 initWithNibName:0 bundle:0];
    v6 = v5;
    if (v5)
    {
      v5->_articleLoading = v4 != 0;
      objc_initWeak(&location, v5);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__NSSArticleViewControllerInternal_initWithSpotlightIdentifier___block_invoke;
      v9[3] = &unk_279980D70;
      objc_copyWeak(&v10, &location);
      [NSSArticleInternal articleFromCoreSpotlightIdentifier:v4 completion:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __64__NSSArticleViewControllerInternal_initWithSpotlightIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setArticle:v4];
  }

  [WeakRetained setArticleLoading:0];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = NSSArticleViewControllerInternal;
  [(NSSArticleViewControllerInternal *)&v11 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(NSSArticleViewControllerInternal *)self setSpinner:v3];

  v4 = [(NSSArticleViewControllerInternal *)self spinner];
  [v4 setHidesWhenStopped:1];

  v5 = [(NSSArticleViewControllerInternal *)self view];
  v6 = [(NSSArticleViewControllerInternal *)self spinner];
  [v5 addSubview:v6];

  v7 = [NSSArticleView alloc];
  v8 = [(NSSArticleView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NSSArticleViewControllerInternal *)self setArticleView:v8];

  v9 = [(NSSArticleViewControllerInternal *)self view];
  v10 = [(NSSArticleViewControllerInternal *)self articleView];
  [v9 addSubview:v10];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = NSSArticleViewControllerInternal;
  [(NSSArticleViewControllerInternal *)&v13 viewWillLayoutSubviews];
  v3 = [(NSSArticleViewControllerInternal *)self view];
  [v3 bounds];
  MidX = CGRectGetMidX(v14);
  v5 = [(NSSArticleViewControllerInternal *)self view];
  [v5 bounds];
  MidY = CGRectGetMidY(v15);
  v7 = [(NSSArticleViewControllerInternal *)self spinner];
  [v7 setCenter:{MidX, MidY}];

  v8 = [(NSSArticleViewControllerInternal *)self view];
  [v8 bounds];
  Width = CGRectGetWidth(v16);
  v10 = [(NSSArticleViewControllerInternal *)self view];
  [v10 bounds];
  Height = CGRectGetHeight(v17);
  v12 = [(NSSArticleViewControllerInternal *)self articleView];
  [v12 setFrame:{0.0, 0.0, Width, Height}];
}

- (void)setArticleLoading:(BOOL)a3
{
  if (self->_articleLoading != a3)
  {
    self->_articleLoading = a3;
    [(NSSArticleViewControllerInternal *)self _tickleSpinner];
  }
}

- (void)setArticle:(id)a3
{
  v5 = a3;
  if (self->_article != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_article, a3);
    [(NSSArticleViewControllerInternal *)self _tickleArticleView];
    v6 = [(NSSArticleViewControllerInternal *)self articleView];
    [v6 preferredSize];
    v8 = v7;
    v10 = v9;

    [(NSSArticleViewControllerInternal *)self setPreferredContentSize:v8, v10];
    v5 = v11;
  }
}

- (void)presentArticle:(id)a3 completion:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (self->_article != v13)
  {
    objc_storeStrong(&self->_article, a3);
    [(NSSArticleViewControllerInternal *)self _tickleArticleView];
    if (v7)
    {
      v8 = [(NSSArticleViewControllerInternal *)self articleView];
      [v8 preferredSize];
      v10 = v9;
      v12 = v11;

      v7[2](v7, v10, v12);
    }

    [(NSSArticleViewControllerInternal *)self _tickleSpinner];
  }
}

- (void)_tickleSpinner
{
  if ([(NSSArticleViewControllerInternal *)self isViewLoaded])
  {
    v3 = [(NSSArticleViewControllerInternal *)self articleLoading];
    v4 = [(NSSArticleViewControllerInternal *)self spinner];
    v5 = v4;
    if (v3)
    {
      [v4 startAnimating];
    }

    else
    {
      [v4 stopAnimating];
    }
  }
}

- (void)_tickleArticleView
{
  if ([(NSSArticleViewControllerInternal *)self isViewLoaded])
  {
    v3 = [(NSSArticleViewControllerInternal *)self article];
    v4 = [(NSSArticleViewControllerInternal *)self articleView];
    [v4 setArticle:v3];

    v6 = [(NSSArticleViewControllerInternal *)self article];
    v5 = [(NSSArticleViewControllerInternal *)self articleView];
    [v5 setHidden:v6 == 0];
  }
}

@end