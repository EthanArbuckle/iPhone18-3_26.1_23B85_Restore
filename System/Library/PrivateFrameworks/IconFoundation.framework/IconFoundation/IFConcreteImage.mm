@interface IFConcreteImage
- (CGImage)CGImage;
- (CGSize)iconSize;
- (CGSize)minimumSize;
- (CGSize)size;
- (IFConcreteImage)initWithCGImage:(CGImage *)image scale:(double)scale finalizedIcon:(id)icon;
- (IFConcreteImage)initWithCGImage:(CGImage *)image scale:(double)scale layerData:(id)data;
- (IFConcreteImage)initWithIOSurface:(__IOSurface *)surface scale:(double)scale;
- (id)ICRIconLayer;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)ICRIconLayer;
- (void)dealloc;
@end

@implementation IFConcreteImage

- (void)dealloc
{
  CGImage = self->_CGImage;
  if (CGImage)
  {
    CFRelease(CGImage);
  }

  v4.receiver = self;
  v4.super_class = IFConcreteImage;
  [(IFConcreteImage *)&v4 dealloc];
}

- (id)ICRIconLayer
{
  mEMORY[0x1E69C70A0] = [MEMORY[0x1E69C70A0] sharedDefaultDevice];
  finalizedIcon = [(IFConcreteImage *)self finalizedIcon];
  if (finalizedIcon)
  {
  }

  else
  {
    layerData = [(IFConcreteImage *)self layerData];

    if (layerData && mEMORY[0x1E69C70A0])
    {
      v11 = objc_alloc(MEMORY[0x1E69A89C8]);
      layerData2 = [(IFConcreteImage *)self layerData];
      v17 = 0;
      v13 = [v11 initFromSerializedData:layerData2 device:mEMORY[0x1E69C70A0] error:&v17];
      v8 = v17;

      if (!v13)
      {
        v15 = IFDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(IFConcreteImage *)v8 ICRIconLayer];
        }

        v9 = 0;
        goto LABEL_18;
      }

      [(IFConcreteImage *)self setFinalizedIcon:v13];
    }
  }

  finalizedIcon2 = [(IFConcreteImage *)self finalizedIcon];

  if (!finalizedIcon2 || ![MEMORY[0x1E69A89D8] instancesRespondToSelector:sel_initWithFinalizedIcon_])
  {
    v9 = 0;
    goto LABEL_19;
  }

  v6 = objc_alloc(MEMORY[0x1E69A89D8]);
  finalizedIcon3 = [(IFConcreteImage *)self finalizedIcon];
  v8 = [v6 initWithFinalizedIcon:finalizedIcon3];

  if (v8)
  {
    v8 = v8;
    v9 = v8;
  }

  else
  {
    v14 = IFDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(IFConcreteImage *)self ICRIconLayer];
    }

    v9 = 0;
  }

LABEL_18:

LABEL_19:

  return v9;
}

- (CGSize)iconSize
{
  objc_copyStruct(v4, &self->_iconSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minimumSize
{
  objc_copyStruct(v4, &self->_minimumSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGImage)CGImage
{
  v3 = [IFImage escapingCGImageWithCGImage:self->_CGImage];
  CGImage = self->_CGImage;
  if (v3 != CGImage)
  {
    CFAutorelease(CGImage);
    CFRetain(v3);
    self->_CGImage = v3;
  }

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IFConcreteImage;
  return [(IFImage *)&v3 _init];
}

- (IFConcreteImage)initWithIOSurface:(__IOSurface *)surface scale:(double)scale
{
  v6 = [(IFConcreteImage *)self init];
  if (IOSurfaceGetPixelFormat(surface) == 1647534392)
  {
    v7 = CGImageCreateFromIOSurface();
    if (v7)
    {
      v8 = v7;
      v6 = [(IFConcreteImage *)v6 initWithCGImage:v7 scale:scale];
      CGImageRelease(v8);
    }
  }

  return v6;
}

- (IFConcreteImage)initWithCGImage:(CGImage *)image scale:(double)scale layerData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = IFConcreteImage;
  _init = [(IFImage *)&v18 _init];
  if (_init)
  {
    if (image)
    {
      v10 = CFRetain(image);
      _init->_CGImage = v10;
      v11 = CGImageGetWidth(v10) / scale;
      Height = CGImageGetHeight(_init->_CGImage);
      _init->_size.width = v11;
      _init->_size.height = Height / scale;
      _init->_scale = scale;
      _init->_minimumSize = *MEMORY[0x1E695F060];
      _init->_placeholder = 0;
      _init->_validationFlags = 0;
      v13 = CGImageGetWidth(image) / scale;
      v14 = CGImageGetHeight(image);
      _init->_iconSize.width = v13;
      _init->_iconSize.height = v14 / scale;
      v15 = [dataCopy copy];
    }

    else
    {
      v15 = 0;
      _init->_iconSize = *MEMORY[0x1E695F060];
    }

    layerData = _init->_layerData;
    _init->_layerData = v15;
  }

  return _init;
}

- (IFConcreteImage)initWithCGImage:(CGImage *)image scale:(double)scale finalizedIcon:(id)icon
{
  iconCopy = icon;
  v10 = [(IFConcreteImage *)self initWithCGImage:image scale:scale];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_finalizedIcon, icon);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if ([(IFConcreteImage *)self CGImage])
  {
    cGImage = [(IFConcreteImage *)self CGImage];
    v4[6] = cGImage;
    CFRetain(cGImage);
  }

  [(IFConcreteImage *)self size];
  v4[12] = v6;
  v4[13] = v7;
  [(IFConcreteImage *)self scale];
  v4[7] = v8;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  CGImage = self->_CGImage;
  layerData = [(IFConcreteImage *)self layerData];
  v6 = [v3 stringWithFormat:@"<IFImage 0x%lx>  CGImage: %@ Layer data size: %lu", self, CGImage, objc_msgSend(layerData, "length")];

  return v6;
}

- (void)ICRIconLayer
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Failed to create finalized icon from serialized data. Error: %@", &v2, 0xCu);
}

@end