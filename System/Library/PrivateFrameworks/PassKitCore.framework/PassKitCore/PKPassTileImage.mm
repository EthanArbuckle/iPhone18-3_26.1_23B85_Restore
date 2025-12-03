@interface PKPassTileImage
+ (id)_createDefaultDisclosureImage;
+ (id)_createForDictionary:(id)dictionary;
+ (id)createImageWithImage:(id)image tintColor:(int64_t)color hasColorContent:(BOOL)content;
+ (id)createWithSymbolName:(id)name contextMenuSymbolName:(id)symbolName tintColor:(int64_t)color;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnresolvedImage:(id)image;
- (PKPassTileImage)initWithCoder:(id)coder;
- (id)_init;
- (id)createResolvedImageWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (uint64_t)_isEqual:(uint64_t)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileImage

+ (id)_createForDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  dictionaryCopy = dictionary;
  _init = [PKPassTileImage alloc];
  v5 = dictionaryCopy;
  if (_init)
  {
    _init = [(PKPassTileImage *)_init _init];
    if (_init)
    {
      v6 = [v5 PKStringForKey:@"symbolName"];
      symbolName = _init->_symbolName;
      _init->_symbolName = v6;

      v8 = [v5 PKStringForKey:@"imageName"];
      imageName = _init->_imageName;
      _init->_imageName = v8;

      v10 = [v5 PKStringForKey:@"tintColor"];
      PKSemanticColorFromString(v10, &_init->_tintColor);
    }
  }

  return _init;
}

+ (id)_createDefaultDisclosureImage
{
  _init = [[PKPassTileImage alloc] _init];
  [_init setSymbolName:@"chevron.forward"];
  [_init setTintColor:3];
  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassTileImage;
  return [(PKPassTileImage *)&v3 init];
}

+ (id)createWithSymbolName:(id)name contextMenuSymbolName:(id)symbolName tintColor:(int64_t)color
{
  nameCopy = name;
  if (name)
  {
    symbolNameCopy = symbolName;
    v8 = nameCopy;
    nameCopy = [[PKPassTileImage alloc] _init];
    [nameCopy setSymbolName:v8];

    [nameCopy setContextMenuSymbolName:symbolNameCopy];
    [nameCopy setTintColor:color];
  }

  return nameCopy;
}

+ (id)createImageWithImage:(id)image tintColor:(int64_t)color hasColorContent:(BOOL)content
{
  imageCopy = image;
  if (imageCopy)
  {
    _init = [[PKPassTileImage alloc] _init];
    objc_storeStrong(_init + 4, image);
    _init[3] = color;
    imageHash = [imageCopy imageHash];
    v11 = _init[5];
    _init[5] = imageHash;

    *(_init + 9) = content;
    *(_init + 8) = 1;
  }

  else
  {
    _init = 0;
  }

  return _init;
}

- (id)createResolvedImageWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  bundleCopy = bundle;
  privateBundleCopy = privateBundle;
  if (self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileImage attempting double resolution."];
  }

  _init = [[PKPassTileImage alloc] _init];
  objc_storeStrong(_init + 2, self->_symbolName);
  _init[3] = self->_tintColor;
  *(_init + 9) = self->_hasColorContent;
  if (!self->_symbolName)
  {
    imageName = self->_imageName;
    if (imageName)
    {
      v10 = [PKImage imageNamed:imageName inBundle:bundleCopy screenScale:0 suffix:0.0];
      if (v10 || ([PKImage imageNamed:self->_imageName inBundle:privateBundleCopy screenScale:0 suffix:0.0], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = _init[4];
        _init[4] = v10;
        v12 = v10;

        imageHash = [v12 imageHash];
        v14 = _init[5];
        _init[5] = imageHash;
      }
    }
  }

  *(_init + 8) = 1;

  return _init;
}

- (PKPassTileImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKPassTileImage *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = _init->_symbolName;
    _init->_symbolName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = _init->_image;
    _init->_image = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageHash"];
    imageHash = _init->_imageHash;
    _init->_imageHash = v10;

    _init->_hasColorContent = [coderCopy decodeBoolForKey:@"hasColorContent"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    PKSemanticColorFromString(v12, &_init->_tintColor);

    _init->_resolved = 1;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPassTileImage attempting unresolved XPC transfer."];
  }

  [coderCopy encodeObject:self->_symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_imageHash forKey:@"imageHash"];
  v4 = PKSemanticColorToString(self->_tintColor);
  [coderCopy encodeObject:v4 forKey:@"tintColor"];

  [coderCopy encodeBool:self->_hasColorContent forKey:@"hasColorContent"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v6 = [(PKPassTileImage *)self _isEqual:equalCopy];
  }

  return v6;
}

- (uint64_t)_isEqual:(uint64_t)equal
{
  v3 = a2;
  v4 = v3;
  if (equal)
  {
    if (*(v3 + 8) != *(equal + 8) || v3[3] != *(equal + 24) || *(v3 + 9) != *(equal + 9))
    {
      goto LABEL_27;
    }

    v5 = *(equal + 16);
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

    if (*(equal + 8) == 1)
    {
      v10 = v4[5];
      v11 = *(equal + 40);
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
        equal = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = *(equal + 56);
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
    equal = 0;
  }

LABEL_28:

  return equal;
}

- (BOOL)isEqualToUnresolvedImage:(id)image
{
  if (self->_resolved)
  {
    return 0;
  }

  else
  {
    return [(PKPassTileImage *)self _isEqual:image];
  }
}

@end