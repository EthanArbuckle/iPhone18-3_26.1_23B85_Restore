@interface _HKTimeScopeControlBar
- (CGSize)sizeThatFits:(CGSize)result;
- (_HKTimeScopeControlBar)initWithFrame:(CGRect)a3 timeScopes:(id)a4;
- (int64_t)selectedTimeScope;
- (void)_rebuildSegments;
- (void)layoutSubviews;
- (void)setSelectedTimeScope:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _HKTimeScopeControlBar

- (_HKTimeScopeControlBar)initWithFrame:(CGRect)a3 timeScopes:(id)a4
{
  v9.receiver = self;
  v9.super_class = _HKTimeScopeControlBar;
  v4 = [(HKTimeScopeControl *)&v9 initWithFrame:a4 timeScopes:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    segments = v4->_segments;
    v4->_segments = 0;

    [(_HKTimeScopeControlBar *)v5 setAutoresizesSubviews:1];
    [(_HKTimeScopeControlBar *)v5 setAutoresizingMask:2];
    [(_HKTimeScopeControlBar *)v5 _rebuildSegments];
    v7 = v5;
  }

  return v5;
}

- (void)_rebuildSegments
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(UISegmentedControl *)self->_segments selectedSegmentIndex];
  v4 = [(_HKTimeScopeControlBar *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->super._timeScopes;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = HKStringForHKTimeScope([*(*(&v22 + 1) + 8 * i) integerValue], v5 != 2);
        [v6 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if (self->_segments)
  {
    if ([v6 count])
    {
      v13 = 0;
      do
      {
        v14 = [v6 objectAtIndexedSubscript:{v13, v22}];
        v15 = [(UISegmentedControl *)self->_segments numberOfSegments];
        segments = self->_segments;
        if (v13 >= v15)
        {
          [(UISegmentedControl *)segments insertSegmentWithTitle:v14 atIndex:v13 animated:0];
        }

        else
        {
          [(UISegmentedControl *)segments setTitle:v14 forSegmentAtIndex:v13];
        }

        v17 = [(UISegmentedControl *)self->_segments infoViewForSegment:v13];
        [v17 setNeedsLayout];
        v18 = [v17 superview];
        [v18 layoutIfNeeded];

        [v17 _removeAllAnimations:1];
        ++v13;
      }

      while (v13 < [v6 count]);
    }
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v6];
    v20 = HKUIJoinStringsForAutomationIdentifier(&unk_1F43812D0);
    [(UISegmentedControl *)v19 setAccessibilityIdentifier:v20];

    [(UISegmentedControl *)v19 setSelectedSegmentIndex:v3];
    [(UISegmentedControl *)v19 addTarget:self action:sel__segmentValueChanged_ forControlEvents:4096];
    [(UISegmentedControl *)v19 _setAutosizeText:1];
    [(_HKTimeScopeControlBar *)self addSubview:v19];
    v21 = self->_segments;
    self->_segments = v19;
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _HKTimeScopeControlBar;
  [(_HKTimeScopeControlBar *)&v9 layoutSubviews];
  [(_HKTimeScopeControlBar *)self bounds];
  HKUIOnePixel();
  HKUIOnePixel();
  UIRectInset();
  segments = self->_segments;
  HKUIRectIntegralToScreenScale(v4, v5, v6, v7, v8);
  [(UISegmentedControl *)segments setFrame:?];
}

- (int64_t)selectedTimeScope
{
  v3 = [(UISegmentedControl *)self->_segments selectedSegmentIndex];

  return [(HKTimeScopeControl *)self _timeScopeForIndex:v3];
}

- (void)setSelectedTimeScope:(int64_t)a3
{
  segments = self->_segments;
  v4 = [(HKTimeScopeControl *)self _indexForTimeScope:a3];

  [(UISegmentedControl *)segments setSelectedSegmentIndex:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = _HKTimeScopeControlBar;
  v4 = a3;
  [(_HKTimeScopeControlBar *)&v8 traitCollectionDidChange:v4];
  v5 = [(_HKTimeScopeControlBar *)self traitCollection:v8.receiver];
  v6 = [v5 horizontalSizeClass];
  v7 = [v4 horizontalSizeClass];

  if (v6 != v7)
  {
    [(_HKTimeScopeControlBar *)self _rebuildSegments];
  }
}

@end