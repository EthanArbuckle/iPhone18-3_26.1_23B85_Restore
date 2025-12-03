@interface HUImageIconContentView
- (HUImageIconContentView)initWithFrame:(CGRect)frame;
- (id)_imageForImageIconDescriptor:(id)descriptor;
- (id)_imageForVariableImageIconDescriptor:(id)descriptor;
- (id)description;
- (int64_t)renderingModeForSubview:(id)subview suggestedRenderingMode:(int64_t)mode;
- (void)_updateIconImage;
- (void)layoutSubviews;
- (void)setIconContentMode:(int64_t)mode;
- (void)setIconSize:(unint64_t)size;
@end

@implementation HUImageIconContentView

- (HUImageIconContentView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUImageIconContentView;
  v3 = [(HUIconContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E0]);
    [(HUImageIconContentView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(HUImageIconContentView *)v3 setImageView:v5];

    v3->_iconContentMode = 1;
    [(UIImageView *)v3->_imageView setContentMode:1];
    imageView = [(HUImageIconContentView *)v3 imageView];
    [(HUImageIconContentView *)v3 addSubview:imageView];
  }

  return v3;
}

- (void)setIconContentMode:(int64_t)mode
{
  self->_iconContentMode = mode;
  imageView = [(HUImageIconContentView *)self imageView];
  [imageView setContentMode:mode];
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
  imageView = [(HUImageIconContentView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (void)setIconSize:(unint64_t)size
{
  iconSize = [(HUIconContentView *)self iconSize];
  v6.receiver = self;
  v6.super_class = HUImageIconContentView;
  [(HUIconContentView *)&v6 setIconSize:size];
  if (iconSize != size)
  {
    [(HUImageIconContentView *)self _updateIconImage];
  }
}

- (id)_imageForImageIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  imageIdentifier = [descriptorCopy imageIdentifier];
  if ([descriptorCopy isDemoModeDescriptor])
  {
    v6 = [objc_alloc(MEMORY[0x277D755B0]) initWithContentsOfFile:imageIdentifier];
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else if ([descriptorCopy isSystemImage])
  {
    imageSymbolConfiguration = [descriptorCopy imageSymbolConfiguration];
    if (imageSymbolConfiguration)
    {
      [MEMORY[0x277D755B0] _systemImageNamed:imageIdentifier withConfiguration:imageSymbolConfiguration];
    }

    else
    {
      [MEMORY[0x277D755B0] _systemImageNamed:imageIdentifier];
    }
    v6 = ;

    if (v6)
    {
      goto LABEL_10;
    }
  }

  v6 = [objc_opt_class() iconImageNamed:imageIdentifier withSize:-[HUIconContentView iconSize](self displayStyle:{"iconSize"), -[HUIconContentView displayStyle](self, "displayStyle")}];
LABEL_10:

  return v6;
}

- (id)_imageForVariableImageIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  imageIdentifier = [descriptorCopy imageIdentifier];
  imageSymbolConfiguration = [descriptorCopy imageSymbolConfiguration];
  v7 = MEMORY[0x277D755B0];
  if (imageSymbolConfiguration)
  {
    [descriptorCopy variableValue];
    [v7 _systemImageNamed:imageIdentifier variableValue:imageSymbolConfiguration withConfiguration:?];
  }

  else
  {
    [MEMORY[0x277D755B0] _systemImageNamed:imageIdentifier];
  }
  v8 = ;
  if (!v8)
  {
    v8 = [objc_opt_class() iconImageNamed:imageIdentifier withSize:-[HUIconContentView iconSize](self displayStyle:{"iconSize"), -[HUIconContentView displayStyle](self, "displayStyle")}];
  }

  return v8;
}

- (void)_updateIconImage
{
  objc_opt_class();
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v4 = iconDescriptor;
  }

  else
  {
    v4 = 0;
  }

  v24 = v4;

  if (v24)
  {
    iconDescriptor2 = [(HUImageIconContentView *)self _imageForVariableImageIconDescriptor:v24];
    -[HUImageIconContentView setOriginalImageRenderingMode:](self, "setOriginalImageRenderingMode:", [iconDescriptor2 renderingMode]);
    imageView = [(HUImageIconContentView *)self imageView];
    v7 = [iconDescriptor2 imageWithRenderingMode:{-[HUImageIconContentView renderingModeForSubview:suggestedRenderingMode:](self, "renderingModeForSubview:suggestedRenderingMode:", imageView, -[HUIconContentView renderingMode](self, "renderingMode"))}];
    imageView2 = [(HUImageIconContentView *)self imageView];
    [imageView2 setImage:v7];

    [iconDescriptor2 size];
    v10 = v9;
    [iconDescriptor2 size];
    v12 = v10 / v11;
LABEL_6:
    [(HUIconContentView *)self setAspectRatio:v12];
    goto LABEL_7;
  }

  objc_opt_class();
  iconDescriptor2 = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v13 = iconDescriptor2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    imageIdentifier = [v14 imageIdentifier];

    if (!imageIdentifier)
    {
      imageView3 = [(HUImageIconContentView *)self imageView];
      [imageView3 setImage:0];

      v12 = 1.0;
      goto LABEL_6;
    }

    v16 = [(HUImageIconContentView *)self _imageForImageIconDescriptor:v14];
    -[HUImageIconContentView setOriginalImageRenderingMode:](self, "setOriginalImageRenderingMode:", [v16 renderingMode]);
    imageView4 = [(HUImageIconContentView *)self imageView];
    v18 = [v16 imageWithRenderingMode:{-[HUImageIconContentView renderingModeForSubview:suggestedRenderingMode:](self, "renderingModeForSubview:suggestedRenderingMode:", imageView4, -[HUIconContentView renderingMode](self, "renderingMode"))}];
    imageView5 = [(HUImageIconContentView *)self imageView];
    [imageView5 setImage:v18];

    [v16 size];
    v21 = v20;
    [v16 size];
    [(HUIconContentView *)self setAspectRatio:v21 / v22];
  }

  else
  {
    iconDescriptor2 = 0;
  }

LABEL_7:
}

- (int64_t)renderingModeForSubview:(id)subview suggestedRenderingMode:(int64_t)mode
{
  subviewCopy = subview;
  imageView = [(HUImageIconContentView *)self imageView];
  v8 = imageView;
  if (imageView == subviewCopy)
  {
    originalImageRenderingMode = [(HUImageIconContentView *)self originalImageRenderingMode];

    if (originalImageRenderingMode)
    {
      originalImageRenderingMode2 = [(HUImageIconContentView *)self originalImageRenderingMode];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = HUImageIconContentView;
  originalImageRenderingMode2 = [(HUIconContentView *)&v13 renderingModeForSubview:subviewCopy suggestedRenderingMode:mode];
LABEL_6:
  v11 = originalImageRenderingMode2;

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F0] builderWithObject:self];
  appendSuper = [v3 appendSuper];
  imageView = [(HUImageIconContentView *)self imageView];
  v6 = [v3 appendObject:imageView withName:@"imageView"];

  imageView2 = [(HUImageIconContentView *)self imageView];
  hu_contentModeString = [imageView2 hu_contentModeString];
  v9 = [v3 appendObject:hu_contentModeString withName:@"contentMode"];

  v20.width = HUDefaultSizeForIconSize([(HUIconContentView *)self iconSize]);
  v10 = NSStringFromCGSize(v20);
  v11 = [v3 appendObject:v10 withName:@"iconSize"];

  imageView3 = [(HUImageIconContentView *)self imageView];
  image = [imageView3 image];
  [image size];
  v14 = NSStringFromCGSize(v21);
  v15 = [v3 appendObject:v14 withName:@"imageSize"];

  [(HUIconContentView *)self aspectRatio];
  v16 = [v3 appendDouble:@"aspectRatio" withName:2 decimalPrecision:?];
  build = [v3 build];

  return build;
}

@end