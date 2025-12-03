@interface CNModernAtomIconView
- (BOOL)iconImagesChanged:(id)changed;
- (CGPoint)drawingOffset;
- (CNModernAtomIconView)initWithFrame:(CGRect)frame;
- (double)preferredWidth;
- (void)setIconImages:(id)images;
@end

@implementation CNModernAtomIconView

- (CNModernAtomIconView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CNModernAtomIconView;
  v3 = [(CNModernAtomIconView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E698B730]);
    [(CNModernAtomIconView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    stackView = v3->_stackView;
    v3->_stackView = v5;

    [(NUIContainerStackView *)v3->_stackView setAutoresizingMask:18];
    [(NUIContainerStackView *)v3->_stackView setAlignment:3];
    [(NUIContainerStackView *)v3->_stackView setDistribution:3];
    [(CNModernAtomIconView *)v3 addSubview:v3->_stackView];
  }

  return v3;
}

- (BOOL)iconImagesChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  iconImages = self->_iconImages;
  if (iconImages)
  {
    if (iconImages == changedCopy)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = ![(NSArray *)changedCopy isEqualToArray:?];
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)setIconImages:(id)images
{
  imagesCopy = images;
  if ([(CNModernAtomIconView *)self iconImagesChanged:?])
  {
    objc_storeStrong(&self->_iconImages, images);
    subviews = [(NUIContainerStackView *)self->_stackView subviews];
    v6 = [subviews count];
    v7 = [imagesCopy count];
    if (v6 != v7)
    {
      [(NUIContainerStackView *)self->_stackView setArrangedSubviews:0];
    }

    if ([imagesCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [imagesCopy objectAtIndexedSubscript:v8];
        if (v6 == v7)
        {
          v10 = [subviews objectAtIndexedSubscript:v8];
          [v10 setImage:v9];
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
          [v10 setContentMode:1];
          [(NUIContainerStackView *)self->_stackView addArrangedSubview:v10];
        }

        ++v8;
      }

      while ([imagesCopy count] > v8);
    }
  }
}

- (double)preferredWidth
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  iconImages = [(CNModernAtomIconView *)self iconImages];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__CNModernAtomIconView_preferredWidth__block_invoke;
  v6[3] = &unk_1E7CD2778;
  v6[4] = self;
  v6[5] = &v7;
  [iconImages enumerateObjectsUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __38__CNModernAtomIconView_preferredWidth__block_invoke(uint64_t a1, void *a2)
{
  [a2 size];
  [*(*(a1 + 32) + 416) spacing];
  UIRoundToViewScale();
  v3 = *(*(a1 + 40) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

- (CGPoint)drawingOffset
{
  x = self->_drawingOffset.x;
  y = self->_drawingOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end