@interface PKPassFieldImage
+ (id)createForDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (PKPassFieldImage)initWithCoder:(id)coder;
- (id)_init;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassFieldImage

+ (id)createForDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type
{
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  dictionaryCopy = dictionary;
  _init = [PKPassFieldImage alloc];
  v13 = dictionaryCopy;
  v14 = bundleCopy;
  v15 = privateBundleCopy;
  if (!_init)
  {
    goto LABEL_13;
  }

  _init = [(PKPassFieldImage *)_init _init];
  if (_init)
  {
    v16 = [v13 PKStringForKey:@"symbolName"];
    symbolName = _init->_symbolName;
    _init->_symbolName = v16;

    v18 = [v13 PKStringForKey:@"imageName"];
    imageName = _init->_imageName;
    _init->_imageName = v18;

    if (_init->_symbolName || _init->_imageName)
    {
      v20 = [v13 PKStringForKey:@"tintColor"];
      PKSemanticColorFromString(v20, &_init->_tintColor);

      v21 = [v13 PKColorForKey:@"backgroundColor"];
      backgroundColor = _init->_backgroundColor;
      _init->_backgroundColor = v21;

      if (!_init->_symbolName)
      {
        v23 = _init->_imageName;
        if (v23)
        {
          v24 = [PKImage imageNamed:v23 inBundle:v14 screenScale:0 suffix:0.0];
          if (!v24)
          {
            v24 = [PKImage imageNamed:_init->_imageName inBundle:v15 screenScale:0 suffix:0.0];
          }

          image = _init->_image;
          _init->_image = v24;
          v26 = v24;

          imageHash = [(PKImage *)v26 imageHash];
          imageHash = _init->_imageHash;
          _init->_imageHash = imageHash;
        }
      }

      _init->_allowInternalSymbols = type == 1;
      goto LABEL_11;
    }

LABEL_13:
    v29 = 0;
    goto LABEL_12;
  }

LABEL_11:
  _init = _init;
  v29 = _init;
LABEL_12:

  return v29;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassFieldImage;
  return [(PKPassFieldImage *)&v3 init];
}

- (PKPassFieldImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKPassFieldImage *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = _init->_symbolName;
    _init->_symbolName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    PKSemanticColorFromString(v8, &_init->_tintColor);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = _init->_image;
    _init->_image = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageHash"];
    imageHash = _init->_imageHash;
    _init->_imageHash = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = _init->_backgroundColor;
    _init->_backgroundColor = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowInternalSymbols"];
    _init->_allowInternalSymbols = [v15 BOOLValue];
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
  v6 = PKSemanticColorToString(self->_tintColor);
  [coderCopy encodeObject:v6 forKey:@"tintColor"];

  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_imageHash forKey:@"imageHash"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowInternalSymbols];
  [coderCopy encodeObject:v7 forKey:@"allowInternalSymbols"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
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