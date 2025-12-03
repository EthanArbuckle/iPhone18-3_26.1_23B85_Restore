@interface SUUIAttributedStringWrapperView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIAttributedStringWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SUUIAttributedStringWrapperView

- (SUUIAttributedStringWrapperView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = SUUIAttributedStringWrapperView;
  v7 = [(SUUIAttributedStringView *)&v13 initWithFrame:?];
  if (v7)
  {
    height = [[SUUIAttributedStringView alloc] initWithFrame:x, y, width, height];
    delegateView = v7->_delegateView;
    v7->_delegateView = height;

    v10 = v7->_delegateView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIAttributedStringView *)v10 setBackgroundColor:clearColor];

    [(SUUIAttributedStringWrapperView *)v7 addSubview:v7->_delegateView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SUUIAttributedStringWrapperView;
  [(SUUIAttributedStringWrapperView *)&v25 layoutSubviews];
  layout = [(SUUIAttributedStringWrapperView *)self layout];
  [layout edgeInsetsForShadow];
  v5 = -v4;

  layout2 = [(SUUIAttributedStringWrapperView *)self layout];
  [layout2 edgeInsetsForShadow];
  v8 = -v7;

  layout3 = [(SUUIAttributedStringWrapperView *)self layout];
  [layout3 edgeInsetsForShadow];
  v11 = v10;
  [(SUUIAttributedStringWrapperView *)self bounds];
  v13 = v11 + v12;
  layout4 = [(SUUIAttributedStringWrapperView *)self layout];
  [layout4 edgeInsetsForShadow];
  v16 = v13 + v15;

  layout5 = [(SUUIAttributedStringWrapperView *)self layout];
  [layout5 edgeInsetsForShadow];
  v19 = v18;
  [(SUUIAttributedStringWrapperView *)self bounds];
  v21 = v19 + v20;
  layout6 = [(SUUIAttributedStringWrapperView *)self layout];
  [layout6 edgeInsetsForShadow];
  v24 = v21 + v23;

  [(SUUIAttributedStringWrapperView *)self sendSubviewToBack:self->_delegateView];
  [(SUUIAttributedStringView *)self->_delegateView setFrame:v5, v8, v16, v24];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SUUIAttributedStringView *)self->_delegateView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end