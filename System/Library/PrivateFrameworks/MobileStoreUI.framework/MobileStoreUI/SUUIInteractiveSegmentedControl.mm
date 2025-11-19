@interface SUUIInteractiveSegmentedControl
- (BOOL)_setSelectionProgress:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIInteractiveSegmentedControl)initWithFrame:(CGRect)a3;
- (double)relativeSelectionProgressForSelectionProgress:(double)a3 segmentIndex:(int64_t)a4;
- (double)selectionProgressForRelativeSectionProgress:(double)a3 segmentIndex:(int64_t)a4;
- (double)selectionProgressForSelectedSegmentAtIndex:(int64_t)a3;
- (id)_createDividerViewWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)selectedSegmentIndexForSelectionProgress:(double)a3;
- (void)_applySelectionProgressToSegments;
- (void)_registerForObservationOfSegment:(id)a3;
- (void)_segmentControlTouchUpInsideAction:(id)a3;
- (void)_unregisterForObservationOfSegment:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDividerCreationBlock:(id)a3;
- (void)setDividerWidth:(double)a3;
- (void)setSegments:(id)a3;
@end

@implementation SUUIInteractiveSegmentedControl

- (SUUIInteractiveSegmentedControl)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUUIInteractiveSegmentedControl;
  result = [(SUUIInteractiveSegmentedControl *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_dividerWidth = 1.0;
  }

  return result;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_segments;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SUUIInteractiveSegmentedControl *)self _unregisterForObservationOfSegment:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SUUIInteractiveSegmentedControl;
  [(SUUIInteractiveSegmentedControl *)&v8 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v29.receiver = self;
  v29.super_class = SUUIInteractiveSegmentedControl;
  v8 = [(SUUIInteractiveSegmentedControl *)&v29 hitTest:v7 withEvent:x, y];
  v9 = [(NSMutableArray *)self->_dividerViews containsObject:v8];
  if (v8 == self || v9 != 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->_segments;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v26;
      v16 = 1.79769313e308;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        if ([v18 isEnabled])
        {
          if ([v18 isUserInteractionEnabled])
          {
            [v18 frame];
            UIDistanceBetweenPointAndRect();
            v20 = v19;
            if (v19 - v16 <= 0.00000011920929)
            {
              v21 = v18;

              v14 = v21;
              v16 = v20;
              if (v20 <= 0.00000011920929)
              {
                break;
              }
            }
          }
        }

        if (v13 == ++v17)
        {
          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
          v21 = v14;
          if (v13)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = self;
    }

    v23 = v22;

    v8 = v23;
  }

  return v8;
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = SUUIInteractiveSegmentedControl;
  [(SUUIInteractiveSegmentedControl *)&v59 layoutSubviews];
  [(SUUIInteractiveSegmentedControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SUUIInteractiveSegmentedControl *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 < 0.00000011920929)
  {
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    v13 = v15;
  }

  v16 = [(NSArray *)self->_segments count];
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  v17 = CGRectGetWidth(v62) - (v16 - 1) * self->_dividerWidth;
  UIFloorToViewScale();
  v19 = v18;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v58[3] = llround(v13 * (v17 - v18 * v16));
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v57[3] = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  segments = self->_segments;
  v48[3] = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __49__SUUIInteractiveSegmentedControl_layoutSubviews__block_invoke;
  v47[3] = &unk_2798FC568;
  *&v47[7] = v17;
  *&v47[8] = v4;
  *&v47[9] = v6;
  *&v47[10] = v8;
  *&v47[11] = v10;
  *&v47[12] = v18;
  v47[4] = &v49;
  v47[5] = &v53;
  v47[6] = v48;
  [(NSArray *)segments enumerateObjectsUsingBlock:v47];
  v21 = v50[3] - v17;
  if (v21 > 0.0)
  {
    v54[3] = v54[3] - v21;
  }

  v22 = [(NSMutableArray *)self->_dividerViews mutableCopy];
  v23 = self->_segments;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __49__SUUIInteractiveSegmentedControl_layoutSubviews__block_invoke_2;
  v33[3] = &unk_2798FC590;
  v39 = v17;
  v40 = v4;
  v41 = v6;
  v42 = v8;
  v43 = v10;
  v44 = v19;
  v35 = v57;
  v36 = v48;
  v33[4] = self;
  v37 = &v53;
  v38 = v58;
  v45 = v21;
  v46 = v13;
  v24 = v22;
  v34 = v24;
  [(NSArray *)v23 enumerateObjectsUsingBlock:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v29 objects:v60 count:16];
  if (v26)
  {
    v27 = *v30;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v29 + 1) + 8 * i) removeFromSuperview];
      }

      v26 = [v25 countByEnumeratingWithState:&v29 objects:v60 count:16];
    }

    while (v26);
  }

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v58, 8);
}

void __49__SUUIInteractiveSegmentedControl_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = a2;
  v12.origin.x = v4;
  v12.origin.y = v5;
  v12.size.width = v6;
  v12.size.height = v7;
  [v8 sizeThatFits:{v3, CGRectGetHeight(v12)}];
  v10 = v9;

  *(*(*(a1 + 32) + 8) + 24) = v10 + *(*(*(a1 + 32) + 8) + 24);
  v11 = *(a1 + 96);
  if (v10 > v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = v10 - v11 + *(*(*(a1 + 40) + 8) + 24);
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void __49__SUUIInteractiveSegmentedControl_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 segmentPosition];
  [v27 frame];
  [v27 sizeThatFits:{*(a1 + 80), CGRectGetHeight(*(a1 + 88))}];
  v5 = v4;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  Height = CGRectGetHeight(*(a1 + 88));
  v8 = *(a1 + 120);
  v9 = 0.0;
  v29.origin.y = 0.0;
  v29.origin.x = v6;
  v29.size.width = v8;
  v29.size.height = Height;
  if (v5 <= CGRectGetWidth(v29))
  {
    if (*(*(*(a1 + 64) + 8) + 24) > 0.0)
    {
      [*(*(a1 + 32) + 480) count];
      UIFloorToViewScale();
      v12 = v11;
      v30.origin.y = 0.0;
      v30.origin.x = v6;
      v30.size.width = v8;
      v30.size.height = Height;
      v13 = CGRectGetWidth(v30) - v5;
      if (v12 < v13)
      {
        v13 = v12;
      }

      v8 = v8 - v13;
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) - v13;
    }
  }

  else
  {
    if (*(a1 + 128) > 0.0)
    {
      UIFloorToViewScale();
      v9 = v10;
    }

    v8 = v5 - v9;
  }

  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 24);
  v16 = v15 < 1;
  v17 = v15 - 1;
  if (!v16)
  {
    v8 = v8 + 1.0 / *(a1 + 136);
    *(v14 + 24) = v17;
  }

  [v27 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v6, 0.0, v8, Height, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112))}];
  v31.origin.y = 0.0;
  v31.origin.x = v6;
  v31.size.width = v8;
  v31.size.height = Height;
  *(*(*(a1 + 48) + 8) + 24) = CGRectGetWidth(v31) + *(*(*(a1 + 48) + 8) + 24);
  if ((v3 - 1) <= 1)
  {
    v18 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(*(a1 + 32) + 472);
    v20 = CGRectGetHeight(*(a1 + 88));
    v21 = [*(a1 + 40) firstObject];
    if (v21)
    {
      v22 = v21;
      [*(a1 + 40) removeObjectAtIndex:0];
      [v22 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v18, 0.0, v19, v20, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112))}];
    }

    else
    {
      v22 = [*(a1 + 32) _createDividerViewWithFrame:{v18, 0.0, v19, v20}];
      [*(a1 + 32) addSubview:v22];
      v23 = *(*(a1 + 32) + 456);
      if (!v23)
      {
        v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        v25 = *(a1 + 32);
        v26 = *(v25 + 456);
        *(v25 + 456) = v24;

        v23 = *(*(a1 + 32) + 456);
      }

      [v23 addObject:v22];
    }

    v32.origin.x = v18;
    v32.origin.y = 0.0;
    v32.size.width = v19;
    v32.size.height = v20;
    *(*(*(a1 + 48) + 8) + 24) = CGRectGetWidth(v32) + *(*(*(a1 + 48) + 8) + 24);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x277D85DE8];
  [(NSArray *)self->_segments count];
  UIFloorToViewScale();
  v7 = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_segments;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v10 = 0.0;
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * v13) sizeThatFits:{v7, height, v17}];
        if (v14 >= v7)
        {
          v14 = v7;
        }

        if (v10 < v14)
        {
          v10 = v14;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  UICeilToViewScale();
  if (width < v15)
  {
    v15 = width;
  }

  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setDividerCreationBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_dividerCreationBlock != a3)
  {
    v4 = [a3 copy];
    dividerCreationBlock = self->_dividerCreationBlock;
    self->_dividerCreationBlock = v4;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_dividerViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    dividerViews = self->_dividerViews;
    self->_dividerViews = 0;

    [(SUUIInteractiveSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setDividerWidth:(double)a3
{
  if (vabdd_f64(self->_dividerWidth, a3) > 0.00000011920929)
  {
    self->_dividerWidth = a3;
    [(SUUIInteractiveSegmentedControl *)self setNeedsLayout];
  }
}

- (void)setSegments:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  segments = self->_segments;
  if (segments != v4 && ![(NSArray *)segments isEqualToArray:v4])
  {
    v6 = [(SUUIInteractiveSegmentedControl *)self selectedSegmentIndexForSelectionProgress:self->_selectionProgress];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = 0;
      v7 = 0.0;
    }

    else
    {
      v8 = v6;
      v34 = [(NSArray *)self->_segments objectAtIndex:v6];
      [(SUUIInteractiveSegmentedControl *)self relativeSelectionProgressForSelectionProgress:v8 segmentIndex:self->_selectionProgress];
      v7 = v9;
    }

    v10 = self->_segments;
    v11 = [(NSArray *)v10 mutableCopy];
    v12 = [(NSArray *)v4 copy];
    v13 = self->_segments;
    self->_segments = v12;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = self->_segments;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          [v11 removeObject:{v19, v34}];
          if (![(NSArray *)v10 containsObject:v19])
          {
            [(SUUIInteractiveSegmentedControl *)self _registerForObservationOfSegment:v19];
            [(SUUIInteractiveSegmentedControl *)self addSubview:v19];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v16);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          [(SUUIInteractiveSegmentedControl *)self _unregisterForObservationOfSegment:v25, v34];
          if ([v25 isDescendantOfView:self])
          {
            [v25 removeFromSuperview];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    v26 = [(NSArray *)self->_segments count];
    v27 = self->_segments;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __47__SUUIInteractiveSegmentedControl_setSegments___block_invoke;
    v35[3] = &__block_descriptor_40_e53_v32__0__UIControl_SUUIInteractiveSegmenting__8Q16_B24l;
    v35[4] = v26;
    [(NSArray *)v27 enumerateObjectsUsingBlock:v35];
    v28 = v34;
    if (v34)
    {
      v29 = self->_segments;
      v30 = 0.0;
      if (v29)
      {
        v31 = [(NSArray *)v29 indexOfObject:v34];
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SUUIInteractiveSegmentedControl *)self selectionProgressForRelativeSectionProgress:v31 segmentIndex:v7];
          v30 = v32;
        }
      }

      v33 = [(SUUIInteractiveSegmentedControl *)self _setSelectionProgress:v30, v34];
      [(SUUIInteractiveSegmentedControl *)self _applySelectionProgressToSegments];
      if (v33)
      {
        [(SUUIInteractiveSegmentedControl *)self _notifyClientsOfSelectionProgressChange];
      }
    }

    [(SUUIInteractiveSegmentedControl *)self setNeedsLayout];
  }
}

uint64_t __47__SUUIInteractiveSegmentedControl_setSegments___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 < 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = v3 - 1 == a3;
    v5 = 2;
    if (v4)
    {
      v5 = 3;
    }

    if (a3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }
  }

  return [a2 setSegmentPosition:v6];
}

- (double)relativeSelectionProgressForSelectionProgress:(double)a3 segmentIndex:(int64_t)a4
{
  v7 = [(NSArray *)self->_segments count];
  if (!v7)
  {
    return 0.0;
  }

  v8 = v7;
  [(SUUIInteractiveSegmentedControl *)self selectionProgressForSelectedSegmentAtIndex:a4];
  result = fmax((a3 - v9) / (1.0 / v8), -1.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (double)selectionProgressForRelativeSectionProgress:(double)a3 segmentIndex:(int64_t)a4
{
  v7 = [(NSArray *)self->_segments count];
  if (!v7)
  {
    return 0.0;
  }

  v8 = fmax(a3, -1.0);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  v9 = v8 * (1.0 / v7);
  [(SUUIInteractiveSegmentedControl *)self selectionProgressForSelectedSegmentAtIndex:a4];
  return v9 + v10;
}

- (double)selectionProgressForSelectedSegmentAtIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_segments count];
  if (v4)
  {
    return 1.0 / v4 * 0.5 + a3 * (1.0 / v4);
  }

  else
  {
    return 0.0;
  }
}

- (int64_t)selectedSegmentIndexForSelectionProgress:(double)a3
{
  v4 = [(NSArray *)self->_segments count];
  if (v4)
  {
    return llround((a3 + -1.0 / v4 * 0.5) * (v4 - 1));
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)_segmentControlTouchUpInsideAction:(id)a3
{
  v4 = a3;
  segments = self->_segments;
  if (segments)
  {
    v6 = v4;
    segments = [segments indexOfObject:v4];
    v4 = v6;
    if (segments != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SUUIInteractiveSegmentedControl *)self selectionProgressForSelectedSegmentAtIndex:segments];
      segments = [(SUUIInteractiveSegmentedControl *)self _setSelectionProgress:?];
      v4 = v6;
      if (segments)
      {
        segments = [(SUUIInteractiveSegmentedControl *)self _notifyClientsOfSelectionProgressChange];
        v4 = v6;
      }
    }
  }

  MEMORY[0x2821F96F8](segments, v4);
}

- (void)_applySelectionProgressToSegments
{
  segments = self->_segments;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SUUIInteractiveSegmentedControl__applySelectionProgressToSegments__block_invoke;
  v3[3] = &unk_2798FC5D8;
  v3[4] = self;
  [(NSArray *)segments enumerateObjectsUsingBlock:v3];
}

void __68__SUUIInteractiveSegmentedControl__applySelectionProgressToSegments__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[61];
  v6 = a2;
  [v4 relativeSelectionProgressForSelectionProgress:a3 segmentIndex:v5];
  [v6 setRelativeSelectionProgress:?];
}

- (id)_createDividerViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  dividerCreationBlock = self->_dividerCreationBlock;
  if (!dividerCreationBlock || (dividerCreationBlock[2](dividerCreationBlock, self, a3.origin, *&a3.origin.y, a3.size, *&a3.size.height), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];
  }

  return v9;
}

- (void)_registerForObservationOfSegment:(id)a3
{
  if (a3)
  {
    [a3 addTarget:self action:sel__segmentControlTouchUpInsideAction_ forControlEvents:64];
  }
}

- (BOOL)_setSelectionProgress:(double)a3
{
  v3 = vabdd_f64(self->_selectionProgress, a3);
  if (v3 > 0.00000011920929)
  {
    self->_selectionProgress = a3;
    [(SUUIInteractiveSegmentedControl *)self _applySelectionProgressToSegments];
  }

  return v3 > 0.00000011920929;
}

- (void)_unregisterForObservationOfSegment:(id)a3
{
  if (a3)
  {
    [a3 removeTarget:self action:sel__segmentControlTouchUpInsideAction_ forControlEvents:64];
  }
}

@end