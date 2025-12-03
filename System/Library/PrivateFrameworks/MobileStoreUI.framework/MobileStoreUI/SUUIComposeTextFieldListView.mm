@interface SUUIComposeTextFieldListView
- (SUUIComposeTextFieldListView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (SUUIComposeTextFieldListViewDelegate)delegate;
- (UIResponder)initialFirstResponder;
- (double)height;
- (id)textForFieldAtIndex:(unint64_t)index;
- (void)_updateValidity;
- (void)composeTextFieldValidityChanged:(id)changed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation SUUIComposeTextFieldListView

- (SUUIComposeTextFieldListView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = SUUIComposeTextFieldListView;
  result = [(SUUIComposeTextFieldListView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_fields makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  v3.receiver = self;
  v3.super_class = SUUIComposeTextFieldListView;
  [(SUUIComposeTextFieldListView *)&v3 dealloc];
}

- (double)height
{
  if (![(NSMutableArray *)self->_fields count])
  {
    return 0.0;
  }

  lastObject = [(NSMutableArray *)self->_fields lastObject];
  [lastObject frame];
  MaxY = CGRectGetMaxY(v6);

  return MaxY;
}

- (UIResponder)initialFirstResponder
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_fields;
  textField = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (textField)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != textField; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        text = [v6 text];
        v8 = [text length];

        if (!v8)
        {
          textField = [v6 textField];
          goto LABEL_11;
        }
      }

      textField = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (textField)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return textField;
}

- (void)layoutSubviews
{
  [(SUUIComposeTextFieldListView *)self bounds];
  [(SUUIComposeTextFieldListView *)self safeAreaInsets];
  v3 = [(NSMutableArray *)self->_fields count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained numberOfColumnsInTextFieldList:self];

  if (v3 >= 1)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = [(NSMutableArray *)self->_fields objectAtIndex:v6];
      [v8 frame];
      if (v6 % v5 >= v5 - 1)
      {
        v10 = v9 + v7;
        v7 = v10;
      }

      [v8 setFrame:?];

      ++v6;
    }

    while (v3 != v6);
  }
}

- (void)reloadData
{
  fields = self->_fields;
  if (fields)
  {
    [(NSMutableArray *)fields makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
    [(NSMutableArray *)self->_fields makeObjectsPerformSelector:sel_removeFromSuperview withObject:0];
    [(NSMutableArray *)self->_fields removeAllObjects];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_fields;
    self->_fields = v4;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained numberOfFieldsInTextFieldList:self];

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = [v11 numberOfColumnsInTextFieldList:self];

  if (v10 >= 1)
  {
    v13 = 0;
    v14 = 1.0 / v8;
    do
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16 = [v15 textFieldList:self configurationForFieldAtIndex:v13];

      if (v13 % v12 >= v12 - 1)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      if (v13 / v12 == v10 / v12 - 1)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0.0;
      }

      [v16 setBorderInsets:{v14, 0.0, v18, v17}];
      v19 = [[SUUIComposeTextField alloc] initWithConfiguration:v16 style:self->_style];
      [(SUUIComposeTextField *)v19 setDelegate:self];
      [(NSMutableArray *)self->_fields addObject:v19];
      [(SUUIComposeTextFieldListView *)self addSubview:v19];

      ++v13;
    }

    while (v10 != v13);
  }

  [(SUUIComposeTextFieldListView *)self _updateValidity];
  [(SUUIComposeTextFieldListView *)self layoutSubviews];
  [(SUUIComposeTextFieldListView *)self frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(SUUIComposeTextFieldListView *)self height];
  [(SUUIComposeTextFieldListView *)self setFrame:v21, v23, v25, v26];

  [(SUUIComposeTextFieldListView *)self setNeedsLayout];
}

- (id)textForFieldAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_fields count]<= index)
  {
    text = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_fields objectAtIndex:index];
    text = [v5 text];
  }

  return text;
}

- (void)composeTextFieldValidityChanged:(id)changed
{
  isValid = self->_isValid;
  [(SUUIComposeTextFieldListView *)self _updateValidity];
  if (self->_isValid != isValid)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 textFieldListValidityDidChange:self];
    }
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 textFieldListValuesDidChange:self];
  }
}

- (void)_updateValidity
{
  v3 = [(NSMutableArray *)self->_fields count];
  if (v3)
  {
    v4 = v3;
    v5 = 1;
    do
    {
      v6 = [(NSMutableArray *)self->_fields objectAtIndex:v5 - 1];
      configuration = [v6 configuration];
      if ([configuration isRequired])
      {
        isValid = [v6 isValid];
      }

      else
      {
        isValid = 1;
      }

      if (!isValid)
      {
        break;
      }
    }

    while (v5++ < v4);
  }

  else
  {
    LOBYTE(isValid) = 1;
  }

  self->_isValid = isValid;
}

- (SUUIComposeTextFieldListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end