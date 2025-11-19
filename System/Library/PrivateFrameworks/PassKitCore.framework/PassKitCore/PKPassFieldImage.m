@interface PKPassFieldImage
+ (id)createForDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (PKPassFieldImage)initWithCoder:(id)a3;
- (id)_init;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassFieldImage

+ (id)createForDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [PKPassFieldImage alloc];
  v13 = v11;
  v14 = v10;
  v15 = v9;
  if (!v12)
  {
    goto LABEL_13;
  }

  v12 = [(PKPassFieldImage *)v12 _init];
  if (v12)
  {
    v16 = [v13 PKStringForKey:@"symbolName"];
    symbolName = v12->_symbolName;
    v12->_symbolName = v16;

    v18 = [v13 PKStringForKey:@"imageName"];
    imageName = v12->_imageName;
    v12->_imageName = v18;

    if (v12->_symbolName || v12->_imageName)
    {
      v20 = [v13 PKStringForKey:@"tintColor"];
      PKSemanticColorFromString(v20, &v12->_tintColor);

      v21 = [v13 PKColorForKey:@"backgroundColor"];
      backgroundColor = v12->_backgroundColor;
      v12->_backgroundColor = v21;

      if (!v12->_symbolName)
      {
        v23 = v12->_imageName;
        if (v23)
        {
          v24 = [PKImage imageNamed:v23 inBundle:v14 screenScale:0 suffix:0.0];
          if (!v24)
          {
            v24 = [PKImage imageNamed:v12->_imageName inBundle:v15 screenScale:0 suffix:0.0];
          }

          image = v12->_image;
          v12->_image = v24;
          v26 = v24;

          v27 = [(PKImage *)v26 imageHash];
          imageHash = v12->_imageHash;
          v12->_imageHash = v27;
        }
      }

      v12->_allowInternalSymbols = a6 == 1;
      goto LABEL_11;
    }

LABEL_13:
    v29 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v12 = v12;
  v29 = v12;
LABEL_12:

  return v29;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassFieldImage;
  return [(PKPassFieldImage *)&v3 init];
}

- (PKPassFieldImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassFieldImage *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    PKSemanticColorFromString(v8, &v5->_tintColor);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageHash"];
    imageHash = v5->_imageHash;
    v5->_imageHash = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowInternalSymbols"];
    v5->_allowInternalSymbols = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  symbolName = self->_symbolName;
  v5 = a3;
  [v5 encodeObject:symbolName forKey:@"symbolName"];
  v6 = PKSemanticColorToString(self->_tintColor);
  [v5 encodeObject:v6 forKey:@"tintColor"];

  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_imageHash forKey:@"imageHash"];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowInternalSymbols];
  [v5 encodeObject:v7 forKey:@"allowInternalSymbols"];
}

- (unint64_t)hash
{
  [(NSString *)self->_symbolName hash];
  imageHash = self->_imageHash;
  if (imageHash)
  {
    [(NSData *)imageHash bytes];
    [(NSData *)self->_imageHash length];
    SipHash();
  }

  [(PKColor *)self->_backgroundColor hash];
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
    v7 = v4;
    v8 = v7;
    if (!self || v7[3] != self->_tintColor)
    {
      goto LABEL_22;
    }

    symbolName = self->_symbolName;
    v10 = v7[2];
    v11 = symbolName;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if (!v10 || !v11)
      {

        goto LABEL_22;
      }

      v13 = [(NSString *)v10 isEqualToString:v11];

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    v14 = v8[5];
    imageHash = self->_imageHash;
    if (v14 && imageHash)
    {
      if (([(NSData *)v14 isEqual:?]& 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v14 != imageHash)
    {
      goto LABEL_22;
    }

    v16 = v8[6];
    backgroundColor = self->_backgroundColor;
    if (v16 && backgroundColor)
    {
      if ([(PKColor *)v16 isEqual:?])
      {
LABEL_20:
        v6 = *(v8 + 8) == self->_allowInternalSymbols;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (v16 == backgroundColor)
    {
      goto LABEL_20;
    }

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

LABEL_24:

  return v6;
}

@end