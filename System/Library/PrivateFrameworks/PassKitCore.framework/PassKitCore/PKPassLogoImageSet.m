@interface PKPassLogoImageSet
- (BOOL)isEqual:(id)a3;
- (PKPassLogoImageSet)initWithCoder:(id)a3;
- (PKPassLogoImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)preheatImages;
@end

@implementation PKPassLogoImageSet

- (PKPassLogoImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v32.receiver = self;
  v32.super_class = PKPassLogoImageSet;
  v13 = [(PKImageSet *)&v32 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
  v15 = [v10 passStyle];
  if ((v15 - 9) >= 2)
  {
    v31 = [PKImage imageNamed:@"logo" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLogoImageSet *)v13 setLogoImage:?];
  }

  else
  {
    v31 = [PKImage imageNamed:@"primaryLogo" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLogoImageSet *)v13 setLogoImage:?];
    if (v15 == 9)
    {
      v16 = [PKImage imageNamed:@"artwork" inBundle:v14 screenScale:v12 suffix:a5];
      if (v16)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = [PKImage imageNamed:@"background" inBundle:v14 screenScale:v12 suffix:a5];
LABEL_8:
  v30 = v16;
  [(PKPassLogoImageSet *)v13 setBackgroundImage:v16];
  v29 = [PKImage imageNamed:@"strip" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setStripImage:?];
  v17 = [PKImage imageNamed:@"footer" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setFooterImage:v17];
  v18 = [PKImage imageNamed:@"altImage" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setAltImage:v18];
  v19 = [PKImage imageNamed:@"secondaryLogo" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setSecondaryLogoImage:v19];
  v20 = [PKImage imageNamed:@"cardBackgroundCombined" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setCardBackgroundCombinedImage:v20];

  v21 = [(PKPassLogoImageSet *)v13 cardBackgroundCombinedImage];

  if (!v21)
  {
    v22 = [PKImage imageNamed:@"bankLogo" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLogoImageSet *)v13 setBankLogoImage:v22];

    v23 = [PKImage imageNamed:@"networkLogo" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLogoImageSet *)v13 setNetworkLogoImage:v23];

    v24 = [PKImage imageNamed:@"cobrandLogo" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLogoImageSet *)v13 setCobrandLogoImage:v24];

    v25 = [PKImage imageNamed:@"cardBackground" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLogoImageSet *)v13 setCardBackgroundImage:v25];
  }

  v26 = [PKImage imageNamed:@"compactBankLogoDark" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setCompactBankLogoDarkImage:v26];
  v27 = [PKImage imageNamed:@"compactBankLogoLight" inBundle:v14 screenScale:v12 suffix:a5];
  [(PKPassLogoImageSet *)v13 setCompactBankLogoLightImage:v27];

LABEL_11:
  return v13;
}

- (void)preheatImages
{
  [(PKImage *)self->_logoImage preheatBitmapData];
  [(PKImage *)self->_backgroundImage preheatBitmapData];
  [(PKImage *)self->_stripImage preheatBitmapData];
  [(PKImage *)self->_footerImage preheatBitmapData];
  [(PKImage *)self->_altImage preheatBitmapData];
  [(PKImage *)self->_bankLogoImage preheatBitmapData];
  [(PKImage *)self->_networkLogoImage preheatBitmapData];
  [(PKImage *)self->_cobrandLogoImage preheatBitmapData];
  [(PKImage *)self->_cardBackgroundImage preheatBitmapData];
  [(PKImage *)self->_cardBackgroundCombinedImage preheatBitmapData];
  [(PKImage *)self->_compactBankLogoDarkImage preheatBitmapData];
  [(PKImage *)self->_compactBankLogoLightImage preheatBitmapData];
  secondaryLogoImage = self->_secondaryLogoImage;

  [(PKImage *)secondaryLogoImage preheatBitmapData];
}

- (PKPassLogoImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PKPassLogoImageSet;
  v5 = [(PKImageSet *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundImage"];
    backgroundImage = v5->_backgroundImage;
    v5->_backgroundImage = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stripImage"];
    stripImage = v5->_stripImage;
    v5->_stripImage = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerImage"];
    footerImage = v5->_footerImage;
    v5->_footerImage = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altImage"];
    altImage = v5->_altImage;
    v5->_altImage = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankLogoImage"];
    bankLogoImage = v5->_bankLogoImage;
    v5->_bankLogoImage = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkLogoImage"];
    networkLogoImage = v5->_networkLogoImage;
    v5->_networkLogoImage = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cobrandLogoImage"];
    cobrandLogoImage = v5->_cobrandLogoImage;
    v5->_cobrandLogoImage = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardBackgroundImage"];
    cardBackgroundImage = v5->_cardBackgroundImage;
    v5->_cardBackgroundImage = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardBackgroundCombinedImage"];
    cardBackgroundCombinedImage = v5->_cardBackgroundCombinedImage;
    v5->_cardBackgroundCombinedImage = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailImage"];
    thumbnailImage = v5->_thumbnailImage;
    v5->_thumbnailImage = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compactBankLogoDarkImage"];
    compactBankLogoDarkImage = v5->_compactBankLogoDarkImage;
    v5->_compactBankLogoDarkImage = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compactBankLogoLightImage"];
    compactBankLogoLightImage = v5->_compactBankLogoLightImage;
    v5->_compactBankLogoLightImage = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryLogoImage"];
    secondaryLogoImage = v5->_secondaryLogoImage;
    v5->_secondaryLogoImage = v33;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPassLogoImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_logoImage forKey:@"logoImage"];
  [v4 encodeObject:self->_backgroundImage forKey:@"backgroundImage"];
  [v4 encodeObject:self->_stripImage forKey:@"stripImage"];
  [v4 encodeObject:self->_footerImage forKey:@"footerImage"];
  [v4 encodeObject:self->_altImage forKey:@"altImage"];
  [v4 encodeObject:self->_bankLogoImage forKey:@"bankLogoImage"];
  [v4 encodeObject:self->_networkLogoImage forKey:@"networkLogoImage"];
  [v4 encodeObject:self->_cobrandLogoImage forKey:@"cobrandLogoImage"];
  [v4 encodeObject:self->_cardBackgroundImage forKey:@"cardBackgroundImage"];
  [v4 encodeObject:self->_cardBackgroundCombinedImage forKey:@"cardBackgroundCombinedImage"];
  [v4 encodeObject:self->_thumbnailImage forKey:@"thumbnailImage"];
  [v4 encodeObject:self->_compactBankLogoDarkImage forKey:@"compactBankLogoDarkImage"];
  [v4 encodeObject:self->_compactBankLogoLightImage forKey:@"compactBankLogoLightImage"];
  [v4 encodeObject:self->_secondaryLogoImage forKey:@"secondaryLogoImage"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PKImageSet *)self _isSetImage:self->_logoImage equalToImage:v5[3]]&& [(PKImageSet *)self _isSetImage:self->_secondaryLogoImage equalToImage:v5[16]]&& [(PKImageSet *)self _isSetImage:self->_backgroundImage equalToImage:v5[4]]&& [(PKImageSet *)self _isSetImage:self->_stripImage equalToImage:v5[6]]&& [(PKImageSet *)self _isSetImage:self->_footerImage equalToImage:v5[7]]&& [(PKImageSet *)self _isSetImage:self->_altImage equalToImage:v5[8]]&& [(PKImageSet *)self _isSetImage:self->_bankLogoImage equalToImage:v5[9]]&& [(PKImageSet *)self _isSetImage:self->_networkLogoImage equalToImage:v5[10]]&& [(PKImageSet *)self _isSetImage:self->_cobrandLogoImage equalToImage:v5[11]]&& [(PKImageSet *)self _isSetImage:self->_cardBackgroundImage equalToImage:v5[12]]&& [(PKImageSet *)self _isSetImage:self->_cardBackgroundCombinedImage equalToImage:v5[13]]&& [(PKImageSet *)self _isSetImage:self->_compactBankLogoDarkImage equalToImage:v5[14]]&& [(PKImageSet *)self _isSetImage:self->_compactBankLogoLightImage equalToImage:v5[15]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v29 = [(PKImage *)self->_logoImage imageHash];
  v3 = [v29 hash];
  v28 = [(PKImage *)self->_secondaryLogoImage imageHash];
  v4 = [v28 hash] + v3;
  v27 = [(PKImage *)self->_backgroundImage imageHash];
  v5 = [v27 hash];
  v26 = [(PKImage *)self->_stripImage imageHash];
  v6 = v4 + v5 + [v26 hash];
  v25 = [(PKImage *)self->_footerImage imageHash];
  v7 = [v25 hash];
  v8 = [(PKImage *)self->_altImage imageHash];
  v9 = v7 + [v8 hash];
  v10 = [(PKImage *)self->_bankLogoImage imageHash];
  v11 = v6 + v9 + [v10 hash];
  v12 = [(PKImage *)self->_networkLogoImage imageHash];
  v13 = [v12 hash];
  v14 = [(PKImage *)self->_cobrandLogoImage imageHash];
  v15 = v13 + [v14 hash];
  v16 = [(PKImage *)self->_cardBackgroundImage imageHash];
  v17 = v15 + [v16 hash];
  v18 = [(PKImage *)self->_cardBackgroundCombinedImage imageHash];
  v24 = v11 + v17 + [v18 hash];
  v19 = [(PKImage *)self->_compactBankLogoDarkImage imageHash];
  v20 = [v19 hash];
  v21 = [(PKImage *)self->_compactBankLogoLightImage imageHash];
  v22 = v20 + [v21 hash];

  return v24 + v22;
}

@end