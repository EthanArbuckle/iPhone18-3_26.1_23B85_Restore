@interface GKNoContentView
- (GKNoContentView)initWithFrame:(CGRect)frame;
- (void)setLoading:(BOOL)loading;
@end

@implementation GKNoContentView

- (GKNoContentView)initWithFrame:(CGRect)frame
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = GKNoContentView;
  v3 = [(GKNoContentView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [GKUIContentUnavailableView alloc];
    v5 = [(_UIContentUnavailableView *)v4 initWithFrame:0 title:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    contentUnavailableView = v3->_contentUnavailableView;
    v3->_contentUnavailableView = v5;

    objc_initWeak(&location, v3);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __33__GKNoContentView_initWithFrame___block_invoke;
    v27[3] = &unk_279669FE0;
    objc_copyWeak(&v28, &location);
    [(_UIContentUnavailableView *)v3->_contentUnavailableView setButtonAction:v27];
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:0];
    loadingIndicatorView = v3->_loadingIndicatorView;
    v3->_loadingIndicatorView = v7;

    v9 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v3->_stackView;
    v3->_stackView = v9;

    [(UIStackView *)v3->_stackView setAlignment:0];
    [(UIStackView *)v3->_stackView setAxis:1];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIActivityIndicatorView *)v3->_loadingIndicatorView setColor:secondaryLabelColor];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_loadingIndicatorView];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_contentUnavailableView];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKNoContentView *)v3 addSubview:v3->_stackView];
    centerXAnchor = [(UIStackView *)v3->_stackView centerXAnchor];
    centerXAnchor2 = [(GKNoContentView *)v3 centerXAnchor];
    v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31[0] = v24;
    centerYAnchor = [(UIStackView *)v3->_stackView centerYAnchor];
    centerYAnchor2 = [(GKNoContentView *)v3 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[1] = v12;
    widthAnchor = [(UIStackView *)v3->_stackView widthAnchor];
    widthAnchor2 = [(GKNoContentView *)v3 widthAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v31[2] = v15;
    widthAnchor3 = [(GKUIContentUnavailableView *)v3->_contentUnavailableView widthAnchor];
    stackView = [(GKNoContentView *)v3 stackView];
    widthAnchor4 = [stackView widthAnchor];
    v19 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v31[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

    [(GKNoContentView *)v3 addConstraints:v20];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __33__GKNoContentView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained buttonAction];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 buttonAction];
      (v3)[2](v3, v4);

      WeakRetained = v4;
    }
  }
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    loadingCopy = loading;
    self->_loading = loading;
    loadingIndicatorView = [(GKNoContentView *)self loadingIndicatorView];
    v7 = loadingIndicatorView;
    if (loadingCopy)
    {
      [loadingIndicatorView startAnimating];
    }

    else
    {
      [loadingIndicatorView stopAnimating];
    }

    stackView = [(GKNoContentView *)self stackView];
    [stackView layoutIfNeeded];
  }
}

@end