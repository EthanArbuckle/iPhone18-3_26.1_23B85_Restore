@interface DBHelloLockOutView
- (DBHelloLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration;
- (DBHelloLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration wallpaperView:(id)view;
- (void)_handleFinishedAnimating;
- (void)didMoveToWindow;
@end

@implementation DBHelloLockOutView

- (DBHelloLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration wallpaperView:(id)view
{
  v49[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v46.receiver = self;
  v46.super_class = DBHelloLockOutView;
  v10 = [(DBLockOutView *)&v46 initWithMode:mode environmentConfiguration:configuration];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wallpaperView, view);
    [(UIView *)v11->_wallpaperView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_wallpaperView setUserInteractionEnabled:0];
    [(DBHelloLockOutView *)v11 addSubview:v11->_wallpaperView];
    leadingAnchor = [(UIView *)v11->_wallpaperView leadingAnchor];
    leadingAnchor2 = [(DBHelloLockOutView *)v11 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v49[0] = v39;
    trailingAnchor = [(UIView *)v11->_wallpaperView trailingAnchor];
    trailingAnchor2 = [(DBHelloLockOutView *)v11 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v49[1] = v12;
    topAnchor = [(UIView *)v11->_wallpaperView topAnchor];
    topAnchor2 = [(DBHelloLockOutView *)v11 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[2] = v15;
    bottomAnchor = [(UIView *)v11->_wallpaperView bottomAnchor];
    bottomAnchor2 = [(DBHelloLockOutView *)v11 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v18 = v45 = viewCopy;
    v49[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [(DBHelloLockOutView *)v11 addConstraints:v19];

    v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v20 setName:@"gaussianBlur"];
    [v20 setValue:&unk_285AA4AB8 forKey:@"inputRadius"];
    v21 = MEMORY[0x277CBEC38];
    [v20 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
    [v20 setValue:v21 forKey:@"inputNormalizeEdges"];
    [v20 setValue:v21 forKey:@"inputDither"];
    layer = [(UIView *)v11->_wallpaperView layer];
    v48 = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [layer setFilters:v23];

    v24 = objc_alloc_init(DBHelloView);
    helloView = v11->_helloView;
    v11->_helloView = v24;

    [(DBHelloView *)v11->_helloView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBHelloView *)v11->_helloView setUserInteractionEnabled:0];
    [(DBHelloLockOutView *)v11 addSubview:v11->_helloView];
    leadingAnchor3 = [(DBHelloView *)v11->_helloView leadingAnchor];
    leadingAnchor4 = [(DBHelloLockOutView *)v11 leadingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v47[0] = v40;
    trailingAnchor3 = [(DBHelloView *)v11->_helloView trailingAnchor];
    trailingAnchor4 = [(DBHelloLockOutView *)v11 trailingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v47[1] = v26;
    topAnchor3 = [(DBHelloView *)v11->_helloView topAnchor];
    topAnchor4 = [(DBHelloLockOutView *)v11 topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v47[2] = v29;
    bottomAnchor3 = [(DBHelloView *)v11->_helloView bottomAnchor];
    bottomAnchor4 = [(DBHelloLockOutView *)v11 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v47[3] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [(DBHelloLockOutView *)v11 addConstraints:v33];

    viewCopy = v45;
  }

  return v11;
}

- (DBHelloLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration
{
  v6 = MEMORY[0x277D75D18];
  configurationCopy = configuration;
  v8 = objc_alloc_init(v6);
  v9 = [(DBHelloLockOutView *)self initWithMode:mode environmentConfiguration:configurationCopy wallpaperView:v8];

  return v9;
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = DBHelloLockOutView;
  [(DBHelloLockOutView *)&v9 didMoveToWindow];
  window = [(DBHelloLockOutView *)self window];

  if (window)
  {
    objc_initWeak(&location, self);
    helloView = [(DBHelloLockOutView *)self helloView];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__DBHelloLockOutView_didMoveToWindow__block_invoke;
    v6[3] = &unk_278F01CF0;
    objc_copyWeak(&v7, &location);
    [helloView startAnimatingWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    helloView2 = [(DBHelloLockOutView *)self helloView];
    [helloView2 stopAnimating];
  }
}

void __37__DBHelloLockOutView_didMoveToWindow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFinishedAnimating];
}

- (void)_handleFinishedAnimating
{
  delegate = [(DBLockOutView *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 lockOutViewWantsToDismiss:self];
    }
  }

  MEMORY[0x2821F9730]();
}

@end