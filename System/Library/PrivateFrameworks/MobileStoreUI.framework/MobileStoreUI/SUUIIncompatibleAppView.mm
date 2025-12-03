@interface SUUIIncompatibleAppView
- (id)addButtonWithTitle:(id)title;
- (void)layoutSubviews;
- (void)removeButtonTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)setBackgroundColor:(id)color;
- (void)setIconImage:(id)image;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation SUUIIncompatibleAppView

- (id)addButtonWithTitle:(id)title
{
  titleCopy = title;
  if (!self->_buttons)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buttons = self->_buttons;
    self->_buttons = v5;
  }

  v7 = [MEMORY[0x277D75220] buttonWithType:1];
  [v7 setTitle:titleCopy forState:0];
  titleLabel = [v7 titleLabel];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [titleLabel setFont:v9];

  [v7 sizeToFit];
  [(SUUIIncompatibleAppView *)self addSubview:v7];
  [(NSMutableArray *)self->_buttons addObject:v7];

  return v7;
}

- (void)removeButtonTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  v19 = *MEMORY[0x277D85DE8];
  targetCopy = target;
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

        [*(*(&v14 + 1) + 8 * v13++) removeTarget:targetCopy action:action forControlEvents:{events, v14}];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  iconView = self->_iconView;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!iconView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_iconView;
      self->_iconView = v6;

      v8 = self->_iconView;
      backgroundColor = [(SUUIIncompatibleAppView *)self backgroundColor];
      [(UIImageView *)v8 setBackgroundColor:backgroundColor];

      [(SUUIIncompatibleAppView *)self addSubview:self->_iconView];
      imageCopy = v11;
      iconView = self->_iconView;
    }

    [(UIImageView *)iconView setImage:imageCopy];
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

- (void)setMessage:(id)message
{
  messageCopy = message;
  messageLabel = self->_messageLabel;
  v15 = messageCopy;
  if (messageCopy)
  {
    if (!messageLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_messageLabel;
      self->_messageLabel = v6;

      v8 = self->_messageLabel;
      backgroundColor = [(SUUIIncompatibleAppView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:backgroundColor];

      v10 = self->_messageLabel;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_messageLabel setNumberOfLines:0];
      [(UILabel *)self->_messageLabel setTextAlignment:1];
      v12 = self->_messageLabel;
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v12 setTextColor:blackColor];

      [(SUUIIncompatibleAppView *)self addSubview:self->_messageLabel];
      messageCopy = v15;
      messageLabel = self->_messageLabel;
    }

    [(UILabel *)messageLabel setText:messageCopy];
    [(SUUIIncompatibleAppView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)messageLabel removeFromSuperview];
    v14 = self->_messageLabel;
    self->_messageLabel = 0;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = self->_titleLabel;
  v15 = titleCopy;
  if (titleCopy)
  {
    if (!titleLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_titleLabel;
      self->_titleLabel = v6;

      v8 = self->_titleLabel;
      backgroundColor = [(SUUIIncompatibleAppView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:backgroundColor];

      v10 = self->_titleLabel;
      v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_titleLabel setNumberOfLines:0];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      v12 = self->_titleLabel;
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v12 setTextColor:blackColor];

      [(SUUIIncompatibleAppView *)self addSubview:self->_titleLabel];
      titleCopy = v15;
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:titleCopy];
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

- (void)setBackgroundColor:(id)color
{
  buttons = self->_buttons;
  colorCopy = color;
  [(NSMutableArray *)buttons makeObjectsPerformSelector:a2 withObject:colorCopy];
  [(UIImageView *)self->_iconView setBackgroundColor:colorCopy];
  [(UILabel *)self->_messageLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v7.receiver = self;
  v7.super_class = SUUIIncompatibleAppView;
  [(SUUIIncompatibleAppView *)&v7 setBackgroundColor:colorCopy];
}

@end