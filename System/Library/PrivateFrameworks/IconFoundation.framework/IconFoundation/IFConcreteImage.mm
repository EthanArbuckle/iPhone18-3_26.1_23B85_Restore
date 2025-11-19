@interface IFConcreteImage
- (CGImage)CGImage;
- (CGSize)iconSize;
- (CGSize)minimumSize;
- (CGSize)size;
- (IFConcreteImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 finalizedIcon:(id)a5;
- (IFConcreteImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 layerData:(id)a5;
- (IFConcreteImage)initWithIOSurface:(__IOSurface *)a3 scale:(double)a4;
- (id)ICRIconLayer;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [MEMORY[0x1E69C70A0] sharedDefaultDevice];
  v4 = [(IFConcreteImage *)self finalizedIcon];
  if (v4)
  {
  }

  else
  {
    v10 = [(IFConcreteImage *)self layerData];

    if (v10 && v3)
    {
      v11 = objc_alloc(MEMORY[0x1E69A89C8]);
      v12 = [(IFConcreteImage *)self layerData];
      v17 = 0;
      v13 = [v11 initFromSerializedData:v12 device:v3 error:&v17];
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

  v5 = [(IFConcreteImage *)self finalizedIcon];

  if (!v5 || ![MEMORY[0x1E69A89D8] instancesRespondToSelector:sel_initWithFinalizedIcon_])
  {
    v9 = 0;
    goto LABEL_19;
  }

  v6 = objc_alloc(MEMORY[0x1E69A89D8]);
  v7 = [(IFConcreteImage *)self finalizedIcon];
  v8 = [v6 initWithFinalizedIcon:v7];

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

- (IFConcreteImage)initWithIOSurface:(__IOSurface *)a3 scale:(double)a4
{
  v6 = [(IFConcreteImage *)self init];
  if (IOSurfaceGetPixelFormat(a3) == 1647534392)
  {
    v7 = CGImageCreateFromIOSurface();
    if (v7)
    {
      v8 = v7;
      v6 = [(IFConcreteImage *)v6 initWithCGImage:v7 scale:a4];
      CGImageRelease(v8);
    }
  }

  return v6;
}

- (IFConcreteImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 layerData:(id)a5
{
  v8 = a5;
  v18.receiver = self;
  v18.super_class = IFConcreteImage;
  v9 = [(IFImage *)&v18 _init];
  if (v9)
  {
    if (a3)
    {
      v10 = CFRetain(a3);
      v9->_CGImage = v10;
      v11 = CGImageGetWidth(v10) / a4;
      Height = CGImageGetHeight(v9->_CGImage);
      v9->_size.width = v11;
      v9->_size.height = Height / a4;
      v9->_scale = a4;
      v9->_minimumSize = *MEMORY[0x1E695F060];
      v9->_placeholder = 0;
      v9->_validationFlags = 0;
      v13 = CGImageGetWidth(a3) / a4;
      v14 = CGImageGetHeight(a3);
      v9->_iconSize.width = v13;
      v9->_iconSize.height = v14 / a4;
      v15 = [v8 copy];
    }

    else
    {
      v15 = 0;
      v9->_iconSize = *MEMORY[0x1E695F060];
    }

    layerData = v9->_layerData;
    v9->_layerData = v15;
  }

  return v9;
}

- (IFConcreteImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 finalizedIcon:(id)a5
{
  v9 = a5;
  v10 = [(IFConcreteImage *)self initWithCGImage:a3 scale:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_finalizedIcon, a5);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if ([(IFConcreteImage *)self CGImage])
  {
    v5 = [(IFConcreteImage *)self CGImage];
    v4[6] = v5;
    CFRetain(v5);
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
  v5 = [(IFConcreteImage *)self layerData];
  v6 = [v3 stringWithFormat:@"<IFImage 0x%lx>  CGImage: %@ Layer data size: %lu", self, CGImage, objc_msgSend(v5, "length")];

  return v6;
}

- (void)ICRIconLayer
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Failed to create finalized icon from serialized data. Error: %@", &v2, 0xCu);
}

@end