@interface CertUIItemDetailsSummaryCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CertUIItemDetailsSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)createViewWithDescriptors:(id)a3;
- (void)createViewWithItemDetailArray:(id)a3;
- (void)layoutSubviews;
- (void)setDetailLabelOriginX:(double)a3;
@end

@implementation CertUIItemDetailsSummaryCell

- (CertUIItemDetailsSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CertUIItemDetailsSummaryCell;
  v4 = [(CertUIItemDetailsSummaryCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CertUIItemDetailsSummaryCell *)v4 setSelectionStyle:0];
    v5->_detailLabelOriginX = -1.0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = CertUIItemDetailsSummaryCell;
  [(CertUIItemDetailsSummaryCell *)&v24 layoutSubviews];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(CertUIItemDetailsSummaryCell *)self detailViews];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 12.0;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [(CertUIItemDetailsSummaryCell *)self contentView];
        [v10 frame];
        v12 = v11;
        v14 = v13;

        [v9 sizeThatFits:{v12 + -20.0, v14}];
        v16 = v15;
        v18 = v17;
        v27.origin.x = 10.0;
        v27.origin.y = v7;
        v27.size.width = v16;
        v27.size.height = v18;
        v28 = CGRectIntegral(v27);
        [v9 setFrame:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];
        v29.origin.x = 10.0;
        v29.origin.y = v7;
        v29.size.width = v16;
        v29.size.height = v18;
        v7 = CGRectGetMaxY(v29) + 10.0;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(CertUIItemDetailsSummaryCell *)self detailViews];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 12.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [v10 sizeThatFits:{width + -20.0, 3.40282347e38}];
        v12 = v11;
        v14 = v13;
        v25.origin.x = 10.0;
        v25.origin.y = v8;
        v25.size.width = v12;
        v25.size.height = v14;
        v26 = CGRectIntegral(v25);
        [v10 setFrame:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];
        v27.origin.x = 10.0;
        v27.origin.y = v8;
        v27.size.width = v12;
        v27.size.height = v14;
        v8 = CGRectGetMaxY(v27) + 10.0;
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 12.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  v16 = width;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)setDetailLabelOriginX:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_detailLabelOriginX != a3)
  {
    self->_detailLabelOriginX = a3 + -10.0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(CertUIItemDetailsSummaryCell *)self detailViews];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) setPreferredValueLabelOriginX:self->_detailLabelOriginX];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(CertUIItemDetailsSummaryCell *)self setNeedsLayout];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)createViewWithDescriptors:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(CertUIItemDetailsSummaryCell *)self detailViews];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
      v19 = [[CertUIKeyValueView alloc] initWithFrame:v12, v13, v14, v15];
      v20 = v19;
      if (self->_detailLabelOriginX >= 0.0)
      {
        [(CertUIKeyValueView *)v19 setPreferredValueLabelOriginX:?];
      }

      [(CertUIKeyValueView *)v20 setKey:v16 value:v18];
      v21 = [(CertUIItemDetailsSummaryCell *)self contentView];
      [v21 addSubview:v20];

      [v10 addObject:v20];
      v11 = v17 + 1;
    }

    while (v11 < [v4 count]);
  }

  [(CertUIItemDetailsSummaryCell *)self setDetailViews:v10];
  [(CertUIItemDetailsSummaryCell *)self setNeedsLayout];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)createViewWithItemDetailArray:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(CertUIItemDetailsSummaryCell *)self detailViews];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v30 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [CertUIKeyValueView alloc];
        v22 = [(CertUIKeyValueView *)v21 initWithFrame:v15, v16, v17, v18, v26];
        v23 = v22;
        if (self->_detailLabelOriginX >= 0.0)
        {
          [(CertUIKeyValueView *)v22 setPreferredValueLabelOriginX:?];
        }

        [(CertUIKeyValueView *)v23 setItemDetail:v20];
        v24 = [(CertUIItemDetailsSummaryCell *)self contentView];
        [v24 addSubview:v23];

        [v10 addObject:v23];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  [(CertUIItemDetailsSummaryCell *)self setDetailViews:v10];
  [(CertUIItemDetailsSummaryCell *)self setNeedsLayout];

  v25 = *MEMORY[0x277D85DE8];
}

@end