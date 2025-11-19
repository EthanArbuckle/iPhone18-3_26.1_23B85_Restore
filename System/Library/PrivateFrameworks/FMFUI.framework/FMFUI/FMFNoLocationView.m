@interface FMFNoLocationView
- (FMFNoLocationView)initWithFrame:(CGRect)a3;
- (FMFNoLocationViewDelegate)delegate;
- (UIImage)offlineProfileImage;
- (void)addLayoutConstraints;
- (void)dealloc;
- (void)setAlpha:(double)a3;
- (void)setDelegate:(id)a3;
- (void)updateConstriantsForInsets;
- (void)updateLabel;
- (void)updateLabelNotification:(id)a3;
- (void)updatePersonImageViewImage;
@end

@implementation FMFNoLocationView

- (FMFNoLocationView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = FMFNoLocationView;
  v3 = [(FMFNoLocationView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(FMFNoLocationView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(FMFNoLocationView *)v3 setBlur:v5];

    v6 = MEMORY[0x277D75348];
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:@"bg_grid" inBundle:v8];
    v10 = [v6 colorWithPatternImage:v9];
    [(UIView *)v3->_blur setBackgroundColor:v10];

    [(FMFNoLocationView *)v3 addSubview:v3->_blur];
    [(FMFNoLocationView *)v3 sendSubviewToBack:v3->_blur];
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = [(FMFNoLocationView *)v3 offlineProfileImage];
    v13 = [v11 initWithImage:v12];
    [(FMFNoLocationView *)v3 setOfflineProfileImageView:v13];

    [(FMFNoLocationView *)v3 addSubview:v3->_offlineProfileImageView];
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(FMFNoLocationView *)v3 setPersonImageView:v14];

    [(FMFNoLocationView *)v3 addSubview:v3->_personImageView];
    v15 = objc_alloc(MEMORY[0x277D756B8]);
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
    [(FMFNoLocationView *)v3 setDetailsLabel:v20];

    v21 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    [(UILabel *)v3->_detailsLabel setFont:v21];

    [(UILabel *)v3->_detailsLabel setTextAlignment:1];
    v22 = [MEMORY[0x277D75348] colorWithRed:0.623529434 green:0.611764729 blue:0.592156887 alpha:1.0];
    [(UILabel *)v3->_detailsLabel setTextColor:v22];

    [(FMFNoLocationView *)v3 addSubview:v3->_detailsLabel];
    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v16, v17, v18, v19}];
    [(FMFNoLocationView *)v3 setInsetView:v23];

    v24 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_insetView setBackgroundColor:v24];

    [(FMFNoLocationView *)v3 addSubview:v3->_insetView];
    [(FMFNoLocationView *)v3 addLayoutConstraints];
    [(FMFNoLocationView *)v3 setAlpha:0.0];
    [(FMFNoLocationView *)v3 updateLabel];
    [(FMFNoLocationView *)v3 updatePersonImageViewImage];
    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v3 selector:sel_updateLabelNotification_ name:@"locatingInProgressChanged" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"locatingInProgressChanged" object:0];

  v4.receiver = self;
  v4.super_class = FMFNoLocationView;
  [(FMFNoLocationView *)&v4 dealloc];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(FMFNoLocationView *)self updateLabel];
}

- (void)addLayoutConstraints
{
  [(UIImageView *)self->_offlineProfileImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_personImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_blur setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_insetView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_blur attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v3];

  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_blur attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v4];

  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_blur attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v5];

  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_blur attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v6];

  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_offlineProfileImageView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v7];

  v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_offlineProfileImageView attribute:10 relatedBy:0 toItem:self->_insetView attribute:10 multiplier:1.0 constant:-10.0];
  [(FMFNoLocationView *)self addConstraint:v8];

  v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_personImageView attribute:9 relatedBy:0 toItem:self->_offlineProfileImageView attribute:9 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_personImageView attribute:10 relatedBy:0 toItem:self->_offlineProfileImageView attribute:10 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_personImageView attribute:7 relatedBy:0 toItem:0 attribute:7 multiplier:1.0 constant:60.0];
  [(FMFNoLocationView *)self addConstraint:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_personImageView attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:60.0];
  [(FMFNoLocationView *)self addConstraint:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_insetView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self setTopInsetConstraint:v13];

  [(FMFNoLocationView *)self addConstraint:self->_topInsetConstraint];
  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:self->_insetView attribute:4 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self setBottomInsetConstraint:v14];

  [(FMFNoLocationView *)self addConstraint:self->_bottomInsetConstraint];
  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_insetView attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v15];

  v16 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_insetView attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v16];

  v17 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_detailsLabel attribute:3 relatedBy:0 toItem:self->_offlineProfileImageView attribute:4 multiplier:1.0 constant:-3.0];
  [(FMFNoLocationView *)self addConstraint:v17];

  v18 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_detailsLabel attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(FMFNoLocationView *)self addConstraint:v18];

  v19 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_detailsLabel attribute:8 relatedBy:1 toItem:0 attribute:8 multiplier:1.0 constant:20.0];
  [(FMFNoLocationView *)self addConstraint:v19];

  [(FMFNoLocationView *)self updateConstriantsForInsets];
}

- (void)updateConstriantsForInsets
{
  v4 = [(FMFNoLocationView *)self delegate];
  [v4 edgeInsets];
  [(NSLayoutConstraint *)self->_topInsetConstraint setConstant:?];
  [v4 edgeInsets];
  [(NSLayoutConstraint *)self->_bottomInsetConstraint setConstant:v3];
}

- (void)updateLabelNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FMFNoLocationView_updateLabelNotification___block_invoke;
  block[3] = &unk_278FE29D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateLabel
{
  v33 = *MEMORY[0x277D85DE8];
  if (![(FMFNoLocationView *)self blockLabelUpdates])
  {
    v3 = [(FMFNoLocationView *)self delegate];
    v4 = [v3 handlesShowingLocations];
    if ([v4 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v25;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v24 + 1) + 8 * v9);
            v11 = [MEMORY[0x277D07BE0] sharedInstance];
            v12 = [v11 cachedLocationForHandle:v10];

            if (!v12)
            {
              v15 = LogCategory_Daemon();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_24A4E3000, v15, OS_LOG_TYPE_DEFAULT, "No location received from service yet.", buf, 2u);
              }

LABEL_19:
              goto LABEL_20;
            }

            if ([v12 isLocatingInProgress])
            {
              goto LABEL_19;
            }

            v13 = [v12 location];

            if (v13)
            {
              goto LABEL_20;
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
    }

    else
    {
      v5 = LogCategory_Daemon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "No handles received from service yet.", buf, 2u);
      }

LABEL_20:
      v14 = 1;
    }

    v16 = LogCategory_Daemon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v3 handlesShowingLocations];
      *buf = 67109378;
      v29 = v14;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_24A4E3000, v16, OS_LOG_TYPE_DEFAULT, "Updating labels for FMFNoLocationView isLocating: %d handles: %@", buf, 0x12u);
    }

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v18;
    if (v14)
    {
      v20 = @"LOCATING";
    }

    else
    {
      v20 = @"LOCATION_NOT_AVAILABLE";
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_285D99658 table:{@"LocalizableUI", v24}];

    v22 = [(FMFNoLocationView *)self detailsLabel];
    [v22 setText:v21];

    [(UILabel *)self->_detailsLabel sizeToFit];
    [(UILabel *)self->_detailsLabel invalidateIntrinsicContentSize];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setAlpha:(double)a3
{
  [(FMFNoLocationView *)self alpha];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = FMFNoLocationView;
  [(FMFNoLocationView *)&v7 setAlpha:a3];
  if (v6 != a3)
  {
    [(FMFNoLocationView *)self updateConstriantsForInsets];
  }
}

- (void)updatePersonImageViewImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 imageNamed:@"person_noloc" inBundle:v4];

  v5 = [(FMFNoLocationView *)self personImageView];
  [v5 setImage:v6];
}

- (UIImage)offlineProfileImage
{
  offlineProfileImage = self->_offlineProfileImage;
  if (!offlineProfileImage)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"profile" inBundle:v5];
    [(FMFNoLocationView *)self setOfflineProfileImage:v6];

    offlineProfileImage = self->_offlineProfileImage;
  }

  return offlineProfileImage;
}

- (FMFNoLocationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end