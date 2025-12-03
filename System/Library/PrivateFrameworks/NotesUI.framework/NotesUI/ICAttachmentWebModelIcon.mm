@interface ICAttachmentWebModelIcon
- (CGSize)size;
- (ICAttachmentWebModelIcon)initWithFallbackURL:(id)l withSize:(CGSize)size;
- (ICAttachmentWebModelIcon)initWithImageURL:(id)l;
- (ICAttachmentWebModelIcon)initWithURL:(id)l withSize:(CGSize)size;
- (id)description;
@end

@implementation ICAttachmentWebModelIcon

- (ICAttachmentWebModelIcon)initWithURL:(id)l withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v11.receiver = self;
  v11.super_class = ICAttachmentWebModelIcon;
  v8 = [(ICAttachmentWebModelIcon *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ICAttachmentWebModelIcon *)v8 setUrl:lCopy];
    [(ICAttachmentWebModelIcon *)v9 setSize:width, height];
  }

  return v9;
}

- (ICAttachmentWebModelIcon)initWithImageURL:(id)l
{
  v3 = [(ICAttachmentWebModelIcon *)self initWithURL:l withSize:0.0, 0.0];
  v4 = v3;
  if (v3)
  {
    [(ICAttachmentWebModelIcon *)v3 setScaleImageToIconSize:1];
  }

  return v4;
}

- (ICAttachmentWebModelIcon)initWithFallbackURL:(id)l withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  if (lCopy)
  {
    v16.receiver = self;
    v16.super_class = ICAttachmentWebModelIcon;
    v8 = [(ICAttachmentWebModelIcon *)&v16 init];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
      v10 = v9;
      if (width == 60.0 && height == 60.0)
      {
        [v9 setPath:@"/apple-touch-icon.png"];
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/apple-touch-icon%.0fx%.0f.png", *&width, *&height];
        [v10 setPath:v13];
      }

      v14 = [v10 URL];
      [(ICAttachmentWebModelIcon *)v8 setUrl:v14];

      [(ICAttachmentWebModelIcon *)v8 setSize:width, height];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentWebModelIcon initWithFallbackURL:v11 withSize:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = ICAttachmentWebModelIcon;
  v4 = [(ICAttachmentWebModelIcon *)&v12 description];
  [(ICAttachmentWebModelIcon *)self size];
  v6 = v5;
  [(ICAttachmentWebModelIcon *)self size];
  v8 = v7;
  v9 = [(ICAttachmentWebModelIcon *)self url];
  v10 = [v3 stringWithFormat:@"%@ %.0fx%.0f %@", v4, v6, v8, v9];

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithFallbackURL:(os_log_t)log withSize:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ICAttachmentWebModelIcon initWithFallbackURL:withSize:]";
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "nil URL passed to %s", &v1, 0xCu);
}

@end