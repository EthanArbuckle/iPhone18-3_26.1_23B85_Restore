@interface CRKComposedStackView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CRKComposedStackView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)templatedContentMargins;
- (void)_updateLayout;
- (void)addCardSectionSubview:(id)a3 withKeyline:(int64_t)a4;
- (void)cardSectionSubviewWantsToBeRemovedFromHierarchy:(id)a3;
- (void)layoutSubviews;
- (void)setCardSectionSubviews:(id)a3;
- (void)triggerLayoutAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation CRKComposedStackView

- (CRKComposedStackView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CRKComposedStackView;
  v3 = [(CRKComposedView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keylines = v3->_keylines;
    v3->_keylines = v4;
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CRKComposedStackView;
  [(CRKComposedStackView *)&v3 layoutSubviews];
  [(CRKComposedStackView *)self _updateLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CRKComposedView *)self cardSectionSubviews];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) sizeThatFits:{width, height}];
        v9 = v9 + v11;
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  if (height >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = height;
  }

  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)_updateLayout
{
  [(CRKComposedStackView *)self bounds];
  Width = CGRectGetWidth(v18);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x4010000000;
  v13 = 0;
  v14 = 0;
  v12 = "";
  v15 = Width;
  v16 = 0x3FF0000000000000;
  if ([(NSMutableArray *)self->_keylines count])
  {
    v4 = [(NSMutableArray *)self->_keylines firstObject];
    [v4 sizeThatFits:{v10[6], v10[7]}];
    v6 = v5;

    *(v10 + 7) = v6;
  }

  v7 = [(CRKComposedView *)self cardSectionSubviews];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__CRKComposedStackView__updateLayout__block_invoke;
  v8[3] = &unk_278DA34B0;
  v8[4] = self;
  v8[5] = v17;
  *&v8[7] = Width;
  v8[6] = &v9;
  [v7 enumerateObjectsUsingBlock:v8];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v17, 8);
}

void __37__CRKComposedStackView__updateLayout__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = 0.0;
  if ([v8 conformsToProtocol:&unk_2855FC3C8])
  {
    [*(a1 + 32) bounds];
    [v8 sizeThatFits:{CGRectGetWidth(v10), 1.79769313e308}];
    v5 = v6;
  }

  [v8 setFrame:{0.0, *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), v5}];
  *(*(*(a1 + 40) + 8) + 24) = v5 + *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 40) + 8) + 24);
  v7 = [*(*(a1 + 32) + 424) objectAtIndex:a3];
  [v7 setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  [v7 setHidden:{objc_msgSend(*(*(a1 + 32) + 424), "count") - 1 == a3}];
}

- (void)triggerLayoutAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__CRKComposedStackView_triggerLayoutAnimated_completion___block_invoke;
  v11[3] = &unk_278DA34D8;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  v8 = MEMORY[0x245D2D520](v11);
  v9 = v8;
  if (v4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__CRKComposedStackView_triggerLayoutAnimated_completion___block_invoke_2;
    v10[3] = &unk_278DA3168;
    v10[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v10 usingSpringWithDamping:v7 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.5];
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

uint64_t __57__CRKComposedStackView_triggerLayoutAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLayout];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setCardSectionSubviews:(id)a3
{
  v4 = a3;
  v5 = [(CRKComposedView *)self cardSectionSubviews];
  if (v5 != v4)
  {
    keylines = self->_keylines;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__CRKComposedStackView_setCardSectionSubviews___block_invoke;
    v12[3] = &unk_278DA3500;
    v12[4] = self;
    v7 = v4;
    v13 = v7;
    v14 = v5;
    v8 = [(NSMutableArray *)keylines sortedArrayUsingComparator:v12];
    v9 = [v8 mutableCopy];
    v10 = self->_keylines;
    self->_keylines = v9;

    v11.receiver = self;
    v11.super_class = CRKComposedStackView;
    [(CRKComposedView *)&v11 setCardSectionSubviews:v7];
  }
}

uint64_t __47__CRKComposedStackView_setCardSectionSubviews___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 424);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(*(a1 + 32) + 424) indexOfObject:v6];

  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) objectAtIndex:v7];
  v11 = [v9 indexOfObject:v10];

  v12 = *(a1 + 40);
  v13 = [*(a1 + 48) objectAtIndex:v8];
  v14 = [v12 indexOfObject:v13];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v17 = [v15 compare:v16];

  return v17;
}

- (void)addCardSectionSubview:(id)a3 withKeyline:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CRKComposedStackView;
  [(CRKComposedView *)&v10 addCardSectionSubview:v6 withKeyline:a4];
  if (v6)
  {
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceStyle] == 2;

    v9 = [[CRKKeyline alloc] initWithType:a4 direction:self->_direction - 3 < 0xFFFFFFFFFFFFFFFELL visualEffectStyle:v8];
    [(NSMutableArray *)self->_keylines addObject:v9];
    [(CRKComposedStackView *)self addSubview:v9];
    [(CRKComposedStackView *)self setNeedsLayout];
  }
}

- (void)cardSectionSubviewWantsToBeRemovedFromHierarchy:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRKComposedView *)self cardSectionSubviews];
    v6 = [v5 indexOfObject:v4];

    v7 = [(NSMutableArray *)self->_keylines objectAtIndex:v6];
    [(NSMutableArray *)self->_keylines removeObject:v7];
    [v7 removeFromSuperview];
    [(CRKComposedStackView *)self setNeedsLayout];
  }

  v8.receiver = self;
  v8.super_class = CRKComposedStackView;
  [(CRKComposedView *)&v8 cardSectionSubviewWantsToBeRemovedFromHierarchy:v4];
}

- (UIEdgeInsets)templatedContentMargins
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = 0.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end