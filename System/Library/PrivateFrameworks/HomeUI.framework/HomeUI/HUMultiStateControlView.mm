@interface HUMultiStateControlView
- (BOOL)isDisabled;
- (CGSize)intrinsicContentSize;
- (HUControlViewDelegate)delegate;
- (HUMultiStateControlView)initWithFrame:(CGRect)frame;
- (id)value;
- (void)_selectedIndexChanged:(id)changed;
- (void)addPossibleValue:(id)value withImage:(id)image;
- (void)addPossibleValue:(id)value withTitle:(id)title;
- (void)setDisabled:(BOOL)disabled;
- (void)setValue:(id)value;
@end

@implementation HUMultiStateControlView

- (HUMultiStateControlView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    array = [MEMORY[0x277CBEB18] array];
    possibleValues = v7->_possibleValues;
    v7->_possibleValues = array;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  [segmentedControl intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addPossibleValue:(id)value withTitle:(id)title
{
  titleCopy = title;
  valueCopy = value;
  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  possibleValues = [(HUMultiStateControlView *)self possibleValues];
  [segmentedControl insertSegmentWithTitle:titleCopy atIndex:objc_msgSend(possibleValues animated:{"count"), 0}];

  [(NSMutableArray *)self->_possibleValues addObject:valueCopy];
}

- (void)addPossibleValue:(id)value withImage:(id)image
{
  imageCopy = image;
  valueCopy = value;
  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  possibleValues = [(HUMultiStateControlView *)self possibleValues];
  [segmentedControl insertSegmentWithImage:imageCopy atIndex:objc_msgSend(possibleValues animated:{"count"), 0}];

  [(NSMutableArray *)self->_possibleValues addObject:valueCopy];
}

- (void)_selectedIndexChanged:(id)changed
{
  delegate = [(HUMultiStateControlView *)self delegate];
  [delegate controlViewDidBeginUserInteraction:self];

  delegate2 = [(HUMultiStateControlView *)self delegate];
  value = [(HUMultiStateControlView *)self value];
  [delegate2 controlView:self valueDidChange:value];

  delegate3 = [(HUMultiStateControlView *)self delegate];
  [delegate3 controlViewDidEndUserInteraction:self];
}

- (id)value
{
  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex == -1)
  {
    v6 = 0;
  }

  else
  {
    possibleValues = [(HUMultiStateControlView *)self possibleValues];
    v6 = [possibleValues objectAtIndexedSubscript:selectedSegmentIndex];
  }

  return v6;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    possibleValues = [(HUMultiStateControlView *)self possibleValues];
    v5 = [possibleValues indexOfObject:valueCopy];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      possibleValues2 = [(HUMultiStateControlView *)self possibleValues];
      NSLog(&cfstr_DesiredValueIs.isa, valueCopy, possibleValues2);

      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v5 = -1;
  }

  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:v5];
}

- (BOOL)isDisabled
{
  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  isEnabled = [segmentedControl isEnabled];

  return isEnabled ^ 1;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  segmentedControl = [(HUMultiStateControlView *)self segmentedControl];
  [segmentedControl setEnabled:!disabledCopy];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end