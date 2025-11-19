@interface SFAvatarStackView
+ (id)randomContactIdentifiers;
- (CGRect)_contentRectForContentWidth:(double)a3 viewWith:(double)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForParticipantCount:(int64_t)a3;
- (SFAvatarStackView)initWithFrame:(CGRect)a3;
- (double)_widthForParticipantCount:(int64_t)a3;
- (id)_avatarViewControllerForParticipantIdentifier:(id)a3;
- (id)_overflowLabel;
- (id)_overflowView;
- (id)_viewForParticipantIdentifier:(id)a3;
- (void)_layOutIndexes:(id)a3 ofParticipantIdentifiers:(id)a4 targetWidth:(id)a5;
- (void)_loadOverflowView;
- (void)_removeViewsForIndexes:(id)a3 ofParticipantIdentifiers:(id)a4;
- (void)_setIndexes:(id)a3 ofParticipantIdentifiers:(id)a4 transitioning:(BOOL)a5 completion:(id)a6;
- (void)_setVisibleParticipantIdentifiers:(id)a3;
- (void)_updateVisibleParticipants;
- (void)layoutSubviews;
- (void)setAvatarDiameter:(double)a3;
- (void)setShareParticipants:(id)a3;
- (void)setSpacing:(double)a3;
@end

@implementation SFAvatarStackView

- (SFAvatarStackView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SFAvatarStackView;
  v3 = [(SFAvatarStackView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFAvatarStackView *)v3 setUserInteractionEnabled:0];
    v4->_alignment = 1;
    v4->_avatarDiameter = 22.0;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    avatarViewControllersByParticipantIdentifier = v4->_avatarViewControllersByParticipantIdentifier;
    v4->_avatarViewControllersByParticipantIdentifier = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    contactsByParticipantIdentifer = v4->_contactsByParticipantIdentifer;
    v4->_contactsByParticipantIdentifer = v7;

    v4->_spacing = -6.0;
    visibleParticipantIdentifiers = v4->_visibleParticipantIdentifiers;
    v4->_visibleParticipantIdentifiers = MEMORY[0x1E695E0F0];

    v10 = v4;
  }

  return v4;
}

- (void)setAvatarDiameter:(double)a3
{
  if (self->_avatarDiameter != a3)
  {
    self->_avatarDiameter = a3;
    [(SFAvatarStackView *)self invalidateIntrinsicContentSize];

    [(SFAvatarStackView *)self setNeedsLayout];
  }
}

- (void)setShareParticipants:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  shareParticipants = self->_shareParticipants;
  self->_shareParticipants = v5;

  v7 = [v4 count];
  if (v7 >= 4)
  {
    v8 = v7 - 2;
    v9 = overflowCountFormatter();
    v10 = v9;
    if (v8 < 0xA)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      v12 = [v10 stringFromNumber:v11];
      v13 = [(SFAvatarStackView *)self _overflowLabel];
      [v13 setText:v12];
    }

    else
    {
      v11 = [v9 plusSign];
      v12 = [(SFAvatarStackView *)self _overflowLabel];
      [v12 setText:v11];
    }
  }

  [(SFAvatarStackView *)self _updateVisibleParticipants];
}

- (void)setSpacing:(double)a3
{
  if (self->_spacing != a3)
  {
    self->_spacing = a3;
    [(SFAvatarStackView *)self setNeedsLayout];
  }
}

- (void)_updateVisibleParticipants
{
  v34 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_contactsByParticipantIdentifer removeAllObjects];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = self->_shareParticipants;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 safari_contact];
        contactsByParticipantIdentifer = self->_contactsByParticipantIdentifer;
        v11 = [v8 safari_shareParticipantIdentifier];
        [(NSMutableDictionary *)contactsByParticipantIdentifer setObject:v9 forKeyedSubscript:v11];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x1E695CD58] comparatorForNameSortOrder:1];
  shareParticipants = self->_shareParticipants;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __47__SFAvatarStackView__updateVisibleParticipants__block_invoke;
  v26 = &unk_1E721C048;
  v27 = self;
  v14 = v12;
  v28 = v14;
  v15 = [(NSArray *)shareParticipants sortedArrayUsingComparator:&v23];
  v16 = self->_shareParticipants;
  self->_shareParticipants = v15;

  v17 = [(NSArray *)self->_shareParticipants count:v23];
  v18 = self->_shareParticipants;
  if (v17 <= 3)
  {
    v19 = v18;
  }

  else
  {
    v19 = [(NSArray *)v18 subarrayWithRange:0, 2];
  }

  v20 = v19;
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v22 = [(NSArray *)v20 safari_mapObjectsUsingBlock:&__block_literal_global_5];
  [v21 addObjectsFromArray:v22];

  if (v17 >= 4)
  {
    [v21 addObject:@"overflow"];
  }

  [(SFAvatarStackView *)self _setVisibleParticipantIdentifiers:v21];
}

uint64_t __47__SFAvatarStackView__updateVisibleParticipants__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 416);
  v6 = a3;
  v7 = [a2 safari_shareParticipantIdentifier];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(*(a1 + 32) + 416);
  v10 = [v6 safari_shareParticipantIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = (*(*(a1 + 40) + 16))();
  return v12;
}

- (void)_setVisibleParticipantIdentifiers:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = self->_visibleParticipantIdentifiers;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_visibleParticipantIdentifiers, a3);
    [(SFAvatarStackView *)self invalidateIntrinsicContentSize];
    [(SFAvatarStackView *)self setNeedsLayout];
    v7 = [v5 differenceFromArray:v6 withOptions:4];
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled] && (-[SFAvatarStackView window](self, "window"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [v7 safari_insertionIndexes];
      v10 = [v7 safari_removalIndexes];
      v11 = MEMORY[0x1E69DD250];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __55__SFAvatarStackView__setVisibleParticipantIdentifiers___block_invoke;
      v27[3] = &unk_1E721B650;
      v27[4] = self;
      v12 = v9;
      v28 = v12;
      v13 = v5;
      v29 = v13;
      [v11 performWithoutAnimation:v27];
      v14 = MEMORY[0x1E69DD250];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __55__SFAvatarStackView__setVisibleParticipantIdentifiers___block_invoke_2;
      v22[3] = &unk_1E721C090;
      objc_copyWeak(&v26, &location);
      v23 = v13;
      v15 = v10;
      v24 = v15;
      v16 = v6;
      v25 = v16;
      [v14 _animateUsingDefaultTimingWithOptions:2 animations:v22 completion:0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__SFAvatarStackView__setVisibleParticipantIdentifiers___block_invoke_3;
      v18[3] = &unk_1E721C0B8;
      objc_copyWeak(&v21, &location);
      v17 = v15;
      v19 = v17;
      v20 = v16;
      [(SFAvatarStackView *)self _setIndexes:v17 ofParticipantIdentifiers:v20 transitioning:1 completion:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v26);
    }

    else
    {
      v12 = [v7 safari_removalIndexes];
      [(SFAvatarStackView *)self _removeViewsForIndexes:v12 ofParticipantIdentifiers:v6];
    }
  }

  objc_destroyWeak(&location);
}

uint64_t __55__SFAvatarStackView__setVisibleParticipantIdentifiers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layOutIndexes:*(a1 + 40) ofParticipantIdentifiers:*(a1 + 48) targetWidth:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _setIndexes:v3 ofParticipantIdentifiers:v4 transitioning:1 completion:0];
}

void __55__SFAvatarStackView__setVisibleParticipantIdentifiers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _widthForParticipantCount:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 _layOutIndexes:v4 ofParticipantIdentifiers:v3 targetWidth:v5];

    [v6 layoutIfNeeded];
    WeakRetained = v6;
  }
}

void __55__SFAvatarStackView__setVisibleParticipantIdentifiers___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _removeViewsForIndexes:*(a1 + 32) ofParticipantIdentifiers:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SFAvatarStackView;
  [(SFAvatarStackView *)&v4 layoutSubviews];
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSArray count](self->_visibleParticipantIdentifiers, "count")}];
  [(SFAvatarStackView *)self _layOutIndexes:v3 ofParticipantIdentifiers:self->_visibleParticipantIdentifiers targetWidth:0];
  [(SFAvatarStackView *)self _setIndexes:v3 ofParticipantIdentifiers:self->_visibleParticipantIdentifiers transitioning:0 completion:0];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(NSArray *)self->_visibleParticipantIdentifiers count];

  [(SFAvatarStackView *)self sizeForParticipantCount:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeForParticipantCount:(int64_t)a3
{
  if (a3 >= 3)
  {
    a3 = 3;
  }

  [(SFAvatarStackView *)self _widthForParticipantCount:a3];
  avatarDiameter = self->_avatarDiameter;
  result.height = avatarDiameter;
  result.width = v4;
  return result;
}

- (void)_layOutIndexes:(id)a3 ofParticipantIdentifiers:(id)a4 targetWidth:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(SFAvatarStackView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  -[SFAvatarStackView _widthForParticipantCount:](self, "_widthForParticipantCount:", [v8 count]);
  v20 = v19;
  if (v9)
  {
    [v9 doubleValue];
  }

  else
  {
    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v16;
    v27.size.height = v18;
    Width = CGRectGetWidth(v27);
  }

  [(SFAvatarStackView *)self _contentRectForContentWidth:v20 viewWith:Width];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__SFAvatarStackView__layOutIndexes_ofParticipantIdentifiers_targetWidth___block_invoke;
  v26[3] = &unk_1E721C0E0;
  v26[4] = self;
  v26[5] = v22;
  v26[6] = v23;
  v26[7] = v24;
  v26[8] = v25;
  *&v26[9] = v12;
  *&v26[10] = v14;
  *&v26[11] = v16;
  *&v26[12] = v18;
  [v8 enumerateObjectsAtIndexes:v10 options:0 usingBlock:v26];
}

void __73__SFAvatarStackView__layOutIndexes_ofParticipantIdentifiers_targetWidth___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = [*(a1 + 32) _viewForParticipantIdentifier:a2];
  [*(a1 + 32) addSubview:v12];
  [v12 _setCornerRadius:*(*(a1 + 32) + 456) * 0.5];
  v5 = a3;
  v6 = *(*(a1 + 32) + 456) + *(*(a1 + 32) + 472);
  v7 = CGRectGetMinX(*(a1 + 40)) + a3 * v6;
  Height = CGRectGetHeight(*(a1 + 72));
  [v12 ss_setUntransformedFrame:{_SFFlipRectInCoordinateSpace(objc_msgSend(*(a1 + 32), "_sf_usesLeftToRightLayout") ^ 1u, v7, (Height - *(*(a1 + 32) + 456)) * 0.5, *(*(a1 + 32) + 456), *(*(a1 + 32) + 456), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64))}];
  v9 = [v12 layer];
  [v9 setZPosition:-v5];
  v10 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, *(*(a1 + 32) + 456), *(*(a1 + 32) + 456)}];
  [v9 setShadowPath:{objc_msgSend(v10, "CGPath")}];

  [v9 setShadowOffset:{0.0, 1.0}];
  LODWORD(v11) = 1042536202;
  [v9 setShadowOpacity:v11];
  [v9 setShadowRadius:3.0];
  [v12 layoutIfNeeded];
}

- (void)_setIndexes:(id)a3 ofParticipantIdentifiers:(id)a4 transitioning:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = MEMORY[0x1E69DD250];
  if (v7)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 0.25;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__SFAvatarStackView__setIndexes_ofParticipantIdentifiers_transitioning_completion___block_invoke;
  v20[3] = &unk_1E721C130;
  v21 = v11;
  v22 = v10;
  v23 = self;
  v24 = v7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__SFAvatarStackView__setIndexes_ofParticipantIdentifiers_transitioning_completion___block_invoke_3;
  v18[3] = &unk_1E721BA70;
  v19 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  [v13 sf_animate:1 usingDefaultMotionWithDelay:98 options:v20 animations:v18 completion:v14];
}

uint64_t __83__SFAvatarStackView__setIndexes_ofParticipantIdentifiers_transitioning_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__SFAvatarStackView__setIndexes_ofParticipantIdentifiers_transitioning_completion___block_invoke_2;
  v4[3] = &unk_1E721C108;
  v4[4] = *(a1 + 48);
  v5 = *(a1 + 56);
  return [v2 enumerateObjectsAtIndexes:v1 options:0 usingBlock:v4];
}

void __83__SFAvatarStackView__setIndexes_ofParticipantIdentifiers_transitioning_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _viewForParticipantIdentifier:a2];
  [v3 setAlpha:(*(a1 + 40) ^ 1u)];
  v4 = 1.0;
  if (*(a1 + 40))
  {
    v4 = 0.5;
  }

  CGAffineTransformMakeScale(&v6, v4, v4);
  v5 = v6;
  [v3 setTransform:&v5];
}

uint64_t __83__SFAvatarStackView__setIndexes_ofParticipantIdentifiers_transitioning_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGRect)_contentRectForContentWidth:(double)a3 viewWith:(double)a4
{
  alignment = self->_alignment;
  if (alignment == 1)
  {
    v9 = [(UIView *)self _sf_usesLeftToRightLayout];
    v8 = a4 - a3;
    if (!v9)
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = (a4 - a3) * 0.5;
    if (alignment)
    {
      v8 = 0.0;
    }
  }

  avatarDiameter = self->_avatarDiameter;
  v11 = 0.0;
  v12 = a3;
  result.size.height = avatarDiameter;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v8;
  return result;
}

- (double)_widthForParticipantCount:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  return self->_spacing * (v3 - 1) + a3 * self->_avatarDiameter;
}

- (id)_viewForParticipantIdentifier:(id)a3
{
  v4 = a3;
  if (WBSIsEqual())
  {
    v5 = [(SFAvatarStackView *)self _overflowView];
  }

  else
  {
    v6 = [(SFAvatarStackView *)self _avatarViewControllerForParticipantIdentifier:v4];
    v5 = [v6 view];
  }

  return v5;
}

- (id)_avatarViewControllerForParticipantIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_avatarViewControllersByParticipantIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E69C8F00] sharedContactStoreManager];
    v9 = [v8 contactStore];

    v10 = [MEMORY[0x1E695D0E0] settingsWithContactStore:v9];
    v7 = [objc_alloc(MEMORY[0x1E695D0C8]) initWithSettings:v10];
    v11 = [(NSMutableDictionary *)self->_contactsByParticipantIdentifer objectForKeyedSubscript:v4];
    v12 = v11;
    if (v11)
    {
      v15[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v7 setContacts:v13];
    }

    [(NSMutableDictionary *)self->_avatarViewControllersByParticipantIdentifier setObject:v7 forKeyedSubscript:v4];
  }

  return v7;
}

- (void)_removeViewsForIndexes:(id)a3 ofParticipantIdentifiers:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__SFAvatarStackView__removeViewsForIndexes_ofParticipantIdentifiers___block_invoke;
  v4[3] = &unk_1E721C158;
  v4[4] = self;
  [a4 enumerateObjectsAtIndexes:a3 options:0 usingBlock:v4];
}

void __69__SFAvatarStackView__removeViewsForIndexes_ofParticipantIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(*(a1 + 32) + 440) containsObject:?] & 1) == 0)
  {
    v3 = [*(a1 + 32) _viewForParticipantIdentifier:v4];
    [v3 removeFromSuperview];

    [*(*(a1 + 32) + 408) setObject:0 forKeyedSubscript:v4];
  }
}

- (id)_overflowView
{
  overflowView = self->_overflowView;
  if (!overflowView)
  {
    [(SFAvatarStackView *)self _loadOverflowView];
    overflowView = self->_overflowView;
  }

  return overflowView;
}

- (id)_overflowLabel
{
  overflowLabel = self->_overflowLabel;
  if (!overflowLabel)
  {
    [(SFAvatarStackView *)self _loadOverflowView];
    overflowLabel = self->_overflowLabel;
  }

  return overflowLabel;
}

- (void)_loadOverflowView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  overflowView = self->_overflowView;
  self->_overflowView = v3;

  v5 = [MEMORY[0x1E69DC888] systemGray4Color];
  [(UIView *)self->_overflowView setBackgroundColor:v5];

  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  overflowLabel = self->_overflowLabel;
  self->_overflowLabel = v6;

  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_overflowLabel setTextColor:v8];

  [(UILabel *)self->_overflowLabel setTextAlignment:1];
  v9 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
  [(UILabel *)self->_overflowLabel setFont:v9];

  [(UILabel *)self->_overflowLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_overflowView addSubview:self->_overflowLabel];
  v10 = MEMORY[0x1E696ACD8];
  v11 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:self->_overflowLabel withFrameOfView:self->_overflowView directionalInsets:{0.0, 2.0, 0.0, 2.0}];
  [v10 activateConstraints:v11];
}

+ (id)randomContactIdentifiers
{
  v2 = [MEMORY[0x1E69C8F00] sharedContactStoreManager];
  v3 = [v2 defaultContainerIdentifier];
  if (v3)
  {
    v4 = [MEMORY[0x1E695CD58] predicateForContactsInContainerWithIdentifier:v3];
    v5 = [v2 unifiedContactsMatchingPredicate:v4 keysToFetch:MEMORY[0x1E695E0F0] error:0];
    v6 = [v5 mutableCopy];

    v7 = [v6 count];
    if (v7 >= (arc4random() & 3) + 1)
    {
      v8 = (arc4random() & 3) + 1;
    }

    else
    {
      v8 = [v6 count];
    }

    v10 = [MEMORY[0x1E695DF70] array];
    v9 = v10;
    while ([v10 count] < v8)
    {
      v11 = arc4random();
      v12 = v11 % [v6 count];
      v13 = [v6 objectAtIndexedSubscript:v12];
      v14 = [v13 identifier];
      [v9 addObject:v14];

      [v6 removeObjectAtIndex:v12];
      v10 = v9;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

@end