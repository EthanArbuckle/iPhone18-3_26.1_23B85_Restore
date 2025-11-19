@interface SUUIToggleButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIButtonViewElement)element;
- (SUUIToggleButton)init;
- (SUUIToggleButtonDelegate)delegate;
- (id)_layoutForString:(id)a3;
- (id)_nonToggledLayout;
- (id)_titleAttributes;
- (id)_toggledLayout;
- (void)_sendDidAnimate;
- (void)_sendWillAnimate;
- (void)_showToggleState:(BOOL)a3;
- (void)dealloc;
- (void)itemStateCenter:(id)a3 itemStateChanged:(id)a4;
- (void)setButtonTitleText:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SUUIToggleButton

- (SUUIToggleButton)init
{
  v5.receiver = self;
  v5.super_class = SUUIToggleButton;
  v2 = [(SUUIToggleButton *)&v5 init];
  if (v2)
  {
    v3 = +[SUUIToggleStateCenter defaultCenter];
    [v3 addObserver:v2];

    v2->_toggled = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[SUUIToggleStateCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUUIToggleButton;
  [(SUUIStyledButton *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_toggleButtonType)
  {
    v22.receiver = self;
    v22.super_class = SUUIToggleButton;
    [(SUUIStyledButton *)&v22 sizeThatFits:a3.width, a3.height];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    if (self->_toggled)
    {
      [(SUUIToggleButton *)self _toggledLayout:a3.width];
    }

    else
    {
      [(SUUIToggleButton *)self _nonToggledLayout:a3.width];
    }
    v8 = ;
    v9 = [v8 attributedString];
    [v9 size];
    v5 = v10;
    v7 = v11;

    v12 = [(SUUIStyledButton *)self borderStyle];
    v13 = v12;
    if (v12)
    {
      [v12 borderWidth];
      *&v14 = v14 + v14;
      v15 = floorf(*&v14);
      [v13 contentInset];
      v7 = v7 + v17 + v16 + v15;
      v5 = v5 + v18 + v19 + v15;
    }
  }

  v20 = v5;
  v21 = v7;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SUUIToggleButton *)self isTouchInside])
  {
    if (self->_toggleItemIdentifier)
    {
      v8 = +[SUUIToggleStateCenter defaultCenter];
      v9 = [v8 itemForIdentifier:self->_toggleItemIdentifier];
      v10 = v9;
      if (self->_autoIncrement)
      {
        autoIncrementCount = [v9 count];
        self->_count = autoIncrementCount;
        if (autoIncrementCount == -1)
        {
          autoIncrementCount = self->_autoIncrementCount;
        }

        if (self->_toggled)
        {
          v12 = autoIncrementCount - 1;
        }

        else
        {
          v12 = autoIncrementCount + 1;
        }

        self->_count = v12 & ~(v12 >> 63);
        if (v12 < 1)
        {
          v15 = @" ";
        }

        else
        {
          if (touchesEnded_withEvent__sOnceToken != -1)
          {
            [SUUIToggleButton touchesEnded:withEvent:];
          }

          v13 = touchesEnded_withEvent__sNumberFormatter;
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count];
          v15 = [v13 stringFromNumber:v14];
        }

        [v10 setToggledString:v15];
        [v10 setCount:self->_count];
      }

      [v10 setToggled:!self->_toggled];
      [v8 updateItem:v10];
    }

    else
    {
      [(SUUIToggleButton *)self setToggled:!self->_toggled];
    }
  }

  v16.receiver = self;
  v16.super_class = SUUIToggleButton;
  [(SUUIStyledButton *)&v16 touchesEnded:v6 withEvent:v7];
}

uint64_t __43__SUUIToggleButton_touchesEnded_withEvent___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = touchesEnded_withEvent__sNumberFormatter;
  touchesEnded_withEvent__sNumberFormatter = v0;

  v2 = touchesEnded_withEvent__sNumberFormatter;

  return [v2 setNumberStyle:1];
}

- (void)setButtonTitleText:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    objc_storeStrong(&self->_titleToggleString, a3);
    v5 = [(SUUIToggleButton *)self _layoutForString:v6];
    [(SUUIStyledButton *)self setTitleLayout:v5];

    [(SUUIToggleButton *)self setNeedsLayout];
    [(SUUIToggleButton *)self setNeedsDisplay];
  }
}

- (id)_layoutForString:(id)a3
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(SUUIToggleButton *)self _titleAttributes];
  v8 = [v6 initWithString:v5 attributes:v7];

  v9 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v8];
  [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:1];
  [(SUUIAttributedStringLayoutRequest *)v9 setWantsBaselineOffset:1];
  [v8 size];
  [(SUUIAttributedStringLayoutRequest *)v9 setWidth:?];
  v10 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v9];

  return v10;
}

- (id)_nonToggledLayout
{
  nonToggledLayout = self->_nonToggledLayout;
  if (!nonToggledLayout)
  {
    v4 = [(SUUIToggleButton *)self nonToggledTitle];
    v5 = [(SUUIToggleButton *)self _layoutForString:v4];
    v6 = self->_nonToggledLayout;
    self->_nonToggledLayout = v5;

    nonToggledLayout = self->_nonToggledLayout;
  }

  return nonToggledLayout;
}

- (void)_sendDidAnimate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 toggleButtonDidAnimateTransition:self];
  }
}

- (void)_sendWillAnimate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 toggleButtonWillAnimateTransition:self];
  }
}

- (void)_showToggleState:(BOOL)a3
{
  toggleButtonType = self->_toggleButtonType;
  if (toggleButtonType == 1)
  {
    toggled = self->_toggled;
    v10 = [(SUUIStyledButton *)self imageView];
    if (toggled)
    {
      [(SUUIToggleButton *)self toggledContents];
    }

    else
    {
      [(SUUIToggleButton *)self nonToggledContents];
    }
    v8 = ;
    [v10 setContents:v8];
  }

  else if (!toggleButtonType)
  {
    v5 = a3;
    v6 = [(SUUIToggleButton *)self window];

    [(SUUIToggleButton *)self _sendWillAnimate];
    if (v6 && v5)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __37__SUUIToggleButton__showToggleState___block_invoke;
      v12[3] = &unk_2798F5BE8;
      v12[4] = self;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__SUUIToggleButton__showToggleState___block_invoke_2;
      v11[3] = &unk_2798F5D30;
      v11[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v11 completion:0.4];
    }

    else
    {
      if (self->_toggled)
      {
        [(SUUIToggleButton *)self _toggledLayout];
      }

      else
      {
        [(SUUIToggleButton *)self _nonToggledLayout];
      }
      v9 = ;
      [(SUUIStyledButton *)self setTitleLayout:v9];

      [(SUUIToggleButton *)self _sendDidAnimate];
    }
  }
}

void __37__SUUIToggleButton__showToggleState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  if (v2[688] == 1)
  {
    [v2 _toggledLayout];
  }

  else
  {
    [v2 _nonToggledLayout];
  }
  v3 = ;
  [v1 setTitleLayout:v3];
}

- (id)_titleAttributes
{
  v3 = [(SUUIStyledButton *)self titleLayout];
  v4 = [v3 attributedString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(SUUIStyledButton *)self titleLayout];
    v7 = [v6 attributedString];
    v8 = [v7 attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_element);
    v6 = [WeakRetained style];

    v7 = SUUIViewElementFontWithStyle(v6);
    if (!v7)
    {
      v7 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    }

    v10 = [v6 ikColor];
    v11 = [v10 color];

    if (!v11)
    {
      v11 = [MEMORY[0x277D75348] blackColor];
    }

    v12 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v13 = [v12 mutableCopy];

    [v13 setLineBreakMode:4];
    v14 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [v14 initWithObjectsAndKeys:{v7, *MEMORY[0x277D740A8], v13, *MEMORY[0x277D74118], v11, *MEMORY[0x277D740C0], 0}];
  }

  return v8;
}

- (id)_toggledLayout
{
  toggledLayout = self->_toggledLayout;
  if (!toggledLayout)
  {
    v4 = [(SUUIToggleButton *)self toggledTitle];
    v5 = [(SUUIToggleButton *)self _layoutForString:v4];
    v6 = self->_toggledLayout;
    self->_toggledLayout = v5;

    toggledLayout = self->_toggledLayout;
  }

  return toggledLayout;
}

- (void)itemStateCenter:(id)a3 itemStateChanged:(id)a4
{
  v5 = a4;
  v6 = [v5 itemIdentifier];
  v7 = [v6 isEqualToString:self->_toggleItemIdentifier];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SUUIToggleButton_itemStateCenter_itemStateChanged___block_invoke;
    v8[3] = &unk_2798F5AF8;
    v9 = v5;
    v10 = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __53__SUUIToggleButton_itemStateCenter_itemStateChanged___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) toggled] & 0x80000000) == 0)
  {
    v2 = [*(a1 + 32) toggled];
    v3 = *(a1 + 40);
    if (v3[688] != v2)
    {
      [v3 setToggled:{objc_msgSend(*(a1 + 32), "toggled") == 1}];
    }
  }

  v4 = *(a1 + 40);
  if (*(v4 + 736) == 1 && *(v4 + 616) == 1)
  {
    v8 = [*(a1 + 32) toggledString];
    if ([v8 length])
    {
      v5 = [*(a1 + 32) toggledString];
      v6 = [v5 isEqualToString:*(*(a1 + 40) + 672)];

      if (v6)
      {
        return;
      }

      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) toggledString];
      [v7 setButtonTitleText:?];
    }
  }
}

- (SUUIButtonViewElement)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

- (SUUIToggleButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end