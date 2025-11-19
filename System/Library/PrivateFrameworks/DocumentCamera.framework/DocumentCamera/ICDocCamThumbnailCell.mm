@interface ICDocCamThumbnailCell
- (ICDocCamThumbnailCell)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)indexStringForAccessibility;
- (id)parentCollectionView;
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
@end

@implementation ICDocCamThumbnailCell

- (ICDocCamThumbnailCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v45.receiver = self;
  v45.super_class = ICDocCamThumbnailCell;
  v7 = [(ICDocCamThumbnailCell *)&v45 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x277D75348] blackColor];
    v9 = [v8 CGColor];
    v10 = [(ICDocCamThumbnailCell *)v7 layer];
    [v10 setShadowColor:v9];

    v11 = [(ICDocCamThumbnailCell *)v7 layer];
    [v11 setShadowRadius:1.0];

    v12 = [(ICDocCamThumbnailCell *)v7 layer];
    [v12 setShadowOffset:{0.0, 0.0}];

    v13 = [(ICDocCamThumbnailCell *)v7 layer];
    LODWORD(v14) = 1045220557;
    [v13 setShadowOpacity:v14];

    v15 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(ICDocCamThumbnailCell *)v7 setImageView:v15];

    v16 = [(ICDocCamThumbnailCell *)v7 imageView];
    [v16 setContentMode:2];

    v17 = [(ICDocCamThumbnailCell *)v7 imageView];
    [v17 setClipsToBounds:1];

    v18 = [(ICDocCamThumbnailCell *)v7 imageView];
    [v18 setFrame:{x, y, width, height}];

    v19 = [(ICDocCamThumbnailCell *)v7 imageView];
    [v19 setAccessibilityIgnoresInvertColors:1];

    v20 = [(ICDocCamThumbnailCell *)v7 imageView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(ICDocCamThumbnailCell *)v7 contentView];
    v22 = [(ICDocCamThumbnailCell *)v7 imageView];
    [v21 addSubview:v22];

    v23 = [MEMORY[0x277CBEB18] array];
    v24 = [(ICDocCamThumbnailCell *)v7 contentView];
    v25 = [v24 leadingAnchor];
    v26 = [(ICDocCamThumbnailCell *)v7 imageView];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v23 addObject:v28];

    v29 = [(ICDocCamThumbnailCell *)v7 contentView];
    v30 = [v29 trailingAnchor];
    v31 = [(ICDocCamThumbnailCell *)v7 imageView];
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    [v23 addObject:v33];

    v34 = [(ICDocCamThumbnailCell *)v7 contentView];
    v35 = [v34 topAnchor];
    v36 = [(ICDocCamThumbnailCell *)v7 imageView];
    v37 = [v36 topAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    [v23 addObject:v38];

    v39 = [(ICDocCamThumbnailCell *)v7 contentView];
    v40 = [v39 bottomAnchor];
    v41 = [(ICDocCamThumbnailCell *)v7 imageView];
    v42 = [v41 bottomAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    [v23 addObject:v43];

    [MEMORY[0x277CCAAD0] activateConstraints:v23];
  }

  return v7;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailCell;
  [(ICDocCamThumbnailCell *)&v6 prepareForReuse];
  v3 = [(ICDocCamThumbnailCell *)self layer];
  LODWORD(v4) = 1.0;
  [v3 setSpeed:v4];

  v5 = [(ICDocCamThumbnailCell *)self imageView];
  [v5 setImage:0];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICDocCamThumbnailCell;
  [(ICDocCamThumbnailCell *)&v19 applyLayoutAttributes:v4];
  v5 = v4;
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

  v10 = [(ICDocCamThumbnailCell *)self imageView];
  v11 = 0.0;
  [v10 setFrame:{0.0, 0.0, v7, v6}];

  LODWORD(v10) = [v5 renderShadow];
  v12 = [(ICDocCamThumbnailCell *)self layer];
  v13 = v12;
  LODWORD(v14) = 1045220557;
  if (!v10)
  {
    *&v14 = 0.0;
  }

  [v12 setShadowOpacity:v14];

  if ([v5 renderBorder])
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v11 = 0.5;
  }

  else
  {
    v15 = [MEMORY[0x277D75348] clearColor];
  }

  v16 = [v15 CGColor];
  v17 = [(ICDocCamThumbnailCell *)self layer];
  [v17 setBorderColor:v16];

  v18 = [(ICDocCamThumbnailCell *)self layer];
  [v18 setBorderWidth:v11];
}

- (id)accessibilityLabel
{
  v3 = [(ICDocCamThumbnailCell *)self imageView];
  v4 = [v3 image];
  [v4 size];
  v6 = v5;
  v7 = [(ICDocCamThumbnailCell *)self imageView];
  v8 = [v7 image];
  [v8 size];
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
  v22 = [(ICDocCamThumbnailCell *)self indexStringForAccessibility];
  v20 = __DCAccessibilityStringForVariables(1, v11, v14, v15, v16, v17, v18, v19, v13);

  return v20;
}

- (id)indexStringForAccessibility
{
  v3 = [(ICDocCamThumbnailCell *)self parentCollectionView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 indexPathForCell:self];
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
  v2 = [(ICDocCamThumbnailCell *)self superview];
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v4 = objc_opt_class();
    v3 = DCDynamicCast(v4, v2);
  }

  else
  {
    v3 = 0;
  }

LABEL_7:

  return v3;
}

@end