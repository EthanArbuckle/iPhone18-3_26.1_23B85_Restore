@interface ICDocCamThumbnailCell
- (ICDocCamThumbnailCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)indexStringForAccessibility;
- (id)parentCollectionView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
@end

@implementation ICDocCamThumbnailCell

- (ICDocCamThumbnailCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v45.receiver = self;
  v45.super_class = ICDocCamThumbnailCell;
  v7 = [(ICDocCamThumbnailCell *)&v45 initWithFrame:?];
  if (v7)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(ICDocCamThumbnailCell *)v7 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(ICDocCamThumbnailCell *)v7 layer];
    [layer2 setShadowRadius:1.0];

    layer3 = [(ICDocCamThumbnailCell *)v7 layer];
    [layer3 setShadowOffset:{0.0, 0.0}];

    layer4 = [(ICDocCamThumbnailCell *)v7 layer];
    LODWORD(v14) = 1045220557;
    [layer4 setShadowOpacity:v14];

    v15 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(ICDocCamThumbnailCell *)v7 setImageView:v15];

    imageView = [(ICDocCamThumbnailCell *)v7 imageView];
    [imageView setContentMode:2];

    imageView2 = [(ICDocCamThumbnailCell *)v7 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [(ICDocCamThumbnailCell *)v7 imageView];
    [imageView3 setFrame:{x, y, width, height}];

    imageView4 = [(ICDocCamThumbnailCell *)v7 imageView];
    [imageView4 setAccessibilityIgnoresInvertColors:1];

    imageView5 = [(ICDocCamThumbnailCell *)v7 imageView];
    [imageView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(ICDocCamThumbnailCell *)v7 contentView];
    imageView6 = [(ICDocCamThumbnailCell *)v7 imageView];
    [contentView addSubview:imageView6];

    array = [MEMORY[0x277CBEB18] array];
    contentView2 = [(ICDocCamThumbnailCell *)v7 contentView];
    leadingAnchor = [contentView2 leadingAnchor];
    imageView7 = [(ICDocCamThumbnailCell *)v7 imageView];
    leadingAnchor2 = [imageView7 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v28];

    contentView3 = [(ICDocCamThumbnailCell *)v7 contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    imageView8 = [(ICDocCamThumbnailCell *)v7 imageView];
    trailingAnchor2 = [imageView8 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v33];

    contentView4 = [(ICDocCamThumbnailCell *)v7 contentView];
    topAnchor = [contentView4 topAnchor];
    imageView9 = [(ICDocCamThumbnailCell *)v7 imageView];
    topAnchor2 = [imageView9 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v38];

    contentView5 = [(ICDocCamThumbnailCell *)v7 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    imageView10 = [(ICDocCamThumbnailCell *)v7 imageView];
    bottomAnchor2 = [imageView10 bottomAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v43];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v7;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailCell;
  [(ICDocCamThumbnailCell *)&v6 prepareForReuse];
  layer = [(ICDocCamThumbnailCell *)self layer];
  LODWORD(v4) = 1.0;
  [layer setSpeed:v4];

  imageView = [(ICDocCamThumbnailCell *)self imageView];
  [imageView setImage:0];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v19.receiver = self;
  v19.super_class = ICDocCamThumbnailCell;
  [(ICDocCamThumbnailCell *)&v19 applyLayoutAttributes:attributesCopy];
  v5 = attributesCopy;
  objc_opt_class();
  v6 = 0.0;
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v5 imageWidth];
    v7 = v8;
    [v5 imageHeight];
    v6 = v9;
  }

  imageView = [(ICDocCamThumbnailCell *)self imageView];
  v11 = 0.0;
  [imageView setFrame:{0.0, 0.0, v7, v6}];

  LODWORD(imageView) = [v5 renderShadow];
  layer = [(ICDocCamThumbnailCell *)self layer];
  v13 = layer;
  LODWORD(v14) = 1045220557;
  if (!imageView)
  {
    *&v14 = 0.0;
  }

  [layer setShadowOpacity:v14];

  if ([v5 renderBorder])
  {
    clearColor = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v11 = 0.5;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  cGColor = [clearColor CGColor];
  layer2 = [(ICDocCamThumbnailCell *)self layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(ICDocCamThumbnailCell *)self layer];
  [layer3 setBorderWidth:v11];
}

- (id)accessibilityLabel
{
  imageView = [(ICDocCamThumbnailCell *)self imageView];
  image = [imageView image];
  [image size];
  v6 = v5;
  imageView2 = [(ICDocCamThumbnailCell *)self imageView];
  image2 = [imageView2 image];
  [image2 size];
  v10 = v9;

  v11 = [DCLocalization localizedStringForKey:@"Scan thumbnail" value:@"Scan thumbnail" table:@"Localizable"];
  if (v6 >= v10)
  {
    v12 = @"portrait";
  }

  else
  {
    v12 = @"landscape";
  }

  v13 = [DCLocalization localizedStringForKey:v12 value:v12 table:@"Localizable"];
  indexStringForAccessibility = [(ICDocCamThumbnailCell *)self indexStringForAccessibility];
  v20 = __DCAccessibilityStringForVariables(1, v11, v14, v15, v16, v17, v18, v19, v13);

  return v20;
}

- (id)indexStringForAccessibility
{
  parentCollectionView = [(ICDocCamThumbnailCell *)self parentCollectionView];
  v4 = parentCollectionView;
  if (parentCollectionView)
  {
    v5 = [parentCollectionView indexPathForCell:self];
    v6 = v5;
    if (v5 && [v5 item] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v6 item] + 1;
      v9 = [v4 numberOfItemsInSection:{objc_msgSend(v6, "section")}];
      v10 = MEMORY[0x277CCACA8];
      v11 = [DCLocalization localizedStringForKey:@"%lu of %lu" value:@"%lu of %lu" table:@"Localizable"];
      v7 = [v10 localizedStringWithFormat:v11, v8, v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)parentCollectionView
{
  superview = [(ICDocCamThumbnailCell *)self superview];
  if (superview)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
      if (!v2Superview)
      {
        goto LABEL_7;
      }
    }

    v4 = objc_opt_class();
    v2Superview = DCDynamicCast(v4, superview);
  }

  else
  {
    v2Superview = 0;
  }

LABEL_7:

  return v2Superview;
}

@end