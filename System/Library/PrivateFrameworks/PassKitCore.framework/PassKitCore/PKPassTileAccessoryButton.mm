@interface PKPassTileAccessoryButton
+ (id)createWithTitle:(id)title spinnerEnabled:(BOOL)enabled;
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileAccessoryButton)initWithCoder:(id)coder;
- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileAccessoryButton

+ (id)createWithTitle:(id)title spinnerEnabled:(BOOL)enabled
{
  titleCopy = title;
  v6 = [PKPassTileAccessory _createForType:0 resolved:1];
  v7 = [titleCopy copy];

  v8 = v6[4];
  v6[4] = v7;

  *(v6 + 24) = enabled;

  return v6;
}

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassTileAccessoryButton;
  if (-[PKPassTileAccessory _setUpWithDictionary:](&v9, sel__setUpWithDictionary_, dictionaryCopy) && ([dictionaryCopy PKStringForKey:@"title"], v5 = objc_claimAutoreleasedReturnValue(), title = self->_title, self->_title = v5, title, self->_title))
  {
    self->_spinnerEnabled = [dictionaryCopy PKBoolForKey:@"spinnerEnabled"];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v12.receiver = self;
  v12.super_class = PKPassTileAccessoryButton;
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  v8 = [(PKPassTileAccessory *)&v12 createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v9 = PKLocalizedPassStringForPassBundle(self->_title, bundleCopy, privateBundleCopy);

  v10 = v8[4];
  v8[4] = v9;

  *(v8 + 24) = self->_spinnerEnabled;
  return v8;
}

- (PKPassTileAccessoryButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassTileAccessoryButton;
  v5 = [(PKPassTileAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v5->_spinnerEnabled = [coderCopy decodeBoolForKey:@"spinnerEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileAccessoryButton;
  coderCopy = coder;
  [(PKPassTileAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_spinnerEnabled forKey:@"spinnerEnabled"];
}

- (unint64_t)hash
{
  v4.receiver = self;
  v4.super_class = PKPassTileAccessoryButton;
  v5 = [(PKPassTileAccessory *)&v4 hash];
  v6 = [(NSString *)self->_title hash];
  spinnerEnabled = self->_spinnerEnabled;
  return SipHash();
}

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = PKPassTileAccessoryButton;
  if ([(PKPassTileAccessory *)&v14 _isEqual:equalCopy])
  {
    v5 = equalCopy;
    title = self->_title;
    v7 = v5[4];
    v8 = title;
    v9 = v8;
    if (v7 != v8)
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
      }

      else
      {
        v12 = [(NSString *)v7 isEqualToString:v8];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      v11 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v11 = *(v5 + 24) == self->_spinnerEnabled;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

@end