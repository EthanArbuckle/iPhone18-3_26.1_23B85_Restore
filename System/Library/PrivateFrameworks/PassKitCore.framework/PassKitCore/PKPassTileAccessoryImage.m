@interface PKPassTileAccessoryImage
+ (id)createAccessoryImageWithImage:(id)a3;
+ (id)createDefaultDisclosureAccessoryImage;
- (BOOL)_isEqual:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (PKPassTileAccessoryImage)initWithCoder:(id)a3;
- (id)createResolvedAccessoryWithBundle:(id)a3 privateBundle:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileAccessoryImage

+ (id)createAccessoryImageWithImage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___PKPassTileAccessoryImage;
    v6 = objc_msgSendSuper2(&v8, sel__createForType_resolved_, 2, 1);
    objc_storeStrong(v6 + 3, a3);
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

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassTileAccessoryImage;
  if ([(PKPassTileAccessory *)&v10 _setUpWithDictionary:v4])
  {
    v5 = [v4 PKDictionaryForKey:@"image"];
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

- (id)createResolvedAccessoryWithBundle:(id)a3 privateBundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = PKPassTileAccessoryImage;
  v6 = a4;
  v7 = a3;
  v8 = [(PKPassTileAccessory *)&v12 createResolvedAccessoryWithBundle:v7 privateBundle:v6];
  v9 = [(PKPassTileImage *)self->_image createResolvedImageWithBundle:v7 privateBundle:v6, v12.receiver, v12.super_class];

  v10 = v8[3];
  v8[3] = v9;

  return v8;
}

- (PKPassTileAccessoryImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassTileAccessoryImage;
  v5 = [(PKPassTileAccessory *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassTileAccessoryImage;
  v4 = a3;
  [(PKPassTileAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_image forKey:{@"image", v5.receiver, v5.super_class}];
}

- (unint64_t)hash
{
  v4.receiver = self;
  v4.super_class = PKPassTileAccessoryImage;
  v5 = [(PKPassTileAccessory *)&v4 hash];
  v6 = [(PKPassTileImage *)self->_image hash];
  return SipHash();
}

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassTileAccessoryImage;
  if ([(PKPassTileAccessory *)&v10 _isEqual:v4])
  {
    v5 = v4[3];
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