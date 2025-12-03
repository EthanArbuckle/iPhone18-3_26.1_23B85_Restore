@interface NTKUpNextPhotoCell
- (void)applyLayoutAttributes:(id)attributes;
- (void)configureWithContent:(id)content;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextPhotoCell

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  v29.receiver = self;
  v29.super_class = NTKUpNextPhotoCell;
  [(NTKUpNextBaseCell *)&v29 configureWithContent:contentCopy];
  overrideBodyImage = [contentCopy overrideBodyImage];
  [overrideBodyImage size];
  self->_aspectRatio = v6 / v7;
  device = [(NTKUpNextBaseCell *)self device];
  [device screenBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  if (self->_aspectRatio <= 1.0)
  {
    Width = CGRectGetWidth(*&v17);
    v31.origin.x = v10;
    v31.origin.y = v12;
    v31.size.width = v14;
    v31.size.height = v16;
    Height = CGRectGetWidth(v31) / self->_aspectRatio;
  }

  else
  {
    Width = CGRectGetHeight(*&v17) * self->_aspectRatio;
    v30.origin.x = v10;
    v30.origin.y = v12;
    v30.size.width = v14;
    v30.size.height = v16;
    Height = CGRectGetHeight(v30);
  }

  self->_wantsFullCellPhoto = 0;
  v23 = [contentCopy objectForKey:@"NTKUpNextWantsFullScreenPhotoContent"];
  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_wantsFullCellPhoto = [v23 BOOLValue];
    }
  }

  self->_scaledImageSize.width = Width;
  self->_scaledImageSize.height = Height;
  [contentCopy imageFocusRect];
  self->_facesRect.origin.x = v24;
  self->_facesRect.origin.y = v25;
  self->_facesRect.size.width = v26;
  self->_facesRect.size.height = v27;
  overrideBodyImage2 = [contentCopy overrideBodyImage];
  [(NTKUpNextBaseCell *)self setOverrideContentImage:overrideBodyImage2];

  [(NTKUpNextPhotoCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = NTKUpNextPhotoCell;
  [(NTKUpNextBaseCell *)&v33 layoutSubviews];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (self->_wantsFullCellPhoto)
  {
    y = 0.0;
    v4 = 1.0;
    v5 = 1.0;
    v6 = 0.0;
  }

  else
  {
    device = [(NTKUpNextBaseCell *)self device];
    [device screenBounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(NTKUpNextPhotoCell *)self bounds];
    Width = CGRectGetWidth(v34);
    v17 = self->_scaledImageSize.width;
    v35.origin.x = v9;
    v35.origin.y = v11;
    v35.size.width = v13;
    v35.size.height = v15;
    v18 = 0.0;
    v19 = CGRectGetWidth(v35) < v17;
    if (v19)
    {
      v5 = Width / v17;
    }

    else
    {
      v5 = 1.0;
    }

    if (v19)
    {
      v6 = (1.0 - Width / v17) * 0.5;
    }

    else
    {
      v6 = 0.0;
    }

    [(NTKUpNextPhotoCell *)self bounds];
    Height = CGRectGetHeight(v36);
    v21 = self->_scaledImageSize.height;
    p_facesRect = &self->_facesRect;
    if (CGRectIsNull(self->_facesRect))
    {
      v4 = Height / v21;
      y = v4 * -0.5 + 0.333333333;
    }

    else
    {
      v37.origin.x = p_facesRect->origin.x;
      v37.origin.y = self->_facesRect.origin.y;
      v37.size.width = self->_facesRect.size.width;
      v37.size.height = self->_facesRect.size.height;
      v23 = CGRectGetWidth(v37) * -0.1;
      v38.origin.x = p_facesRect->origin.x;
      v38.origin.y = self->_facesRect.origin.y;
      v38.size.width = self->_facesRect.size.width;
      v38.size.height = self->_facesRect.size.height;
      v24 = CGRectGetHeight(v38) * -0.1;
      v39.origin.x = p_facesRect->origin.x;
      v39.origin.y = self->_facesRect.origin.y;
      v39.size.width = self->_facesRect.size.width;
      v39.size.height = self->_facesRect.size.height;
      v40 = CGRectInset(v39, v23, v24);
      x = v40.origin.x;
      y = v40.origin.y;
      v26 = v40.size.width;
      v4 = v40.size.height;
      [(NTKUpNextPhotoCell *)self bounds];
      v27 = CGRectGetWidth(v41);
      [(NTKUpNextPhotoCell *)self bounds];
      v28 = v27 / CGRectGetHeight(v42);
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = v26;
      v43.size.height = v4;
      v29 = CGRectGetHeight(v43) * v28 / self->_aspectRatio;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = v26;
      v44.size.height = v4;
      v30 = CGRectGetMidX(v44) + v29 * -0.5;
      v45.origin.x = v30;
      v45.origin.y = y;
      v45.size.width = v29;
      v45.size.height = v4;
      if (CGRectGetMinX(v45) >= 0.0)
      {
        v46.origin.x = v30;
        v46.origin.y = y;
        v46.size.width = v29;
        v46.size.height = v4;
        if (CGRectGetMaxX(v46) <= 1.0)
        {
          v18 = v30;
        }

        else
        {
          v47.origin.x = v30;
          v47.origin.y = y;
          v47.size.width = v29;
          v47.size.height = v4;
          v18 = v30 - (CGRectGetMaxX(v47) + -1.0);
        }
      }

      v48.origin.x = v18;
      v48.origin.y = y;
      v48.size.width = v29;
      v48.size.height = v4;
      v5 = 1.0;
      if (CGRectGetMaxX(v48) <= 1.0 && (v49.origin.x = v18, v49.origin.y = y, v49.size.width = v29, v49.size.height = v4, CGRectGetMinX(v49) >= 0.0))
      {
        v5 = v29;
        v6 = v18;
      }

      else
      {
        v6 = 0.0;
        v50.origin.x = 0.0;
        v50.size.width = 1.0;
        v50.origin.y = y;
        v50.size.height = v4;
        MidY = CGRectGetMidY(v50);
        v4 = self->_aspectRatio / v28;
        v51.origin.x = 0.0;
        v51.size.width = 1.0;
        v51.origin.y = y;
        v51.size.height = v4;
        y = MidY + CGRectGetHeight(v51) * -0.5;
      }
    }
  }

  imageLayer = [(NTKUpNextBaseCell *)self imageLayer];
  [imageLayer setContentsRect:{v6, y, v5, v4}];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NTKUpNextPhotoCell;
  [(NTKUpNextBaseCell *)&v4 prepareForReuse];
  layer = [(NTKUpNextPhotoCell *)self layer];
  [layer setFilters:0];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v3.receiver = self;
  v3.super_class = NTKUpNextPhotoCell;
  [(NTKUpNextBaseCell *)&v3 applyLayoutAttributes:attributes];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  if (fabs(fraction) >= 0.00000011920929)
  {
    filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
    layer2 = [filterProvider filtersForView:self style:1 fraction:fraction];

    v6 = layer2;
    if (!layer2)
    {
      goto LABEL_6;
    }

    layer = [(NTKUpNextPhotoCell *)self layer];
    [layer setFilters:layer2];
  }

  else
  {
    layer2 = [(NTKUpNextPhotoCell *)self layer];
    [layer2 setFilters:0];
  }

  v6 = layer2;
LABEL_6:
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v5 = [filterProvider filtersForView:self style:1];

  if (v5)
  {
    layer = [(NTKUpNextPhotoCell *)self layer];
    [layer setFilters:v5];
  }
}

@end