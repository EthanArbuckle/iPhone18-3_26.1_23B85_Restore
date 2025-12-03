@interface PKPassPlaceHolderImageSet
- (BOOL)isEqual:(id)equal;
- (CGRect)logoRect;
- (PKPassPlaceHolderImageSet)initWithCoder:(id)coder;
- (id)_initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix frontFaceImageSet:(id)set;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassPlaceHolderImageSet

- (id)_initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix frontFaceImageSet:(id)set
{
  v42 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  lCopy = l;
  suffixCopy = suffix;
  setCopy = set;
  v37.receiver = self;
  v37.super_class = PKPassPlaceHolderImageSet;
  v16 = [(PKImageSet *)&v37 initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:suffixCopy suffix:scale];
  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v17;
    if (setCopy)
    {
      v19 = profileCopy;
      [setCopy logoRect];
      v16->_logoRect.origin.x = v20;
      v16->_logoRect.origin.y = v21;
      v16->_logoRect.size.width = v22;
      v16->_logoRect.size.height = v23;
      faceImageAverageColor = [setCopy faceImageAverageColor];
      placeHolderImageAverageColor = v16->_placeHolderImageAverageColor;
      v16->_placeHolderImageAverageColor = faceImageAverageColor;

      faceImage = [setCopy faceImage];
      v27 = PKPassPartialFrontFaceImage(faceImage, v19);

      placeHolderImage = v16->_placeHolderImage;
      v16->_placeHolderImage = v27;
    }

    else
    {
      v36 = v17;
      faceImage = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
      if (!faceImage)
      {
        v29 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          *buf = 138412546;
          v39 = bundleIdentifier;
          v40 = 2112;
          v41 = lCopy;
          _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Could not instantiate bundle for process(%@): %@", buf, 0x16u);
        }
      }

      v32 = profileCopy;
      placeHolderImage = PKPassFrontFaceImage(v32, faceImage, &v16->_logoRect.origin.x, 0, 0, &v16->_placeHolderImageAverageColor, suffixCopy, scale);
      v33 = PKPassPartialFrontFaceImage(placeHolderImage, v32);

      v34 = v16->_placeHolderImage;
      v16->_placeHolderImage = v33;

      v18 = v36;
    }

    objc_autoreleasePoolPop(v18);
  }

  return v16;
}

- (PKPassPlaceHolderImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPassPlaceHolderImageSet;
  v5 = [(PKImageSet *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeHolderImage"];
    placeHolderImage = v5->_placeHolderImage;
    v5->_placeHolderImage = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeHolderImageAverageColor"];
    placeHolderImageAverageColor = v5->_placeHolderImageAverageColor;
    v5->_placeHolderImageAverageColor = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoRect"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPassPlaceHolderImageSet;
  [(PKImageSet *)&v8 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_placeHolderImage forKey:@"placeHolderImage"];
  [coderCopy encodeObject:self->_placeHolderImageAverageColor forKey:@"placeHolderImageAverageColor"];
  p_logoRect = &self->_logoRect;
  if (CGRectIsNull(*p_logoRect))
  {
    v7 = 0;
  }

  else
  {
    v7 = NSStringFromRect(*p_logoRect);
  }

  [coderCopy encodeObject:v7 forKey:@"logoRect"];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    imageHash = [(PKImage *)self->_placeHolderImage imageHash];
    imageHash2 = [*(v5 + 3) imageHash];
    if ([imageHash isEqual:imageHash2])
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
  imageHash = [(PKImage *)self->_placeHolderImage imageHash];
  v3 = [imageHash hash];

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