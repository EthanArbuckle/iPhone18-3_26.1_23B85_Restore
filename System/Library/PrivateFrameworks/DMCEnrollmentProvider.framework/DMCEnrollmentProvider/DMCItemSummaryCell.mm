@interface DMCItemSummaryCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (DMCItemSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)createViewWithDescriptors:(id)a3;
- (void)createViewWithItemDetailArray:(id)a3;
- (void)layoutSubviews;
- (void)setDetailLabelOriginX:(double)a3;
@end

@implementation DMCItemSummaryCell

- (DMCItemSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = DMCItemSummaryCell;
  v4 = [(DMCItemSummaryCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(DMCItemSummaryCell *)v4 setSelectionStyle:0];
    v5->_detailLabelOriginX = -1.0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = DMCItemSummaryCell;
  [(DMCItemSummaryCell *)&v23 layoutSubviews];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(DMCItemSummaryCell *)self detailViews];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = 12.0;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = [(DMCItemSummaryCell *)self contentView];
        [v10 frame];
        v12 = v11;
        v14 = v13;

        [v9 sizeThatFits:{v12 + -20.0, v14}];
        v16 = v15;
        v18 = v17;
        v26.origin.x = 10.0;
        v26.origin.y = v7;
        v26.size.width = v16;
        v26.size.height = v18;
        v27 = CGRectIntegral(v26);
        [v9 setFrame:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
        v28.origin.x = 10.0;
        v28.origin.y = v7;
        v28.size.width = v16;
        v28.size.height = v18;
        v7 = CGRectGetMaxY(v28) + 10.0;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v37 = *MEMORY[0x277D85DE8];
  detailLabelOriginX = self->_detailLabelOriginX;
  if (detailLabelOriginX < 0.0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [(DMCItemSummaryCell *)self detailViews];
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v31 + 1) + 8 * i) desiredValueLabelOriginXForSize:{width + -20.0, 3.40282347e38}];
          if (v12 > v10)
          {
            v10 = v12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    +[DMCProfileKeyValueView defaultPreferredValueLabelOriginX];
    if (v10 > v13)
    {
      detailLabelOriginX = v10;
    }

    else
    {
      detailLabelOriginX = v13;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [(DMCItemSummaryCell *)self detailViews];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    v18 = 12.0;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        [v20 setPreferredValueLabelOriginX:detailLabelOriginX];
        [v20 sizeThatFits:{width + -20.0, 3.40282347e38}];
        v22 = v21;
        v24 = v23;
        v39.origin.x = 10.0;
        v39.origin.y = v18;
        v39.size.width = v22;
        v39.size.height = v24;
        v40 = CGRectIntegral(v39);
        [v20 setFrame:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];
        v41.origin.x = 10.0;
        v41.origin.y = v18;
        v41.size.width = v22;
        v41.size.height = v24;
        v18 = CGRectGetMaxY(v41) + 10.0;
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 12.0;
  }

  v25 = width;
  v26 = v18;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)setDetailLabelOriginX:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_detailLabelOriginX != a3)
  {
    self->_detailLabelOriginX = a3 + -10.0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(DMCItemSummaryCell *)self detailViews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v8++) setPreferredValueLabelOriginX:self->_detailLabelOriginX];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(DMCItemSummaryCell *)self setNeedsLayout];
  }
}

- (void)createViewWithDescriptors:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(DMCItemSummaryCell *)self detailViews];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v4 count])
  {
    v11 = 0;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v16 = [v4 objectAtIndex:v11];
      v17 = v11 + 1;
      v18 = [v4 objectAtIndex:v17];
      v19 = [[DMCProfileKeyValueView alloc] initWithFrame:v12, v13, v14, v15];
      v20 = v19;
      if (self->_detailLabelOriginX >= 0.0)
      {
        [(DMCProfileKeyValueView *)v19 setPreferredValueLabelOriginX:?];
      }

      [(DMCProfileKeyValueView *)v20 setKey:v16 value:v18];
      v21 = [(DMCItemSummaryCell *)self contentView];
      [v21 addSubview:v20];

      [v10 addObject:v20];
      v11 = v17 + 1;
    }

    while (v11 < [v4 count]);
  }

  [(DMCItemSummaryCell *)self setDetailViews:v10];
  [(DMCItemSummaryCell *)self setNeedsLayout];
}

- (void)createViewWithItemDetailArray:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(DMCItemSummaryCell *)self detailViews];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v29 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        v21 = [DMCProfileKeyValueView alloc];
        v22 = [(DMCProfileKeyValueView *)v21 initWithFrame:v15, v16, v17, v18, v25];
        v23 = v22;
        if (self->_detailLabelOriginX >= 0.0)
        {
          [(DMCProfileKeyValueView *)v22 setPreferredValueLabelOriginX:?];
        }

        [(DMCProfileKeyValueView *)v23 setItemDetail:v20];
        v24 = [(DMCItemSummaryCell *)self contentView];
        [v24 addSubview:v23];

        [v10 addObject:v23];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }

  [(DMCItemSummaryCell *)self setDetailViews:v10];
  [(DMCItemSummaryCell *)self setNeedsLayout];
}

@end