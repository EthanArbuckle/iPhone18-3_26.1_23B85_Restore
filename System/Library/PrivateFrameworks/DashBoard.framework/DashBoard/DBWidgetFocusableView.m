@interface DBWidgetFocusableView
- (DBWidgetFocusableView)initWithFrame:(CGRect)a3;
- (DBWidgetFocusableViewDelegate)delegate;
- (void)_selected;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DBWidgetFocusableView

- (DBWidgetFocusableView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DBWidgetFocusableView;
  v3 = [(DBWidgetFocusableView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [(DBWidgetFocusableView *)self delegate];
  v3 = [(DBWidgetFocusableView *)self focusableItem];
  [v4 selectedFocusableItem:v3];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Focus item state: %{public}@", &v10, 0xCu);
  }

  v7 = [(DBWidgetFocusableView *)self delegate];
  v8 = [(DBWidgetFocusableView *)self focusableItem];
  v9 = [v5 nextFocusedItem];

  [v7 focusableItem:v8 didChangeFocused:v9 == self];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  v6 = a3;
  [(DBWidgetFocusableView *)&v11 pressesBegan:v6 withEvent:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [v6 objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    v9 = [(DBWidgetFocusableView *)self delegate];
    v10 = [(DBWidgetFocusableView *)self focusableItem];
    [v9 focusableItem:v10 didChangePressed:1];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  v6 = a3;
  [(DBWidgetFocusableView *)&v11 pressesEnded:v6 withEvent:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [v6 objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    v9 = [(DBWidgetFocusableView *)self delegate];
    v10 = [(DBWidgetFocusableView *)self focusableItem];
    [v9 focusableItem:v10 didChangePressed:0];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  v6 = a3;
  [(DBWidgetFocusableView *)&v11 pressesChanged:v6 withEvent:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [v6 objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    v9 = [(DBWidgetFocusableView *)self delegate];
    v10 = [(DBWidgetFocusableView *)self focusableItem];
    [v9 focusableItem:v10 didChangePressed:0];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = DBWidgetFocusableView;
  v6 = a3;
  [(DBWidgetFocusableView *)&v11 pressesCancelled:v6 withEvent:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___DBPressesContainsPressType_block_invoke;
  v12[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v12[4] = 4;
  v7 = [v6 objectsPassingTest:v12];

  v8 = [v7 count];
  if (v8)
  {
    v9 = [(DBWidgetFocusableView *)self delegate];
    v10 = [(DBWidgetFocusableView *)self focusableItem];
    [v9 focusableItem:v10 didChangePressed:0];
  }
}

- (DBWidgetFocusableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end