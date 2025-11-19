@interface GKRemoteUITableFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (GKRemoteUIAuxiliaryViewDelegate)delegate;
- (GKRemoteUITableFooterView)initWithAttributes:(id)a3;
- (void)adjustSizeToFillSuperview:(id)a3;
- (void)buttonTapped:(id)a3;
- (void)createButtonWithAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)objectModelDidChange:(id)a3;
- (void)tableViewDidUpdateContentInset:(id)a3;
@end

@implementation GKRemoteUITableFooterView

- (GKRemoteUITableFooterView)initWithAttributes:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = GKRemoteUITableFooterView;
  v6 = [(GKRemoteUITableFooterView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributes, a3);
    v8 = [v5 objectForKeyedSubscript:@"GKLayoutStyle"];
    v7->_layoutStyle = [v8 integerValue];

    v9 = 60.0;
    if (!v7->_layoutStyle)
    {
      v9 = 38.0;
    }

    v7->_buttonBaselineOffset = v9;
    [(GKRemoteUITableFooterView *)v7 createButtonWithAttributes:v5];
    [(GKRemoteUITableFooterView *)v7 setNeedsLayout];
    v10 = v7;
  }

  return v7;
}

- (void)createButtonWithAttributes:(id)a3
{
  v4 = MEMORY[0x277D0C8B0];
  v5 = a3;
  v11 = [v4 textStyle];
  v6 = [v5 objectForKeyedSubscript:@"buttonStyle"];
  v7 = [v11 styleWithName:v6 fallback:@"remoteUITableFooterButton" layoutMode:{-[GKRemoteUITableFooterView layoutStyle](self, "layoutStyle")}];

  v8 = [v5 objectForKeyedSubscript:@"button"];

  v9 = [GKButton buttonWithType:1];
  button = self->_button;
  self->_button = v9;

  [(GKButton *)self->_button setTitle:v8 forState:0];
  [(GKButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GKButton *)self->_button addTarget:self action:sel_buttonTapped_ forControlEvents:64];
  [(GKButton *)self->_button applyTextStyle:v7];
  [(GKRemoteUITableFooterView *)self addSubview:self->_button];
}

- (GKRemoteUIAuxiliaryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = GKRemoteUITableFooterView;
  [(GKRemoteUITableFooterView *)&v29 layoutSubviews];
  [(GKRemoteUITableFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(GKRemoteUITableFooterView *)self button];
  v12 = [v11 titleLabel];
  v13 = [v12 font];
  [v11 sizeThatFits:{v8, 1.79769313e308}];
  v15 = v14;
  v17 = v16;
  [v12 frame];
  v19 = (v17 - v18) * 0.5;
  if ([(GKRemoteUITableFooterView *)self pinToBottom])
  {
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v20 = CGRectGetMaxY(v30) - v17;
    [(GKRemoteUITableFooterView *)self buttonBaselineOffset];
    v22 = v20 - v21;
    [v13 descender];
    v24 = v19 + v22 + fabs(v23);
  }

  else
  {
    [(GKRemoteUITableFooterView *)self buttonBaselineOffset];
    v26 = v25;
    [v13 ascender];
    v24 = v26 - v27 - v19;
  }

  v28 = v24;
  [v11 setFrame:{round(v4 + (v8 - v15) * 0.5), ceilf(v28), v15, v17}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(GKRemoteUITableFooterView *)self button:a3.width];
  v6 = [v5 titleLabel];
  v7 = [v6 font];
  [v5 sizeToFit];
  [v5 intrinsicContentSize];
  v9 = v8;
  [(GKRemoteUITableFooterView *)self buttonBaselineOffset];
  v11 = v10;
  [v7 ascender];
  v13 = v9 + v11 - v12;

  v14 = width;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)adjustSizeToFillSuperview:(id)a3
{
  v4 = a3;
  [v4 setTableFooterView:self];
  v39 = v4;
  [v39 contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x277D75D28];
  v12 = [v39 superview];

  v13 = [v11 viewControllerForView:v12];

  v14 = [v13 navigationController];
  v15 = 0.0;
  if ([v14 modalPresentationStyle] != 16 && objc_msgSend(v14, "modalPresentationStyle") != 2)
  {
    v16 = [MEMORY[0x277D75128] sharedApplication];
    [v16 statusBarFrame];
    v15 = v17 + 0.0;
  }

  if (v14 && ([v14 isNavigationBarHidden] & 1) == 0)
  {
    v18 = [v14 navigationBar];
    [v18 frame];
    v15 = v15 + v19;
  }

  [v39 frame];
  v21 = v20 - (v6 + v10);
  v23 = v22 - (v8 + v15);
  [(GKRemoteUITableFooterView *)self frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v39 contentSize];
  v33 = v32;
  v35 = v34;
  [(GKRemoteUITableFooterView *)self sizeThatFits:v21, 1.79769313e308];
  v37 = v35 - v31;
  v38 = v23 - (v35 - v31);
  if (v38 <= v36)
  {
    if (v38 < v31)
    {
      if (v38 >= v36)
      {
        v31 = v23 - (v35 - v31);
      }

      else
      {
        v31 = v36;
      }
    }
  }

  else
  {
    v31 = v23 - (v35 - v31);
  }

  [v39 setContentSize:{v33, v37 + v31}];
  [(GKRemoteUITableFooterView *)self setFrame:v25, v27, v29, v31];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = GKRemoteUITableFooterView;
  [(GKRemoteUITableFooterView *)&v4 didMoveToSuperview];
  if ([(GKRemoteUITableFooterView *)self pinToBottom])
  {
    v3 = [(GKRemoteUITableFooterView *)self superview];
    [(GKRemoteUITableFooterView *)self adjustSizeToFillSuperview:v3];
  }
}

- (void)buttonTapped:(id)a3
{
  v6 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"url"];
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"name"];
  v5 = [(GKRemoteUITableFooterView *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 auxiliaryView:self pressedLink:v6 attributes:self->_attributes];
  }

  else if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 auxiliaryView:self pressedButton:v4 attributes:self->_attributes];
  }
}

- (void)objectModelDidChange:(id)a3
{
  v5 = a3;
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"enabledFunction"];
  if (v4)
  {
    -[GKButton setEnabled:](self->_button, "setEnabled:", [v5 validateWithFunction:v4]);
  }
}

- (void)tableViewDidUpdateContentInset:(id)a3
{
  if ([(GKRemoteUITableFooterView *)self pinToBottom])
  {
    v4 = [(GKRemoteUITableFooterView *)self superview];
    [(GKRemoteUITableFooterView *)self adjustSizeToFillSuperview:v4];
  }
}

@end