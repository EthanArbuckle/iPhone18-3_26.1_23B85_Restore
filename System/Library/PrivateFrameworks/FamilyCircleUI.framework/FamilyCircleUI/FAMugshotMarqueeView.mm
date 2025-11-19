@interface FAMugshotMarqueeView
+ (id)imageWithMemberFilter:(id)a3 profilePictureStore:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FAMugshotMarqueeView)initWithCoder:(id)a3;
- (FAMugshotMarqueeView)initWithFrame:(CGRect)a3;
- (FAMugshotMarqueeView)initWithMemberFilter:(id)a3 profilePictureStore:(id)a4;
- (id)_configureImageViewWithImage:(id)a3;
- (void)_configureMarquee;
- (void)_configureStackView;
- (void)_profilePictureStoreDidReloadImages:(id)a3;
- (void)dealloc;
@end

@implementation FAMugshotMarqueeView

- (FAMugshotMarqueeView)initWithCoder:(id)a3
{
  [(FAMugshotMarqueeView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FAMugshotMarqueeView)initWithFrame:(CGRect)a3
{
  [(FAMugshotMarqueeView *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (FAMugshotMarqueeView)initWithMemberFilter:(id)a3 profilePictureStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = FAMugshotMarqueeView;
  v8 = [(FAMugshotMarqueeView *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    v9 = objc_opt_new();
    memberPhotoMap = v8->_memberPhotoMap;
    v8->_memberPhotoMap = v9;

    objc_storeStrong(&v8->_pictureStore, a4);
    v11 = _Block_copy(v6);
    membersFilter = v8->_membersFilter;
    v8->_membersFilter = v11;

    v13 = [(FAProfilePictureStore *)v8->_pictureStore familyCircle];

    if (!v13)
    {
      v14 = _FALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [FAMugshotMarqueeView initWithMemberFilter:v14 profilePictureStore:?];
      }
    }

    [(FAMugshotMarqueeView *)v8 _configureStackView];
    [(FAMugshotMarqueeView *)v8 _configureMarquee];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v8 selector:sel__profilePictureStoreDidReloadImages_ name:FAProfilePictureStoreDidReloadImagesNotification object:v7];
  }

  return v8;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 68.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1144750080;
  LODWORD(v4) = 1144750080;
  [(UIStackView *)self->_marquee systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FAMugshotMarqueeView;
  [(FAMugshotMarqueeView *)&v4 dealloc];
}

- (void)_profilePictureStoreDidReloadImages:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FAMugshotMarqueeView__profilePictureStoreDidReloadImages___block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_configureMarquee
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(UIStackView *)self->_marquee arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v27 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v26 = [(FAProfilePictureStore *)self->_pictureStore profilePicturesWithDiameter:68.0];
  v8 = [(FAProfilePictureStore *)self->_pictureStore familyCircle];
  v9 = [v8 members];
  v10 = [v9 count];

  if (v10 >= 1)
  {
    v12 = (v10 & 0x7FFFFFFF) + 1;
    *&v11 = 138412290;
    v25 = v11;
    do
    {
      v13 = [(FAProfilePictureStore *)self->_pictureStore familyCircle];
      v14 = [v13 members];
      v15 = [v14 objectAtIndexedSubscript:v12 - 2];

      membersFilter = self->_membersFilter;
      if (!membersFilter || membersFilter[2](membersFilter, v15))
      {
        v17 = [v26 objectForKeyedSubscript:v15];
        v18 = [(FAMugshotMarqueeView *)self _configureImageWithData:v17];
        if (v18)
        {
          v19 = [(FAMugshotMarqueeView *)self _configureImageViewWithImage:v18];
          v20 = [v19 heightAnchor];
          v21 = [v20 constraintEqualToConstant:68.0];
          [v21 setActive:1];

          v22 = [v19 widthAnchor];
          v23 = [v22 constraintEqualToConstant:68.0];
          [v23 setActive:1];

          [(UIStackView *)self->_marquee insertArrangedSubview:v19 atIndex:0];
        }

        else
        {
          v19 = _FALogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v32 = v15;
            _os_log_error_impl(&dword_21BB35000, v19, OS_LOG_TYPE_ERROR, "No member image for %@", buf, 0xCu);
          }
        }
      }

      --v12;
    }

    while (v12 > 1);
  }

  [(FAMugshotMarqueeView *)self setNeedsDisplay];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_configureStackView
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75A68]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v4 setAxis:0];
  [(UIStackView *)v4 setDistribution:4];
  [(FAMugshotMarqueeView *)self addSubview:v4];
  [(UIStackView *)v4 setSpacing:-24.0];
  v16 = [(UIStackView *)v4 centerYAnchor];
  v15 = [(FAMugshotMarqueeView *)self centerYAnchor];
  v5 = [v16 constraintEqualToAnchor:v15];
  v17[0] = v5;
  v6 = [(UIStackView *)v4 centerXAnchor];
  v7 = [(FAMugshotMarqueeView *)self centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v17[1] = v8;
  v9 = [(UIStackView *)v4 heightAnchor];
  v10 = [(FAMugshotMarqueeView *)self heightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  [MEMORY[0x277CCAAD0] activateConstraints:v12];
  marquee = self->_marquee;
  self->_marquee = v4;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_configureImageViewWithImage:(id)a3
{
  v3 = MEMORY[0x277D755E8];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  [v5 setContentMode:1];
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = [v5 layer];
  [v7 setCornerRadius:34.0];

  v8 = [v5 layer];
  [v8 setBorderWidth:2.0];

  v9 = [MEMORY[0x277D75348] whiteColor];
  v10 = [v9 CGColor];
  v11 = [v5 layer];
  [v11 setBorderColor:v10];

  v12 = [MEMORY[0x277D75348] blackColor];
  v13 = [v12 CGColor];
  v14 = [v5 layer];
  [v14 setShadowColor:v13];

  v15 = [v5 layer];
  LODWORD(v16) = 0.25;
  [v15 setShadowOpacity:v16];

  v17 = [v5 layer];
  [v17 setShadowRadius:3.0];

  v18 = *MEMORY[0x277CBF3A8];
  v19 = *(MEMORY[0x277CBF3A8] + 8);
  v20 = [v5 layer];
  [v20 setShadowOffset:{v18, v19}];

  v21 = [v5 layer];
  [v21 setMasksToBounds:0];

  return v5;
}

+ (id)imageWithMemberFilter:(id)a3 profilePictureStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FAMugshotMarqueeView alloc] initWithMemberFilter:v6 profilePictureStore:v5];

  [(FAMugshotMarqueeView *)v7 sizeToFit];
  [(FAMugshotMarqueeView *)v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(FAMugshotMarqueeView *)v7 shadowRadius];
  v17 = -v16;
  [(FAMugshotMarqueeView *)v7 shadowRadius];
  v19 = -v18;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  v31 = CGRectInset(v30, v17, v19);
  v20 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
  [v20 addSubview:v7];
  [v20 bounds];
  MidX = CGRectGetMidX(v32);
  [v20 bounds];
  [(FAMugshotMarqueeView *)v7 setCenter:MidX, CGRectGetMidY(v33)];
  v22 = objc_alloc(MEMORY[0x277D75560]);
  [v20 bounds];
  v23 = [v22 initWithBounds:?];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__FAMugshotMarqueeView_Snapshot__imageWithMemberFilter_profilePictureStore___block_invoke;
  v27[3] = &unk_2782F2D80;
  v28 = v20;
  v24 = v20;
  v25 = [v23 imageWithActions:v27];

  return v25;
}

uint64_t __76__FAMugshotMarqueeView_Snapshot__imageWithMemberFilter_profilePictureStore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

- (void)initWithMemberFilter:(os_log_t)log profilePictureStore:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[FAMugshotMarqueeView initWithMemberFilter:profilePictureStore:]";
  _os_log_error_impl(&dword_21BB35000, log, OS_LOG_TYPE_ERROR, "%s has no circle", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end