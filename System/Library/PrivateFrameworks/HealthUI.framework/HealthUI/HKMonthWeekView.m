@interface HKMonthWeekView
- (BOOL)containsMonthTitle;
- (CGRect)_frameForTopBorderLine;
- (HKMonthWeekView)initWithDateCache:(id)a3 displaysMonthTitle:(BOOL)a4 displaysTopBorderLine:(BOOL)a5;
- (NSArray)accessoryViews;
- (id)cellMatchingDate:(id)a3;
- (void)clearAccessoryViews;
- (void)layoutSubviews;
- (void)selectedCalendarDay:(id)a3;
- (void)setMonthWeekStart:(id)a3;
- (void)setTitleHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKMonthWeekView

- (HKMonthWeekView)initWithDateCache:(id)a3 displaysMonthTitle:(BOOL)a4 displaysTopBorderLine:(BOOL)a5
{
  v5 = a5;
  v15.receiver = self;
  v15.super_class = HKMonthWeekView;
  v7 = [(HKCalendarWeekView *)&v15 initWithDateCache:a3];
  if (v7)
  {
    v7->_isRTL = HKUICalendarLocaleIsRightToLeft();
    v7->_displaysMonthTitle = a4;
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(HKMonthWeekView *)v7 setBackgroundColor:v8];

    v7->_displaysTopBorderLine = v5;
    if (v5)
    {
      v9 = [MEMORY[0x1E6979398] layer];
      topBorderLine = v7->_topBorderLine;
      v7->_topBorderLine = v9;

      v11 = v7->_topBorderLine;
      v12 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v12 scale];
      [(CALayer *)v11 setContentsScale:?];

      v13 = [(HKMonthWeekView *)v7 layer];
      [v13 addSublayer:v7->_topBorderLine];
    }

    [(HKCalendarWeekView *)v7 setLeadingMargin:5.0];
    [(HKCalendarWeekView *)v7 setDateTopMargin:2.0];
    [(HKCalendarWeekView *)v7 setDateBottomMargin:18.0];
    [(HKCalendarWeekView *)v7 setMonthTitleTopMargin:2.0];
    [(HKCalendarWeekView *)v7 setMonthTitleBottomMargin:2.0];
    [(HKCalendarWeekView *)v7 setDateDiameter:35.0];
  }

  return v7;
}

- (NSArray)accessoryViews
{
  v36 = *MEMORY[0x1E69E9840];
  accessoryViews = self->_accessoryViews;
  if (!accessoryViews)
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = [(HKCalendarWeekView *)self dayCells];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(HKCalendarWeekView *)self dayCells];
    v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      v10 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v12 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [[HKMonthWeekViewAccessoryView alloc] initWithFrame:v10, v11, v12, v13];
          [(HKMonthWeekViewAccessoryView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(NSArray *)v6 addObject:v16];
          [(HKMonthWeekView *)self addSubview:v16];
          v17 = [(HKMonthWeekViewAccessoryView *)v16 centerXAnchor];
          v18 = [(HKMonthWeekView *)self leadingAnchor];
          [v15 frame];
          v19 = [v17 constraintEqualToAnchor:v18 constant:CGRectGetMidX(v38)];
          [v19 setActive:1];

          v20 = [(HKMonthWeekViewAccessoryView *)v16 widthAnchor];
          [v15 frame];
          v21 = [v20 constraintEqualToConstant:CGRectGetWidth(v39) * 0.5];
          [v21 setActive:1];

          v22 = [(HKMonthWeekViewAccessoryView *)v16 heightAnchor];
          v23 = [(HKMonthWeekViewAccessoryView *)v16 widthAnchor];
          v24 = [v22 constraintEqualToAnchor:v23];
          [v24 setActive:1];

          v25 = [(HKMonthWeekViewAccessoryView *)v16 topAnchor];
          v26 = [(HKMonthWeekView *)self topAnchor];
          [v15 frame];
          v27 = [v25 constraintEqualToAnchor:v26 constant:CGRectGetMaxY(v40) + -2.0];
          [v27 setActive:1];
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v8);
    }

    v28 = self->_accessoryViews;
    self->_accessoryViews = v6;

    accessoryViews = self->_accessoryViews;
  }

  return accessoryViews;
}

- (void)clearAccessoryViews
{
  [(HKMonthWeekView *)self setAccessoryContentsFetched:0];
  [(NSArray *)self->_accessoryViews makeObjectsPerformSelector:sel_removeFromSuperview];
  accessoryViews = self->_accessoryViews;
  self->_accessoryViews = 0;
}

- (BOOL)containsMonthTitle
{
  if (!self->_displaysMonthTitle)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = HKMonthWeekView;
  return [(HKCalendarWeekView *)&v5 containsMonthTitle];
}

- (void)selectedCalendarDay:(id)a3
{
  v4 = a3;
  v5 = [(HKCalendarWeekView *)self delegate];
  [v5 week:self cellSelected:v4];
}

- (id)cellMatchingDate:(id)a3
{
  v4 = a3;
  if ([(HKCalendarWeekView *)self containsDate:v4])
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [v5 component:512 fromDate:v4];
    v7 = [v5 firstWeekday];
    v8 = (v6 - v7 + *MEMORY[0x1E696B760]) % *MEMORY[0x1E696B760];
    if (HKUICalendarLocaleIsRightToLeft())
    {
      v8 = 6 - v8;
    }

    v9 = [(HKCalendarWeekView *)self dayCells];
    v10 = [v9 objectAtIndexedSubscript:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setTitleHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(HKMonthWeekView *)self containsMonthTitle])
  {
    v5 = [(HKCalendarWeekView *)self monthTitleView];
    [v5 setHighlighted:v3];
  }
}

- (void)setMonthWeekStart:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKMonthWeekView;
  [(HKCalendarWeekView *)&v8 setMonthWeekStart:a3];
  isRTL = self->_isRTL;
  v5 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v6 = v5;
  if (isRTL)
  {
    v7 = [(HKCalendarWeekView *)self dayCells];
    -[CALayer setHidden:](self->_topBorderLine, "setHidden:", v6 == [v7 count] - 1);
  }

  else
  {
    [(CALayer *)self->_topBorderLine setHidden:v5 == 0];
  }

  [(HKMonthWeekView *)self clearAccessoryViews];
}

- (void)layoutSubviews
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(HKMonthWeekView *)self bounds];
  v4 = v3;
  [(HKCalendarWeekView *)self leadingMargin];
  v6 = *MEMORY[0x1E696B760];
  v7 = (v4 + v5 * -2.0) / *MEMORY[0x1E696B760];
  v8 = [(HKCalendarWeekView *)self monthTitleView];
  [(HKMonthWeekView *)self bounds];
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  v14 = v13;

  if (![(HKMonthWeekView *)self containsMonthTitle])
  {
    goto LABEL_17;
  }

  v15 = [(HKCalendarWeekView *)self monthTitleView];
  [v15 sizeToFit];

  v16 = [(HKCalendarWeekView *)self monthTitleView];
  [v16 frame];
  v18 = v17;

  [(HKCalendarWeekView *)self leadingMargin];
  [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  UIRoundToViewScale();
  v20 = v19;
  if (v19 < 0.0)
  {
    [(HKCalendarWeekView *)self leadingMargin];
    v20 = v21;
  }

  [(HKMonthWeekView *)self bounds];
  if (v18 + v20 > v22)
  {
    [(HKMonthWeekView *)self bounds];
    v24 = v23 - v18;
    [(HKCalendarWeekView *)self leadingMargin];
    v20 = v24 - v25;
  }

  [(HKCalendarWeekView *)self dateTopMargin];
  v27 = v26;
  [(HKCalendarWeekView *)self monthTitleTopMargin];
  v29 = v27 + v28;
  isRTL = self->_isRTL;
  v31 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v32 = v31;
  if (isRTL)
  {
    v33 = [(HKCalendarWeekView *)self dayCells];
    v34 = [v33 count] - 1;

    if (v32 >= v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v31 >= 1)
  {
LABEL_10:
    [(HKCalendarWeekView *)self dateBottomMargin];
    v36 = v35;
    [(HKCalendarWeekView *)self dateDiameter];
    v29 = v29 + v36 + v37;
  }

LABEL_11:
  v38 = [(HKCalendarWeekView *)self monthTitleView];
  [(HKMonthWeekView *)self bounds];
  [v38 setFrame:{v20, v29}];

  v39 = [(HKCalendarWeekView *)self monthTitleView];
  v40 = v39;
  v41 = -v20;
  if (!self->_isRTL)
  {
    v41 = -17.0;
  }

  [v39 setDividerOriginX:v41];
  v42 = self->_isRTL;
  v43 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  if (v42)
  {
    v44 = (v43 + 1);
    [(HKCalendarWeekView *)self leadingMargin];
    v46 = v45 + v7 * v44;
  }

  else
  {
    v46 = v7 * (v6 - v43 + 1);
  }

  [v40 setDividerWidth:v46];

LABEL_17:
  v47 = [(HKCalendarWeekView *)self dayCells];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __33__HKMonthWeekView_layoutSubviews__block_invoke;
  v51[3] = &unk_1E81B8B40;
  v51[4] = self;
  *&v51[5] = v7;
  v51[6] = v12;
  v51[7] = v14;
  [v47 enumerateObjectsUsingBlock:v51];

  topBorderLine = self->_topBorderLine;
  [(HKMonthWeekView *)self _frameForTopBorderLine];
  [(CALayer *)topBorderLine setFrame:?];
  v49 = self->_topBorderLine;
  v50 = [MEMORY[0x1E69DC888] tableSeparatorColor];
  -[CALayer setBackgroundColor:](v49, "setBackgroundColor:", [v50 CGColor]);

  [MEMORY[0x1E6979518] commit];
}

void __33__HKMonthWeekView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v34 = a2;
  [*(a1 + 32) leadingMargin];
  [*(a1 + 32) dateDiameter];
  UIRoundToViewScale();
  v6 = v5;
  [*(a1 + 32) dateTopMargin];
  v8 = v7;
  v9 = [v34 date];
  [v34 updateWithDate:v9 dayOfMonth:{objc_msgSend(v34, "dayOfMonth")}];

  if ([*(a1 + 32) containsMonthTitle])
  {
    v10 = *(a1 + 56);
    [*(a1 + 32) monthTitleTopMargin];
    v12 = v10 + v11;
    [*(a1 + 32) monthTitleBottomMargin];
    v14 = v13;
    v15 = *(a1 + 32);
    v16 = v15[530];
    v17 = [v15 firstDayOfMonthCellIndex];
    if (v16 == 1)
    {
      v18 = [*(a1 + 32) dayCells];
      v19 = [v18 count] - 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = v12 + v14;
    v21 = *(a1 + 32);
    v22 = v21[530];
    v23 = [v21 firstDayOfMonthCellIndex];
    if (v17 == v19)
    {
      [*(a1 + 32) dateTopMargin];
LABEL_11:
      v8 = v8 + v20 + v24;
      goto LABEL_12;
    }

    v25 = v23 >= a3;
    if (!v22)
    {
      v25 = v23 <= a3;
    }

    if (v25)
    {
      [v34 dayDiameter];
      v27 = v26;
      [*(a1 + 32) dateTopMargin];
      v29 = v27 + v28;
      [*(a1 + 32) dateBottomMargin];
      v24 = v29 + v30;
      goto LABEL_11;
    }
  }

LABEL_12:
  [v34 dayDiameter];
  v32 = v31;
  [v34 dayDiameter];
  [v34 setFrame:{v6, v8, v32, v33}];
  [v34 layoutSublayers];
}

- (CGRect)_frameForTopBorderLine
{
  [(HKCalendarWeekView *)self leadingMargin];
  v4 = v3;
  [(HKMonthWeekView *)self bounds];
  v6 = v5;
  [(HKCalendarWeekView *)self leadingMargin];
  v8 = v7;
  v9 = 0.0;
  if (![(HKMonthWeekView *)self containsMonthTitle])
  {
    goto LABEL_8;
  }

  v10 = *MEMORY[0x1E696B760];
  v11 = (v6 + v8 * -2.0) / *MEMORY[0x1E696B760];
  isRTL = self->_isRTL;
  v13 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v14 = v13;
  if (!isRTL)
  {
    if (v13 == 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    [(HKMonthWeekView *)self bounds];
    v20 = v21;
    goto LABEL_9;
  }

  v15 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex]+ 1;
  [(HKCalendarWeekView *)self leadingMargin];
  v9 = v16 + v11 * v15;
  if (v14 == v10 - 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = self->_isRTL;
  v18 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v19 = v10 + ~v18;
  if (!v17)
  {
    v19 = v18;
  }

  v20 = v4 + v11 * v19;
LABEL_9:
  v22 = HKUIOnePixel();
  v23 = 0.0;
  v24 = v9;
  v25 = v20;
  result.size.height = v22;
  result.size.width = v25;
  result.origin.y = v23;
  result.origin.x = v24;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMonthWeekView;
  [(HKMonthWeekView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKMonthWeekView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      +[HKCalendarDayCell clearImageCache];
      [(HKMonthWeekView *)self setNeedsLayout];
    }
  }
}

@end