@interface PKPassDisplayProfile
- (BOOL)showsBackgroundImage;
- (PKPassDisplayProfile)initWithCoder:(id)a3;
- (PKPassDisplayProfile)initWithDictionary:(id)a3 bundle:(id)a4;
- (int64_t)layoutMode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassDisplayProfile

- (BOOL)showsBackgroundImage
{
  v3 = [(PKPassDisplayProfile *)self passStyle];
  v4 = 0;
  if (v3 <= 9 && ((1 << v3) & 0x244) != 0)
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

- (PKPassDisplayProfile)initWithDictionary:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = PKPassDisplayProfile;
  v8 = [(PKDisplayProfile *)&v38 initWithDictionary:v6 bundle:v7];
  if (v8)
  {
    v9 = PKPassStyleForCardDictionary(v6, v7);
    [(PKPassDisplayProfile *)v8 setPassStyle:v9];
    v10 = [v6 PKColorForKey:@"backgroundColor"];
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
      v15 = [v6 PKColorForKey:@"secondaryBackgroundColor"];
      [(PKPassDisplayProfile *)v8 setSecondaryBackgroundColor:v15];
    }

    v16 = [v6 PKColorForKey:@"foregroundColor"];
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
    v21 = [v6 PKColorForKey:@"labelColor"];
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
    v25 = [v6 PKColorForKey:@"stripColor"];
    [(PKPassDisplayProfile *)v8 setStripColor:v25];

    v26 = [PKBarcode barcodesWithPassDictionary:v6 bundle:v7];
    v27 = [v26 firstObject];
    v28 = v27;
    if (v27)
    {
      -[PKPassDisplayProfile setTallCode:](v8, "setTallCode:", [v27 isTall]);
    }

    v29 = [v7 bundleURL];
    v30 = PKManifestHash(v29);
    [(PKPassDisplayProfile *)v8 setManifestHash:v30];

    if (v9 == 9)
    {
      v31 = [PKImage URLForImageNamed:@"artwork" inBundle:v7 scale:0];
      v8->_hasBackgroundImage = v31 != 0;
    }

    if (!v8->_hasBackgroundImage)
    {
      v32 = [PKImage URLForImageNamed:@"background" inBundle:v7 scale:0];
      v8->_hasBackgroundImage = v32 != 0;
    }

    v33 = [PKImage URLForImageNamed:@"strip" inBundle:v7 scale:0];
    v8->_hasStripImage = v33 != 0;

    -[PKPassDisplayProfile setSuppressesHeaderDarkening:](v8, "setSuppressesHeaderDarkening:", [v6 PKBoolForKey:@"suppressHeaderDarkening"]);
    v34 = [v6 PKColorForKey:@"footerBackgroundColor"];
    [(PKPassDisplayProfile *)v8 setFooterBackgroundColor:v34];

    v35 = [v6 PKBoolForKey:@"useAutomaticColors"];
    if (v9 == 9 && v35)
    {
      [(PKPassDisplayProfile *)v8 setSupportsAutomaticForegroundVibrancy:1];
      [(PKPassDisplayProfile *)v8 setSupportsAutomaticLabelVibrancy:1];
    }
  }

  return v8;
}

- (PKPassDisplayProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPassDisplayProfile;
  v5 = [(PKDisplayProfile *)&v21 initWithCoder:v4];
  if (v5)
  {
    v5->_passStyle = [v4 decodeIntegerForKey:@"passStyle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryBackgroundColor"];
    secondaryBackgroundColor = v5->_secondaryBackgroundColor;
    v5->_secondaryBackgroundColor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    foregroundColor = v5->_foregroundColor;
    v5->_foregroundColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"labelColor"];
    labelColor = v5->_labelColor;
    v5->_labelColor = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stripColor"];
    stripColor = v5->_stripColor;
    v5->_stripColor = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v16;

    v5->_tallCode = [v4 decodeBoolForKey:@"tallCode"];
    v5->_hasBackgroundImage = [v4 decodeBoolForKey:@"hasBackgroundImage"];
    v5->_hasStripImage = [v4 decodeBoolForKey:@"hasStripImage"];
    v5->_supportsAutomaticForegroundVibrancy = [v4 decodeBoolForKey:@"supportsAutomaticForegroundVibrancy"];
    v5->_supportsAutomaticLabelVibrancy = [v4 decodeBoolForKey:@"supportsAutomaticLabelVibrancy"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerBackgroundColor"];
    footerBackgroundColor = v5->_footerBackgroundColor;
    v5->_footerBackgroundColor = v18;

    v5->_suppressesHeaderDarkening = [v4 decodeBoolForKey:@"suppressesHeaderDarkening"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassDisplayProfile;
  v4 = a3;
  [(PKDisplayProfile *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_passStyle forKey:{@"passStyle", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [v4 encodeObject:self->_secondaryBackgroundColor forKey:@"secondaryBackgroundColor"];
  [v4 encodeObject:self->_foregroundColor forKey:@"foregroundColor"];
  [v4 encodeObject:self->_labelColor forKey:@"labelColor"];
  [v4 encodeObject:self->_stripColor forKey:@"stripColor"];
  [v4 encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [v4 encodeBool:self->_tallCode forKey:@"tallCode"];
  [v4 encodeBool:self->_hasBackgroundImage forKey:@"hasBackgroundImage"];
  [v4 encodeBool:self->_hasStripImage forKey:@"hasStripImage"];
  [v4 encodeBool:self->_supportsAutomaticForegroundVibrancy forKey:@"supportsAutomaticForegroundVibrancy"];
  [v4 encodeBool:self->_supportsAutomaticLabelVibrancy forKey:@"supportsAutomaticLabelVibrancy"];
  [v4 encodeObject:self->_footerBackgroundColor forKey:@"footerBackgroundColor"];
  [v4 encodeBool:self->_suppressesHeaderDarkening forKey:@"suppressesHeaderDarkening"];
}

@end