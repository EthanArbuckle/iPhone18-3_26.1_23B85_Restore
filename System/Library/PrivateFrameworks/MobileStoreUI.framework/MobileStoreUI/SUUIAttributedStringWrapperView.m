@interface SUUIAttributedStringWrapperView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIAttributedStringWrapperView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SUUIAttributedStringWrapperView

- (SUUIAttributedStringWrapperView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = SUUIAttributedStringWrapperView;
  v7 = [(SUUIAttributedStringView *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = [[SUUIAttributedStringView alloc] initWithFrame:x, y, width, height];
    delegateView = v7->_delegateView;
    v7->_delegateView = v8;

    v10 = v7->_delegateView;
    v11 = [MEMORY[0x277D75348] clearColor];
    [(SUUIAttributedStringView *)v10 setBackgroundColor:v11];

    [(SUUIAttributedStringWrapperView *)v7 addSubview:v7->_delegateView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SUUIAttributedStringWrapperView;
  [(SUUIAttributedStringWrapperView *)&v25 layoutSubviews];
  v3 = [(SUUIAttributedStringWrapperView *)self layout];
  [v3 edgeInsetsForShadow];
  v5 = -v4;

  v6 = [(SUUIAttributedStringWrapperView *)self layout];
  [v6 edgeInsetsForShadow];
  v8 = -v7;

  v9 = [(SUUIAttributedStringWrapperView *)self layout];
  [v9 edgeInsetsForShadow];
  v11 = v10;
  [(SUUIAttributedStringWrapperView *)self bounds];
  v13 = v11 + v12;
  v14 = [(SUUIAttributedStringWrapperView *)self layout];
  [v14 edgeInsetsForShadow];
  v16 = v13 + v15;

  v17 = [(SUUIAttributedStringWrapperView *)self layout];
  [v17 edgeInsetsForShadow];
  v19 = v18;
  [(SUUIAttributedStringWrapperView *)self bounds];
  v21 = v19 + v20;
  v22 = [(SUUIAttributedStringWrapperView *)self layout];
  [v22 edgeInsetsForShadow];
  v24 = v21 + v23;

  [(SUUIAttributedStringWrapperView *)self sendSubviewToBack:self->_delegateView];
  [(SUUIAttributedStringView *)self->_delegateView setFrame:v5, v8, v16, v24];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SUUIAttributedStringView *)self->_delegateView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end