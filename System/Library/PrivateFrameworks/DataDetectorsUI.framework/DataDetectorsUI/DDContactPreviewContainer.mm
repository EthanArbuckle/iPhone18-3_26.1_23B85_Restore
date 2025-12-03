@interface DDContactPreviewContainer
+ (double)estimatedHeight;
- (void)updateContactWithTitle:(id)title subtitle:(id)subtitle image:(id)image person:(BOOL)person;
@end

@implementation DDContactPreviewContainer

+ (double)estimatedHeight
{
  v2 = _UISolariumEnabled();
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:46.5];
  v5 = v4 + 15.0;

  v6 = fmax(v5, 72.0);
  v7 = 0.0;
  if (v2)
  {
    v7 = 20.0;
  }

  return v6 - v7;
}

- (void)updateContactWithTitle:(id)title subtitle:(id)subtitle image:(id)image person:(BOOL)person
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  v12 = _UISolariumEnabled();
  if (v12)
  {
    v13 = 24.0;
  }

  else
  {
    v13 = 16.0;
  }

  if ([titleCopy length])
  {
    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = v14;
    v16 = v15;
    if (imageCopy)
    {
      v17 = [[DDRoundedImage alloc] initWithImage:imageCopy];
      [(DDRoundedImage *)v17 setClipsToBounds:1];
      if (v17)
      {
        v17->_avatar = v12 | person;
      }

      [(DDRoundedImage *)v16 addSubview:v17];
      [(DDRoundedImage *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:9 relatedBy:0 toItem:v16 attribute:5 multiplier:1.0 constant:36.0];
      [v18 setActive:1];

      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      [defaultMetrics scaledValueForValue:1.0];
      v21 = v20;

      if (v21 <= 1.5)
      {
        v23 = 36.0;
        v22 = 1.0;
        v24 = v17;
        v25 = v16;
        v26 = 3;
      }

      else
      {
        v22 = 1.0;
        v23 = 0.0;
        v24 = v17;
        v25 = v16;
        v26 = 10;
      }

      v29 = [MEMORY[0x277CCAAD0] constraintWithItem:v24 attribute:10 relatedBy:0 toItem:v25 attribute:v26 multiplier:v22 constant:v23];
      [v29 setActive:1];

      v30 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:48.0];
      [v30 setActive:1];

      v31 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:48.0];
      [v31 setActive:1];

      v27 = v17;
      v28 = 8.0;
      v61 = v27;
    }

    else
    {
      v61 = 0;
      v27 = v15;
      v28 = v13;
    }

    v32 = objc_opt_new();
    [(DDRoundedImage *)v16 addSubview:v32];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v32 setFont:v33];

    [v32 setAdjustsFontSizeToFitWidth:1];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v32 setTextColor:labelColor];

    [v32 setTextAlignment:4];
    [v32 setText:titleCopy];
    if (v27 == v16)
    {
      v35 = 5;
    }

    else
    {
      v35 = 6;
    }

    v36 = [MEMORY[0x277CCAAD0] constraintWithItem:v32 attribute:5 relatedBy:0 toItem:v27 attribute:v35 multiplier:1.0 constant:{v28, v61}];
    [v36 setActive:1];

    v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:6 relatedBy:0 toItem:v32 attribute:6 multiplier:1.0 constant:v13];
    [v37 setActive:1];

    if ([subtitleCopy length])
    {
      if (imageCopy)
      {
        v38 = 12.0;
        v39 = v32;
        v40 = 3;
        v41 = v16;
        v42 = 3;
      }

      else
      {
        v38 = 0.0;
        v39 = v32;
        v40 = 4;
        v41 = v16;
        v42 = 10;
      }

      v48 = [MEMORY[0x277CCAAD0] constraintWithItem:v39 attribute:v40 relatedBy:0 toItem:v41 attribute:v42 multiplier:1.0 constant:v38];
      [v48 setActive:1];

      v49 = objc_opt_new();
      [(DDRoundedImage *)v16 addSubview:v49];
      [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
      v50 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
      [v49 setFont:v50];

      [v49 setAdjustsFontSizeToFitWidth:1];
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [v49 setTextColor:secondaryLabelColor];

      [v49 setTextAlignment:4];
      [v49 setText:subtitleCopy];
      v52 = [MEMORY[0x277CCAAD0] constraintWithItem:v49 attribute:5 relatedBy:0 toItem:v32 attribute:5 multiplier:1.0 constant:0.0];
      [v52 setActive:1];

      v53 = [MEMORY[0x277CCAAD0] constraintWithItem:v49 attribute:6 relatedBy:0 toItem:v32 attribute:6 multiplier:1.0 constant:0.0];
      [v53 setActive:1];

      v54 = [MEMORY[0x277CCAAD0] constraintWithItem:v49 attribute:3 relatedBy:0 toItem:v32 attribute:4 multiplier:1.0 constant:0.0];
      [v54 setActive:1];
    }

    else
    {
      if (imageCopy)
      {
        v43 = 12.0;
        v44 = v32;
        v45 = 3;
        v46 = v16;
        v47 = 3;
      }

      else
      {
        v43 = 0.0;
        v44 = v32;
        v45 = 10;
        v46 = v16;
        v47 = 10;
      }

      v49 = [MEMORY[0x277CCAAD0] constraintWithItem:v44 attribute:v45 relatedBy:0 toItem:v46 attribute:v47 multiplier:1.0 constant:v43];
      [v49 setActive:1];
    }

    subviews = [(DDContactPreviewContainer *)self subviews];
    firstObject = [subviews firstObject];
    [firstObject removeFromSuperview];

    [(DDContactPreviewContainer *)self addSubview:v16];
    v57 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:v16 attribute:5 multiplier:1.0 constant:0.0];
    [v57 setActive:1];

    v58 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:7 relatedBy:0 toItem:v16 attribute:7 multiplier:1.0 constant:0.0];
    [v58 setActive:1];

    v59 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:3 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:0.0];
    [v59 setActive:1];

    v60 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:v16 attribute:4 multiplier:1.0 constant:0.0];
    [v60 setActive:1];
  }
}

@end