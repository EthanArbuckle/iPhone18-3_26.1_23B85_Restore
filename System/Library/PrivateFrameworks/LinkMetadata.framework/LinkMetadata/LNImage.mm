@interface LNImage
- (BOOL)isEqual:(id)equal;
- (LNImage)initWithCoder:(id)coder;
- (LNImage)initWithData:(id)data renderingMode:(unint64_t)mode displayStyle:(unint64_t)style;
- (LNImage)initWithINImage:(id)image displayStyle:(unint64_t)style size:(id)size;
- (LNImage)initWithImageNamed:(id)named renderingMode:(unint64_t)mode displayStyle:(unint64_t)style;
- (LNImage)initWithSystemImageNamed:(id)named;
- (LNImage)initWithURL:(id)l renderingMode:(unint64_t)mode displayStyle:(unint64_t)style;
- (LNImage)initWithURL:(id)l width:(double)width height:(double)height renderingMode:(unint64_t)mode displayStyle:(unint64_t)style;
- (LNImage)proxiedImageCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNImage

- (LNImage)proxiedImageCopy
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  inImage = [(LNImage *)self inImage];
  v10 = v3;
  v5 = *MEMORY[0x1E696E570];
  v6 = *(MEMORY[0x1E696E570] + 8);
  INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler();

  v7 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v10, v7);
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __27__LNImage_proxiedImageCopy__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = a2;
  v4 = [v2 mainBundle];
  v5 = [v4 bundleIdentifier];
  [v3 _setBundleIdentifier:v5];

  return 1;
}

intptr_t __27__LNImage_proxiedImageCopy__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = -[LNImage initWithINImage:displayStyle:size:]([LNImage alloc], "initWithINImage:displayStyle:size:", v3, [*(a1 + 32) displayStyle], 0);

    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

- (unint64_t)hash
{
  inImage = [(LNImage *)self inImage];
  v4 = [inImage hash];
  v5 = [(LNImage *)self displayStyle]^ v4;
  v6 = [(LNImage *)self size];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_17:

      goto LABEL_18;
    }

    inImage = [(LNImage *)self inImage];
    inImage2 = [(LNImage *)v6 inImage];
    v9 = inImage;
    v10 = inImage2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_14;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    displayStyle = [(LNImage *)self displayStyle];
    if (displayStyle != [(LNImage *)v6 displayStyle])
    {
      LOBYTE(v12) = 0;
      goto LABEL_16;
    }

    v14 = [(LNImage *)self size];
    v13 = [(LNImage *)v6 size];
    LOBYTE(v12) = [v14 isEqualToValue:v13];
LABEL_14:

LABEL_16:
    goto LABEL_17;
  }

  LOBYTE(v12) = 1;
LABEL_18:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inImage = [(LNImage *)self inImage];
  [coderCopy encodeObject:inImage forKey:@"inImage"];

  [coderCopy encodeInteger:-[LNImage displayStyle](self forKey:{"displayStyle"), @"displayStyle"}];
  v6 = [(LNImage *)self size];
  [coderCopy encodeObject:v6 forKey:@"size"];
}

- (LNImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inImage"];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"displayStyle"];
    if (v6 <= 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    self = [(LNImage *)self initWithINImage:v5 displayStyle:v7 size:v8];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  inImage = [(LNImage *)self inImage];
  v7 = [v3 stringWithFormat:@"<%@: %p, inImage: %@>", v5, self, inImage];

  return v7;
}

- (LNImage)initWithINImage:(id)image displayStyle:(unint64_t)style size:(id)size
{
  imageCopy = image;
  sizeCopy = size;
  if (!imageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNImage.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"inImage"}];
  }

  v17.receiver = self;
  v17.super_class = LNImage;
  v12 = [(LNImage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inImage, image);
    v13->_displayStyle = style;
    objc_storeStrong(&v13->_size, size);
    v14 = v13;
  }

  return v13;
}

- (LNImage)initWithURL:(id)l width:(double)width height:(double)height renderingMode:(unint64_t)mode displayStyle:(unint64_t)style
{
  v12 = [MEMORY[0x1E696E868] imageWithURL:l width:? height:?];
  v13 = v12;
  if (v12)
  {
    if (mode == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (mode == 2);
    }

    [v12 _setRenderingMode:v14];
    v15 = [MEMORY[0x1E696B098] valueWithSize:{width, height}];
    self = [(LNImage *)self initWithINImage:v13 displayStyle:style size:v15];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNImage)initWithURL:(id)l renderingMode:(unint64_t)mode displayStyle:(unint64_t)style
{
  v8 = [MEMORY[0x1E696E868] imageWithURL:l];
  v9 = v8;
  if (v8)
  {
    if (mode == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (mode == 2);
    }

    [v8 _setRenderingMode:v10];
    self = [(LNImage *)self initWithINImage:v9 displayStyle:style size:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNImage)initWithData:(id)data renderingMode:(unint64_t)mode displayStyle:(unint64_t)style
{
  v8 = [MEMORY[0x1E696E868] imageWithImageData:data];
  v9 = v8;
  if (v8)
  {
    if (mode == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (mode == 2);
    }

    [v8 _setRenderingMode:v10];
    self = [(LNImage *)self initWithINImage:v9 displayStyle:style size:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNImage)initWithSystemImageNamed:(id)named
{
  v4 = [MEMORY[0x1E696E868] systemImageNamed:named];
  if (v4)
  {
    self = [(LNImage *)self initWithINImage:v4 displayStyle:0 size:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNImage)initWithImageNamed:(id)named renderingMode:(unint64_t)mode displayStyle:(unint64_t)style
{
  v8 = [MEMORY[0x1E696E868] imageNamed:named];
  v9 = v8;
  if (v8)
  {
    if (mode == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (mode == 2);
    }

    [v8 _setRenderingMode:v10];
    self = [(LNImage *)self initWithINImage:v9 displayStyle:style size:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end