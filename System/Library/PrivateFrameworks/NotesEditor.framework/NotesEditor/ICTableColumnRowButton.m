@interface ICTableColumnRowButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)touchRect;
- (id)accessibilityContainer;
- (id)initAsColumn:(BOOL)a3 isLeftToRight:(BOOL)a4;
- (void)dealloc;
- (void)updateConfiguration;
@end

@implementation ICTableColumnRowButton

- (id)initAsColumn:(BOOL)a3 isLeftToRight:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = ICTableColumnRowButton;
  v6 = [(ICTableColumnRowButton *)&v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_isColumn = a3;
    v6->_isLTR = a4;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_accessibilityDarkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

    [(ICTableColumnRowButton *)v7 updateConfiguration];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICTableColumnRowButton;
  [(ICTableColumnRowButton *)&v4 dealloc];
}

- (void)updateConfiguration
{
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v5 = [v3 configurationWithFont:v4 scale:3];

  v6 = [MEMORY[0x277D75230] plainButtonConfiguration];
  if (([(ICTableColumnRowButton *)self isSelected]& 1) != 0)
  {
    [v6 setBaseBackgroundColor:0];
  }

  else
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      [MEMORY[0x277D75348] ICDarkenedTintColor];
    }

    else
    {
      [MEMORY[0x277D75348] ICTintColor];
    }
    v7 = ;
    [v6 setBaseBackgroundColor:v7];
  }

  if (([(ICTableColumnRowButton *)self isSelected]& 1) != 0)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v8 = ;
  [v6 setBaseForegroundColor:v8];

  v9 = [MEMORY[0x277D75348] clearColor];
  v10 = [v6 background];
  [v10 setBackgroundColor:v9];

  v11 = [v6 background];
  [v11 setCornerRadius:0.0];

  if ([(ICTableColumnRowButton *)self isSelected])
  {
    v12 = [(ICTableColumnRowButton *)self isColumn];
    if (v12)
    {
      v13 = @"attachment_table_column_header";
    }

    else
    {
      v13 = @"attachment_table_row_header";
    }

    v15 = [MEMORY[0x277D755B8] imageNamed:v13 inBundle:v19 withConfiguration:0];
    v14 = !v12;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0;
  }

  v16 = [v6 background];
  [v16 setImage:v15];

  if (v14)
  {
  }

  if (v12)
  {
  }

  [v6 setCornerStyle:-1];
  if ([(ICTableColumnRowButton *)self isColumn])
  {
    [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis" withConfiguration:v5];
  }

  else
  {
    [MEMORY[0x277D755B8] imageNamed:@"ellipsis.vertical" inBundle:v19 withConfiguration:v5];
  }
  v17 = ;
  [v6 setImage:v17];

  v18 = [v6 updatedConfigurationForButton:self];
  [(ICTableColumnRowButton *)self setConfiguration:v18];

  [(ICTableColumnRowButton *)self setPointerInteractionEnabled:[(ICTableColumnRowButton *)self isSelected]^ 1];
  [(ICTableColumnRowButton *)self setPointerStyleProvider:&__block_literal_global_6];
}

id __45__ICTableColumnRowButton_updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75B90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 imageView];
  v6 = [v4 initWithView:v5];

  v7 = [MEMORY[0x277D75860] effectWithPreview:v6];
  v8 = [v3 imageView];

  [v8 frame];
  v18 = CGRectInset(v17, -4.0, -4.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  v13 = [MEMORY[0x277D75888] shapeWithRoundedRect:{x, y, width, height}];
  v14 = [MEMORY[0x277D75890] styleWithEffect:v7 shape:v13];

  return v14;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(ICTableColumnRowButton *)self touchRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)touchRect
{
  [(ICTableColumnRowButton *)self bounds];
  MidX = CGRectGetMidX(v16);
  [(ICTableColumnRowButton *)self bounds];
  v18.origin.y = CGRectGetMidY(v17);
  v18.size.width = 0.0;
  v18.size.height = 0.0;
  v18.origin.x = MidX;
  v19 = CGRectInset(v18, -16.0, -16.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if ([(ICTableColumnRowButton *)self isSelected])
  {
    [(ICTableColumnRowButton *)self bounds];
    v23.origin.x = v8;
    v23.origin.y = v9;
    v23.size.width = v10;
    v23.size.height = v11;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectUnion(v20, v23);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICTableColumnRowButton;
  v2 = [(ICTableColumnRowButton *)&v7 accessibilityContainer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      v5 = [v4 accessibilityContainer];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v4 = v4;

    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v3;
}

@end