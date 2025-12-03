@interface DBWidgetFocusableView
- (DBWidgetFocusableView)initWithFrame:(CGRect)frame;
- (DBWidgetFocusableViewDelegate)delegate;
- (void)_selected;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation DBWidgetFocusableView

- (DBWidgetFocusableView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DBWidgetFocusableView;
  v3 = [(DBWidgetFocusableView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__selected];
    [v4 setAllowedPressTypes:&unk_285AA48E0];
    [(DBWidgetFocusableView *)v3 addGestureRecognizer:v4];
  }

  return v3;
}

- (void)_selected
{
  delegate = [(DBWidgetFocusableView *)self delegate];
  focusableItem = [(DBWidgetFocusableView *)self focusableItem];
  [delegate selectedFocusableItem:focusableItem];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v12 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Focus item state: %{public}@", &v10, 0xCu);
  }

  delegate = [(DBWidgetFocusableView *)self delegate];
  focusableItem = [(DBWidgetFocusableView *)self focusableItem];
  nextFocusedItem = [contextCopy nextFocusedItem];

  [delegate focusableItem:focusableItem didChangeFocused:nextFocusedItem == self];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  beganCopy = began;
  [(DBWidgetFocusableView *)&v11 pressesBegan:beganCopy withEvent:event];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [beganCopy objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    delegate = [(DBWidgetFocusableView *)self delegate];
    focusableItem = [(DBWidgetFocusableView *)self focusableItem];
    [delegate focusableItem:focusableItem didChangePressed:1];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  endedCopy = ended;
  [(DBWidgetFocusableView *)&v11 pressesEnded:endedCopy withEvent:event];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [endedCopy objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    delegate = [(DBWidgetFocusableView *)self delegate];
    focusableItem = [(DBWidgetFocusableView *)self focusableItem];
    [delegate focusableItem:focusableItem didChangePressed:0];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  changedCopy = changed;
  [(DBWidgetFocusableView *)&v11 pressesChanged:changedCopy withEvent:event];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [changedCopy objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    delegate = [(DBWidgetFocusableView *)self delegate];
    focusableItem = [(DBWidgetFocusableView *)self focusableItem];
    [delegate focusableItem:focusableItem didChangePressed:0];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  cancelledCopy = cancelled;
  [(DBWidgetFocusableView *)&v11 pressesCancelled:cancelledCopy withEvent:event];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [cancelledCopy objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    delegate = [(DBWidgetFocusableView *)self delegate];
    focusableItem = [(DBWidgetFocusableView *)self focusableItem];
    [delegate focusableItem:focusableItem didChangePressed:0];
  }
}

- (DBWidgetFocusableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end