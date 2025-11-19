@interface LNImage
- (BOOL)isEqual:(id)a3;
- (LNImage)initWithCoder:(id)a3;
- (LNImage)initWithData:(id)a3 renderingMode:(unint64_t)a4 displayStyle:(unint64_t)a5;
- (LNImage)initWithINImage:(id)a3 displayStyle:(unint64_t)a4 size:(id)a5;
- (LNImage)initWithImageNamed:(id)a3 renderingMode:(unint64_t)a4 displayStyle:(unint64_t)a5;
- (LNImage)initWithSystemImageNamed:(id)a3;
- (LNImage)initWithURL:(id)a3 renderingMode:(unint64_t)a4 displayStyle:(unint64_t)a5;
- (LNImage)initWithURL:(id)a3 width:(double)a4 height:(double)a5 renderingMode:(unint64_t)a6 displayStyle:(unint64_t)a7;
- (LNImage)proxiedImageCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(LNImage *)self inImage];
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
  v3 = [(LNImage *)self inImage];
  v4 = [v3 hash];
  v5 = [(LNImage *)self displayStyle]^ v4;
  v6 = [(LNImage *)self size];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_17:

      goto LABEL_18;
    }

    v7 = [(LNImage *)self inImage];
    v8 = [(LNImage *)v6 inImage];
    v9 = v7;
    v10 = v8;
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

    v15 = [(LNImage *)self displayStyle];
    if (v15 != [(LNImage *)v6 displayStyle])
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNImage *)self inImage];
  [v4 encodeObject:v5 forKey:@"inImage"];

  [v4 encodeInteger:-[LNImage displayStyle](self forKey:{"displayStyle"), @"displayStyle"}];
  v6 = [(LNImage *)self size];
  [v4 encodeObject:v6 forKey:@"size"];
}

- (LNImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inImage"];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"displayStyle"];
    if (v6 <= 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    self = [(LNImage *)self initWithINImage:v5 displayStyle:v7 size:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNImage *)self inImage];
  v7 = [v3 stringWithFormat:@"<%@: %p, inImage: %@>", v5, self, v6];

  return v7;
}

- (LNImage)initWithINImage:(id)a3 displayStyle:(unint64_t)a4 size:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNImage.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"inImage"}];
  }

  v17.receiver = self;
  v17.super_class = LNImage;
  v12 = [(LNImage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inImage, a3);
    v13->_displayStyle = a4;
    objc_storeStrong(&v13->_size, a5);
    v14 = v13;
  }

  return v13;
}

- (LNImage)initWithURL:(id)a3 width:(double)a4 height:(double)a5 renderingMode:(unint64_t)a6 displayStyle:(unint64_t)a7
{
  v12 = [MEMORY[0x1E696E868] imageWithURL:a3 width:? height:?];
  v13 = v12;
  if (v12)
  {
    if (a6 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (a6 == 2);
    }

    [v12 _setRenderingMode:v14];
    v15 = [MEMORY[0x1E696B098] valueWithSize:{a4, a5}];
    self = [(LNImage *)self initWithINImage:v13 displayStyle:a7 size:v15];

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (LNImage)initWithURL:(id)a3 renderingMode:(unint64_t)a4 displayStyle:(unint64_t)a5
{
  v8 = [MEMORY[0x1E696E868] imageWithURL:a3];
  v9 = v8;
  if (v8)
  {
    if (a4 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (a4 == 2);
    }

    [v8 _setRenderingMode:v10];
    self = [(LNImage *)self initWithINImage:v9 displayStyle:a5 size:0];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (LNImage)initWithData:(id)a3 renderingMode:(unint64_t)a4 displayStyle:(unint64_t)a5
{
  v8 = [MEMORY[0x1E696E868] imageWithImageData:a3];
  v9 = v8;
  if (v8)
  {
    if (a4 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (a4 == 2);
    }

    [v8 _setRenderingMode:v10];
    self = [(LNImage *)self initWithINImage:v9 displayStyle:a5 size:0];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (LNImage)initWithSystemImageNamed:(id)a3
{
  v4 = [MEMORY[0x1E696E868] systemImageNamed:a3];
  if (v4)
  {
    self = [(LNImage *)self initWithINImage:v4 displayStyle:0 size:0];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (LNImage)initWithImageNamed:(id)a3 renderingMode:(unint64_t)a4 displayStyle:(unint64_t)a5
{
  v8 = [MEMORY[0x1E696E868] imageNamed:a3];
  v9 = v8;
  if (v8)
  {
    if (a4 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (a4 == 2);
    }

    [v8 _setRenderingMode:v10];
    self = [(LNImage *)self initWithINImage:v9 displayStyle:a5 size:0];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end