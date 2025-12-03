@interface MIOImageConstraint
- (BOOL)isEqual:(id)equal;
- (MIOImageConstraint)initWithSpecification:(const void *)specification;
- (NSString)description;
- (unsigned)pixelFormatType;
- (void)pixelFormatType;
@end

@implementation MIOImageConstraint

- (MIOImageConstraint)initWithSpecification:(const void *)specification
{
  v15.receiver = self;
  v15.super_class = MIOImageConstraint;
  v4 = [(MIOImageConstraint *)&v15 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::ImageFeatureType::CopyFrom((v4 + 8), specification);
    v6 = [[MIOImageSizeConstraint alloc] initWithSpecification:specification];
    sizeConstraint = v5->_sizeConstraint;
    v5->_sizeConstraint = v6;

    v8 = v5->_sizeConstraint;
    v9 = 0;
    if (*(specification + 2) && *(specification + 3))
    {
      CoreML::Specification::ImageFeatureType_ImageSize::ImageFeatureType_ImageSize(v16, 0, 0);
      v17 = *(specification + 1);
      v9 = [[MIOImageSize alloc] initWithSpecification:v16];
      CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(v16);
    }

    if ([(MIOImageSizeConstraint *)v8 type]== 2)
    {
      if (!v9 || ![(MIOImageSizeConstraint *)v8 allowsImageSize:v9])
      {
        enumeratedImageSizes = [(MIOImageSizeConstraint *)v8 enumeratedImageSizes];
        v11 = [enumeratedImageSizes objectAtIndexedSubscript:0];

        v9 = v11;
        goto LABEL_13;
      }

LABEL_15:

      imageSize = v5->_imageSize;
      v5->_imageSize = v9;

      return v5;
    }

    if ([(MIOImageSizeConstraint *)v8 type]== 3)
    {
      if (v9 && [(MIOImageSizeConstraint *)v8 allowsImageSize:v9])
      {
        goto LABEL_15;
      }

      CoreML::Specification::ImageFeatureType_ImageSize::ImageFeatureType_ImageSize(v16, 0, 0);
      *&v17 = [(MIOImageSizeConstraint *)v8 pixelsWideRange];
      *(&v17 + 1) = [(MIOImageSizeConstraint *)v8 pixelsHighRange];
      v12 = [[MIOImageSize alloc] initWithSpecification:v16];

      CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(v16);
      v9 = v12;
    }

LABEL_13:
    if (!v9)
    {
      CoreML::Specification::ImageFeatureType_ImageSize::ImageFeatureType_ImageSize(v16, 0, 0);
      v17 = 0uLL;
      v9 = [[MIOImageSize alloc] initWithSpecification:v16];
      CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(v16);
    }

    goto LABEL_15;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  imageSize = [(MIOImageConstraint *)self imageSize];
  pixelFormatType = [(MIOImageConstraint *)self pixelFormatType];
  if (pixelFormatType > 1278226487)
  {
    if (pixelFormatType != 1278226488)
    {
      if (pixelFormatType == 1278226536)
      {
        v6 = @"OneComponent16Half";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v6 = @"OneComponent8";
  }

  else
  {
    if (pixelFormatType != 32)
    {
      if (pixelFormatType == 1111970369)
      {
        v6 = @"32BGRA";
        goto LABEL_11;
      }

LABEL_8:
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", HIBYTE(pixelFormatType), BYTE2(pixelFormatType), BYTE1(pixelFormatType), pixelFormatType];
      goto LABEL_11;
    }

    v6 = @"32ARGB";
  }

LABEL_11:
  sizeConstraint = [(MIOImageConstraint *)self sizeConstraint];
  v8 = [v3 initWithFormat:@"MIOImageConstraint { imageSize: %@ format: %@ sizeConstraint: %@ }", imageSize, v6, sizeConstraint];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      imageSize = [(MIOImageConstraint *)self imageSize];
      imageSize2 = [(MIOImageConstraint *)v5 imageSize];
      v8 = [imageSize isEqual:imageSize2];

      if ((v8 & 1) != 0 && (v9 = [(MIOImageConstraint *)self pixelFormatType], v9 == [(MIOImageConstraint *)v5 pixelFormatType]))
      {
        sizeConstraint = [(MIOImageConstraint *)self sizeConstraint];
        sizeConstraint2 = [(MIOImageConstraint *)v5 sizeConstraint];
        v12 = [sizeConstraint isEqual:sizeConstraint2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unsigned)pixelFormatType
{
  result = 1278226488;
  colorspace = self->_imageFeatureTypeParams.colorspace_;
  p_colorspace = &self->_imageFeatureTypeParams.colorspace_;
  v4 = colorspace;
  if (colorspace > 29)
  {
    if (v4 == 30)
    {
      return 1111970369;
    }

    if (v4 == 40)
    {
      return 1278226536;
    }
  }

  else
  {
    if (v4 == 10)
    {
      return result;
    }

    if (v4 == 20)
    {
      return 32;
    }
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    [(MIOImageConstraint *)p_colorspace pixelFormatType];
    return 0;
  }

  return result;
}

- (void)pixelFormatType
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *self;
  v3[0] = 67109120;
  v3[1] = v1;
  _os_log_error_impl(&dword_1C1BCE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Image pixel type %d is not supported.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end