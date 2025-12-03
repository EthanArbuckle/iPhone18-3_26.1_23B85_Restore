@interface SUUIFilledStarsView
- (SUUIFilledStarsView)initWithFrame:(CGRect)frame;
- (id)_starImageViewWithImage:(id)image;
- (void)_setupStars;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SUUIFilledStarsView

- (SUUIFilledStarsView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUIFilledStarsView;
  v3 = [(SUUIFilledStarsView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    starViews = v3->_starViews;
    v3->_starViews = v4;

    [(SUUIFilledStarsView *)v3 _setupStars];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SUUIFilledStarsView;
  [(SUUIFilledStarsView *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_starViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        [(SUUIFilledStarsView *)self addSubview:v9, v24];
        [v9 sizeToFit];
        [v9 frame];
        v11 = v10;
        [v9 frame];
        v30.origin.y = 0.0;
        v30.origin.x = v7;
        v30.size.width = v11;
        MaxX = CGRectGetMaxX(v30);
        [(SUUIFilledStarsView *)self bounds];
        UIRectCenteredYInRect();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ([(SUUIFilledStarsView *)self _shouldReverseLayoutDirection])
        {
          [(SUUIFilledStarsView *)self bounds];
          v22 = v21 - v18;
          [(SUUIFilledStarsView *)self bounds];
          v14 = v22 - (v14 - v23);
        }

        v7 = MaxX + 1.0;
        [v9 setFrame:{v14, v16, v18, v20}];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (void)_setupStars
{
  v8 = [MEMORY[0x277D755D0] configurationWithPointSize:10.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
  v4 = [v3 imageWithSymbolConfiguration:v8];

  v5 = 5;
  do
  {
    starViews = self->_starViews;
    v7 = [(SUUIFilledStarsView *)self _starImageViewWithImage:v4];
    [(NSMutableArray *)starViews addObject:v7];

    --v5;
  }

  while (v5);
}

- (id)_starImageViewWithImage:(id)image
{
  v3 = [image imageWithRenderingMode:2];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 setTintColor:systemOrangeColor];

  return v4;
}

@end