@interface CKPinnedConversationView
+ (BOOL)_mouthRegionDetectionEnabled;
+ (CGSize)avatarViewSizeFittingSize:(CGSize)a3 layoutStyle:(int64_t)a4;
+ (UIEdgeInsets)avatarViewPadding;
+ (UIEdgeInsets)titleLabelVerticalPadding;
+ (double)_maximumAvatarViewWidthFittingSize:(CGSize)a3;
+ (double)_preferredAvatarViewDiameterForLayoutStyle:(int64_t)a3;
+ (id)_cachedMouthRegionForContact:(id)a3;
+ (id)_mouthRegionDetectionDispatchQueue;
+ (id)_mouthRegionForContactImageCache;
+ (id)_mouthRegionForContactImageCacheKeyForContact:(id)a3;
+ (id)_requiredContactKeys;
+ (void)_determineMouthRegionForContact:(id)a3 completion:(id)a4;
+ (void)_updateCachedMouthRegionIfNecessaryForContact:(id)a3 completion:(id)a4;
- (BOOL)_shouldShowSummaryForSatelliteMessages;
- (BOOL)isSuppressingActivity;
- (BOOL)isUnreadIndicatorHidden;
- (CGPoint)_centerPointOfFaceLandmarkRegion:(id)a3 inImageOfSize:(CGSize)a4;
- (CGRect)activityItemBoundingFrame;
- (CGRect)avatarViewFrameForSize:(CGSize)a3 layoutStyle:(int64_t)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)titleLabelSizeFittingSize:(CGSize)a3;
- (CGSize)unreadIndicatorSize;
- (CKPinnedConversationView)initWithFrame:(CGRect)a3;
- (CKPinnedConversationViewDelegate)delegate;
- (NSDirectionalEdgeInsets)unreadIndicatorMinimumPadding;
- (NSDirectionalEdgeInsets)unreadIndicatorPreferredPadding;
- (double)_unreadIndicatorLeadingEdgePadding;
- (id)_unreadIndicatorColor;
- (id)_unreadIndicatorImage;
- (int64_t)activityItemOriginationDirection;
- (void)_updateAvatarMouthRegion;
- (void)_updateAvatarView;
- (void)_updateRadiantShadowAffineTranform;
- (void)_updateRadiantShadowImageView;
- (void)_updateTitleLabel;
- (void)_updateTitleLabelColor;
- (void)_updateTitleLabelFont;
- (void)_updateTitleLabelWithText:(id)a3;
- (void)_updateUnreadIndicator;
- (void)beginSuppressingActivityWithReason:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)didEndDisplaying;
- (void)dimAvatarView;
- (void)endSuppressingActivityWithReason:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)reapplyPreviouslyDisplayedActivitySnapshot:(id)a3;
- (void)removeDimmingFilter;
- (void)setActivityItemBoundingFrame:(CGRect)a3;
- (void)setActivityItemOriginationDirection:(int64_t)a3;
- (void)setAvatarSnapshot:(id)a3;
- (void)setConversation:(id)a3;
- (void)setDimmed:(BOOL)a3;
- (void)setIsFilteredByFocus:(BOOL)a3 animated:(BOOL)a4;
- (void)setIsSelectedWithDarkAppearance:(BOOL)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setNeedsUnreadIndicatorLeadingEdgePadding:(BOOL)a3;
- (void)setPreferShortConversationName:(BOOL)a3;
- (void)setRecentMessagesInPinnedConversations:(id)a3;
- (void)setShowsLiveActivity:(BOOL)a3;
- (void)setUnreadIndicatorHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)updateActivityViewAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation CKPinnedConversationView

- (CKPinnedConversationView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = CKPinnedConversationView;
  v3 = [(CKPinnedConversationView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_preferShortConversationName = 1;
    v5 = objc_alloc_init(CKAvatarView);
    avatarView = v4->_avatarView;
    v4->_avatarView = v5;

    v7 = objc_alloc_init(CKLabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    unreadIndicator = v4->_unreadIndicator;
    v4->_unreadIndicator = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    radiantShadowImageView = v4->_radiantShadowImageView;
    v4->_radiantShadowImageView = v11;

    v4->_activityItemTopInset = 0.0;
    [(CKPinnedConversationView *)v4 addSubview:v4->_avatarView];
    [(CKPinnedConversationView *)v4 addSubview:v4->_titleLabel];
    [(CKPinnedConversationView *)v4 addSubview:v4->_unreadIndicator];
    [(CKPinnedConversationView *)v4 addSubview:v4->_radiantShadowImageView];
    [(CKPinnedConversationView *)v4 _updateTitleLabelFont];
    [(CKPinnedConversationView *)v4 _updateTitleLabelColor];
    [(CKLabel *)v4->_titleLabel setTextAlignment:1];
    [(CKLabel *)v4->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [(UIImageView *)v4->_unreadIndicator setHidden:1];
    [(CNAvatarView *)v4->_avatarView setAsynchronousRendering:1];
    [(CKAvatarView *)v4->_avatarView setUserInteractionEnabled:0];
    [(CNAvatarView *)v4->_avatarView setShowsContactOnTap:0];
    [(CNAvatarView *)v4->_avatarView setDelegate:v4];
    [(CNAvatarView *)v4->_avatarView setThreeDTouchEnabled:0];
    [(UIImageView *)v4->_radiantShadowImageView setContentMode:2];
    [(CKPinnedConversationView *)v4 _updateRadiantShadowAffineTranform];
    [(CKPinnedConversationView *)v4 _updateRadiantShadowImageView];
    v13 = [(UIImageView *)v4->_radiantShadowImageView layer];
    [v13 setShouldRasterize:1];

    v14 = [(UIImageView *)v4->_radiantShadowImageView layer];
    [v14 setRasterizationScale:0.5];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v4 selector:sel_contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    if ([(CKPinnedConversationView *)self _activityIsSuppressedForLayoutStyle:?])
    {
      [(CKPinnedConversationView *)self beginSuppressingActivityWithReason:@"LayoutStyle" animated:0 completion:0];
    }

    else
    {
      [(CKPinnedConversationView *)self endSuppressingActivityWithReason:@"LayoutStyle" animated:0 completion:0];
    }

    [(CKPinnedConversationView *)self setNeedsLayout];
  }
}

- (void)setShowsLiveActivity:(BOOL)a3
{
  if (self->_showsLiveActivity != a3)
  {
    self->_showsLiveActivity = a3;
    if (a3)
    {
      v4 = objc_alloc_init(CKPinnedConversationActivityView);
      activityView = self->_activityView;
      self->_activityView = v4;

      [(CKPinnedConversationView *)self addSubview:self->_activityView];
      [(CKPinnedConversationView *)self _updateAvatarMouthRegion];

      [(CKPinnedConversationView *)self setNeedsLayout];
    }

    else
    {
      [(CKPinnedConversationActivityView *)self->_activityView removeFromSuperview];
      v6 = self->_activityView;
      self->_activityView = 0;
    }
  }
}

- (void)setConversation:(id)a3
{
  objc_storeStrong(&self->_conversation, a3);
  [(CKPinnedConversationView *)self _updateTitleLabel];
  [(CKPinnedConversationView *)self _updateUnreadIndicator];
  [(CKPinnedConversationView *)self _updateAvatarView];

  [(CKPinnedConversationView *)self _updateAvatarMouthRegion];
}

- (void)setRecentMessagesInPinnedConversations:(id)a3
{
  v4 = [a3 copy];
  recentMessagesInPinnedConversations = self->_recentMessagesInPinnedConversations;
  self->_recentMessagesInPinnedConversations = v4;
}

- (void)setUnreadIndicatorHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    if (!a3)
    {
      v6 = [(CKPinnedConversationView *)self unreadIndicator];
      v7 = [v6 isHidden];

      if (v7)
      {
        v8 = [(CKPinnedConversationView *)self unreadIndicator];
        [v8 setAlpha:0.0];

        v9 = [(CKPinnedConversationView *)self unreadIndicator];
        [v9 setHidden:0];
      }
    }

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CKPinnedConversationView_setUnreadIndicatorHidden_animated___block_invoke;
    v15[3] = &unk_1E72F3F80;
    objc_copyWeak(&v16, &location);
    v17 = v4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CKPinnedConversationView_setUnreadIndicatorHidden_animated___block_invoke_2;
    v12[3] = &unk_1E72F6ED8;
    objc_copyWeak(&v13, &location);
    v14 = v4;
    [v10 animateWithDuration:v15 animations:v12 completion:0.300000012];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [(CKPinnedConversationView *)self unreadIndicator];
    [v11 setHidden:v4];
  }
}

void __62__CKPinnedConversationView_setUnreadIndicatorHidden_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained unreadIndicator];
  [v2 setAlpha:v1];
}

void __62__CKPinnedConversationView_setUnreadIndicatorHidden_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained unreadIndicator];
  [v2 setHidden:v1];
}

- (BOOL)isUnreadIndicatorHidden
{
  v2 = [(CKPinnedConversationView *)self unreadIndicator];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setIsFilteredByFocus:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isFilteredByFocus != a3)
  {
    self->_isFilteredByFocus = a3;
    if (a3)
    {
      [(CKPinnedConversationView *)self beginSuppressingActivityWithReason:@"FilteredByFocus" animated:a4 completion:0];
    }

    else
    {
      [(CKPinnedConversationView *)self endSuppressingActivityWithReason:@"FilteredByFocus" animated:a4 completion:0];
    }

    [(CKPinnedConversationView *)self _updateUnreadIndicator];
  }
}

- (void)setAvatarSnapshot:(id)a3
{
  v5 = a3;
  if (self->_avatarSnapshot != v5)
  {
    v19 = v5;
    objc_storeStrong(&self->_avatarSnapshot, a3);
    avatarSnapshotImageView = self->_avatarSnapshotImageView;
    if (v19)
    {
      if (!avatarSnapshotImageView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v8 = [(CKPinnedConversationView *)self avatarView];
        [v8 frame];
        v9 = [v7 initWithFrame:?];
        v10 = self->_avatarSnapshotImageView;
        self->_avatarSnapshotImageView = v9;

        v11 = self->_avatarSnapshotImageView;
        v12 = [(CKPinnedConversationView *)self avatarView];
        [(CKPinnedConversationView *)self insertSubview:v11 aboveSubview:v12];
      }

      v13 = [(CKPinnedConversationView *)self avatarView];
      [v13 setHidden:1];

      v14 = [(CKPinnedConversationView *)self avatarSnapshotImageView];
      [v14 setImage:v19];
    }

    else
    {
      [(UIImageView *)avatarSnapshotImageView removeFromSuperview];
      v15 = self->_avatarSnapshotImageView;
      self->_avatarSnapshotImageView = 0;

      v16 = [(CKPinnedConversationView *)self avatarView];
      [v16 setHidden:0];

      v14 = [(CKPinnedConversationView *)self avatarView];
      v17 = [v14 contentImage];
      v18 = [(CKPinnedConversationView *)self radiantShadowImageView];
      [v18 setImage:v17];
    }

    [(CKPinnedConversationView *)self _updateRadiantShadowImageView];
    [(CKPinnedConversationView *)self setNeedsLayout];
    v5 = v19;
  }
}

- (void)setActivityItemOriginationDirection:(int64_t)a3
{
  v4 = [(CKPinnedConversationView *)self activityView];
  [v4 setActivityItemOriginationDirection:a3];
}

- (int64_t)activityItemOriginationDirection
{
  v2 = [(CKPinnedConversationView *)self activityView];
  v3 = [v2 activityItemOriginationDirection];

  return v3;
}

- (void)beginSuppressingActivityWithReason:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;
  if (!activeActivitySuppressionReasons)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = self->_activeActivitySuppressionReasons;
    self->_activeActivitySuppressionReasons = v10;

    activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;
  }

  [(NSMutableArray *)activeActivitySuppressionReasons addObject:v13];
  v12 = [(CKPinnedConversationView *)self activityView];
  [v12 setSuppressingActivity:1 animated:v6 completion:v8];
}

- (void)endSuppressingActivityWithReason:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;
  v9 = a5;
  [(NSMutableArray *)activeActivitySuppressionReasons removeObject:a3];
  v10 = [(NSMutableArray *)self->_activeActivitySuppressionReasons count]!= 0;
  v11 = [(CKPinnedConversationView *)self activityView];
  [v11 setSuppressingActivity:v10 animated:v5 completion:v9];
}

- (BOOL)isSuppressingActivity
{
  v2 = [(CKPinnedConversationView *)self activityView];
  v3 = [v2 isSuppressingActivity];

  return v3;
}

- (void)setDimmed:(BOOL)a3
{
  if (self->_dimmed != a3)
  {
    self->_dimmed = a3;
    if (a3)
    {
      [(CKPinnedConversationView *)self dimAvatarView];
    }

    else
    {
      [(CKPinnedConversationView *)self removeDimmingFilter];
    }
  }
}

- (void)dimAvatarView
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v12 conversationPinningTouchdownDimEnabled])
  {
    v3 = [(CKPinnedConversationView *)self dimmingFilter];

    if (!v3)
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
      [(CKPinnedConversationView *)self setDimmingFilter:v4];

      v5 = [(CKPinnedConversationView *)self dimmingFilter];
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
      v7 = [v6 CGColor];
      [v5 setValue:v7 forKey:*MEMORY[0x1E6979AA0]];

      v8 = [(CKPinnedConversationView *)self avatarView];
      v9 = [v8 layer];
      v10 = [(CKPinnedConversationView *)self dimmingFilter];
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v9 setFilters:v11];
    }
  }

  else
  {
  }
}

- (void)removeDimmingFilter
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 conversationPinningTouchdownDimEnabled];

  if (v4)
  {
    v5 = [(CKPinnedConversationView *)self avatarView];
    v6 = [v5 layer];
    [v6 setFilters:0];

    [(CKPinnedConversationView *)self setDimmingFilter:0];
  }
}

- (void)setActivityItemBoundingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_activityItemBoundingFrame = &self->_activityItemBoundingFrame;
  if (!CGRectEqualToRect(self->_activityItemBoundingFrame, a3))
  {
    p_activityItemBoundingFrame->origin.x = x;
    p_activityItemBoundingFrame->origin.y = y;
    p_activityItemBoundingFrame->size.width = width;
    p_activityItemBoundingFrame->size.height = height;

    [(CKPinnedConversationView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v155.receiver = self;
  v155.super_class = CKPinnedConversationView;
  [(CKPinnedConversationView *)&v155 layoutSubviews];
  [(CKPinnedConversationView *)self bounds];
  v4 = v3;
  v148 = v5;
  rect = v3;
  rect_24 = v6;
  v7 = v5;
  v9 = v8;
  v147 = v8;
  [(CKPinnedConversationView *)self avatarViewFrameForSize:self->_layoutStyle layoutStyle:v5, v8];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CKPinnedConversationView *)self avatarView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(CKPinnedConversationView *)self conversation];
  if ([v19 isBusinessConversation])
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v17 * 0.5;
  }

  v21 = [(CKPinnedConversationView *)self avatarView];
  v22 = [v21 layer];
  [v22 setCornerRadius:v20];

  v23 = [(CKPinnedConversationView *)self avatarSnapshotImageView];
  [v23 setFrame:{v11, v13, v15, v17}];

  v24 = [(CKPinnedConversationView *)self activityView];
  [v24 setFrame:{v4, rect_24, v7, v9}];

  v25 = [(CKPinnedConversationView *)self activityView];
  [(CKPinnedConversationView *)self convertRect:v25 toView:v11, v13, v15, v17];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(CKPinnedConversationView *)self activityView];
  [v34 setAvatarFrame:{v27, v29, v31, v33}];

  v35 = [(CKPinnedConversationView *)self radiantShadowImageView];
  v36 = [v35 layer];
  [v36 setBounds:{0.0, 0.0, v15, v17}];

  v156.origin.x = v11;
  v156.origin.y = v13;
  v156.size.width = v15;
  v156.size.height = v17;
  MidX = CGRectGetMidX(v156);
  v144 = v13;
  v145 = v11;
  v157.origin.x = v11;
  v157.origin.y = v13;
  rect_8 = v17;
  rect_16 = v15;
  v157.size.width = v15;
  v157.size.height = v17;
  MidY = CGRectGetMidY(v157);
  v39 = [(CKPinnedConversationView *)self radiantShadowImageView];
  v40 = [v39 layer];
  [v40 setPosition:{MidX, MidY}];

  v41 = [(CKPinnedConversationView *)self radiantShadowImageView];
  v42 = [v41 layer];
  [v42 setZPosition:-1.0];

  [(CKPinnedConversationView *)self _updateRadiantShadowAffineTranform];
  [(CKPinnedConversationView *)self titleLabelSizeFittingSize:v148, v147];
  v44 = v43;
  v46 = v45;
  [objc_opt_class() titleLabelVerticalPadding];
  v48 = v47;
  UIRoundToViewScale();
  v50 = v49;
  v158.origin.x = rect;
  v158.origin.y = rect_24;
  v158.size.width = v148;
  v158.size.height = v147;
  v51 = CGRectGetMaxY(v158) - v46 - v48;
  v52 = [(CKPinnedConversationView *)self titleLabel];
  [v52 setFrame:{v50, v51, v44, v46}];

  [(CKPinnedConversationView *)self unreadIndicatorSize];
  v54 = v53;
  v56 = v55;
  [(CKPinnedConversationView *)self unreadIndicatorPreferredPadding];
  v58 = v57;
  [(CKPinnedConversationView *)self unreadIndicatorMinimumPadding];
  v60 = v59;
  v61 = [(CKPinnedConversationView *)self _shouldReverseLayoutDirection];
  v62 = v50;
  v63 = v51;
  v64 = v44;
  v65 = v46;
  if (v61)
  {
    v66 = v58 + CGRectGetMaxX(*&v62);
    v159.size.width = v148;
    v159.origin.x = rect;
    v159.origin.y = rect_24;
    v159.size.height = v147;
    v67 = CGRectGetMaxX(v159) - v60 - v54;
    if (v67 >= v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = v67;
    }
  }

  else
  {
    v69 = CGRectGetMinX(*&v62) - v58 - v54;
    v160.size.width = v148;
    v160.origin.x = rect;
    v160.origin.y = rect_24;
    v160.size.height = v147;
    v70 = v60 + CGRectGetMinX(v160);
    if (v70 >= v69)
    {
      v68 = v70;
    }

    else
    {
      v68 = v69;
    }
  }

  v137 = v51;
  v138 = v50;
  v161.origin.x = v50;
  v161.origin.y = v51;
  v161.size.width = v44;
  v161.size.height = v46;
  CGRectGetMidY(v161);
  UIRoundToViewScale();
  v72 = v71;
  v73 = [(CKPinnedConversationView *)self unreadIndicator];
  [v73 setFrame:{v68, v72, v54, v56}];

  v74 = *MEMORY[0x1E695F058];
  v75 = *(MEMORY[0x1E695F058] + 16);
  v76 = *(MEMORY[0x1E695F058] + 24);
  v141 = v76;
  v142 = v75;
  v139 = *(MEMORY[0x1E695F058] + 8);
  v140 = *MEMORY[0x1E695F058];
  v146 = v139;
  if (!CGRectIsEmpty(self->_activityItemBoundingFrame))
  {
    v77 = CKIsRunningInMacCatalyst();
    v78 = 5.0;
    if (!v77)
    {
      v78 = 0.0;
    }

    v74 = self->_activityItemBoundingFrame.origin.x + 8.0;
    v146 = self->_activityItemBoundingFrame.origin.y + v78;
    v75 = self->_activityItemBoundingFrame.size.width + -16.0;
    v76 = self->_activityItemBoundingFrame.size.height - v78;
  }

  v143 = v75;
  v162.origin.x = v145;
  v162.origin.y = v144;
  v162.size.width = rect_16;
  v162.size.height = rect_8;
  v79 = CGRectGetMinX(v162) + -8.0;
  v163.origin.x = v145;
  v163.origin.y = v144;
  v163.size.width = rect_16;
  v163.size.height = rect_8;
  v80 = v75;
  v81 = CGRectGetMaxX(v163) + 8.0;
  v164.size.width = v148;
  v164.origin.x = rect;
  v164.origin.y = rect_24;
  v164.size.height = v147;
  MinY = CGRectGetMinY(v164);
  v165.origin.y = v137;
  v165.origin.x = v138;
  v165.size.width = v44;
  v165.size.height = v46;
  v83 = v81 - v79;
  v84 = CGRectGetMinY(v165) - MinY;
  v166.origin.x = v74;
  v166.origin.y = v146;
  v166.size.width = v80;
  v166.size.height = v76;
  rect_24a = v84;
  if (!CGRectIsEmpty(v166))
  {
    v167.origin.x = v79;
    v167.origin.y = MinY;
    v167.size.width = v81 - v79;
    v167.size.height = v84;
    MinX = CGRectGetMinX(v167);
    v168.origin.x = v74;
    v168.origin.y = v146;
    v168.size.width = v80;
    v168.size.height = v76;
    v86 = CGRectGetMinX(v168);
    if (MinX < v86)
    {
      MinX = v86;
    }

    v169.origin.x = v79;
    v169.origin.y = MinY;
    v169.size.width = v81 - v79;
    v169.size.height = rect_24a;
    MaxX = CGRectGetMaxX(v169);
    v170.origin.x = v74;
    v170.origin.y = v146;
    v170.size.width = v80;
    v170.size.height = v76;
    v88 = CGRectGetMaxX(v170);
    if (MaxX < v88)
    {
      v88 = MaxX;
    }

    v83 = v88 - MinX;
    v79 = MinX;
    v84 = rect_24a;
  }

  v89 = MinY;
  if (self->_activityItemTopInset != 0.0)
  {
    v171.origin.x = v79;
    v171.origin.y = MinY;
    v171.size.width = v83;
    v171.size.height = v84;
    v89 = CGRectGetMinY(v171) + self->_activityItemTopInset;
    v172.origin.x = v79;
    v172.origin.y = MinY;
    v172.size.width = v83;
    v172.size.height = v84;
    v84 = CGRectGetHeight(v172) - self->_activityItemTopInset;
  }

  v90 = [(CKPinnedConversationView *)self activityView];
  [v90 setInnerContentAlignmentFrame:{v79, v89, v83, v84}];

  v173.origin.x = v145;
  v173.origin.y = v144;
  v173.size.width = rect_16;
  v173.size.height = rect_8;
  v91 = CGRectGetMinX(v173);
  v174.origin.x = v145;
  v174.origin.y = v144;
  v174.size.width = rect_16;
  v174.size.height = rect_8;
  v92 = CGRectGetMinX(v174) - v91 - v91;
  v175.origin.x = v145;
  v175.origin.y = v144;
  v175.size.width = rect_16;
  v175.size.height = rect_8;
  v93 = v91 + v91 + CGRectGetMaxX(v175) + 0.0 - v92;
  v176.origin.x = v136;
  v176.origin.y = v146;
  v176.size.width = v143;
  v176.size.height = v76;
  if (CGRectIsEmpty(v176))
  {
    v94 = MinY;
  }

  else
  {
    v177.origin.x = v92;
    v177.origin.y = MinY;
    v177.size.width = v93;
    v177.size.height = rect_24a;
    v95 = CGRectGetMinX(v177);
    v178.origin.x = v136;
    v178.origin.y = v146;
    v178.size.width = v143;
    v178.size.height = v76;
    v96 = CGRectGetMinX(v178);
    if (v95 >= v96)
    {
      v96 = v95;
    }

    recta = v96;
    v179.origin.x = v92;
    v94 = MinY;
    v179.origin.y = MinY;
    v179.size.width = v93;
    v179.size.height = rect_24a;
    v97 = CGRectGetMaxX(v179);
    v180.origin.x = v136;
    v180.origin.y = v146;
    v180.size.width = v143;
    v180.size.height = v76;
    v98 = CGRectGetMaxX(v180);
    if (v97 < v98)
    {
      v98 = v97;
    }

    v92 = recta;
    v93 = v98 - recta;
  }

  v100 = v139;
  v99 = v140;
  if (self->_activityItemTopInset == 0.0)
  {
    v102 = rect_24a;
    v101 = v94;
  }

  else
  {
    v181.origin.x = v92;
    v181.origin.y = v94;
    v181.size.width = v93;
    v181.size.height = rect_24a;
    v101 = CGRectGetMinY(v181) + self->_activityItemTopInset;
    v182.origin.x = v92;
    v182.origin.y = v94;
    v182.size.width = v93;
    v182.size.height = rect_24a;
    v102 = CGRectGetHeight(v182) - self->_activityItemTopInset;
  }

  v103 = [(CKPinnedConversationView *)self activityView];
  [v103 setOuterContentAlignmentFrame:{v92, v101, v93, v102}];

  v104 = [(CKPinnedConversationView *)self conversation];
  if (![v104 isAdHocGroupConversation])
  {
    goto LABEL_36;
  }

  v105 = [(CKPinnedConversationView *)self avatarView];
  v106 = [v105 contacts];
  v107 = [v106 count];

  if (v107)
  {
    v104 = [(CKPinnedConversationView *)self avatarView];
    v108 = [(CKPinnedConversationView *)self activityView];
    [v104 frameForAvatarAtIndex:0 inView:v108];
    v99 = v109;
    v100 = v110;
    v141 = v112;
    v142 = v111;

LABEL_36:
  }

  v113 = [(CKPinnedConversationView *)self activityView];
  [v113 setActivityItemOriginationSubAvatarFrame:{v99, v100, v142, v141}];

  v115 = *MEMORY[0x1E695EFF8];
  v114 = *(MEMORY[0x1E695EFF8] + 8);
  v116 = *MEMORY[0x1E695EFF8];
  v117 = v114;
  if (self->_avatarMouthRegion)
  {
    [(CKPinnedConversationView *)self _centerPointOfFaceLandmarkRegion:rect_16 inImageOfSize:rect_8];
    v120 = v119;
    v121 = v118;
    if (v119 != v115 || (v116 = v115, v117 = v114, v118 != v114))
    {
      v122 = [(CKPinnedConversationView *)self avatarView];
      v123 = [(CKPinnedConversationView *)self activityView];
      [v122 convertPoint:v123 toView:{v120, v121}];
      v116 = v124;
      v117 = v125;
    }
  }

  if (v116 == v115 && v117 == v114)
  {
    v183.origin.x = v99;
    v183.origin.y = v100;
    v183.size.width = v142;
    v183.size.height = v141;
    v116 = CGRectGetMidX(v183);
    v184.origin.x = v99;
    v184.origin.y = v100;
    v184.size.width = v142;
    v184.size.height = v141;
    v117 = CGRectGetMidY(v184);
  }

  if (v116 == v115 && v117 == v114)
  {
    v185.origin.x = v145;
    v185.origin.y = v144;
    v185.size.width = rect_16;
    v185.size.height = rect_8;
    v126 = CGRectGetMidX(v185);
    v186.origin.x = v145;
    v186.origin.y = v144;
    v186.size.width = rect_16;
    v186.size.height = rect_8;
    v127 = CGRectGetMidY(v186);
    v128 = [(CKPinnedConversationView *)self activityView];
    [(CKPinnedConversationView *)self convertPoint:v128 toView:v126, v127];
    v116 = v129;
    v117 = v130;
  }

  v131 = [(CKPinnedConversationView *)self activityView];
  [v131 setActivityItemOriginationPoint:{v116, v117}];

  v132 = [(CKPinnedConversationView *)self avatarView];
  v133 = [v132 layer];
  [v133 setZPosition:0.0];

  v134 = [(CKPinnedConversationView *)self radiantShadowImageView];
  v135 = [v134 layer];
  [v135 setZPosition:-1.0];
}

- (void)_updateRadiantShadowAffineTranform
{
  v3 = [(CKPinnedConversationView *)self avatarView];
  [v3 frame];
  v5 = v4 * 0.136363636;

  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, 0.875, 0.875);
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeTranslation(&v12, 0.0, v5);
  t1 = v13;
  memset(&v11, 0, sizeof(v11));
  t2 = v12;
  CGAffineTransformConcat(&v11, &t1, &t2);
  v8 = v11;
  v6 = [(CKPinnedConversationView *)self radiantShadowImageView];
  v7 = [v6 layer];
  t1 = v8;
  [v7 setAffineTransform:&t1];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() avatarViewSizeFittingSize:self->_layoutStyle layoutStyle:{a3.width, 1.79769313e308}];
  v6 = v5;
  [(CKPinnedConversationView *)self titleLabelSizeFittingSize:width, 1.79769313e308];
  v8 = v7;
  [objc_opt_class() avatarViewPadding];
  v10 = v9;
  v12 = v11;
  [objc_opt_class() titleLabelVerticalPadding];
  v15 = v14 + v8 + v12 + v6 + v10 + v13;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

+ (CGSize)avatarViewSizeFittingSize:(CGSize)a3 layoutStyle:(int64_t)a4
{
  [a1 _maximumAvatarViewWidthFittingSize:{a3.width, a3.height}];
  v7 = v6;
  [a1 _preferredAvatarViewDiameterForLayoutStyle:a4];
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (double)_maximumAvatarViewWidthFittingSize:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() avatarViewPadding];
  return width - v4 - v5;
}

+ (double)_preferredAvatarViewDiameterForLayoutStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 6)
  {
    return dbl_190DD1990[a3];
  }

  return result;
}

- (CGRect)avatarViewFrameForSize:(CGSize)a3 layoutStyle:(int64_t)a4
{
  [objc_opt_class() avatarViewSizeFittingSize:a4 layoutStyle:{a3.width, a3.height}];
  v5 = v4;
  v7 = v6;
  [objc_opt_class() avatarViewPadding];
  v9 = v8;
  UIRoundToViewScale();
  v11 = v9;
  v12 = v5;
  v13 = v7;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGSize)titleLabelSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIImageView *)self->_unreadIndicator image];

  if (v6)
  {
    [(CKPinnedConversationView *)self unreadIndicatorSize];
    v8 = v7;
    [(CKPinnedConversationView *)self unreadIndicatorMinimumPadding];
    v11 = v10 + v8 + v9;
  }

  else
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 pinnedConversationViewTitleLabelToEdgePaddingWhenNoUnreadIndicator];
    v11 = v13;
  }

  v14 = width + v11 * -2.0;
  v15 = [(CKPinnedConversationView *)self titleLabel];
  [v15 sizeThatFits:{v14, height}];
  v17 = v16;
  v19 = v18;

  if (v14 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v14;
  }

  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)didEndDisplaying
{
  [(CKPinnedConversationActivityView *)self->_activityView resetToEmptySnapshot];

  [(CKPinnedConversationView *)self setAvatarSnapshot:0];
}

- (void)prepareForReuse
{
  [(CKPinnedConversationView *)self setAvatarSnapshot:0];
  [(CKPinnedConversationActivityView *)self->_activityView resetToEmptySnapshot];
  activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;

  [(NSMutableArray *)activeActivitySuppressionReasons removeAllObjects];
}

+ (UIEdgeInsets)avatarViewPadding
{
  v2 = CKIsRunningInMacCatalyst();
  v3 = 10.0;
  v4 = 8.0;
  if (v2)
  {
    v4 = 10.0;
  }

  else
  {
    v3 = 5.0;
  }

  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (void)setNeedsUnreadIndicatorLeadingEdgePadding:(BOOL)a3
{
  if (self->_needsUnreadIndicatorLeadingEdgePadding != a3)
  {
    self->_needsUnreadIndicatorLeadingEdgePadding = a3;
    [(CKPinnedConversationView *)self setNeedsLayout];
  }
}

- (double)_unreadIndicatorLeadingEdgePadding
{
  if (!self->_needsUnreadIndicatorLeadingEdgePadding)
  {
    return 0.0;
  }

  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 conversationListCellHighlightViewToUnreadIndicatorPadding];
  v4 = v3;

  return v4;
}

+ (UIEdgeInsets)titleLabelVerticalPadding
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 conversationListPinnedCellTitleLabelVerticalPadding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)unreadIndicatorSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 unreadIndicatorImageViewSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSDirectionalEdgeInsets)unreadIndicatorPreferredPadding
{
  [(CKPinnedConversationView *)self _unreadIndicatorLeadingEdgePadding];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 3.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v3;
  result.top = v4;
  return result;
}

- (NSDirectionalEdgeInsets)unreadIndicatorMinimumPadding
{
  [(CKPinnedConversationView *)self _unreadIndicatorLeadingEdgePadding];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 1.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v3;
  result.top = v4;
  return result;
}

- (void)updateActivityViewAnimated:(BOOL)a3 completion:(id)a4
{
  if (self->_activityView)
  {
    v4 = a3;
    v6 = a4;
    v13 = [(CKPinnedConversationView *)self conversation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained previousPinnedConversationActivitySnapshotForConversation:v13];

    if (v13)
    {
      v9 = [CKPinnedConversationActivitySnapshot alloc];
      v10 = [(CKPinnedConversationView *)self recentMessagesInPinnedConversations];
      v11 = [(CKPinnedConversationActivitySnapshot *)v9 initWithConversation:v13 recentMessagesInPinnedConversations:v10 previousSnapshot:v8];
    }

    else
    {
      v11 = +[CKPinnedConversationActivitySnapshot emptySnapshot];
    }

    [(CKPinnedConversationActivityView *)self->_activityView applySnapshot:v11 animated:v4 completion:v6];

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 pinnedConversationView:self didUpdateWithActivitySnapshot:v11];

    if ([v13 isAdHocGroupConversation])
    {
      [(CKPinnedConversationView *)self _updateAvatarView];
    }
  }
}

- (void)reapplyPreviouslyDisplayedActivitySnapshot:(id)a3
{
  if (a3)
  {
    [(CKPinnedConversationActivityView *)self->_activityView applySnapshot:a3 animated:0 completion:0];
  }
}

- (void)setPreferShortConversationName:(BOOL)a3
{
  if (self->_preferShortConversationName != a3)
  {
    self->_preferShortConversationName = a3;
    [(CKPinnedConversationView *)self _updateTitleLabel];
  }
}

- (void)_updateTitleLabelWithText:(id)a3
{
  v4 = a3;
  v5 = [(CKPinnedConversationView *)self titleLabel];
  [v5 setText:v4];
}

- (void)_updateTitleLabel
{
  v4 = [(CKConversation *)self->_conversation pinnedConversationDisplayNamePreferringShortName:[(CKPinnedConversationView *)self preferShortConversationName]];
  [(CKPinnedConversationView *)self _updateTitleLabelWithText:v4];
  v3 = [(CKPinnedConversationView *)self titleLabel];
  [v3 setTitleIconImageType:{+[CKPinnedConversationView _titleIconImageTypeForConversation:](CKPinnedConversationView, "_titleIconImageTypeForConversation:", self->_conversation)}];
}

- (void)_updateTitleLabelFont
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v5 = [v3 conversationListPinnedConversationNameFont];

  v4 = [(CKPinnedConversationView *)self titleLabel];
  [v4 setFont:v5];
}

- (void)setIsSelectedWithDarkAppearance:(BOOL)a3
{
  if (self->_isSelectedWithDarkAppearance != a3)
  {
    self->_isSelectedWithDarkAppearance = a3;
    [(CKPinnedConversationView *)self _updateTitleLabelColor];

    [(CKPinnedConversationView *)self _updateUnreadIndicator];
  }
}

- (void)_updateTitleLabelColor
{
  v3 = [(CKPinnedConversationView *)self isSelectedWithDarkAppearance];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = v5;
  if (v3)
  {
    [v5 conversationListPinnedConversationNameSelectedColor];
  }

  else
  {
    [v5 conversationListPinnedConversationNameColor];
  }
  v7 = ;

  [(CKLabel *)self->_titleLabel setColor:v7];
}

- (void)_updateUnreadIndicator
{
  v7 = [(CKPinnedConversationView *)self _unreadIndicatorImage];
  v3 = [(CKPinnedConversationView *)self unreadIndicator];
  v4 = v3;
  if (v7)
  {
    [v3 setImage:v7];

    v4 = [(CKPinnedConversationView *)self _unreadIndicatorColor];
    v5 = [(CKPinnedConversationView *)self unreadIndicator];
    [v5 setTintColor:v4];
  }

  else
  {
    [v3 setImage:0];
  }

  v6 = [(CKPinnedConversationView *)self unreadIndicator];
  [v6 setHidden:v7 == 0];
}

- (id)_unreadIndicatorImage
{
  v3 = [(CKPinnedConversationView *)self _shouldShowSummaryForSatelliteMessages];
  v4 = [(CKConversation *)self->_conversation hasUnreadMessages];
  if ([(CKPinnedConversationView *)self isFilteredByFocus])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 pinnedConversationFilteredByFocusIndicatorImage];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  if (v4 || v3)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 unreadIndicatorUntintedImage];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)_shouldShowSummaryForSatelliteMessages
{
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = [v3 isSatelliteConnectionActive];

  if (v4)
  {
    v5 = [(CKPinnedConversationView *)self conversation];

    if (v5)
    {
      v6 = [(CKPinnedConversationView *)self conversation];
      v7 = [v6 chat];

      if ([v7 pendingIncomingSatelliteMessageCount])
      {
        LODWORD(v5) = [v7 isDownloadingPendingSatelliteMessages] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_unreadIndicatorColor
{
  if ([(CKPinnedConversationView *)self isFilteredByFocus])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 theme];
    v5 = [v4 conversationListPinnedConversationFilteredByFocusIndicatorColor];
  }

  else
  {
    v6 = [(CKPinnedConversationView *)self isSelectedWithDarkAppearance];
    v3 = +[CKUIBehavior sharedBehaviors];
    v7 = [v3 theme];
    v4 = v7;
    if (v6)
    {
      [v7 readSelectedIndicatorColor];
    }

    else
    {
      [v7 unreadIndicatorColor];
    }
    v5 = ;
  }

  v8 = v5;

  return v8;
}

- (void)_updateAvatarMouthRegion
{
  if ([objc_opt_class() _mouthRegionDetectionEnabled])
  {
    v3 = [(CKPinnedConversationView *)self conversation];
    if (-[CKPinnedConversationView showsLiveActivity](self, "showsLiveActivity") && [v3 recipientCount] == 1)
    {
      v4 = [v3 recipient];
      v5 = [objc_opt_class() _requiredContactKeys];
      v6 = [v4 cnContactWithKeys:v5];
      v7 = [objc_opt_class() _cachedMouthRegionForContact:v6];
      avatarMouthRegion = self->_avatarMouthRegion;
      self->_avatarMouthRegion = v7;

      v9 = [objc_opt_class() _mouthRegionForContactImageCacheKeyForContact:v6];
      objc_initWeak(&location, self);
      v10 = objc_opt_class();
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __52__CKPinnedConversationView__updateAvatarMouthRegion__block_invoke;
      v17 = &unk_1E72F6F00;
      objc_copyWeak(&v20, &location);
      v11 = v6;
      v18 = v11;
      v12 = v9;
      v19 = v12;
      [v10 _updateCachedMouthRegionIfNecessaryForContact:v11 completion:&v14];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = self->_avatarMouthRegion;
      self->_avatarMouthRegion = 0;
    }

    [(CKPinnedConversationView *)self setNeedsLayout:v14];
  }
}

void __52__CKPinnedConversationView__updateAvatarMouthRegion__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained avatarView];
  v5 = [v4 contacts];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [objc_opt_class() _mouthRegionForContactImageCacheKeyForContact:*(a1 + 32)];

    if ([v8 isEqualToString:*(a1 + 40)])
    {
      v9 = objc_loadWeakRetained((a1 + 48));
      [v9 setAvatarMouthRegion:v11];

      v10 = objc_loadWeakRetained((a1 + 48));
      [v10 setNeedsLayout];
    }
  }
}

- (void)_updateAvatarView
{
  v16 = [(CKPinnedConversationView *)self conversation];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v3 avatarViewAllowsStaleRendering])
  {
    v4 = [(CNAvatarView *)self->_avatarView isDisplayingContent];

    if (v4)
    {
      [(CNAvatarView *)self->_avatarView setAllowStaleRendering:1];
    }
  }

  else
  {
  }

  v5 = [v16 chat];
  v6 = [v5 chatIdentifier];
  [(CKAvatarView *)self->_avatarView _ck_setContextToken:v6];

  v7 = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v8 = MEMORY[0x1E695E0F0];
  v9 = [v16 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v7];
  v10 = [(CKPinnedConversationActivityView *)self->_activityView displayedContacts];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  v14 = [v9 ck_contactInstancesMatchingContacts:v13];

  v15 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v9 maskingContacts:v14];
  -[CNAvatarView setStyle:](self->_avatarView, "setStyle:", [v16 shouldHaveRoundRectAvatar]);
  [(CKPinnedConversationView *)self setNeedsLayout];
}

- (void)_updateRadiantShadowImageView
{
  v3 = [(CKConversation *)self->_conversation isAdHocGroupConversation];
  v4 = v3;
  if (v3)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 pinnedAdHocConversationRadiantShadowImage];

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 conversationListPinnedAdHocConversationRadiantShadowColor];

    v10 = 1.0;
  }

  else
  {
    avatarSnapshot = self->_avatarSnapshot;
    if (avatarSnapshot)
    {
      v6 = avatarSnapshot;
    }

    else
    {
      v12 = [(CKPinnedConversationView *)self avatarView];
      v6 = [v12 contentImage];
    }

    v9 = 0;
    v10 = 0.3;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v14 setValue:@"low" forKeyPath:*MEMORY[0x1E6979BA0]];
  [v14 setValue:&unk_1F04E8C18 forKeyPath:*MEMORY[0x1E6979BA8]];
  v15 = MEMORY[0x1E695E110];
  [v14 setValue:MEMORY[0x1E695E110] forKeyPath:*MEMORY[0x1E6979B48]];
  [v14 setValue:v15 forKeyPath:*MEMORY[0x1E6979B78]];
  [v14 setValue:v15 forKeyPath:*MEMORY[0x1E6979AC8]];
  [v14 setValue:v15 forKeyPath:*MEMORY[0x1E6979B68]];
  [v13 addObject:v14];
  if (!v4)
  {
    v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v16 setValue:&unk_1F04E8C28 forKeyPath:*MEMORY[0x1E6979990]];
    [v13 addObject:v16];

    v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    v21[0] = xmmword_190DD1950;
    v21[1] = xmmword_190DD1960;
    v21[2] = xmmword_190DD1970;
    v21[3] = xmmword_190DD1980;
    v21[4] = xmmword_190DD0BB0;
    v18 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v21];
    [v17 setValue:v18 forKey:*MEMORY[0x1E6979AC0]];
    [v13 addObject:v17];
  }

  [(UIImageView *)self->_radiantShadowImageView setAlpha:v10];
  [(UIImageView *)self->_radiantShadowImageView setImage:v6];
  [(UIImageView *)self->_radiantShadowImageView setTintColor:v9];
  v19 = [v13 copy];
  v20 = [(UIImageView *)self->_radiantShadowImageView layer];
  [v20 setFilters:v19];
}

+ (id)_requiredContactKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  if ([a1 _mouthRegionDetectionEnabled])
  {
    v2 = *MEMORY[0x1E695C400];
    v5[0] = *MEMORY[0x1E695C280];
    v5[1] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

+ (id)_mouthRegionForContactImageCache
{
  if (_mouthRegionForContactImageCache_onceToken != -1)
  {
    +[CKPinnedConversationView _mouthRegionForContactImageCache];
  }

  v3 = _mouthRegionForContactImageCache_mouthRegionCache;

  return v3;
}

void __60__CKPinnedConversationView__mouthRegionForContactImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _mouthRegionForContactImageCache_mouthRegionCache;
  _mouthRegionForContactImageCache_mouthRegionCache = v0;
}

+ (id)_mouthRegionDetectionDispatchQueue
{
  if (_mouthRegionDetectionDispatchQueue_onceToken != -1)
  {
    +[CKPinnedConversationView _mouthRegionDetectionDispatchQueue];
  }

  v3 = _mouthRegionDetectionDispatchQueue_queue;

  return v3;
}

void __62__CKPinnedConversationView__mouthRegionDetectionDispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.mouth-region-detection", v2);
  v1 = _mouthRegionDetectionDispatchQueue_queue;
  _mouthRegionDetectionDispatchQueue_queue = v0;
}

+ (id)_mouthRegionForContactImageCacheKeyForContact:(id)a3
{
  v3 = a3;
  v4 = [v3 imageHash];
  v5 = [v4 base64EncodedStringWithOptions:0];

  if (![v5 length])
  {
    v6 = [v3 identifier];

    v5 = v6;
  }

  return v5;
}

+ (id)_cachedMouthRegionForContact:(id)a3
{
  v4 = [a1 _mouthRegionForContactImageCacheKeyForContact:a3];
  v5 = [a1 _mouthRegionForContactImageCache];
  v6 = [v5 objectForKey:v4];
  MEMORY[0x193AF5EC0](@"VNFaceLandmarkRegion2D", @"Vision");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_updateCachedMouthRegionIfNecessaryForContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _mouthRegionForContactImageCacheKeyForContact:v6];
  v9 = [a1 _mouthRegionForContactImageCache];
  v10 = [v9 objectForKey:v8];
  if (v10)
  {
    MEMORY[0x193AF5EC0](@"VNFaceLandmarkRegion2D", @"Vision");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      v12 = v10;
    }

    else
    {
      v11 = v7;
      v12 = 0;
    }

    (*(v7 + 2))(v11, v12, 0);
  }

  else
  {
    v13 = [a1 _mouthRegionDetectionDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke;
    block[3] = &unk_1E72EE8A0;
    v19 = a1;
    v15 = v6;
    v16 = v9;
    v17 = v8;
    v18 = v7;
    dispatch_async(v13, block);
  }
}

void __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke_2;
  v4[3] = &unk_1E72F6F50;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 _determineMouthRegionForContact:v3 completion:v4];
}

void __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke_3;
  block[3] = &unk_1E72F6F28;
  v11 = v5;
  v12 = a1[4];
  v13 = a1[5];
  v7 = a1[6];
  v14 = v6;
  v15 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  [*(a1 + 40) setObject:v3 forKey:*(a1 + 48)];
  (*(*(a1 + 64) + 16))();
}

+ (void)_determineMouthRegionForContact:(id)a3 completion:(id)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x193AF5EC0](@"VNDetectFaceLandmarksRequest", @"Vision"));
  [v7 setRevision:3];
  [v7 setConstellation:2];
  v8 = [v5 thumbnailImageData];
  v9 = [objc_alloc(MEMORY[0x193AF5EC0](@"VNImageRequestHandler" @"Vision"))];
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v5 identifier];
    *buf = 138412290;
    v48 = v11;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Beginning recognition of mouth region in contact image for contact %@", buf, 0xCu);
  }

  v53[0] = v7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  v45 = 0;
  v13 = [v9 performRequests:v12 error:&v45];
  v14 = v45;

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v5 identifier];
    *buf = 138412802;
    v48 = v16;
    v49 = 2048;
    v50 = v13;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Recognition of mouth region in contact image completed for contact %@. Success: %ld Error: %@", buf, 0x20u);
  }

  if (v13)
  {
    v37 = v14;
    v38 = v9;
    v39 = v8;
    v40 = v6;
    v17 = [v7 results];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v41 + 1) + 8 * i);
          MEMORY[0x193AF5EC0](@"VNFaceObservation", @"Vision");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v21);
    }

    if ([v18 count] == 1)
    {
      v25 = [v18 firstObject];
      v26 = [v25 landmarks];
      v27 = [v26 outerLips];
      v28 = IMLogHandleForCategory();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      v8 = v39;
      v6 = v40;
      if (v27)
      {
        if (v29)
        {
          [v5 identifier];
          v30 = v35 = v26;
          *buf = 138412290;
          v48 = v30;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Mouth region succesfully extracted from recognition results for contact: %@", buf, 0xCu);

          v26 = v35;
        }

        (v40)[2](v40, v27, 0);
      }

      else
      {
        if (v29)
        {
          [v5 identifier];
          v34 = v36 = v26;
          *buf = 138412290;
          v48 = v34;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Recognition results did not contain a mouth region for contact: %@", buf, 0xCu);

          v26 = v36;
        }

        v40[2](v40, 0, 0);
      }
    }

    else
    {
      v32 = IMLogHandleForCategory();
      v8 = v39;
      v6 = v40;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v5 identifier];
        *buf = 138412290;
        v48 = v33;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Recognition results contain more than one face region in contact image for contact: %@", buf, 0xCu);
      }

      v40[2](v40, 0, 0);
    }

    v14 = v37;
    v9 = v38;
  }

  else
  {
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CKPinnedConversationView _determineMouthRegionForContact:v14 completion:v31];
    }

    v6[2](v6, 0, v14);
  }
}

- (CGPoint)_centerPointOfFaceLandmarkRegion:(id)a3 inImageOfSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [v6 pointsInImageOfSize:{width, height}];
  v8 = [v6 pointCount];
  if (v7 && v8 >= 1)
  {
    v9 = 0;
    v10 = 0uLL;
    do
    {
      v10 = vaddq_f64(v10, *(v7 + 16 * v9++));
    }

    while (v8 != v9);
    v11 = vdivq_f64(v10, vdupq_lane_s64(COERCE__INT64(v8), 0));
  }

  else
  {
    v11 = *MEMORY[0x1E695EFF8];
  }

  v14 = v11;

  v13 = v14.f64[1];
  v12 = v14.f64[0];
  result.y = v13;
  result.x = v12;
  return result;
}

+ (BOOL)_mouthRegionDetectionEnabled
{
  if (_mouthRegionDetectionEnabled_onceToken != -1)
  {
    +[CKPinnedConversationView _mouthRegionDetectionEnabled];
  }

  return _mouthRegionDetectionEnabled_mouthRegionDetectionEnabled;
}

uint64_t __56__CKPinnedConversationView__mouthRegionDetectionEnabled__block_invoke()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  _mouthRegionDetectionEnabled_mouthRegionDetectionEnabled = result;
  return result;
}

- (CGRect)activityItemBoundingFrame
{
  x = self->_activityItemBoundingFrame.origin.x;
  y = self->_activityItemBoundingFrame.origin.y;
  width = self->_activityItemBoundingFrame.size.width;
  height = self->_activityItemBoundingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CKPinnedConversationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_determineMouthRegionForContact:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Recognition failed with error: %@", &v2, 0xCu);
}

@end