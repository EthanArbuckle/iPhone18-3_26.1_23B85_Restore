@interface CSLayoutStrategy
- (CGRect)suggestedFrameForDateTimeViewInScreenCoordinates:(CGRect)coordinates forceCenteredX:(BOOL)x;
- (CGRect)suggestedFrameForListForPage:(id)page bounds:(CGRect)bounds;
- (CGRect)suggestedVisibleFrameForSleeveInScreenCoordinates:(CGRect)coordinates forceCenteredX:(BOOL)x;
- (CSPersistentContentLayoutProviding)persistentLayout;
- (UIEdgeInsets)suggestedContentInsetsForListForPage:(id)page;
- (double)_customListWidthForPage:(id)page startingBounds:(CGRect)bounds;
- (double)_listInsetXForPage:(id)page;
- (unint64_t)_listLayoutForPage:(id)page;
- (unint64_t)_listWidthStrategyForPage:(id)page;
@end

@implementation CSLayoutStrategy

- (CSPersistentContentLayoutProviding)persistentLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentLayout);

  return WeakRetained;
}

- (CGRect)suggestedFrameForDateTimeViewInScreenCoordinates:(CGRect)coordinates forceCenteredX:(BOOL)x
{
  xCopy = x;
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_persistentLayout);
  [WeakRetained dateTimeMostExtremeLeadingX];
  [WeakRetained dateTimeMostExtremeTrailingX];
  containsCenteredDateTimeLayout = [WeakRetained containsCenteredDateTimeLayout];
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGRectGetMidX(v25);
  if (containsCenteredDateTimeLayout)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGRectGetWidth(v26);
    v11 = BSFloatGreaterThanOrEqualToFloat();
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    CGRectGetWidth(v27);
    if (v11)
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      CGRectGetHeight(v28);
      if (!xCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!xCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetWidth(v29);
  if (xCopy)
  {
LABEL_6:
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetWidth(v30);
  }

LABEL_7:
  [WeakRetained timeLabelBaselineY];
  [MEMORY[0x277D65EB0] timeFontMetrics];
  [WeakRetained timeLabelBaselineY];
  [WeakRetained timeToSubtitleLabelBaselineDifferenceY];
  labelFont = [MEMORY[0x277D65EA8] labelFont];
  [labelFont descender];

  SBFMainScreenScale();
  BSRectRoundForScale();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)suggestedFrameForListForPage:(id)page bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pageCopy = page;
  v10 = [(CSLayoutStrategy *)self _listLayoutForPage:pageCopy];
  if (v10)
  {
    v11 = v10;
    [(CSLayoutStrategy *)self _customListWidthForPage:pageCopy startingBounds:x, y, width, height];
    v13 = v12;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v14 = CGRectGetWidth(v22) - v13;
    if (BSFloatGreaterThanFloat())
    {
      if (v11 == 1)
      {
        x = v14 * 0.5;
      }

      else
      {
        [(CSLayoutStrategy *)self _listInsetXForPage:pageCopy];
        v16 = v15;
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v17 = CGRectGetWidth(v23) - (v13 + v16);
        if ((v11 == 2) == ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1))
        {
          v16 = v17;
        }

        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        height = CGRectGetHeight(v24);
        y = 0.0;
        x = v16;
      }
    }

    else
    {
      v13 = width;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v18 = x;
  v19 = y;
  v20 = v13;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)suggestedContentInsetsForListForPage:(id)page
{
  persistentLayout = [(CSLayoutStrategy *)self persistentLayout];
  [persistentLayout listMinY];
  v5 = v4;
  [persistentLayout bottomContentInset];
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
  v10 = v5;
  v11 = v7;
  result.right = v9;
  result.bottom = v11;
  result.left = v8;
  result.top = v10;
  return result;
}

- (CGRect)suggestedVisibleFrameForSleeveInScreenCoordinates:(CGRect)coordinates forceCenteredX:(BOOL)x
{
  xCopy = x;
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  persistentLayout = [(CSLayoutStrategy *)self persistentLayout];
  [(CSLayoutStrategy *)self suggestedFrameForDateTimeViewInScreenCoordinates:xCopy forceCenteredX:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [persistentLayout windowedAccessoryInset];
  v20 = v19;
  [MEMORY[0x277D65EA8] labelFontMetrics];
  v22 = v18 - v21;

  v23 = v20 + v12;
  v24 = v14;
  v25 = v16 + v20 * -2.0;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (unint64_t)_listWidthStrategyForPage:(id)page
{
  pageCopy = page;
  if (objc_opt_respondsToSelector())
  {
    listWidthStrategy = [pageCopy listWidthStrategy];
  }

  else
  {
    listWidthStrategy = 2;
  }

  return listWidthStrategy;
}

- (unint64_t)_listLayoutForPage:(id)page
{
  pageCopy = page;
  if (objc_opt_respondsToSelector())
  {
    listLayout = [pageCopy listLayout];
  }

  else
  {
    listLayout = 0;
  }

  return listLayout;
}

- (double)_listInsetXForPage:(id)page
{
  pageCopy = page;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [pageCopy listInsetX];
    v4 = v5;
  }

  return v4;
}

- (double)_customListWidthForPage:(id)page startingBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pageCopy = page;
  v10 = [(CSLayoutStrategy *)self _listWidthStrategyForPage:pageCopy];
  if (!v10)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v13 = CGRectGetWidth(v16);
    [(CSLayoutStrategy *)self _listInsetXForPage:pageCopy];
    v11 = v13 + v14 * -2.0;
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    [MEMORY[0x277D67DA0] idealSearchPlatterWidth];
    goto LABEL_7;
  }

  v11 = 0.0;
  if (v10 == 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [pageCopy customListWidth];
LABEL_7:
    v11 = v12;
  }

LABEL_9:

  return v11;
}

@end