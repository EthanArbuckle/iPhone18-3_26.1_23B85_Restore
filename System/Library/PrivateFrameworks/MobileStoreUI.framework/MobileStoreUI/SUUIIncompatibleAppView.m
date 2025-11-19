@interface SUUIIncompatibleAppView
- (id)addButtonWithTitle:(id)a3;
- (void)layoutSubviews;
- (void)removeButtonTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)setBackgroundColor:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIIncompatibleAppView

- (id)addButtonWithTitle:(id)a3
{
  v4 = a3;
  if (!self->_buttons)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buttons = self->_buttons;
    self->_buttons = v5;
  }

  v7 = [MEMORY[0x277D75220] buttonWithType:1];
  [v7 setTitle:v4 forState:0];
  v8 = [v7 titleLabel];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [v8 setFont:v9];

  [v7 sizeToFit];
  [(SUUIIncompatibleAppView *)self addSubview:v7];
  [(NSMutableArray *)self->_buttons addObject:v7];

  return v7;
}

- (void)removeButtonTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_buttons;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) removeTarget:v8 action:a4 forControlEvents:{a5, v14}];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)setIconImage:(id)a3
{
  v4 = a3;
  iconView = self->_iconView;
  v11 = v4;
  if (v4)
  {
    if (!iconView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_iconView;
      self->_iconView = v6;

      v8 = self->_iconView;
      v9 = [(SUUIIncompatibleAppView *)self backgroundColor];
      [(UIImageView *)v8 setBackgroundColor:v9];

      [(SUUIIncompatibleAppView *)self addSubview:self->_iconView];
      v4 = v11;
      iconView = self->_iconView;
    }

    [(UIImageView *)iconView setImage:v4];
    [(UIImageView *)self->_iconView sizeToFit];
    [(SUUIIncompatibleAppView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)iconView removeFromSuperview];
    v10 = self->_iconView;
    self->_iconView = 0;
  }
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  messageLabel = self->_messageLabel;
  v15 = v4;
  if (v4)
  {
    if (!messageLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_messageLabel;
      self->_messageLabel = v6;

      v8 = self->_messageLabel;
      v9 = [(SUUIIncompatibleAppView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_messageLabel;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_messageLabel setNumberOfLines:0];
      [(UILabel *)self->_messageLabel setTextAlignment:1];
      v12 = self->_messageLabel;
      v13 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v12 setTextColor:v13];

      [(SUUIIncompatibleAppView *)self addSubview:self->_messageLabel];
      v4 = v15;
      messageLabel = self->_messageLabel;
    }

    [(UILabel *)messageLabel setText:v4];
    [(SUUIIncompatibleAppView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)messageLabel removeFromSuperview];
    v14 = self->_messageLabel;
    self->_messageLabel = 0;
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  titleLabel = self->_titleLabel;
  v15 = v4;
  if (v4)
  {
    if (!titleLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_titleLabel;
      self->_titleLabel = v6;

      v8 = self->_titleLabel;
      v9 = [(SUUIIncompatibleAppView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_titleLabel;
      v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_titleLabel setNumberOfLines:0];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      v12 = self->_titleLabel;
      v13 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v12 setTextColor:v13];

      [(SUUIIncompatibleAppView *)self addSubview:self->_titleLabel];
      v4 = v15;
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:v4];
    [(SUUIIncompatibleAppView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)titleLabel removeFromSuperview];
    v14 = self->_titleLabel;
    self->_titleLabel = 0;
  }
}

- (void)layoutSubviews
{
  v55 = *MEMORY[0x277D85DE8];
  [(SUUIIncompatibleAppView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 + -30.0;
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  messageLabel = self->_messageLabel;
  v10 = v8;
  if (messageLabel)
  {
    [(UILabel *)messageLabel sizeThatFits:v3 + -30.0, 1.79769313e308];
    v10 = v11;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:v7, 1.79769313e308];
    v8 = v13;
  }

  v14 = &v50;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  iconView = self->_iconView;
  if (iconView)
  {
    [(UIImageView *)iconView bounds];
    v14 = v51;
    v17 = v16 + 20.0 + v51[3];
    v51[3] = v17;
  }

  else
  {
    v17 = 0.0;
  }

  if (v8 > 0.00000011920929)
  {
    v17 = v8 + 9.0 + v17;
    v14[3] = v17;
  }

  if (v10 > 0.00000011920929)
  {
    v14[3] = v10 + 19.0 + v17;
  }

  buttons = self->_buttons;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __41__SUUIIncompatibleAppView_layoutSubviews__block_invoke;
  v49[3] = &unk_2798FC600;
  v49[4] = &v50;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v49];
  v19 = (v6 - v51[3]) * 0.5;
  v20 = floorf(v19);
  v21 = self->_iconView;
  if (v21)
  {
    [(UIImageView *)v21 frame];
    v23 = v22;
    v25 = v24;
    v26 = (v4 - v22) * 0.5;
    v27 = floorf(v26);
    [(UIImageView *)self->_iconView setFrame:v27, v20];
    v56.origin.x = v27;
    v56.origin.y = v20;
    v56.size.width = v23;
    v56.size.height = v25;
    v20 = CGRectGetMaxY(v56) + 20.0;
  }

  v28 = self->_titleLabel;
  if (v28)
  {
    [(UILabel *)v28 frame];
    v29 = v8;
    v30 = ceilf(v29);
    [(UILabel *)self->_titleLabel setFrame:15.0, v20, v7, v30];
    v57.origin.x = 15.0;
    v57.origin.y = v20;
    v57.size.width = v7;
    v57.size.height = v30;
    v20 = CGRectGetMaxY(v57) + 9.0;
  }

  v31 = self->_messageLabel;
  if (v31)
  {
    [(UILabel *)v31 frame];
    v32 = v10;
    v33 = ceilf(v32);
    [(UILabel *)self->_messageLabel setFrame:15.0, v20, v7, v33];
    v58.origin.x = 15.0;
    v58.origin.y = v20;
    v58.size.width = v7;
    v58.size.height = v33;
    v20 = CGRectGetMaxY(v58) + 19.0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = self->_buttons;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v35)
  {
    v36 = *v46;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v45 + 1) + 8 * i);
        [v38 frame];
        v40 = v39;
        v42 = v41;
        v43 = (v4 - v39) * 0.5;
        v44 = floorf(v43);
        [v38 setFrame:{v44, v20}];
        v59.origin.x = v44;
        v59.origin.y = v20;
        v59.size.width = v40;
        v59.size.height = v42;
        v20 = CGRectGetMaxY(v59) + 13.0;
      }

      v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v35);
  }

  _Block_object_dispose(&v50, 8);
}

double __41__SUUIIncompatibleAppView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + 13.0;
  }

  [a2 bounds];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  buttons = self->_buttons;
  v6 = a3;
  [(NSMutableArray *)buttons makeObjectsPerformSelector:a2 withObject:v6];
  [(UIImageView *)self->_iconView setBackgroundColor:v6];
  [(UILabel *)self->_messageLabel setBackgroundColor:v6];
  [(UILabel *)self->_titleLabel setBackgroundColor:v6];
  v7.receiver = self;
  v7.super_class = SUUIIncompatibleAppView;
  [(SUUIIncompatibleAppView *)&v7 setBackgroundColor:v6];
}

@end