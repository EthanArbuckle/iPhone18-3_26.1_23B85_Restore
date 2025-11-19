@interface HUImageIconContentView
- (HUImageIconContentView)initWithFrame:(CGRect)a3;
- (id)_imageForImageIconDescriptor:(id)a3;
- (id)_imageForVariableImageIconDescriptor:(id)a3;
- (id)description;
- (int64_t)renderingModeForSubview:(id)a3 suggestedRenderingMode:(int64_t)a4;
- (void)_updateIconImage;
- (void)layoutSubviews;
- (void)setIconContentMode:(int64_t)a3;
- (void)setIconSize:(unint64_t)a3;
@end

@implementation HUImageIconContentView

- (HUImageIconContentView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = HUImageIconContentView;
  v3 = [(HUIconContentView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E0]);
    [(HUImageIconContentView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(HUImageIconContentView *)v3 setImageView:v5];

    v3->_iconContentMode = 1;
    [(UIImageView *)v3->_imageView setContentMode:1];
    v6 = [(HUImageIconContentView *)v3 imageView];
    [(HUImageIconContentView *)v3 addSubview:v6];
  }

  return v3;
}

- (void)setIconContentMode:(int64_t)a3
{
  self->_iconContentMode = a3;
  v4 = [(HUImageIconContentView *)self imageView];
  [v4 setContentMode:a3];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HUImageIconContentView;
  [(HUImageIconContentView *)&v12 layoutSubviews];
  [(HUImageIconContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUImageIconContentView *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setIconSize:(unint64_t)a3
{
  v5 = [(HUIconContentView *)self iconSize];
  v6.receiver = self;
  v6.super_class = HUImageIconContentView;
  [(HUIconContentView *)&v6 setIconSize:a3];
  if (v5 != a3)
  {
    [(HUImageIconContentView *)self _updateIconImage];
  }
}

- (id)_imageForImageIconDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 imageIdentifier];
  if ([v4 isDemoModeDescriptor])
  {
    v6 = [objc_alloc(MEMORY[0x277D755B0]) initWithContentsOfFile:v5];
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else if ([v4 isSystemImage])
  {
    v7 = [v4 imageSymbolConfiguration];
    if (v7)
    {
      [MEMORY[0x277D755B0] _systemImageNamed:v5 withConfiguration:v7];
    }

    else
    {
      [MEMORY[0x277D755B0] _systemImageNamed:v5];
    }
    v6 = ;

    if (v6)
    {
      goto LABEL_10;
    }
  }

  v6 = [objc_opt_class() iconImageNamed:v5 withSize:-[HUIconContentView iconSize](self displayStyle:{"iconSize"), -[HUIconContentView displayStyle](self, "displayStyle")}];
LABEL_10:

  return v6;
}

- (id)_imageForVariableImageIconDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 imageIdentifier];
  v6 = [v4 imageSymbolConfiguration];
  v7 = MEMORY[0x277D755B0];
  if (v6)
  {
    [v4 variableValue];
    [v7 _systemImageNamed:v5 variableValue:v6 withConfiguration:?];
  }

  else
  {
    [MEMORY[0x277D755B0] _systemImageNamed:v5];
  }
  v8 = ;
  if (!v8)
  {
    v8 = [objc_opt_class() iconImageNamed:v5 withSize:-[HUIconContentView iconSize](self displayStyle:{"iconSize"), -[HUIconContentView displayStyle](self, "displayStyle")}];
  }

  return v8;
}

- (void)_updateIconImage
{
  objc_opt_class();
  v3 = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v24 = v4;

  if (v24)
  {
    v5 = [(HUImageIconContentView *)self _imageForVariableImageIconDescriptor:v24];
    -[HUImageIconContentView setOriginalImageRenderingMode:](self, "setOriginalImageRenderingMode:", [v5 renderingMode]);
    v6 = [(HUImageIconContentView *)self imageView];
    v7 = [v5 imageWithRenderingMode:{-[HUImageIconContentView renderingModeForSubview:suggestedRenderingMode:](self, "renderingModeForSubview:suggestedRenderingMode:", v6, -[HUIconContentView renderingMode](self, "renderingMode"))}];
    v8 = [(HUImageIconContentView *)self imageView];
    [v8 setImage:v7];

    [v5 size];
    v10 = v9;
    [v5 size];
    v12 = v10 / v11;
LABEL_6:
    [(HUIconContentView *)self setAspectRatio:v12];
    goto LABEL_7;
  }

  objc_opt_class();
  v5 = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [v14 imageIdentifier];

    if (!v15)
    {
      v23 = [(HUImageIconContentView *)self imageView];
      [v23 setImage:0];

      v12 = 1.0;
      goto LABEL_6;
    }

    v16 = [(HUImageIconContentView *)self _imageForImageIconDescriptor:v14];
    -[HUImageIconContentView setOriginalImageRenderingMode:](self, "setOriginalImageRenderingMode:", [v16 renderingMode]);
    v17 = [(HUImageIconContentView *)self imageView];
    v18 = [v16 imageWithRenderingMode:{-[HUImageIconContentView renderingModeForSubview:suggestedRenderingMode:](self, "renderingModeForSubview:suggestedRenderingMode:", v17, -[HUIconContentView renderingMode](self, "renderingMode"))}];
    v19 = [(HUImageIconContentView *)self imageView];
    [v19 setImage:v18];

    [v16 size];
    v21 = v20;
    [v16 size];
    [(HUIconContentView *)self setAspectRatio:v21 / v22];
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
}

- (int64_t)renderingModeForSubview:(id)a3 suggestedRenderingMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUImageIconContentView *)self imageView];
  v8 = v7;
  if (v7 == v6)
  {
    v10 = [(HUImageIconContentView *)self originalImageRenderingMode];

    if (v10)
    {
      v9 = [(HUImageIconContentView *)self originalImageRenderingMode];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = HUImageIconContentView;
  v9 = [(HUIconContentView *)&v13 renderingModeForSubview:v6 suggestedRenderingMode:a4];
LABEL_6:
  v11 = v9;

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F0] builderWithObject:self];
  v4 = [v3 appendSuper];
  v5 = [(HUImageIconContentView *)self imageView];
  v6 = [v3 appendObject:v5 withName:@"imageView"];

  v7 = [(HUImageIconContentView *)self imageView];
  v8 = [v7 hu_contentModeString];
  v9 = [v3 appendObject:v8 withName:@"contentMode"];

  v20.width = HUDefaultSizeForIconSize([(HUIconContentView *)self iconSize]);
  v10 = NSStringFromCGSize(v20);
  v11 = [v3 appendObject:v10 withName:@"iconSize"];

  v12 = [(HUImageIconContentView *)self imageView];
  v13 = [v12 image];
  [v13 size];
  v14 = NSStringFromCGSize(v21);
  v15 = [v3 appendObject:v14 withName:@"imageSize"];

  [(HUIconContentView *)self aspectRatio];
  v16 = [v3 appendDouble:@"aspectRatio" withName:2 decimalPrecision:?];
  v17 = [v3 build];

  return v17;
}

@end