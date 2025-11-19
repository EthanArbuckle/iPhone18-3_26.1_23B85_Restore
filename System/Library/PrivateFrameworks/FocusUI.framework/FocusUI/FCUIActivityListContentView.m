@interface FCUIActivityListContentView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)_sizeThatFits:(CGSize)a3 collapsedToPill:(BOOL)a4 includingFooter:(BOOL)a5 forceMeasurement:(BOOL)a6;
- (CGSize)collapsedSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFitsCollapsedToPill:(CGSize)a3;
- (id)_contentSizeCategoryAdjustingViews;
- (id)subviewFramesInBounds:(CGRect)a3;
- (void)layoutSubviews;
- (void)setActivityViews:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setCompactActivityView:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setHeaderView:(id)a3;
@end

@implementation FCUIActivityListContentView

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    if (v5)
    {
      [(UIView *)self->_headerView removeFromSuperview];
      objc_storeStrong(&self->_headerView, a3);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __45__FCUIActivityListContentView_setHeaderView___block_invoke;
      v6[3] = &unk_27901A470;
      v6[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v6];
      self->_headerViewValid = 1;
    }

    else
    {
      self->_headerViewValid = 0;
    }

    [(FCUIActivityListContentView *)self setNeedsLayout];
  }
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    if (v5)
    {
      [(UIView *)self->_footerView removeFromSuperview];
      objc_storeStrong(&self->_footerView, a3);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __45__FCUIActivityListContentView_setFooterView___block_invoke;
      v6[3] = &unk_27901A470;
      v6[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v6];
      self->_footerViewValid = 1;
    }

    else
    {
      self->_footerViewValid = 0;
    }

    [(FCUIActivityListContentView *)self setNeedsLayout];
  }
}

- (void)setActivityViews:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((BSEqualArrays() & 1) == 0)
  {
    v20 = a3;
    v6 = [(NSArray *)self->_activityViews mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = self;
          if (*v26 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if ([v6 count])
          {
            v12 = 0;
            while (1)
            {
              v13 = [v6 objectAtIndex:v12];
              v14 = [v13 activityUniqueIdentifier];
              v15 = [v11 activityUniqueIdentifier];
              v16 = BSEqualObjects();

              if (v16)
              {
                break;
              }

              if (++v12 >= [v6 count])
              {
                goto LABEL_11;
              }
            }

            [v6 removeObjectAtIndex:v12];

            self = v10;
          }

          else
          {
LABEL_11:
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __48__FCUIActivityListContentView_setActivityViews___block_invoke;
            v24[3] = &unk_27901A470;
            v24[4] = v11;
            [MEMORY[0x277D75D18] performWithoutAnimation:v24];
            self = v10;
            [(FCUIActivityListContentView *)v10 addSubview:v11];
            if (objc_opt_respondsToSelector())
            {
              [v11 setAdjustsFontForContentSizeCategory:v10->_adjustsFontForContentSizeCategory];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_activityViews, v20);
    outgoingActivityViews = self->_outgoingActivityViews;
    if (!outgoingActivityViews)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = self->_outgoingActivityViews;
      self->_outgoingActivityViews = v18;

      outgoingActivityViews = self->_outgoingActivityViews;
    }

    [(NSMutableArray *)outgoingActivityViews addObjectsFromArray:v6];
    [(FCUIActivityListContentView *)self setNeedsLayout];

    v5 = v21;
  }
}

- (void)setCompactActivityView:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_activityViews containsObject:?])
  {
    [(FCUIActivityListContentView *)self bringSubviewToFront:v4];
  }
}

- (CGSize)sizeThatFitsCollapsedToPill:(CGSize)a3
{
  [(FCUIActivityListContentView *)self _sizeThatFits:1 collapsedToPill:1 includingFooter:0 forceMeasurement:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)subviewFramesInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v81 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v9 = 1;
  [(FCUIActivityListContentView *)self _sizeThatFits:0 collapsedToPill:!self->_footerPinnedToBottom includingFooter:0 forceMeasurement:width, height];
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  CGRectGetWidth(v83);
  BSRectWithSize();
  footerPinnedToBottom = self->_footerPinnedToBottom;
  v65 = *(MEMORY[0x277CBF3A8] + 8);
  v66 = *MEMORY[0x277CBF3A8];
  v69 = v84.origin.x;
  v71 = v84.size.width;
  v11 = v84.origin.y;
  v12 = v84.size.height;
  v13 = CGRectGetHeight(v84);
  v72 = x;
  v85.origin.x = x;
  v14 = y;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  if (v13 >= CGRectGetHeight(v85))
  {
    v27 = v71;
    v29 = v72;
    v28 = v69;
    v30 = v12;
    goto LABEL_10;
  }

  v9 = !footerPinnedToBottom;
  if (self->_footerViewValid && self->_footerPinnedToBottom)
  {
    [(UIView *)self->_footerView sizeThatFits:width, height];
    v65 = v16;
    v66 = v15;
    v17 = v12 + v16 + 48.0;
    v86.origin.x = v69;
    v86.size.width = v71;
    v86.origin.y = v11;
    v86.size.height = v17;
    v18 = CGRectGetHeight(v86);
    v87.origin.x = v72;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    if (v18 >= CGRectGetHeight(v87))
    {
      v9 = 1;
      v29 = v72;
      goto LABEL_9;
    }

    UIRectCenteredYInRectScale();
    v20 = v19;
    v63 = v22;
    v64 = v21;
    v24 = v23;
    v88.origin.x = v72;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    MaxY = CGRectGetMaxY(v88);
    v89.size.height = v65;
    v89.size.width = v66;
    v89.origin.y = MaxY + -48.0 - v65;
    v89.origin.x = 0.0;
    MinY = CGRectGetMinY(v89);
    v90.origin.x = v20;
    v90.size.width = v63;
    v90.origin.y = v64;
    rect = v24;
    v90.size.height = v24;
    if (MinY > CGRectGetMaxY(v90) + 48.0)
    {
      v27 = v63;
      v11 = v64;
      v28 = v20;
      v29 = v72;
      v30 = rect;
      goto LABEL_10;
    }

    v9 = 1;
  }

  v29 = v72;
LABEL_9:
  UIRectCenteredYInRectScale();
  v11 = v31;
  v27 = v32;
LABEL_10:
  v33 = v28;
  v34 = v11;
  v35 = v27;
  recta = v30;
  v36 = CGRectGetMinY(*&v28);
  v91.origin.x = v29;
  v91.origin.y = v14;
  v91.size.width = width;
  v91.size.height = height;
  v37 = CGRectGetWidth(v91);
  v70 = v9;
  if (self->_headerViewValid)
  {
    [(UIView *)self->_headerView sizeThatFits:width, height];
    BSRectWithSize();
    v92.origin.x = v33;
    v92.origin.y = v11;
    v92.size.width = v27;
    v92.size.height = recta;
    CGRectGetMinY(v92);
    UIRectCenteredXInRectScale();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    *v79 = v38;
    *&v79[1] = v44;
    v36 = v44 + 24.0;
    *&v79[2] = v40;
    *&v79[3] = v42;
    v45 = [MEMORY[0x277CCAE60] valueWithBytes:v79 objCType:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
    [v8 setObject:v45 forKey:self->_headerView];
  }

  else
  {
    v41 = v37;
    v39 = 0.0;
    v43 = 0.0;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v46 = self->_activityViews;
  v47 = [(NSArray *)v46 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v76;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v76 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v75 + 1) + 8 * i);
        v93.origin.x = v39;
        v93.origin.y = v36;
        v93.size.width = v41;
        v93.size.height = v43;
        CGRectGetMaxY(v93);
        [v51 sizeThatFits:{width, height}];
        if (objc_opt_respondsToSelector())
        {
          [v51 isContracted];
        }

        UIRectCenteredXInRectScale();
        v39 = v52;
        v41 = v53;
        v43 = v54;
        v36 = v55 + 12.0;
        *v74 = v52;
        *&v74[1] = v55;
        *&v74[2] = v53;
        *&v74[3] = v54;
        v56 = [MEMORY[0x277CCAE60] valueWithBytes:v74 objCType:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
        [v8 setObject:v56 forKey:v51];
      }

      v48 = [(NSArray *)v46 countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v48);
  }

  if (self->_footerViewValid)
  {
    if (v70)
    {
      if (v66 == 0.0 && v65 == 0.0)
      {
        [(UIView *)self->_footerView sizeThatFits:width, height];
      }

      BSRectWithSize();
      v94.origin.x = v39;
      v94.origin.y = v36;
      v94.size.width = v41;
      v94.size.height = v43;
      CGRectGetMaxY(v94);
    }

    UIRectCenteredXInRectScale();
    v73[0] = v57;
    v73[1] = v58;
    v73[2] = v59;
    v73[3] = v60;
    v61 = [MEMORY[0x277CCAE60] valueWithBytes:v73 objCType:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
    [v8 setObject:v61 forKey:self->_footerView];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(FCUIActivityListContentView *)self _sizeThatFits:0 collapsedToPill:1 includingFooter:0 forceMeasurement:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(FCUIActivityListContentView *)self _sizeThatFits:0 collapsedToPill:1 includingFooter:1 forceMeasurement:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v80 = *MEMORY[0x277D85DE8];
  v76.receiver = self;
  v76.super_class = FCUIActivityListContentView;
  [(FCUIActivityListContentView *)&v76 layoutSubviews];
  if (!self->_contentDetached)
  {
    [(FCUIActivityListContentView *)self bounds];
    if (self->_collapsedSize.width == 0.0 && self->_collapsedSize.height == 0.0)
    {
      v7 = *MEMORY[0x277CBF3A0];
      v8 = *(MEMORY[0x277CBF3A0] + 8);
      v9 = *(MEMORY[0x277CBF3A0] + 16);
      v10 = *(MEMORY[0x277CBF3A0] + 24);
      v11 = [(FCUIActivityListContentView *)self subviewFramesInBounds:v3, v4, v5, v6];
    }

    else
    {
      BSRectWithSize();
      v53 = 0;
      UIRectCenteredXInRectScale();
      v7 = v12;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v11 = 0;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__FCUIActivityListContentView_layoutSubviews__block_invoke;
    aBlock[3] = &unk_27901A9E0;
    v16 = v11;
    v72 = v7;
    v73 = v8;
    v74 = v9;
    v75 = v10;
    v70 = v16;
    v71 = self;
    v17 = _Block_copy(aBlock);
    v54 = v17;
    if (self->_headerViewValid)
    {
      v17[2](v17, self->_headerView);
    }

    else
    {
      v18 = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
      headerView = self->_headerView;
      if (v18)
      {
        [(UIView *)headerView setAlpha:0.0];
      }

      else
      {
        [(UIView *)headerView removeFromSuperview];
        v20 = self->_headerView;
        self->_headerView = 0;
      }
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v55 = self;
    v21 = self->_activityViews;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v66;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v66 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v65 + 1) + 8 * i);
          v27 = v10;
          v28 = v9;
          v29 = v8;
          v30 = v7;
          if (v16)
          {
            v31 = [v16 objectForKey:*(*(&v65 + 1) + 8 * i)];
            [v31 CGRectValue];
            v30 = v32;
            v29 = v33;
            v28 = v34;
            v27 = v35;
          }

          [v26 alpha];
          if (v36 == 0.0)
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __45__FCUIActivityListContentView_layoutSubviews__block_invoke_3;
            v64[3] = &unk_27901A790;
            v64[4] = v26;
            *&v64[5] = v30;
            *&v64[6] = v29;
            *&v64[7] = v28;
            *&v64[8] = v27;
            [MEMORY[0x277D75D18] performWithoutAnimation:v64];
          }

          else
          {
            [v26 setFrame:{v30, v29, v28, v27}];
          }

          [v26 setAlpha:1.0];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v23);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v37 = self->_outgoingActivityViews;
    v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v61;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v61 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [*(*(&v60 + 1) + 8 * j) setAlpha:{0.0, v53}];
        }

        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v60 objects:v78 count:16];
      }

      while (v39);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v42 = v55->_purgeableActivityViews;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v57;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v57 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v56 + 1) + 8 * k) removeFromSuperview];
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v56 objects:v77 count:16];
      }

      while (v44);
    }

    objc_storeStrong(&v55->_purgeableActivityViews, v55->_outgoingActivityViews);
    outgoingActivityViews = v55->_outgoingActivityViews;
    v55->_outgoingActivityViews = 0;

    if (![(NSArray *)v55->_purgeableActivityViews count])
    {
      purgeableActivityViews = v55->_purgeableActivityViews;
      v55->_purgeableActivityViews = 0;
    }

    if (v55->_footerViewValid)
    {
      v49 = v54;
      v54[2](v54, v55->_footerView);
    }

    else
    {
      v50 = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
      footerView = v55->_footerView;
      if (v50)
      {
        [(UIView *)footerView setAlpha:0.0];
      }

      else
      {
        [(UIView *)footerView removeFromSuperview];
        v52 = v55->_footerView;
        v55->_footerView = 0;
      }

      v49 = v54;
    }
  }
}

void __45__FCUIActivityListContentView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 objectForKey:v3];
    [v5 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = *(a1 + 64);
    v13 = *(a1 + 72);
  }

  v14 = [v3 superview];
  v15 = *(a1 + 40);

  if (v14 == v15)
  {
    [v3 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    [*(a1 + 40) addSubview:v3];
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__FCUIActivityListContentView_layoutSubviews__block_invoke_2;
    v18[3] = &unk_27901A790;
    v17 = v3;
    v19 = v17;
    v20 = v7;
    v21 = v9;
    v22 = v11;
    v23 = v13;
    [v16 performWithoutAnimation:v18];
    [v17 setAlpha:1.0];
  }
}

uint64_t __45__FCUIActivityListContentView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __45__FCUIActivityListContentView_layoutSubviews__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(FCUIActivityListContentView *)self _contentSizeCategoryAdjustingViews];
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

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(FCUIActivityListContentView *)self adjustsFontForContentSizeCategory])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(FCUIActivityListContentView *)self _contentSizeCategoryAdjustingViews];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v6 |= [v9 adjustForContentSizeCategoryChange];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (CGSize)_sizeThatFits:(CGSize)a3 collapsedToPill:(BOOL)a4 includingFooter:(BOOL)a5 forceMeasurement:(BOOL)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.height;
  width = a3.width;
  v32 = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3.width != 0.0 || (a3.height == 0.0 ? (v13 = !a6) : (v13 = 0), !v13))
  {
    if (!a4)
    {
      if (self->_headerViewValid)
      {
        [(UIView *)self->_headerView sizeThatFits:a3.width, a3.height];
        v12 = v12 + v14;
        if ([(NSArray *)self->_activityViews count])
        {
          v12 = v12 + 24.0;
        }
      }

      if (v6 && self->_footerViewValid)
      {
        [(UIView *)self->_footerView sizeThatFits:width, height];
        v12 = v12 + v15 + 48.0;
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = self->_activityViews;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          [v21 sizeThatFits:{width, height, v27}];
          if (v11 < v22)
          {
            v11 = v22;
          }

          if (v7)
          {
            if (v12 < v23)
            {
              v12 = v23;
            }
          }

          else
          {
            v12 = v12 + v23;
            v24 = [(NSArray *)self->_activityViews lastObject];

            if (v21 != v24)
            {
              v12 = v12 + 12.0;
            }
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }
  }

  v25 = v11;
  v26 = v12;
  result.height = v26;
  result.width = v25;
  return result;
}

- (id)_contentSizeCategoryAdjustingViews
{
  v3 = [(NSArray *)self->_activityViews mutableCopy];
  v4 = v3;
  if (self->_headerView)
  {
    [v3 addObject:?];
  }

  if (self->_footerView)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (CGSize)collapsedSize
{
  width = self->_collapsedSize.width;
  height = self->_collapsedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end