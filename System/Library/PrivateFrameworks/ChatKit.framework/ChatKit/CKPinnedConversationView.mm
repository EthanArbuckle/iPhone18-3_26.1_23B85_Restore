@interface CKPinnedConversationView
+ (BOOL)_mouthRegionDetectionEnabled;
+ (CGSize)avatarViewSizeFittingSize:(CGSize)size layoutStyle:(int64_t)style;
+ (UIEdgeInsets)avatarViewPadding;
+ (UIEdgeInsets)titleLabelVerticalPadding;
+ (double)_maximumAvatarViewWidthFittingSize:(CGSize)size;
+ (double)_preferredAvatarViewDiameterForLayoutStyle:(int64_t)style;
+ (id)_cachedMouthRegionForContact:(id)contact;
+ (id)_mouthRegionDetectionDispatchQueue;
+ (id)_mouthRegionForContactImageCache;
+ (id)_mouthRegionForContactImageCacheKeyForContact:(id)contact;
+ (id)_requiredContactKeys;
+ (void)_determineMouthRegionForContact:(id)contact completion:(id)completion;
+ (void)_updateCachedMouthRegionIfNecessaryForContact:(id)contact completion:(id)completion;
- (BOOL)_shouldShowSummaryForSatelliteMessages;
- (BOOL)isSuppressingActivity;
- (BOOL)isUnreadIndicatorHidden;
- (CGPoint)_centerPointOfFaceLandmarkRegion:(id)region inImageOfSize:(CGSize)size;
- (CGRect)activityItemBoundingFrame;
- (CGRect)avatarViewFrameForSize:(CGSize)size layoutStyle:(int64_t)style;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)titleLabelSizeFittingSize:(CGSize)size;
- (CGSize)unreadIndicatorSize;
- (CKPinnedConversationView)initWithFrame:(CGRect)frame;
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
- (void)_updateTitleLabelWithText:(id)text;
- (void)_updateUnreadIndicator;
- (void)beginSuppressingActivityWithReason:(id)reason animated:(BOOL)animated completion:(id)completion;
- (void)didEndDisplaying;
- (void)dimAvatarView;
- (void)endSuppressingActivityWithReason:(id)reason animated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)reapplyPreviouslyDisplayedActivitySnapshot:(id)snapshot;
- (void)removeDimmingFilter;
- (void)setActivityItemBoundingFrame:(CGRect)frame;
- (void)setActivityItemOriginationDirection:(int64_t)direction;
- (void)setAvatarSnapshot:(id)snapshot;
- (void)setConversation:(id)conversation;
- (void)setDimmed:(BOOL)dimmed;
- (void)setIsFilteredByFocus:(BOOL)focus animated:(BOOL)animated;
- (void)setIsSelectedWithDarkAppearance:(BOOL)appearance;
- (void)setLayoutStyle:(int64_t)style;
- (void)setNeedsUnreadIndicatorLeadingEdgePadding:(BOOL)padding;
- (void)setPreferShortConversationName:(BOOL)name;
- (void)setRecentMessagesInPinnedConversations:(id)conversations;
- (void)setShowsLiveActivity:(BOOL)activity;
- (void)setUnreadIndicatorHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)updateActivityViewAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation CKPinnedConversationView

- (CKPinnedConversationView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = CKPinnedConversationView;
  v3 = [(CKPinnedConversationView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    layer = [(UIImageView *)v4->_radiantShadowImageView layer];
    [layer setShouldRasterize:1];

    layer2 = [(UIImageView *)v4->_radiantShadowImageView layer];
    [layer2 setRasterizationScale:0.5];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
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

- (void)setShowsLiveActivity:(BOOL)activity
{
  if (self->_showsLiveActivity != activity)
  {
    self->_showsLiveActivity = activity;
    if (activity)
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

- (void)setConversation:(id)conversation
{
  objc_storeStrong(&self->_conversation, conversation);
  [(CKPinnedConversationView *)self _updateTitleLabel];
  [(CKPinnedConversationView *)self _updateUnreadIndicator];
  [(CKPinnedConversationView *)self _updateAvatarView];

  [(CKPinnedConversationView *)self _updateAvatarMouthRegion];
}

- (void)setRecentMessagesInPinnedConversations:(id)conversations
{
  v4 = [conversations copy];
  recentMessagesInPinnedConversations = self->_recentMessagesInPinnedConversations;
  self->_recentMessagesInPinnedConversations = v4;
}

- (void)setUnreadIndicatorHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  if (animated)
  {
    if (!hidden)
    {
      unreadIndicator = [(CKPinnedConversationView *)self unreadIndicator];
      isHidden = [unreadIndicator isHidden];

      if (isHidden)
      {
        unreadIndicator2 = [(CKPinnedConversationView *)self unreadIndicator];
        [unreadIndicator2 setAlpha:0.0];

        unreadIndicator3 = [(CKPinnedConversationView *)self unreadIndicator];
        [unreadIndicator3 setHidden:0];
      }
    }

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CKPinnedConversationView_setUnreadIndicatorHidden_animated___block_invoke;
    v15[3] = &unk_1E72F3F80;
    objc_copyWeak(&v16, &location);
    v17 = hiddenCopy;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CKPinnedConversationView_setUnreadIndicatorHidden_animated___block_invoke_2;
    v12[3] = &unk_1E72F6ED8;
    objc_copyWeak(&v13, &location);
    v14 = hiddenCopy;
    [v10 animateWithDuration:v15 animations:v12 completion:0.300000012];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    unreadIndicator4 = [(CKPinnedConversationView *)self unreadIndicator];
    [unreadIndicator4 setHidden:hiddenCopy];
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
  unreadIndicator = [(CKPinnedConversationView *)self unreadIndicator];
  isHidden = [unreadIndicator isHidden];

  return isHidden;
}

- (void)setIsFilteredByFocus:(BOOL)focus animated:(BOOL)animated
{
  if (self->_isFilteredByFocus != focus)
  {
    self->_isFilteredByFocus = focus;
    if (focus)
    {
      [(CKPinnedConversationView *)self beginSuppressingActivityWithReason:@"FilteredByFocus" animated:animated completion:0];
    }

    else
    {
      [(CKPinnedConversationView *)self endSuppressingActivityWithReason:@"FilteredByFocus" animated:animated completion:0];
    }

    [(CKPinnedConversationView *)self _updateUnreadIndicator];
  }
}

- (void)setAvatarSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_avatarSnapshot != snapshotCopy)
  {
    v19 = snapshotCopy;
    objc_storeStrong(&self->_avatarSnapshot, snapshot);
    avatarSnapshotImageView = self->_avatarSnapshotImageView;
    if (v19)
    {
      if (!avatarSnapshotImageView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
        avatarView = [(CKPinnedConversationView *)self avatarView];
        [avatarView frame];
        v9 = [v7 initWithFrame:?];
        v10 = self->_avatarSnapshotImageView;
        self->_avatarSnapshotImageView = v9;

        v11 = self->_avatarSnapshotImageView;
        avatarView2 = [(CKPinnedConversationView *)self avatarView];
        [(CKPinnedConversationView *)self insertSubview:v11 aboveSubview:avatarView2];
      }

      avatarView3 = [(CKPinnedConversationView *)self avatarView];
      [avatarView3 setHidden:1];

      avatarSnapshotImageView = [(CKPinnedConversationView *)self avatarSnapshotImageView];
      [avatarSnapshotImageView setImage:v19];
    }

    else
    {
      [(UIImageView *)avatarSnapshotImageView removeFromSuperview];
      v15 = self->_avatarSnapshotImageView;
      self->_avatarSnapshotImageView = 0;

      avatarView4 = [(CKPinnedConversationView *)self avatarView];
      [avatarView4 setHidden:0];

      avatarSnapshotImageView = [(CKPinnedConversationView *)self avatarView];
      contentImage = [avatarSnapshotImageView contentImage];
      radiantShadowImageView = [(CKPinnedConversationView *)self radiantShadowImageView];
      [radiantShadowImageView setImage:contentImage];
    }

    [(CKPinnedConversationView *)self _updateRadiantShadowImageView];
    [(CKPinnedConversationView *)self setNeedsLayout];
    snapshotCopy = v19;
  }
}

- (void)setActivityItemOriginationDirection:(int64_t)direction
{
  activityView = [(CKPinnedConversationView *)self activityView];
  [activityView setActivityItemOriginationDirection:direction];
}

- (int64_t)activityItemOriginationDirection
{
  activityView = [(CKPinnedConversationView *)self activityView];
  activityItemOriginationDirection = [activityView activityItemOriginationDirection];

  return activityItemOriginationDirection;
}

- (void)beginSuppressingActivityWithReason:(id)reason animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  reasonCopy = reason;
  completionCopy = completion;
  activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;
  if (!activeActivitySuppressionReasons)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = self->_activeActivitySuppressionReasons;
    self->_activeActivitySuppressionReasons = v10;

    activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;
  }

  [(NSMutableArray *)activeActivitySuppressionReasons addObject:reasonCopy];
  activityView = [(CKPinnedConversationView *)self activityView];
  [activityView setSuppressingActivity:1 animated:animatedCopy completion:completionCopy];
}

- (void)endSuppressingActivityWithReason:(id)reason animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  activeActivitySuppressionReasons = self->_activeActivitySuppressionReasons;
  completionCopy = completion;
  [(NSMutableArray *)activeActivitySuppressionReasons removeObject:reason];
  v10 = [(NSMutableArray *)self->_activeActivitySuppressionReasons count]!= 0;
  activityView = [(CKPinnedConversationView *)self activityView];
  [activityView setSuppressingActivity:v10 animated:animatedCopy completion:completionCopy];
}

- (BOOL)isSuppressingActivity
{
  activityView = [(CKPinnedConversationView *)self activityView];
  isSuppressingActivity = [activityView isSuppressingActivity];

  return isSuppressingActivity;
}

- (void)setDimmed:(BOOL)dimmed
{
  if (self->_dimmed != dimmed)
  {
    self->_dimmed = dimmed;
    if (dimmed)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] conversationPinningTouchdownDimEnabled])
  {
    dimmingFilter = [(CKPinnedConversationView *)self dimmingFilter];

    if (!dimmingFilter)
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
      [(CKPinnedConversationView *)self setDimmingFilter:v4];

      dimmingFilter2 = [(CKPinnedConversationView *)self dimmingFilter];
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
      cGColor = [v6 CGColor];
      [dimmingFilter2 setValue:cGColor forKey:*MEMORY[0x1E6979AA0]];

      avatarView = [(CKPinnedConversationView *)self avatarView];
      layer = [avatarView layer];
      dimmingFilter3 = [(CKPinnedConversationView *)self dimmingFilter];
      v13[0] = dimmingFilter3;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [layer setFilters:v11];
    }
  }

  else
  {
  }
}

- (void)removeDimmingFilter
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  conversationPinningTouchdownDimEnabled = [mEMORY[0x1E69A8070] conversationPinningTouchdownDimEnabled];

  if (conversationPinningTouchdownDimEnabled)
  {
    avatarView = [(CKPinnedConversationView *)self avatarView];
    layer = [avatarView layer];
    [layer setFilters:0];

    [(CKPinnedConversationView *)self setDimmingFilter:0];
  }
}

- (void)setActivityItemBoundingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_activityItemBoundingFrame = &self->_activityItemBoundingFrame;
  if (!CGRectEqualToRect(self->_activityItemBoundingFrame, frame))
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
  avatarView = [(CKPinnedConversationView *)self avatarView];
  [avatarView setFrame:{v11, v13, v15, v17}];

  conversation = [(CKPinnedConversationView *)self conversation];
  if ([conversation isBusinessConversation])
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v17 * 0.5;
  }

  avatarView2 = [(CKPinnedConversationView *)self avatarView];
  layer = [avatarView2 layer];
  [layer setCornerRadius:v20];

  avatarSnapshotImageView = [(CKPinnedConversationView *)self avatarSnapshotImageView];
  [avatarSnapshotImageView setFrame:{v11, v13, v15, v17}];

  activityView = [(CKPinnedConversationView *)self activityView];
  [activityView setFrame:{v4, rect_24, v7, v9}];

  activityView2 = [(CKPinnedConversationView *)self activityView];
  [(CKPinnedConversationView *)self convertRect:activityView2 toView:v11, v13, v15, v17];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  activityView3 = [(CKPinnedConversationView *)self activityView];
  [activityView3 setAvatarFrame:{v27, v29, v31, v33}];

  radiantShadowImageView = [(CKPinnedConversationView *)self radiantShadowImageView];
  layer2 = [radiantShadowImageView layer];
  [layer2 setBounds:{0.0, 0.0, v15, v17}];

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
  radiantShadowImageView2 = [(CKPinnedConversationView *)self radiantShadowImageView];
  layer3 = [radiantShadowImageView2 layer];
  [layer3 setPosition:{MidX, MidY}];

  radiantShadowImageView3 = [(CKPinnedConversationView *)self radiantShadowImageView];
  layer4 = [radiantShadowImageView3 layer];
  [layer4 setZPosition:-1.0];

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
  titleLabel = [(CKPinnedConversationView *)self titleLabel];
  [titleLabel setFrame:{v50, v51, v44, v46}];

  [(CKPinnedConversationView *)self unreadIndicatorSize];
  v54 = v53;
  v56 = v55;
  [(CKPinnedConversationView *)self unreadIndicatorPreferredPadding];
  v58 = v57;
  [(CKPinnedConversationView *)self unreadIndicatorMinimumPadding];
  v60 = v59;
  _shouldReverseLayoutDirection = [(CKPinnedConversationView *)self _shouldReverseLayoutDirection];
  v62 = v50;
  v63 = v51;
  v64 = v44;
  v65 = v46;
  if (_shouldReverseLayoutDirection)
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
  unreadIndicator = [(CKPinnedConversationView *)self unreadIndicator];
  [unreadIndicator setFrame:{v68, v72, v54, v56}];

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

  activityView4 = [(CKPinnedConversationView *)self activityView];
  [activityView4 setInnerContentAlignmentFrame:{v79, v89, v83, v84}];

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

  activityView5 = [(CKPinnedConversationView *)self activityView];
  [activityView5 setOuterContentAlignmentFrame:{v92, v101, v93, v102}];

  conversation2 = [(CKPinnedConversationView *)self conversation];
  if (![conversation2 isAdHocGroupConversation])
  {
    goto LABEL_36;
  }

  avatarView3 = [(CKPinnedConversationView *)self avatarView];
  contacts = [avatarView3 contacts];
  v107 = [contacts count];

  if (v107)
  {
    conversation2 = [(CKPinnedConversationView *)self avatarView];
    activityView6 = [(CKPinnedConversationView *)self activityView];
    [conversation2 frameForAvatarAtIndex:0 inView:activityView6];
    v99 = v109;
    v100 = v110;
    v141 = v112;
    v142 = v111;

LABEL_36:
  }

  activityView7 = [(CKPinnedConversationView *)self activityView];
  [activityView7 setActivityItemOriginationSubAvatarFrame:{v99, v100, v142, v141}];

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
      avatarView4 = [(CKPinnedConversationView *)self avatarView];
      activityView8 = [(CKPinnedConversationView *)self activityView];
      [avatarView4 convertPoint:activityView8 toView:{v120, v121}];
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
    activityView9 = [(CKPinnedConversationView *)self activityView];
    [(CKPinnedConversationView *)self convertPoint:activityView9 toView:v126, v127];
    v116 = v129;
    v117 = v130;
  }

  activityView10 = [(CKPinnedConversationView *)self activityView];
  [activityView10 setActivityItemOriginationPoint:{v116, v117}];

  avatarView5 = [(CKPinnedConversationView *)self avatarView];
  layer5 = [avatarView5 layer];
  [layer5 setZPosition:0.0];

  radiantShadowImageView4 = [(CKPinnedConversationView *)self radiantShadowImageView];
  layer6 = [radiantShadowImageView4 layer];
  [layer6 setZPosition:-1.0];
}

- (void)_updateRadiantShadowAffineTranform
{
  avatarView = [(CKPinnedConversationView *)self avatarView];
  [avatarView frame];
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
  radiantShadowImageView = [(CKPinnedConversationView *)self radiantShadowImageView];
  layer = [radiantShadowImageView layer];
  t1 = v8;
  [layer setAffineTransform:&t1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() avatarViewSizeFittingSize:self->_layoutStyle layoutStyle:{fits.width, 1.79769313e308}];
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

+ (CGSize)avatarViewSizeFittingSize:(CGSize)size layoutStyle:(int64_t)style
{
  [self _maximumAvatarViewWidthFittingSize:{size.width, size.height}];
  v7 = v6;
  [self _preferredAvatarViewDiameterForLayoutStyle:style];
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (double)_maximumAvatarViewWidthFittingSize:(CGSize)size
{
  width = size.width;
  [objc_opt_class() avatarViewPadding];
  return width - v4 - v5;
}

+ (double)_preferredAvatarViewDiameterForLayoutStyle:(int64_t)style
{
  result = 0.0;
  if (style <= 6)
  {
    return dbl_190DD1990[style];
  }

  return result;
}

- (CGRect)avatarViewFrameForSize:(CGSize)size layoutStyle:(int64_t)style
{
  [objc_opt_class() avatarViewSizeFittingSize:style layoutStyle:{size.width, size.height}];
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

- (CGSize)titleLabelSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  image = [(UIImageView *)self->_unreadIndicator image];

  if (image)
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
  titleLabel = [(CKPinnedConversationView *)self titleLabel];
  [titleLabel sizeThatFits:{v14, height}];
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

- (void)setNeedsUnreadIndicatorLeadingEdgePadding:(BOOL)padding
{
  if (self->_needsUnreadIndicatorLeadingEdgePadding != padding)
  {
    self->_needsUnreadIndicatorLeadingEdgePadding = padding;
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

- (void)updateActivityViewAnimated:(BOOL)animated completion:(id)completion
{
  if (self->_activityView)
  {
    animatedCopy = animated;
    completionCopy = completion;
    conversation = [(CKPinnedConversationView *)self conversation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained previousPinnedConversationActivitySnapshotForConversation:conversation];

    if (conversation)
    {
      v9 = [CKPinnedConversationActivitySnapshot alloc];
      recentMessagesInPinnedConversations = [(CKPinnedConversationView *)self recentMessagesInPinnedConversations];
      v11 = [(CKPinnedConversationActivitySnapshot *)v9 initWithConversation:conversation recentMessagesInPinnedConversations:recentMessagesInPinnedConversations previousSnapshot:v8];
    }

    else
    {
      v11 = +[CKPinnedConversationActivitySnapshot emptySnapshot];
    }

    [(CKPinnedConversationActivityView *)self->_activityView applySnapshot:v11 animated:animatedCopy completion:completionCopy];

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 pinnedConversationView:self didUpdateWithActivitySnapshot:v11];

    if ([conversation isAdHocGroupConversation])
    {
      [(CKPinnedConversationView *)self _updateAvatarView];
    }
  }
}

- (void)reapplyPreviouslyDisplayedActivitySnapshot:(id)snapshot
{
  if (snapshot)
  {
    [(CKPinnedConversationActivityView *)self->_activityView applySnapshot:snapshot animated:0 completion:0];
  }
}

- (void)setPreferShortConversationName:(BOOL)name
{
  if (self->_preferShortConversationName != name)
  {
    self->_preferShortConversationName = name;
    [(CKPinnedConversationView *)self _updateTitleLabel];
  }
}

- (void)_updateTitleLabelWithText:(id)text
{
  textCopy = text;
  titleLabel = [(CKPinnedConversationView *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (void)_updateTitleLabel
{
  v4 = [(CKConversation *)self->_conversation pinnedConversationDisplayNamePreferringShortName:[(CKPinnedConversationView *)self preferShortConversationName]];
  [(CKPinnedConversationView *)self _updateTitleLabelWithText:v4];
  titleLabel = [(CKPinnedConversationView *)self titleLabel];
  [titleLabel setTitleIconImageType:{+[CKPinnedConversationView _titleIconImageTypeForConversation:](CKPinnedConversationView, "_titleIconImageTypeForConversation:", self->_conversation)}];
}

- (void)_updateTitleLabelFont
{
  v3 = +[CKUIBehavior sharedBehaviors];
  conversationListPinnedConversationNameFont = [v3 conversationListPinnedConversationNameFont];

  titleLabel = [(CKPinnedConversationView *)self titleLabel];
  [titleLabel setFont:conversationListPinnedConversationNameFont];
}

- (void)setIsSelectedWithDarkAppearance:(BOOL)appearance
{
  if (self->_isSelectedWithDarkAppearance != appearance)
  {
    self->_isSelectedWithDarkAppearance = appearance;
    [(CKPinnedConversationView *)self _updateTitleLabelColor];

    [(CKPinnedConversationView *)self _updateUnreadIndicator];
  }
}

- (void)_updateTitleLabelColor
{
  isSelectedWithDarkAppearance = [(CKPinnedConversationView *)self isSelectedWithDarkAppearance];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  v6 = theme;
  if (isSelectedWithDarkAppearance)
  {
    [theme conversationListPinnedConversationNameSelectedColor];
  }

  else
  {
    [theme conversationListPinnedConversationNameColor];
  }
  v7 = ;

  [(CKLabel *)self->_titleLabel setColor:v7];
}

- (void)_updateUnreadIndicator
{
  _unreadIndicatorImage = [(CKPinnedConversationView *)self _unreadIndicatorImage];
  unreadIndicator = [(CKPinnedConversationView *)self unreadIndicator];
  _unreadIndicatorColor = unreadIndicator;
  if (_unreadIndicatorImage)
  {
    [unreadIndicator setImage:_unreadIndicatorImage];

    _unreadIndicatorColor = [(CKPinnedConversationView *)self _unreadIndicatorColor];
    unreadIndicator2 = [(CKPinnedConversationView *)self unreadIndicator];
    [unreadIndicator2 setTintColor:_unreadIndicatorColor];
  }

  else
  {
    [unreadIndicator setImage:0];
  }

  unreadIndicator3 = [(CKPinnedConversationView *)self unreadIndicator];
  [unreadIndicator3 setHidden:_unreadIndicatorImage == 0];
}

- (id)_unreadIndicatorImage
{
  _shouldShowSummaryForSatelliteMessages = [(CKPinnedConversationView *)self _shouldShowSummaryForSatelliteMessages];
  hasUnreadMessages = [(CKConversation *)self->_conversation hasUnreadMessages];
  if ([(CKPinnedConversationView *)self isFilteredByFocus])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    pinnedConversationFilteredByFocusIndicatorImage = [v5 pinnedConversationFilteredByFocusIndicatorImage];
LABEL_5:
    v7 = pinnedConversationFilteredByFocusIndicatorImage;

    goto LABEL_7;
  }

  if (hasUnreadMessages || _shouldShowSummaryForSatelliteMessages)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    pinnedConversationFilteredByFocusIndicatorImage = [v5 unreadIndicatorUntintedImage];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)_shouldShowSummaryForSatelliteMessages
{
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isSatelliteConnectionActive = [mEMORY[0x1E69A5B00] isSatelliteConnectionActive];

  if (isSatelliteConnectionActive)
  {
    conversation = [(CKPinnedConversationView *)self conversation];

    if (conversation)
    {
      conversation2 = [(CKPinnedConversationView *)self conversation];
      chat = [conversation2 chat];

      if ([chat pendingIncomingSatelliteMessageCount])
      {
        LODWORD(conversation) = [chat isDownloadingPendingSatelliteMessages] ^ 1;
      }

      else
      {
        LOBYTE(conversation) = 0;
      }
    }
  }

  else
  {
    LOBYTE(conversation) = 0;
  }

  return conversation;
}

- (id)_unreadIndicatorColor
{
  if ([(CKPinnedConversationView *)self isFilteredByFocus])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    theme = [v3 theme];
    conversationListPinnedConversationFilteredByFocusIndicatorColor = [theme conversationListPinnedConversationFilteredByFocusIndicatorColor];
  }

  else
  {
    isSelectedWithDarkAppearance = [(CKPinnedConversationView *)self isSelectedWithDarkAppearance];
    v3 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v3 theme];
    theme = theme2;
    if (isSelectedWithDarkAppearance)
    {
      [theme2 readSelectedIndicatorColor];
    }

    else
    {
      [theme2 unreadIndicatorColor];
    }
    conversationListPinnedConversationFilteredByFocusIndicatorColor = ;
  }

  v8 = conversationListPinnedConversationFilteredByFocusIndicatorColor;

  return v8;
}

- (void)_updateAvatarMouthRegion
{
  if ([objc_opt_class() _mouthRegionDetectionEnabled])
  {
    conversation = [(CKPinnedConversationView *)self conversation];
    if (-[CKPinnedConversationView showsLiveActivity](self, "showsLiveActivity") && [conversation recipientCount] == 1)
    {
      recipient = [conversation recipient];
      _requiredContactKeys = [objc_opt_class() _requiredContactKeys];
      v6 = [recipient cnContactWithKeys:_requiredContactKeys];
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
  conversation = [(CKPinnedConversationView *)self conversation];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] avatarViewAllowsStaleRendering])
  {
    isDisplayingContent = [(CNAvatarView *)self->_avatarView isDisplayingContent];

    if (isDisplayingContent)
    {
      [(CNAvatarView *)self->_avatarView setAllowStaleRendering:1];
    }
  }

  else
  {
  }

  chat = [conversation chat];
  chatIdentifier = [chat chatIdentifier];
  [(CKAvatarView *)self->_avatarView _ck_setContextToken:chatIdentifier];

  maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v8 = MEMORY[0x1E695E0F0];
  v9 = [conversation conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
  displayedContacts = [(CKPinnedConversationActivityView *)self->_activityView displayedContacts];
  v11 = displayedContacts;
  if (displayedContacts)
  {
    v12 = displayedContacts;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  v14 = [v9 ck_contactInstancesMatchingContacts:v13];

  v15 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v9 maskingContacts:v14];
  -[CNAvatarView setStyle:](self->_avatarView, "setStyle:", [conversation shouldHaveRoundRectAvatar]);
  [(CKPinnedConversationView *)self setNeedsLayout];
}

- (void)_updateRadiantShadowImageView
{
  isAdHocGroupConversation = [(CKConversation *)self->_conversation isAdHocGroupConversation];
  v4 = isAdHocGroupConversation;
  if (isAdHocGroupConversation)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    pinnedAdHocConversationRadiantShadowImage = [v5 pinnedAdHocConversationRadiantShadowImage];

    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    conversationListPinnedAdHocConversationRadiantShadowColor = [theme conversationListPinnedAdHocConversationRadiantShadowColor];

    v10 = 1.0;
  }

  else
  {
    avatarSnapshot = self->_avatarSnapshot;
    if (avatarSnapshot)
    {
      pinnedAdHocConversationRadiantShadowImage = avatarSnapshot;
    }

    else
    {
      avatarView = [(CKPinnedConversationView *)self avatarView];
      pinnedAdHocConversationRadiantShadowImage = [avatarView contentImage];
    }

    conversationListPinnedAdHocConversationRadiantShadowColor = 0;
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
  [(UIImageView *)self->_radiantShadowImageView setImage:pinnedAdHocConversationRadiantShadowImage];
  [(UIImageView *)self->_radiantShadowImageView setTintColor:conversationListPinnedAdHocConversationRadiantShadowColor];
  v19 = [v13 copy];
  layer = [(UIImageView *)self->_radiantShadowImageView layer];
  [layer setFilters:v19];
}

+ (id)_requiredContactKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  if ([self _mouthRegionDetectionEnabled])
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

+ (id)_mouthRegionForContactImageCacheKeyForContact:(id)contact
{
  contactCopy = contact;
  imageHash = [contactCopy imageHash];
  v5 = [imageHash base64EncodedStringWithOptions:0];

  if (![v5 length])
  {
    identifier = [contactCopy identifier];

    v5 = identifier;
  }

  return v5;
}

+ (id)_cachedMouthRegionForContact:(id)contact
{
  v4 = [self _mouthRegionForContactImageCacheKeyForContact:contact];
  _mouthRegionForContactImageCache = [self _mouthRegionForContactImageCache];
  v6 = [_mouthRegionForContactImageCache objectForKey:v4];
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

+ (void)_updateCachedMouthRegionIfNecessaryForContact:(id)contact completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  v8 = [self _mouthRegionForContactImageCacheKeyForContact:contactCopy];
  _mouthRegionForContactImageCache = [self _mouthRegionForContactImageCache];
  v10 = [_mouthRegionForContactImageCache objectForKey:v8];
  if (v10)
  {
    MEMORY[0x193AF5EC0](@"VNFaceLandmarkRegion2D", @"Vision");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = completionCopy;
      v12 = v10;
    }

    else
    {
      v11 = completionCopy;
      v12 = 0;
    }

    (*(completionCopy + 2))(v11, v12, 0);
  }

  else
  {
    _mouthRegionDetectionDispatchQueue = [self _mouthRegionDetectionDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKPinnedConversationView__updateCachedMouthRegionIfNecessaryForContact_completion___block_invoke;
    block[3] = &unk_1E72EE8A0;
    selfCopy = self;
    v15 = contactCopy;
    v16 = _mouthRegionForContactImageCache;
    v17 = v8;
    v18 = completionCopy;
    dispatch_async(_mouthRegionDetectionDispatchQueue, block);
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

+ (void)_determineMouthRegionForContact:(id)contact completion:(id)completion
{
  v53[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x193AF5EC0](@"VNDetectFaceLandmarksRequest", @"Vision"));
  [v7 setRevision:3];
  [v7 setConstellation:2];
  thumbnailImageData = [contactCopy thumbnailImageData];
  v9 = [objc_alloc(MEMORY[0x193AF5EC0](@"VNImageRequestHandler" @"Vision"))];
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    identifier = [contactCopy identifier];
    *buf = 138412290;
    v48 = identifier;
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
    identifier2 = [contactCopy identifier];
    *buf = 138412802;
    v48 = identifier2;
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
    v39 = thumbnailImageData;
    v40 = completionCopy;
    results = [v7 results];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = results;
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
      firstObject = [v18 firstObject];
      landmarks = [firstObject landmarks];
      outerLips = [landmarks outerLips];
      v28 = IMLogHandleForCategory();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      thumbnailImageData = v39;
      completionCopy = v40;
      if (outerLips)
      {
        if (v29)
        {
          [contactCopy identifier];
          v30 = v35 = landmarks;
          *buf = 138412290;
          v48 = v30;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Mouth region succesfully extracted from recognition results for contact: %@", buf, 0xCu);

          landmarks = v35;
        }

        (v40)[2](v40, outerLips, 0);
      }

      else
      {
        if (v29)
        {
          [contactCopy identifier];
          v34 = v36 = landmarks;
          *buf = 138412290;
          v48 = v34;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Recognition results did not contain a mouth region for contact: %@", buf, 0xCu);

          landmarks = v36;
        }

        v40[2](v40, 0, 0);
      }
    }

    else
    {
      v32 = IMLogHandleForCategory();
      thumbnailImageData = v39;
      completionCopy = v40;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        identifier3 = [contactCopy identifier];
        *buf = 138412290;
        v48 = identifier3;
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

    completionCopy[2](completionCopy, 0, v14);
  }
}

- (CGPoint)_centerPointOfFaceLandmarkRegion:(id)region inImageOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  regionCopy = region;
  v7 = [regionCopy pointsInImageOfSize:{width, height}];
  pointCount = [regionCopy pointCount];
  if (v7 && pointCount >= 1)
  {
    v9 = 0;
    v10 = 0uLL;
    do
    {
      v10 = vaddq_f64(v10, *(v7 + 16 * v9++));
    }

    while (pointCount != v9);
    v11 = vdivq_f64(v10, vdupq_lane_s64(COERCE__INT64(pointCount), 0));
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