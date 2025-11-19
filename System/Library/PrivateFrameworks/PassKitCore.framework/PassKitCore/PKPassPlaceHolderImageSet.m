@interface PKPassPlaceHolderImageSet
- (BOOL)isEqual:(id)a3;
- (CGRect)logoRect;
- (PKPassPlaceHolderImageSet)initWithCoder:(id)a3;
- (id)_initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6 frontFaceImageSet:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassPlaceHolderImageSet

- (id)_initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6 frontFaceImageSet:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v37.receiver = self;
  v37.super_class = PKPassPlaceHolderImageSet;
  v16 = [(PKImageSet *)&v37 initWithDisplayProfile:v12 fileURL:v13 screenScale:v14 suffix:a5];
  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v17;
    if (v15)
    {
      v19 = v12;
      [v15 logoRect];
      v16->_logoRect.origin.x = v20;
      v16->_logoRect.origin.y = v21;
      v16->_logoRect.size.width = v22;
      v16->_logoRect.size.height = v23;
      v24 = [v15 faceImageAverageColor];
      placeHolderImageAverageColor = v16->_placeHolderImageAverageColor;
      v16->_placeHolderImageAverageColor = v24;

      v26 = [v15 faceImage];
      v27 = PKPassPartialFrontFaceImage(v26, v19);

      placeHolderImage = v16->_placeHolderImage;
      v16->_placeHolderImage = v27;
    }

    else
    {
      v36 = v17;
      v26 = [MEMORY[0x1E696AAE8] bundleWithURL:v13];
      if (!v26)
      {
        v29 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [MEMORY[0x1E696AAE8] mainBundle];
          v31 = [v30 bundleIdentifier];
          *buf = 138412546;
          v39 = v31;
          v40 = 2112;
          v41 = v13;
          _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Could not instantiate bundle for process(%@): %@", buf, 0x16u);
        }
      }

      v32 = v12;
      placeHolderImage = PKPassFrontFaceImage(v32, v26, &v16->_logoRect.origin.x, 0, 0, &v16->_placeHolderImageAverageColor, v14, a5);
      v33 = PKPassPartialFrontFaceImage(placeHolderImage, v32);

      v34 = v16->_placeHolderImage;
      v16->_placeHolderImage = v33;

      v18 = v36;
    }

    objc_autoreleasePoolPop(v18);
  }

  return v16;
}

- (PKPassPlaceHolderImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassPlaceHolderImageSet;
  v5 = [(PKImageSet *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeHolderImage"];
    placeHolderImage = v5->_placeHolderImage;
    v5->_placeHolderImage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeHolderImageAverageColor"];
    placeHolderImageAverageColor = v5->_placeHolderImageAverageColor;
    v5->_placeHolderImageAverageColor = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoRect"];
    v12 = v11;
    p_x = &v5->_logoRect.origin.x;
    if (v11)
    {
      v17 = NSRectFromString(v11);
      *p_x = v17.origin.x;
      v5->_logoRect.origin.y = v17.origin.y;
      v5->_logoRect.size.width = v17.size.width;
      v5->_logoRect.size.height = v17.size.height;
    }

    else
    {
      v14 = *(MEMORY[0x1E695F050] + 16);
      *p_x = *MEMORY[0x1E695F050];
      v5->_logoRect.size = v14;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPassPlaceHolderImageSet;
  [(PKImageSet *)&v8 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_placeHolderImage forKey:@"placeHolderImage"];
  [v4 encodeObject:self->_placeHolderImageAverageColor forKey:@"placeHolderImageAverageColor"];
  p_logoRect = &self->_logoRect;
  if (CGRectIsNull(*p_logoRect))
  {
    v7 = 0;
  }

  else
  {
    v7 = NSStringFromRect(*p_logoRect);
  }

  [v4 encodeObject:v7 forKey:@"logoRect"];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PKImage *)self->_placeHolderImage imageHash];
    v7 = [*(v5 + 3) imageHash];
    if ([v6 isEqual:v7])
    {
      v8 = CGRectEqualToRect(self->_logoRect, *(v5 + 40));
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(PKImage *)self->_placeHolderImage imageHash];
  v3 = [v2 hash];

  return v3;
}

- (CGRect)logoRect
{
  x = self->_logoRect.origin.x;
  y = self->_logoRect.origin.y;
  width = self->_logoRect.size.width;
  height = self->_logoRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end