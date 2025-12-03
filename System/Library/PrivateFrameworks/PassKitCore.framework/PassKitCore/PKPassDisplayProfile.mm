@interface PKPassDisplayProfile
- (BOOL)showsBackgroundImage;
- (PKPassDisplayProfile)initWithCoder:(id)coder;
- (PKPassDisplayProfile)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (int64_t)layoutMode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassDisplayProfile

- (BOOL)showsBackgroundImage
{
  passStyle = [(PKPassDisplayProfile *)self passStyle];
  v4 = 0;
  if (passStyle <= 9 && ((1 << passStyle) & 0x244) != 0)
  {
    return self->_hasBackgroundImage;
  }

  return v4;
}

- (int64_t)layoutMode
{
  v3 = PKScreenSize();

  return [(PKPassDisplayProfile *)self layoutModeForScreenSize:v3];
}

- (PKPassDisplayProfile)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v38.receiver = self;
  v38.super_class = PKPassDisplayProfile;
  v8 = [(PKDisplayProfile *)&v38 initWithDictionary:dictionaryCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = PKPassStyleForCardDictionary(dictionaryCopy, bundleCopy);
    [(PKPassDisplayProfile *)v8 setPassStyle:v9];
    v10 = [dictionaryCopy PKColorForKey:@"backgroundColor"];
    if (!v10)
    {
      if (v9 == 6)
      {
        v11 = 0.556862745;
        v12 = 0.576470588;
        v13 = 1.0;
        v14 = 0.556862745;
      }

      else
      {
        v11 = 1.0;
        v14 = 1.0;
        v12 = 1.0;
        v13 = 1.0;
      }

      v10 = [PKColor colorWithR:v11 G:v14 B:v12 A:v13];
    }

    [(PKPassDisplayProfile *)v8 setBackgroundColor:v10];
    if (v9 == 7)
    {
      v15 = [dictionaryCopy PKColorForKey:@"secondaryBackgroundColor"];
      [(PKPassDisplayProfile *)v8 setSecondaryBackgroundColor:v15];
    }

    v16 = [dictionaryCopy PKColorForKey:@"foregroundColor"];
    if (!v16)
    {
      if (v9 == 6)
      {
        [v10 luminance];
        if (v17 > 0.45)
        {
          v18 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
        }

        else
        {
          v18 = 1.0;
          v19 = 1.0;
          v20 = 1.0;
        }

        v16 = [PKColor colorWithR:v18 G:v19 B:v20 A:1.0];
      }

      else
      {
        if (v9 == 9)
        {
          [(PKPassDisplayProfile *)v8 setSupportsAutomaticForegroundVibrancy:1];
        }

        v16 = 0;
      }
    }

    [(PKPassDisplayProfile *)v8 setForegroundColor:v16];
    v21 = [dictionaryCopy PKColorForKey:@"labelColor"];
    if (!v21)
    {
      if (v9 == 9)
      {
        [(PKPassDisplayProfile *)v8 setSupportsAutomaticLabelVibrancy:1];
        v22 = 1.0;
        v23 = 1.0;
        v24 = 1.0;
      }

      else
      {
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
      }

      v21 = [PKColor colorWithR:v22 G:v23 B:v24 A:1.0];
    }

    v37 = v10;
    [(PKPassDisplayProfile *)v8 setLabelColor:v21];
    v25 = [dictionaryCopy PKColorForKey:@"stripColor"];
    [(PKPassDisplayProfile *)v8 setStripColor:v25];

    v26 = [PKBarcode barcodesWithPassDictionary:dictionaryCopy bundle:bundleCopy];
    firstObject = [v26 firstObject];
    v28 = firstObject;
    if (firstObject)
    {
      -[PKPassDisplayProfile setTallCode:](v8, "setTallCode:", [firstObject isTall]);
    }

    bundleURL = [bundleCopy bundleURL];
    v30 = PKManifestHash(bundleURL);
    [(PKPassDisplayProfile *)v8 setManifestHash:v30];

    if (v9 == 9)
    {
      v31 = [PKImage URLForImageNamed:@"artwork" inBundle:bundleCopy scale:0];
      v8->_hasBackgroundImage = v31 != 0;
    }

    if (!v8->_hasBackgroundImage)
    {
      v32 = [PKImage URLForImageNamed:@"background" inBundle:bundleCopy scale:0];
      v8->_hasBackgroundImage = v32 != 0;
    }

    v33 = [PKImage URLForImageNamed:@"strip" inBundle:bundleCopy scale:0];
    v8->_hasStripImage = v33 != 0;

    -[PKPassDisplayProfile setSuppressesHeaderDarkening:](v8, "setSuppressesHeaderDarkening:", [dictionaryCopy PKBoolForKey:@"suppressHeaderDarkening"]);
    v34 = [dictionaryCopy PKColorForKey:@"footerBackgroundColor"];
    [(PKPassDisplayProfile *)v8 setFooterBackgroundColor:v34];

    v35 = [dictionaryCopy PKBoolForKey:@"useAutomaticColors"];
    if (v9 == 9 && v35)
    {
      [(PKPassDisplayProfile *)v8 setSupportsAutomaticForegroundVibrancy:1];
      [(PKPassDisplayProfile *)v8 setSupportsAutomaticLabelVibrancy:1];
    }
  }

  return v8;
}

- (PKPassDisplayProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKPassDisplayProfile;
  v5 = [(PKDisplayProfile *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_passStyle = [coderCopy decodeIntegerForKey:@"passStyle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryBackgroundColor"];
    secondaryBackgroundColor = v5->_secondaryBackgroundColor;
    v5->_secondaryBackgroundColor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    foregroundColor = v5->_foregroundColor;
    v5->_foregroundColor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labelColor"];
    labelColor = v5->_labelColor;
    v5->_labelColor = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stripColor"];
    stripColor = v5->_stripColor;
    v5->_stripColor = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v16;

    v5->_tallCode = [coderCopy decodeBoolForKey:@"tallCode"];
    v5->_hasBackgroundImage = [coderCopy decodeBoolForKey:@"hasBackgroundImage"];
    v5->_hasStripImage = [coderCopy decodeBoolForKey:@"hasStripImage"];
    v5->_supportsAutomaticForegroundVibrancy = [coderCopy decodeBoolForKey:@"supportsAutomaticForegroundVibrancy"];
    v5->_supportsAutomaticLabelVibrancy = [coderCopy decodeBoolForKey:@"supportsAutomaticLabelVibrancy"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerBackgroundColor"];
    footerBackgroundColor = v5->_footerBackgroundColor;
    v5->_footerBackgroundColor = v18;

    v5->_suppressesHeaderDarkening = [coderCopy decodeBoolForKey:@"suppressesHeaderDarkening"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassDisplayProfile;
  coderCopy = coder;
  [(PKDisplayProfile *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_passStyle forKey:{@"passStyle", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeObject:self->_secondaryBackgroundColor forKey:@"secondaryBackgroundColor"];
  [coderCopy encodeObject:self->_foregroundColor forKey:@"foregroundColor"];
  [coderCopy encodeObject:self->_labelColor forKey:@"labelColor"];
  [coderCopy encodeObject:self->_stripColor forKey:@"stripColor"];
  [coderCopy encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [coderCopy encodeBool:self->_tallCode forKey:@"tallCode"];
  [coderCopy encodeBool:self->_hasBackgroundImage forKey:@"hasBackgroundImage"];
  [coderCopy encodeBool:self->_hasStripImage forKey:@"hasStripImage"];
  [coderCopy encodeBool:self->_supportsAutomaticForegroundVibrancy forKey:@"supportsAutomaticForegroundVibrancy"];
  [coderCopy encodeBool:self->_supportsAutomaticLabelVibrancy forKey:@"supportsAutomaticLabelVibrancy"];
  [coderCopy encodeObject:self->_footerBackgroundColor forKey:@"footerBackgroundColor"];
  [coderCopy encodeBool:self->_suppressesHeaderDarkening forKey:@"suppressesHeaderDarkening"];
}

@end