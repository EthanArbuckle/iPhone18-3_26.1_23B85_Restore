@interface FCUIActivityBaubleGroupView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FCUIActivityBaubleGroupView)initWithBaubleDescriptions:(id)descriptions baubleGroupType:(int64_t)type;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setContentMode:(int64_t)mode;
@end

@implementation FCUIActivityBaubleGroupView

- (FCUIActivityBaubleGroupView)initWithBaubleDescriptions:(id)descriptions baubleGroupType:(int64_t)type
{
  descriptionsCopy = descriptions;
  v25.receiver = self;
  v25.super_class = FCUIActivityBaubleGroupView;
  v7 = [(FCUIActivityBaubleGroupView *)&v25 init];
  v8 = v7;
  if (v7)
  {
    v7->_baubleGroupType = type;
    v7->_adjustsFontForContentSizeCategory = 1;
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(descriptionsCopy, "count")}];
    if ([descriptionsCopy count])
    {
      v10 = 0;
      v21 = xmmword_24BB4EF90;
      do
      {
        v11 = [descriptionsCopy objectAtIndexedSubscript:{v10, v21}];
        v12 = [FCUIActivityBaubleView alloc];
        if (type == 1)
        {
          v13 = [v11 completeDescriptionWithReferencePointSize:15.0 maximumPointSize:24.0 referenceDimension:35.0];
          v14 = xmmword_24BB4EFA0;
        }

        else
        {
          if (v10 == 1)
          {
            v15 = 10.0;
          }

          else
          {
            v15 = 13.0;
          }

          if (v10 == 1)
          {
            v16 = 19.0;
          }

          else
          {
            v16 = 22.0;
          }

          if (v10 == 1)
          {
            v17 = 19.0;
          }

          else
          {
            v17 = 25.0;
          }

          if (v10 == 2)
          {
            v16 = 16.0;
            v15 = 7.0;
            v17 = 15.0;
          }

          v13 = [v11 completeDescriptionWithReferencePointSize:v15 maximumPointSize:v16 referenceDimension:v17];
          v14 = v21;
        }

        v22 = 1036831949;
        v23 = 0;
        v24 = v14;
        v18 = [(FCUIActivityBaubleView *)v12 initWithBaubleDescription:v13 shadowAttributes:&v22];

        [(FCUIActivityBaubleGroupView *)v8 addSubview:v18];
        [(NSArray *)v9 addObject:v18];

        ++v10;
      }

      while (v10 < [descriptionsCopy count]);
    }

    baubleViews = v8->_baubleViews;
    v8->_baubleViews = v9;
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _shouldReverseLayoutDirection = [(FCUIActivityBaubleGroupView *)self _shouldReverseLayoutDirection];
  v13 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x4010000000;
  v39 = &unk_24BB51C3A;
  v14 = *(MEMORY[0x277CBF398] + 16);
  v40 = *MEMORY[0x277CBF398];
  v41 = v14;
  while (v13 < [(NSArray *)self->_baubleViews count])
  {
    v15 = [(NSArray *)self->_baubleViews objectAtIndexedSubscript:v13];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __44__FCUIActivityBaubleGroupView_sizeThatFits___block_invoke;
    v26[3] = &unk_27901AB08;
    v16 = v15;
    v31 = v5;
    v32 = v7;
    v33 = v9;
    v34 = v11;
    v27 = v16;
    selfCopy = self;
    v35 = _shouldReverseLayoutDirection;
    v29 = &v36;
    v30 = v13;
    [v16 performWithoutAdditionalScaling:v26];

    ++v13;
  }

  if (!self->_baubleGroupType)
  {
    v17 = [(NSArray *)self->_baubleViews objectAtIndexedSubscript:0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__FCUIActivityBaubleGroupView_sizeThatFits___block_invoke_2;
    v23[3] = &unk_27901AB30;
    v25 = &v36;
    v18 = v17;
    v24 = v18;
    [v18 performWithoutAdditionalScaling:v23];
  }

  v19 = v37[6];
  v20 = v37[7];
  _Block_object_dispose(&v36, 8);
  v21 = v19;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

void __44__FCUIActivityBaubleGroupView_sizeThatFits___block_invoke(uint64_t a1)
{
  x = FrameForBaubleAtIndex(*(a1 + 32), *(a1 + 56), *(*(a1 + 40) + 432), *(a1 + 96), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  y = v3;
  width = v5;
  height = v7;
  if (!CGRectIsNull(*(*(*(a1 + 48) + 8) + 32)))
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    v10 = CGRectUnion(*(*(*(a1 + 48) + 8) + 32), v11);
    x = v10.origin.x;
    y = v10.origin.y;
    width = v10.size.width;
    height = v10.size.height;
  }

  v9 = *(*(a1 + 48) + 8);
  v9[4] = x;
  v9[5] = y;
  v9[6] = width;
  v9[7] = height;
}

double __44__FCUIActivityBaubleGroupView_sizeThatFits___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) scaledValueForValue:3.0];
  v2 = *(*(a1 + 40) + 8);
  result = v3 + *(v2 + 56);
  *(v2 + 56) = result;
  return result;
}

- (void)setContentMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = FCUIActivityBaubleGroupView;
  contentMode = [(FCUIActivityBaubleGroupView *)&v7 contentMode];
  v6.receiver = self;
  v6.super_class = FCUIActivityBaubleGroupView;
  [(FCUIActivityBaubleGroupView *)&v6 setContentMode:mode];
  if (contentMode != mode)
  {
    [(FCUIActivityBaubleGroupView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = FCUIActivityBaubleGroupView;
  [(FCUIActivityBaubleGroupView *)&v20 layoutSubviews];
  [(FCUIActivityBaubleGroupView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(FCUIActivityBaubleGroupView *)self traitCollection];
  [traitCollection displayScale];

  _shouldReverseLayoutDirection = [(FCUIActivityBaubleGroupView *)self _shouldReverseLayoutDirection];
  v13 = 1.0;
  if ([(FCUIActivityBaubleGroupView *)self _shouldScaleAspectFitBaubleViews])
  {
    if (v8 > 0.0 && v10 > 0.0)
    {
      [(FCUIActivityBaubleGroupView *)self sizeThatFits:v8, v10];
      if (v14 != 0.0 || v15 != 0.0)
      {
        v16 = v14 / v8;
        v17 = v15 / v10;
        if (v16 < v17)
        {
          v16 = v17;
        }

        v13 = 1.0 / v16;
      }
    }
  }

  if ([(NSArray *)self->_baubleViews count])
  {
    v18 = 0;
    do
    {
      v19 = [(NSArray *)self->_baubleViews objectAtIndexedSubscript:v18];
      [v19 setAdditionalScaleFactor:v13];
      FrameForBaubleAtIndex(v19, v18, self->_baubleGroupType, _shouldReverseLayoutDirection, v4, v6, v8, v10);
      UIRectIntegralWithScale();
      [v19 setFrame:?];

      ++v18;
    }

    while (v18 < [(NSArray *)self->_baubleViews count]);
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_baubleViews;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setAdjustsFontForContentSizeCategory:{self->_adjustsFontForContentSizeCategory, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v18 = *MEMORY[0x277D85DE8];
  traitCollection = [(FCUIActivityBaubleGroupView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_preferredContentSizeCategory) == NSOrderedSame)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&self->_preferredContentSizeCategory, preferredContentSizeCategory);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_baubleViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 |= [*(*(&v13 + 1) + 8 * i) adjustForContentSizeCategoryChange];
    }

    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  [(FCUIActivityBaubleGroupView *)self setNeedsLayout];
  v11 = 1;
LABEL_13:

  return v11;
}

@end