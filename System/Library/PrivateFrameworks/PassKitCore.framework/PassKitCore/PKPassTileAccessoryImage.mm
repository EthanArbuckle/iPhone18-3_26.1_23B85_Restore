@interface PKPassTileAccessoryImage
+ (id)createAccessoryImageWithImage:(id)image;
+ (id)createDefaultDisclosureAccessoryImage;
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileAccessoryImage)initWithCoder:(id)coder;
- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileAccessoryImage

+ (id)createAccessoryImageWithImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___PKPassTileAccessoryImage;
    v6 = objc_msgSendSuper2(&v8, sel__createForType_resolved_, 2, 1);
    objc_storeStrong(v6 + 3, image);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createDefaultDisclosureAccessoryImage
{
  v2 = +[PKPassTileImage _createDefaultDisclosureImage];
  v3 = [PKPassTileAccessory _createForType:2 resolved:1];
  [v3 setImage:v2];

  return v3;
}

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKPassTileAccessoryImage;
  if ([(PKPassTileAccessory *)&v10 _setUpWithDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy PKDictionaryForKey:@"image"];
    v6 = [PKPassTileImage _createForDictionary:v5];
    image = self->_image;
    self->_image = v6;

    v8 = self->_image != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v12.receiver = self;
  v12.super_class = PKPassTileAccessoryImage;
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  v8 = [(PKPassTileAccessory *)&v12 createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v9 = [(PKPassTileImage *)self->_image createResolvedImageWithBundle:bundleCopy privateBundle:privateBundleCopy, v12.receiver, v12.super_class];

  v10 = v8[3];
  v8[3] = v9;

  return v8;
}

- (PKPassTileAccessoryImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassTileAccessoryImage;
  v5 = [(PKPassTileAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileAccessoryImage;
  coderCopy = coder;
  [(PKPassTileAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_image forKey:{@"image", v5.receiver, v5.super_class}];
}

- (unint64_t)hash
{
  v4.receiver = self;
  v4.super_class = PKPassTileAccessoryImage;
  v5 = [(PKPassTileAccessory *)&v4 hash];
  v6 = [(PKPassTileImage *)self->_image hash];
  return SipHash();
}

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = PKPassTileAccessoryImage;
  if ([(PKPassTileAccessory *)&v10 _isEqual:equalCopy])
  {
    v5 = equalCopy[3];
    image = self->_image;
    if (v5)
    {
      v7 = image == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v5 == image;
    }

    else
    {
      v8 = [(PKPassTileImage *)v5 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end