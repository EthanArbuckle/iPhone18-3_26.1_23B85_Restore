@interface PKPhysicalCardArtworkOption
- (BOOL)isEqual:(id)a3;
- (PKPhysicalCardArtworkOption)initWithCoder:(id)a3;
- (PKPhysicalCardArtworkOption)initWithDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setFrontFaceImage:(id)a3;
@end

@implementation PKPhysicalCardArtworkOption

- (PKPhysicalCardArtworkOption)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKPhysicalCardArtworkOption;
  v5 = [(PKPhysicalCardArtworkOption *)&v22 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKURLForKey:@"frontFaceImageURL"];
    frontFaceImageURL = v5->_frontFaceImageURL;
    v5->_frontFaceImageURL = v8;

    v5->_minimumEstimatedShippingTime = [v4 PKIntegerForKey:@"minimumEstimatedShippingTime"];
    v5->_maximumEstimatedShippingTime = [v4 PKIntegerForKey:@"maximumEstimatedShippingTime"];
    v10 = [v4 PKStringForKey:@"deliveryUnit"];
    v11 = [v10 lowercaseString];
    v12 = v11;
    v13 = 0;
    if (v11 == @"days" || !v11)
    {
      goto LABEL_12;
    }

    v14 = [(__CFString *)v11 isEqualToString:@"days"];

    if ((v14 & 1) == 0)
    {
      v15 = v12;
      if (v15 == @"weeks" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"weeks"], v16, (v17 & 1) != 0))
      {
        v13 = 1;
        goto LABEL_12;
      }

      v18 = v16;
      if (v18 == @"months" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"months"], v19, v20))
      {
        v13 = 2;
        goto LABEL_12;
      }
    }

    v13 = 0;
LABEL_12:

    v5->_shippingTimeUnit = v13;
    v5->_optionUnavailable = [v4 PKBoolForKey:@"notAvailable"];
  }

  return v5;
}

- (void)setFrontFaceImage:(id)a3
{
  v5 = a3;
  frontFaceImage = self->_frontFaceImage;
  p_frontFaceImage = &self->_frontFaceImage;
  if (frontFaceImage != v5)
  {
    v8 = v5;
    objc_storeStrong(p_frontFaceImage, a3);
    v5 = v8;
  }
}

- (PKPhysicalCardArtworkOption)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPhysicalCardArtworkOption;
  v5 = [(PKPhysicalCardArtworkOption *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frontFaceImageURL"];
    frontFaceImageURL = v5->_frontFaceImageURL;
    v5->_frontFaceImageURL = v8;

    v5->_minimumEstimatedShippingTime = [v4 decodeIntegerForKey:@"minimumEstimatedShippingTime"];
    v5->_maximumEstimatedShippingTime = [v4 decodeIntegerForKey:@"maximumEstimatedShippingTime"];
    v5->_shippingTimeUnit = [v4 decodeIntegerForKey:@"deliveryUnit"];
    v5->_optionUnavailable = [v4 decodeBoolForKey:@"notAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_frontFaceImageURL forKey:@"frontFaceImageURL"];
  [v5 encodeInteger:self->_minimumEstimatedShippingTime forKey:@"minimumEstimatedShippingTime"];
  [v5 encodeInteger:self->_maximumEstimatedShippingTime forKey:@"maximumEstimatedShippingTime"];
  [v5 encodeInteger:self->_shippingTimeUnit forKey:@"deliveryUnit"];
  [v5 encodeBool:self->_optionUnavailable forKey:@"notAvailable"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  v6 = v4[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_16;
  }

  frontFaceImageURL = self->_frontFaceImageURL;
  v8 = v4[3];
  if (!frontFaceImageURL || !v8)
  {
    if (frontFaceImageURL == v8)
    {
      goto LABEL_12;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (([(NSURL *)frontFaceImageURL isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (self->_minimumEstimatedShippingTime != v4[4] || self->_maximumEstimatedShippingTime != v4[5] || self->_shippingTimeUnit != v4[6])
  {
    goto LABEL_16;
  }

  v9 = self->_optionUnavailable == *(v4 + 8);
LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_frontFaceImageURL];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_minimumEstimatedShippingTime - v4 + 32 * v4;
  v6 = self->_maximumEstimatedShippingTime - v5 + 32 * v5;
  v7 = self->_shippingTimeUnit - v6 + 32 * v6;
  v8 = self->_optionUnavailable - v7 + 32 * v7;

  return v8;
}

@end