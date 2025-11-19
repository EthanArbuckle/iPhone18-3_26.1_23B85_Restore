@interface SUUIPickerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIPickerView)initWithFrame:(CGRect)a3;
- (SUUIPickerView)initWithTitles:(id)a3;
- (SUUIPickerViewDelegate)delegate;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation SUUIPickerView

- (SUUIPickerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SUUIPickerView *)self initWithTitles:0];
  v8 = v7;
  if (v7)
  {
    [(SUUIPickerView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (SUUIPickerView)initWithTitles:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUUIPickerView;
  v5 = [(SUUIPickerView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    titles = v5->_titles;
    v5->_titles = v6;

    v8 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    backdropView = v5->_backdropView;
    v5->_backdropView = v8;

    [(SUUIPickerView *)v5 addSubview:v5->_backdropView];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v5->_separatorView;
    v5->_separatorView = v10;

    v12 = v5->_separatorView;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
    [(UIView *)v12 setBackgroundColor:v13];

    [(SUUIPickerView *)v5 addSubview:v5->_separatorView];
    v14 = objc_alloc(MEMORY[0x277D75840]);
    [(SUUIPickerView *)v5 bounds];
    v15 = [v14 initWithFrame:?];
    pickerView = v5->_pickerView;
    v5->_pickerView = v15;

    [(UIPickerView *)v5->_pickerView setDataSource:v5];
    [(UIPickerView *)v5->_pickerView setDelegate:v5];
    [(UIPickerView *)v5->_pickerView setShowsSelectionIndicator:1];
    [(SUUIPickerView *)v5 addSubview:v5->_pickerView];
    v17 = [MEMORY[0x277D75348] clearColor];
    [(SUUIPickerView *)v5 setBackgroundColor:v17];
  }

  return v5;
}

- (void)dealloc
{
  [(UIPickerView *)self->_pickerView setDataSource:0];
  [(UIPickerView *)self->_pickerView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIPickerView;
  [(SUUIPickerView *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIPickerView *)self->_pickerView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(SUUIPickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  [(UIPickerView *)self->_pickerView setFrame:v4, v6, v8, v10];
  separatorView = self->_separatorView;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  [(UIView *)separatorView setFrame:v4, v6, v8, 1.0 / v12];
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 pickerView:self didSelectItemAtIndex:a4];
  }
}

- (SUUIPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end