@interface PKPassTileImage
+ (id)_createDefaultDisclosureImage;
+ (id)_createForDictionary:(id)a3;
+ (id)createImageWithImage:(id)a3 tintColor:(int64_t)a4 hasColorContent:(BOOL)a5;
+ (id)createWithSymbolName:(id)a3 contextMenuSymbolName:(id)a4 tintColor:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnresolvedImage:(id)a3;
- (PKPassTileImage)initWithCoder:(id)a3;
- (id)_init;
- (id)createResolvedImageWithBundle:(id)a3 privateBundle:(id)a4;
- (uint64_t)_isEqual:(uint64_t)a1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileImage

+ (id)_createForDictionary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [PKPassTileImage alloc];
  v5 = v3;
  if (v4)
  {
    v4 = [(PKPassTileImage *)v4 _init];
    if (v4)
    {
      v6 = [v5 PKStringForKey:@"symbolName"];
      symbolName = v4->_symbolName;
      v4->_symbolName = v6;

      v8 = [v5 PKStringForKey:@"imageName"];
      imageName = v4->_imageName;
      v4->_imageName = v8;

      v10 = [v5 PKStringForKey:@"tintColor"];
      PKSemanticColorFromString(v10, &v4->_tintColor);
    }
  }

  return v4;
}

+ (id)_createDefaultDisclosureImage
{
  v2 = [[PKPassTileImage alloc] _init];
  [v2 setSymbolName:@"chevron.forward"];
  [v2 setTintColor:3];
  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassTileImage;
  return [(PKPassTileImage *)&v3 init];
}

+ (id)createWithSymbolName:(id)a3 contextMenuSymbolName:(id)a4 tintColor:(int64_t)a5
{
  v5 = a3;
  if (a3)
  {
    v7 = a4;
    v8 = v5;
    v5 = [[PKPassTileImage alloc] _init];
    [v5 setSymbolName:v8];

    [v5 setContextMenuSymbolName:v7];
    [v5 setTintColor:a5];
  }

  return v5;
}

+ (id)createImageWithImage:(id)a3 tintColor:(int64_t)a4 hasColorContent:(BOOL)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [[PKPassTileImage alloc] _init];
    objc_storeStrong(v9 + 4, a3);
    v9[3] = a4;
    v10 = [v8 imageHash];
    v11 = v9[5];
    v9[5] = v10;

    *(v9 + 9) = a5;
    *(v9 + 8) = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createResolvedImageWithBundle:(id)a3 privateBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileImage attempting double resolution."];
  }

  v8 = [[PKPassTileImage alloc] _init];
  objc_storeStrong(v8 + 2, self->_symbolName);
  v8[3] = self->_tintColor;
  *(v8 + 9) = self->_hasColorContent;
  if (!self->_symbolName)
  {
    imageName = self->_imageName;
    if (imageName)
    {
      v10 = [PKImage imageNamed:imageName inBundle:v6 screenScale:0 suffix:0.0];
      if (v10 || ([PKImage imageNamed:self->_imageName inBundle:v7 screenScale:0 suffix:0.0], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v8[4];
        v8[4] = v10;
        v12 = v10;

        v13 = [v12 imageHash];
        v14 = v8[5];
        v8[5] = v13;
      }
    }
  }

  *(v8 + 8) = 1;

  return v8;
}

- (PKPassTileImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassTileImage *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageHash"];
    imageHash = v5->_imageHash;
    v5->_imageHash = v10;

    v5->_hasColorContent = [v4 decodeBoolForKey:@"hasColorContent"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    PKSemanticColorFromString(v12, &v5->_tintColor);

    v5->_resolved = 1;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (!self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileImage attempting unresolved XPC transfer."];
  }

  [v5 encodeObject:self->_symbolName forKey:@"symbolName"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_imageHash forKey:@"imageHash"];
  v4 = PKSemanticColorToString(self->_tintColor);
  [v5 encodeObject:v4 forKey:@"tintColor"];

  [v5 encodeBool:self->_hasColorContent forKey:@"hasColorContent"];
}

- (unint64_t)hash
{
  [(NSString *)self->_symbolName hash];
  if (self->_resolved)
  {
    imageHash = self->_imageHash;
    if (imageHash)
    {
      [(NSData *)imageHash bytes];
      [(NSData *)self->_imageHash length];
      SipHash();
    }
  }

  else
  {
    [(NSString *)self->_imageName hash];
  }

  return SipHash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v6 = [(PKPassTileImage *)self _isEqual:v4];
  }

  return v6;
}

- (uint64_t)_isEqual:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(v3 + 8) != *(a1 + 8) || v3[3] != *(a1 + 24) || *(v3 + 9) != *(a1 + 9))
    {
      goto LABEL_27;
    }

    v5 = *(a1 + 16);
    v6 = v3[2];
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v6 || !v7)
      {

        goto LABEL_27;
      }

      v9 = [v6 isEqualToString:v7];

      if (!v9)
      {
        goto LABEL_27;
      }
    }

    if (*(a1 + 8) == 1)
    {
      v10 = v4[5];
      v11 = *(a1 + 40);
      if (v10 && v11)
      {
        if (([v10 isEqual:?] & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v10 == v11)
      {
LABEL_25:
        a1 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = v4[7];
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {

        goto LABEL_25;
      }

      if (v13 && v14)
      {
        v16 = [v13 isEqualToString:v14];

        if (!v16)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

LABEL_27:
    a1 = 0;
  }

LABEL_28:

  return a1;
}

- (BOOL)isEqualToUnresolvedImage:(id)a3
{
  if (self->_resolved)
  {
    return 0;
  }

  else
  {
    return [(PKPassTileImage *)self _isEqual:a3];
  }
}

@end