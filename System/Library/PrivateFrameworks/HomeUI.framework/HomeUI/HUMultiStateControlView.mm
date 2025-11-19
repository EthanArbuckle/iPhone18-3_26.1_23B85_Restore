@interface HUMultiStateControlView
- (BOOL)isDisabled;
- (CGSize)intrinsicContentSize;
- (HUControlViewDelegate)delegate;
- (HUMultiStateControlView)initWithFrame:(CGRect)a3;
- (id)value;
- (void)_selectedIndexChanged:(id)a3;
- (void)addPossibleValue:(id)a3 withImage:(id)a4;
- (void)addPossibleValue:(id)a3 withTitle:(id)a4;
- (void)setDisabled:(BOOL)a3;
- (void)setValue:(id)a3;
@end

@implementation HUMultiStateControlView

- (HUMultiStateControlView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = HUMultiStateControlView;
  v7 = [(HUMultiStateControlView *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75A08]) initWithFrame:{x, y, width, height}];
    segmentedControl = v7->_segmentedControl;
    v7->_segmentedControl = v8;

    [(UISegmentedControl *)v7->_segmentedControl setAutoresizingMask:18];
    [(UISegmentedControl *)v7->_segmentedControl addTarget:v7 action:sel__selectedIndexChanged_ forControlEvents:4096];
    [(HUMultiStateControlView *)v7 addSubview:v7->_segmentedControl];
    v10 = [MEMORY[0x277CBEB18] array];
    possibleValues = v7->_possibleValues;
    v7->_possibleValues = v10;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUMultiStateControlView *)self segmentedControl];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addPossibleValue:(id)a3 withTitle:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(HUMultiStateControlView *)self segmentedControl];
  v8 = [(HUMultiStateControlView *)self possibleValues];
  [v7 insertSegmentWithTitle:v6 atIndex:objc_msgSend(v8 animated:{"count"), 0}];

  [(NSMutableArray *)self->_possibleValues addObject:v9];
}

- (void)addPossibleValue:(id)a3 withImage:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(HUMultiStateControlView *)self segmentedControl];
  v8 = [(HUMultiStateControlView *)self possibleValues];
  [v7 insertSegmentWithImage:v6 atIndex:objc_msgSend(v8 animated:{"count"), 0}];

  [(NSMutableArray *)self->_possibleValues addObject:v9];
}

- (void)_selectedIndexChanged:(id)a3
{
  v4 = [(HUMultiStateControlView *)self delegate];
  [v4 controlViewDidBeginUserInteraction:self];

  v5 = [(HUMultiStateControlView *)self delegate];
  v6 = [(HUMultiStateControlView *)self value];
  [v5 controlView:self valueDidChange:v6];

  v7 = [(HUMultiStateControlView *)self delegate];
  [v7 controlViewDidEndUserInteraction:self];
}

- (id)value
{
  v3 = [(HUMultiStateControlView *)self segmentedControl];
  v4 = [v3 selectedSegmentIndex];

  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(HUMultiStateControlView *)self possibleValues];
    v6 = [v5 objectAtIndexedSubscript:v4];
  }

  return v6;
}

- (void)setValue:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(HUMultiStateControlView *)self possibleValues];
    v5 = [v4 indexOfObject:v8];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(HUMultiStateControlView *)self possibleValues];
      NSLog(&cfstr_DesiredValueIs.isa, v8, v6);

      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v5 = -1;
  }

  v7 = [(HUMultiStateControlView *)self segmentedControl];
  [v7 setSelectedSegmentIndex:v5];
}

- (BOOL)isDisabled
{
  v2 = [(HUMultiStateControlView *)self segmentedControl];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUMultiStateControlView *)self segmentedControl];
  [v4 setEnabled:!v3];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end