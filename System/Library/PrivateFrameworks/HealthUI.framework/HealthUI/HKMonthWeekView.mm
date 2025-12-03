@interface HKMonthWeekView
- (BOOL)containsMonthTitle;
- (CGRect)_frameForTopBorderLine;
- (HKMonthWeekView)initWithDateCache:(id)cache displaysMonthTitle:(BOOL)title displaysTopBorderLine:(BOOL)line;
- (NSArray)accessoryViews;
- (id)cellMatchingDate:(id)date;
- (void)clearAccessoryViews;
- (void)layoutSubviews;
- (void)selectedCalendarDay:(id)day;
- (void)setMonthWeekStart:(id)start;
- (void)setTitleHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKMonthWeekView

- (HKMonthWeekView)initWithDateCache:(id)cache displaysMonthTitle:(BOOL)title displaysTopBorderLine:(BOOL)line
{
  lineCopy = line;
  v15.receiver = self;
  v15.super_class = HKMonthWeekView;
  v7 = [(HKCalendarWeekView *)&v15 initWithDateCache:cache];
  if (v7)
  {
    v7->_isRTL = HKUICalendarLocaleIsRightToLeft();
    v7->_displaysMonthTitle = title;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(HKMonthWeekView *)v7 setBackgroundColor:systemBackgroundColor];

    v7->_displaysTopBorderLine = lineCopy;
    if (lineCopy)
    {
      layer = [MEMORY[0x1E6979398] layer];
      topBorderLine = v7->_topBorderLine;
      v7->_topBorderLine = layer;

      v11 = v7->_topBorderLine;
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      [(CALayer *)v11 setContentsScale:?];

      layer2 = [(HKMonthWeekView *)v7 layer];
      [layer2 addSublayer:v7->_topBorderLine];
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
    dayCells = [(HKCalendarWeekView *)self dayCells];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(dayCells, "count")}];

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
          centerXAnchor = [(HKMonthWeekViewAccessoryView *)v16 centerXAnchor];
          leadingAnchor = [(HKMonthWeekView *)self leadingAnchor];
          [v15 frame];
          v19 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:CGRectGetMidX(v38)];
          [v19 setActive:1];

          widthAnchor = [(HKMonthWeekViewAccessoryView *)v16 widthAnchor];
          [v15 frame];
          v21 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v39) * 0.5];
          [v21 setActive:1];

          heightAnchor = [(HKMonthWeekViewAccessoryView *)v16 heightAnchor];
          widthAnchor2 = [(HKMonthWeekViewAccessoryView *)v16 widthAnchor];
          v24 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
          [v24 setActive:1];

          topAnchor = [(HKMonthWeekViewAccessoryView *)v16 topAnchor];
          topAnchor2 = [(HKMonthWeekView *)self topAnchor];
          [v15 frame];
          v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:CGRectGetMaxY(v40) + -2.0];
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

- (void)selectedCalendarDay:(id)day
{
  dayCopy = day;
  delegate = [(HKCalendarWeekView *)self delegate];
  [delegate week:self cellSelected:dayCopy];
}

- (id)cellMatchingDate:(id)date
{
  dateCopy = date;
  if ([(HKCalendarWeekView *)self containsDate:dateCopy])
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [currentCalendar component:512 fromDate:dateCopy];
    firstWeekday = [currentCalendar firstWeekday];
    v8 = (v6 - firstWeekday + *MEMORY[0x1E696B760]) % *MEMORY[0x1E696B760];
    if (HKUICalendarLocaleIsRightToLeft())
    {
      v8 = 6 - v8;
    }

    dayCells = [(HKCalendarWeekView *)self dayCells];
    v10 = [dayCells objectAtIndexedSubscript:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setTitleHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(HKMonthWeekView *)self containsMonthTitle])
  {
    monthTitleView = [(HKCalendarWeekView *)self monthTitleView];
    [monthTitleView setHighlighted:highlightedCopy];
  }
}

- (void)setMonthWeekStart:(id)start
{
  v8.receiver = self;
  v8.super_class = HKMonthWeekView;
  [(HKCalendarWeekView *)&v8 setMonthWeekStart:start];
  isRTL = self->_isRTL;
  firstDayOfMonthCellIndex = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v6 = firstDayOfMonthCellIndex;
  if (isRTL)
  {
    dayCells = [(HKCalendarWeekView *)self dayCells];
    -[CALayer setHidden:](self->_topBorderLine, "setHidden:", v6 == [dayCells count] - 1);
  }

  else
  {
    [(CALayer *)self->_topBorderLine setHidden:firstDayOfMonthCellIndex == 0];
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
  monthTitleView = [(HKCalendarWeekView *)self monthTitleView];
  [(HKMonthWeekView *)self bounds];
  [monthTitleView sizeThatFits:{v9, v10}];
  v12 = v11;
  v14 = v13;

  if (![(HKMonthWeekView *)self containsMonthTitle])
  {
    goto LABEL_17;
  }

  monthTitleView2 = [(HKCalendarWeekView *)self monthTitleView];
  [monthTitleView2 sizeToFit];

  monthTitleView3 = [(HKCalendarWeekView *)self monthTitleView];
  [monthTitleView3 frame];
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
  firstDayOfMonthCellIndex = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v32 = firstDayOfMonthCellIndex;
  if (isRTL)
  {
    dayCells = [(HKCalendarWeekView *)self dayCells];
    v34 = [dayCells count] - 1;

    if (v32 >= v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (firstDayOfMonthCellIndex >= 1)
  {
LABEL_10:
    [(HKCalendarWeekView *)self dateBottomMargin];
    v36 = v35;
    [(HKCalendarWeekView *)self dateDiameter];
    v29 = v29 + v36 + v37;
  }

LABEL_11:
  monthTitleView4 = [(HKCalendarWeekView *)self monthTitleView];
  [(HKMonthWeekView *)self bounds];
  [monthTitleView4 setFrame:{v20, v29}];

  monthTitleView5 = [(HKCalendarWeekView *)self monthTitleView];
  v40 = monthTitleView5;
  v41 = -v20;
  if (!self->_isRTL)
  {
    v41 = -17.0;
  }

  [monthTitleView5 setDividerOriginX:v41];
  v42 = self->_isRTL;
  firstDayOfMonthCellIndex2 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  if (v42)
  {
    v44 = (firstDayOfMonthCellIndex2 + 1);
    [(HKCalendarWeekView *)self leadingMargin];
    v46 = v45 + v7 * v44;
  }

  else
  {
    v46 = v7 * (v6 - firstDayOfMonthCellIndex2 + 1);
  }

  [v40 setDividerWidth:v46];

LABEL_17:
  dayCells2 = [(HKCalendarWeekView *)self dayCells];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __33__HKMonthWeekView_layoutSubviews__block_invoke;
  v51[3] = &unk_1E81B8B40;
  v51[4] = self;
  *&v51[5] = v7;
  v51[6] = v12;
  v51[7] = v14;
  [dayCells2 enumerateObjectsUsingBlock:v51];

  topBorderLine = self->_topBorderLine;
  [(HKMonthWeekView *)self _frameForTopBorderLine];
  [(CALayer *)topBorderLine setFrame:?];
  v49 = self->_topBorderLine;
  tableSeparatorColor = [MEMORY[0x1E69DC888] tableSeparatorColor];
  -[CALayer setBackgroundColor:](v49, "setBackgroundColor:", [tableSeparatorColor CGColor]);

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
  firstDayOfMonthCellIndex = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v14 = firstDayOfMonthCellIndex;
  if (!isRTL)
  {
    if (firstDayOfMonthCellIndex == 1)
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
  firstDayOfMonthCellIndex2 = [(HKCalendarWeekView *)self firstDayOfMonthCellIndex];
  v19 = v10 + ~firstDayOfMonthCellIndex2;
  if (!v17)
  {
    v19 = firstDayOfMonthCellIndex2;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKMonthWeekView;
  [(HKMonthWeekView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKMonthWeekView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      +[HKCalendarDayCell clearImageCache];
      [(HKMonthWeekView *)self setNeedsLayout];
    }
  }
}

@end