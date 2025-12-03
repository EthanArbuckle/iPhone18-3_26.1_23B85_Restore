@interface OBImage
+ (id)_imageNameForUIInterfaceStyle:(int64_t)style originalName:(id)name;
+ (id)_imageNamed:(id)named inBundle:(id)bundle convertToMatchInterfaceStyle:(BOOL)style;
+ (int64_t)rootInterfaceStyle;
- (id)_obFlatImageWithColor:(id)color;
- (id)imageForUserInterfaceStyle:(int64_t)style;
@end

@implementation OBImage

+ (id)_imageNamed:(id)named inBundle:(id)bundle convertToMatchInterfaceStyle:(BOOL)style
{
  styleCopy = style;
  v28 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  bundleCopy = bundle;
  if (styleCopy)
  {
    v10 = +[OBImage _imageNameForUIInterfaceStyle:originalName:](OBImage, "_imageNameForUIInterfaceStyle:originalName:", [self rootInterfaceStyle], namedCopy);
  }

  else
  {
    v10 = namedCopy;
  }

  v11 = v10;
  v12 = [OBImage alloc];
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___OBImage;
  v13 = objc_msgSendSuper2(&v19, sel_imageNamed_inBundle_, v11, bundleCopy);
  v14 = -[OBImage initWithCGImage:](v12, "initWithCGImage:", [v13 CGImage]);

  [(OBImage *)v14 setName:namedCopy];
  [(OBImage *)v14 setBundle:bundleCopy];
  -[OBImage setStyle:](v14, "setStyle:", [self rootInterfaceStyle]);
  if (!v14)
  {
    v15 = _OBLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [bundleCopy description];
      *buf = 138413058;
      v21 = namedCopy;
      v22 = 2112;
      v23 = v18;
      v24 = 1024;
      v25 = styleCopy;
      v26 = 2112;
      v27 = v11;
      _os_log_error_impl(&dword_1B4FB6000, v15, OS_LOG_TYPE_ERROR, "OBImage unable to create image \ninputs: [name: %@ \nbundle: %@\ncomputeCoronaName: %i\ncomputedName:%@\n]", buf, 0x26u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)imageForUserInterfaceStyle:(int64_t)style
{
  if ([(OBImage *)self style]== style)
  {
    selfCopy = self;
  }

  else
  {
    v6 = objc_opt_class();
    name = [(OBImage *)self name];
    v8 = [v6 _imageNameForUIInterfaceStyle:style originalName:name];

    bundle = [(OBImage *)self bundle];
    v10 = [OBImage _imageNamed:v8 inBundle:bundle convertToMatchInterfaceStyle:0];

    [v10 setStyle:style];
    name2 = [(OBImage *)self name];
    [v10 setName:name2];

    tintColor = [(OBImage *)self tintColor];
    [v10 setTintColor:tintColor];

    bundle2 = [(OBImage *)self bundle];
    [v10 setBundle:bundle2];

    tintColor2 = [v10 tintColor];

    if (tintColor2)
    {
      tintColor3 = [v10 tintColor];
      selfCopy = [v10 _obFlatImageWithColor:tintColor3];
    }

    else
    {
      selfCopy = v10;
    }
  }

  return selfCopy;
}

+ (id)_imageNameForUIInterfaceStyle:(int64_t)style originalName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  if (style == 2)
  {
    v7 = [nameCopy stringByReplacingOccurrencesOfString:@"." withString:@"_Corona."];
  }

  else
  {
    v7 = nameCopy;
  }

  v8 = v7;

  return v8;
}

+ (int64_t)rootInterfaceStyle
{
  v2 = +[OBUtilities mainScreen];
  traitCollection = [v2 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (id)_obFlatImageWithColor:(id)color
{
  colorCopy = color;
  v5 = [OBImage alloc];
  v11.receiver = self;
  v11.super_class = OBImage;
  v6 = [(OBImage *)&v11 _flatImageWithColor:colorCopy];
  v7 = -[OBImage initWithCGImage:](v5, "initWithCGImage:", [v6 CGImage]);

  [(OBImage *)v7 setStyle:[(OBImage *)self style]];
  name = [(OBImage *)self name];
  [(OBImage *)v7 setName:name];

  bundle = [(OBImage *)self bundle];
  [(OBImage *)v7 setBundle:bundle];

  [(OBImage *)v7 setTintColor:colorCopy];

  return v7;
}

@end