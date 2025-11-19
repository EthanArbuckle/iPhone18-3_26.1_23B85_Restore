@interface DBHelloLockOutView
- (DBHelloLockOutView)initWithMode:(int64_t)a3 environmentConfiguration:(id)a4;
- (DBHelloLockOutView)initWithMode:(int64_t)a3 environmentConfiguration:(id)a4 wallpaperView:(id)a5;
- (void)_handleFinishedAnimating;
- (void)didMoveToWindow;
@end

@implementation DBHelloLockOutView

- (DBHelloLockOutView)initWithMode:(int64_t)a3 environmentConfiguration:(id)a4 wallpaperView:(id)a5
{
  v49[4] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v46.receiver = self;
  v46.super_class = DBHelloLockOutView;
  v10 = [(DBLockOutView *)&v46 initWithMode:a3 environmentConfiguration:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wallpaperView, a5);
    [(UIView *)v11->_wallpaperView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_wallpaperView setUserInteractionEnabled:0];
    [(DBHelloLockOutView *)v11 addSubview:v11->_wallpaperView];
    v43 = [(UIView *)v11->_wallpaperView leadingAnchor];
    v41 = [(DBHelloLockOutView *)v11 leadingAnchor];
    v39 = [v43 constraintEqualToAnchor:v41];
    v49[0] = v39;
    v37 = [(UIView *)v11->_wallpaperView trailingAnchor];
    v35 = [(DBHelloLockOutView *)v11 trailingAnchor];
    v12 = [v37 constraintEqualToAnchor:v35];
    v49[1] = v12;
    v13 = [(UIView *)v11->_wallpaperView topAnchor];
    v14 = [(DBHelloLockOutView *)v11 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v49[2] = v15;
    v16 = [(UIView *)v11->_wallpaperView bottomAnchor];
    v17 = [(DBHelloLockOutView *)v11 bottomAnchor];
    [v16 constraintEqualToAnchor:v17];
    v18 = v45 = v9;
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
    v22 = [(UIView *)v11->_wallpaperView layer];
    v48 = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v22 setFilters:v23];

    v24 = objc_alloc_init(DBHelloView);
    helloView = v11->_helloView;
    v11->_helloView = v24;

    [(DBHelloView *)v11->_helloView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBHelloView *)v11->_helloView setUserInteractionEnabled:0];
    [(DBHelloLockOutView *)v11 addSubview:v11->_helloView];
    v44 = [(DBHelloView *)v11->_helloView leadingAnchor];
    v42 = [(DBHelloLockOutView *)v11 leadingAnchor];
    v40 = [v44 constraintEqualToAnchor:v42];
    v47[0] = v40;
    v38 = [(DBHelloView *)v11->_helloView trailingAnchor];
    v36 = [(DBHelloLockOutView *)v11 trailingAnchor];
    v26 = [v38 constraintEqualToAnchor:v36];
    v47[1] = v26;
    v27 = [(DBHelloView *)v11->_helloView topAnchor];
    v28 = [(DBHelloLockOutView *)v11 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v47[2] = v29;
    v30 = [(DBHelloView *)v11->_helloView bottomAnchor];
    v31 = [(DBHelloLockOutView *)v11 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v47[3] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [(DBHelloLockOutView *)v11 addConstraints:v33];

    v9 = v45;
  }

  return v11;
}

- (DBHelloLockOutView)initWithMode:(int64_t)a3 environmentConfiguration:(id)a4
{
  v6 = MEMORY[0x277D75D18];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [(DBHelloLockOutView *)self initWithMode:a3 environmentConfiguration:v7 wallpaperView:v8];

  return v9;
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = DBHelloLockOutView;
  [(DBHelloLockOutView *)&v9 didMoveToWindow];
  v3 = [(DBHelloLockOutView *)self window];

  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = [(DBHelloLockOutView *)self helloView];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__DBHelloLockOutView_didMoveToWindow__block_invoke;
    v6[3] = &unk_278F01CF0;
    objc_copyWeak(&v7, &location);
    [v4 startAnimatingWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [(DBHelloLockOutView *)self helloView];
    [v5 stopAnimating];
  }
}

void __37__DBHelloLockOutView_didMoveToWindow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFinishedAnimating];
}

- (void)_handleFinishedAnimating
{
  v3 = [(DBLockOutView *)self delegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 lockOutViewWantsToDismiss:self];
    }
  }

  MEMORY[0x2821F9730]();
}

@end