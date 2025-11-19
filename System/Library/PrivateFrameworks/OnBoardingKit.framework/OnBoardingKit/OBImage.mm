@interface OBImage
+ (id)_imageNameForUIInterfaceStyle:(int64_t)a3 originalName:(id)a4;
+ (id)_imageNamed:(id)a3 inBundle:(id)a4 convertToMatchInterfaceStyle:(BOOL)a5;
+ (int64_t)rootInterfaceStyle;
- (id)_obFlatImageWithColor:(id)a3;
- (id)imageForUserInterfaceStyle:(int64_t)a3;
@end

@implementation OBImage

+ (id)_imageNamed:(id)a3 inBundle:(id)a4 convertToMatchInterfaceStyle:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = +[OBImage _imageNameForUIInterfaceStyle:originalName:](OBImage, "_imageNameForUIInterfaceStyle:originalName:", [a1 rootInterfaceStyle], v8);
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [OBImage alloc];
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS___OBImage;
  v13 = objc_msgSendSuper2(&v19, sel_imageNamed_inBundle_, v11, v9);
  v14 = -[OBImage initWithCGImage:](v12, "initWithCGImage:", [v13 CGImage]);

  [(OBImage *)v14 setName:v8];
  [(OBImage *)v14 setBundle:v9];
  -[OBImage setStyle:](v14, "setStyle:", [a1 rootInterfaceStyle]);
  if (!v14)
  {
    v15 = _OBLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v9 description];
      *buf = 138413058;
      v21 = v8;
      v22 = 2112;
      v23 = v18;
      v24 = 1024;
      v25 = v5;
      v26 = 2112;
      v27 = v11;
      _os_log_error_impl(&dword_1B4FB6000, v15, OS_LOG_TYPE_ERROR, "OBImage unable to create image \ninputs: [name: %@ \nbundle: %@\ncomputeCoronaName: %i\ncomputedName:%@\n]", buf, 0x26u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)imageForUserInterfaceStyle:(int64_t)a3
{
  if ([(OBImage *)self style]== a3)
  {
    v5 = self;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = [(OBImage *)self name];
    v8 = [v6 _imageNameForUIInterfaceStyle:a3 originalName:v7];

    v9 = [(OBImage *)self bundle];
    v10 = [OBImage _imageNamed:v8 inBundle:v9 convertToMatchInterfaceStyle:0];

    [v10 setStyle:a3];
    v11 = [(OBImage *)self name];
    [v10 setName:v11];

    v12 = [(OBImage *)self tintColor];
    [v10 setTintColor:v12];

    v13 = [(OBImage *)self bundle];
    [v10 setBundle:v13];

    v14 = [v10 tintColor];

    if (v14)
    {
      v15 = [v10 tintColor];
      v5 = [v10 _obFlatImageWithColor:v15];
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

+ (id)_imageNameForUIInterfaceStyle:(int64_t)a3 originalName:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@"." withString:@"_Corona."];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

+ (int64_t)rootInterfaceStyle
{
  v2 = +[OBUtilities mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  return v4;
}

- (id)_obFlatImageWithColor:(id)a3
{
  v4 = a3;
  v5 = [OBImage alloc];
  v11.receiver = self;
  v11.super_class = OBImage;
  v6 = [(OBImage *)&v11 _flatImageWithColor:v4];
  v7 = -[OBImage initWithCGImage:](v5, "initWithCGImage:", [v6 CGImage]);

  [(OBImage *)v7 setStyle:[(OBImage *)self style]];
  v8 = [(OBImage *)self name];
  [(OBImage *)v7 setName:v8];

  v9 = [(OBImage *)self bundle];
  [(OBImage *)v7 setBundle:v9];

  [(OBImage *)v7 setTintColor:v4];

  return v7;
}

@end