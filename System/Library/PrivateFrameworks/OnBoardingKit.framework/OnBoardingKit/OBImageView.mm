@interface OBImageView
- (OBImageView)initWithImage:(id)image;
- (OBImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (id)_image:(id)_image forUserInterfaceStyle:(int64_t)style;
- (void)setHighlightedImage:(id)image;
- (void)setImage:(id)image;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBImageView

- (OBImageView)initWithImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = OBImageView;
  v5 = [(OBImageView *)&v8 initWithImage:imageCopy];
  v6 = v5;
  if (v5)
  {
    [(OBImageView *)v5 setImage:imageCopy];
  }

  return v6;
}

- (OBImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  imageCopy = image;
  highlightedImageCopy = highlightedImage;
  v8 = [(OBImageView *)self initWithImage:imageCopy];
  v9 = v8;
  if (v8)
  {
    [(OBImageView *)v8 setImage:imageCopy];
    [(OBImageView *)v9 setHighlightedImage:highlightedImageCopy];
  }

  return v9;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  traitCollection = [(OBImageView *)self traitCollection];
  v6 = -[OBImageView _image:forUserInterfaceStyle:](self, "_image:forUserInterfaceStyle:", imageCopy, [traitCollection userInterfaceStyle]);

  v7.receiver = self;
  v7.super_class = OBImageView;
  [(OBImageView *)&v7 setImage:v6];
}

- (void)setHighlightedImage:(id)image
{
  imageCopy = image;
  traitCollection = [(OBImageView *)self traitCollection];
  v6 = -[OBImageView _image:forUserInterfaceStyle:](self, "_image:forUserInterfaceStyle:", imageCopy, [traitCollection userInterfaceStyle]);

  v7.receiver = self;
  v7.super_class = OBImageView;
  [(OBImageView *)&v7 setHighlightedImage:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  v18.receiver = self;
  v18.super_class = OBImageView;
  changeCopy = change;
  [(OBImageView *)&v18 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(OBImageView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    image = [(OBImageView *)self image];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      image2 = [(OBImageView *)self image];
      traitCollection2 = [(OBImageView *)self traitCollection];
      v12 = [image2 imageForUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];

      [(OBImageView *)self setImage:v12];
    }

    highlightedImage = [(OBImageView *)self highlightedImage];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      highlightedImage2 = [(OBImageView *)self highlightedImage];
      traitCollection3 = [(OBImageView *)self traitCollection];
      v17 = [highlightedImage2 imageForUserInterfaceStyle:{objc_msgSend(traitCollection3, "userInterfaceStyle")}];

      [(OBImageView *)self setHighlightedImage:v17];
    }
  }
}

- (id)_image:(id)_image forUserInterfaceStyle:(int64_t)style
{
  _imageCopy = _image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    traitCollection = [(OBImageView *)self traitCollection];
    v7 = [_imageCopy imageForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  }

  else
  {
    v7 = _imageCopy;
  }

  return v7;
}

@end