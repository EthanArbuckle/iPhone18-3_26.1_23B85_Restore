@interface OBImageView
- (OBImageView)initWithImage:(id)a3;
- (OBImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (id)_image:(id)a3 forUserInterfaceStyle:(int64_t)a4;
- (void)setHighlightedImage:(id)a3;
- (void)setImage:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBImageView

- (OBImageView)initWithImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OBImageView;
  v5 = [(OBImageView *)&v8 initWithImage:v4];
  v6 = v5;
  if (v5)
  {
    [(OBImageView *)v5 setImage:v4];
  }

  return v6;
}

- (OBImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OBImageView *)self initWithImage:v6];
  v9 = v8;
  if (v8)
  {
    [(OBImageView *)v8 setImage:v6];
    [(OBImageView *)v9 setHighlightedImage:v7];
  }

  return v9;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(OBImageView *)self traitCollection];
  v6 = -[OBImageView _image:forUserInterfaceStyle:](self, "_image:forUserInterfaceStyle:", v4, [v5 userInterfaceStyle]);

  v7.receiver = self;
  v7.super_class = OBImageView;
  [(OBImageView *)&v7 setImage:v6];
}

- (void)setHighlightedImage:(id)a3
{
  v4 = a3;
  v5 = [(OBImageView *)self traitCollection];
  v6 = -[OBImageView _image:forUserInterfaceStyle:](self, "_image:forUserInterfaceStyle:", v4, [v5 userInterfaceStyle]);

  v7.receiver = self;
  v7.super_class = OBImageView;
  [(OBImageView *)&v7 setHighlightedImage:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v18.receiver = self;
  v18.super_class = OBImageView;
  v4 = a3;
  [(OBImageView *)&v18 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(OBImageView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [(OBImageView *)self image];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(OBImageView *)self image];
      v11 = [(OBImageView *)self traitCollection];
      v12 = [v10 imageForUserInterfaceStyle:{objc_msgSend(v11, "userInterfaceStyle")}];

      [(OBImageView *)self setImage:v12];
    }

    v13 = [(OBImageView *)self highlightedImage];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v15 = [(OBImageView *)self highlightedImage];
      v16 = [(OBImageView *)self traitCollection];
      v17 = [v15 imageForUserInterfaceStyle:{objc_msgSend(v16, "userInterfaceStyle")}];

      [(OBImageView *)self setHighlightedImage:v17];
    }
  }
}

- (id)_image:(id)a3 forUserInterfaceStyle:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(OBImageView *)self traitCollection];
    v7 = [v5 imageForUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end