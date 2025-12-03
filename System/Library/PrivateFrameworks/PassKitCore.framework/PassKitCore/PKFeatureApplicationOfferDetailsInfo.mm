@interface PKFeatureApplicationOfferDetailsInfo
- (PKFeatureApplicationOfferDetailsInfo)initWithCoder:(id)coder;
- (PKFeatureApplicationOfferDetailsInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFeatureApplicationOfferDetailsInfo

- (PKFeatureApplicationOfferDetailsInfo)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = PKFeatureApplicationOfferDetailsInfo;
  v5 = [(PKFeatureApplicationOfferDetailsInfo *)&v35 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [dictionaryCopy PKStringForKey:@"title"];
  title = v5->_title;
  v5->_title = v6;

  v8 = [dictionaryCopy PKStringForKey:@"body"];
  body = v5->_body;
  v5->_body = v8;

  v10 = [dictionaryCopy PKStringForKey:@"primaryActionTitle"];
  primaryActionTitle = v5->_primaryActionTitle;
  v5->_primaryActionTitle = v10;

  v12 = [dictionaryCopy PKStringForKey:@"primaryActionIdentifier"];
  primaryActionIdentifier = v5->_primaryActionIdentifier;
  v5->_primaryActionIdentifier = v12;

  v14 = [dictionaryCopy PKStringForKey:@"secondaryActionTitle"];
  secondaryActionTitle = v5->_secondaryActionTitle;
  v5->_secondaryActionTitle = v14;

  v16 = [dictionaryCopy PKStringForKey:@"secondaryActionIdentifier"];
  secondaryActionIdentifier = v5->_secondaryActionIdentifier;
  v5->_secondaryActionIdentifier = v16;

  v18 = [dictionaryCopy PKStringForKey:@"disclosureTitle"];
  disclosureTitle = v5->_disclosureTitle;
  v5->_disclosureTitle = v18;

  v20 = [dictionaryCopy PKStringForKey:@"layout"];
  v21 = v20;
  if (v20 == @"table")
  {
    goto LABEL_5;
  }

  if (!v20)
  {
LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v22 = [@"table" isEqualToString:v20];

  if ((v22 & 1) == 0)
  {
    v24 = v21;
    if (v24 == @"text" || (v25 = v24, v26 = [@"text" isEqualToString:v24], v25, v26))
    {
      v23 = 2;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_5:
  v23 = 1;
LABEL_10:

  v5->_layout = v23;
  v27 = [dictionaryCopy PKDictionaryForKey:@"heroImage"];
  if (v27)
  {
    v28 = PKScreenScale();
    v29 = @"2x";
    if (v28 > 2.0)
    {
      v29 = @"3x";
    }

    v30 = v29;
    v31 = [v27 PKStringForKey:v30];
    heroImageURL = v5->_heroImageURL;
    v5->_heroImageURL = v31;

    if (!v5->_heroImageURL)
    {
      v33 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v30;
        _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "No valid imageURL found for scale: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v30 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "No imageURLs specified", buf, 2u);
    }
  }

LABEL_20:
  return v5;
}

- (PKFeatureApplicationOfferDetailsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKFeatureApplicationOfferDetailsInfo;
  v5 = [(PKFeatureApplicationOfferDetailsInfo *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryActionTitle"];
    primaryActionTitle = v5->_primaryActionTitle;
    v5->_primaryActionTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryActionIdentifier"];
    primaryActionIdentifier = v5->_primaryActionIdentifier;
    v5->_primaryActionIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryActionTitle"];
    secondaryActionTitle = v5->_secondaryActionTitle;
    v5->_secondaryActionTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryActionIdentifier"];
    secondaryActionIdentifier = v5->_secondaryActionIdentifier;
    v5->_secondaryActionIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disclosureTitle"];
    disclosureTitle = v5->_disclosureTitle;
    v5->_disclosureTitle = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heroImageURL"];
    heroImageURL = v5->_heroImageURL;
    v5->_heroImageURL = v20;

    v5->_layout = [coderCopy decodeIntegerForKey:@"layout"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_primaryActionTitle forKey:@"primaryActionTitle"];
  [coderCopy encodeObject:self->_primaryActionIdentifier forKey:@"primaryActionIdentifier"];
  [coderCopy encodeObject:self->_secondaryActionTitle forKey:@"secondaryActionTitle"];
  [coderCopy encodeObject:self->_secondaryActionIdentifier forKey:@"secondaryActionIdentifier"];
  [coderCopy encodeObject:self->_disclosureTitle forKey:@"disclosureTitle"];
  [coderCopy encodeObject:self->_heroImageURL forKey:@"heroImageURL"];
  [coderCopy encodeInteger:self->_layout forKey:@"layout"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"body: '%@'; ", self->_body];
  [v3 appendFormat:@"primaryActionIdentifier: '%@'; ", self->_primaryActionIdentifier];
  [v3 appendFormat:@"primaryActionTitle: '%@'; ", self->_primaryActionTitle];
  [v3 appendFormat:@"secondaryActionTitle: '%@'; ", self->_secondaryActionTitle];
  [v3 appendFormat:@"secondaryActionIdentifier: '%@'; ", self->_secondaryActionIdentifier];
  [v3 appendFormat:@"disclosureTitle: '%@'; ", self->_disclosureTitle];
  [v3 appendFormat:@"heroImageURL: '%@'; ", self->_heroImageURL];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_layout];
  [v3 appendFormat:@"layout: '%@'; ", v4];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFeatureApplicationOfferDetailsInfo allocWithZone:](PKFeatureApplicationOfferDetailsInfo init];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v6;

  v8 = [(NSString *)self->_body copyWithZone:zone];
  body = v5->_body;
  v5->_body = v8;

  v10 = [(NSString *)self->_primaryActionTitle copyWithZone:zone];
  primaryActionTitle = v5->_primaryActionTitle;
  v5->_primaryActionTitle = v10;

  v12 = [(NSString *)self->_primaryActionIdentifier copyWithZone:zone];
  primaryActionIdentifier = v5->_primaryActionIdentifier;
  v5->_primaryActionIdentifier = v12;

  v14 = [(NSString *)self->_secondaryActionTitle copyWithZone:zone];
  secondaryActionTitle = v5->_secondaryActionTitle;
  v5->_secondaryActionTitle = v14;

  v16 = [(NSString *)self->_secondaryActionIdentifier copyWithZone:zone];
  secondaryActionIdentifier = v5->_secondaryActionIdentifier;
  v5->_secondaryActionIdentifier = v16;

  v18 = [(NSString *)self->_disclosureTitle copyWithZone:zone];
  disclosureTitle = v5->_disclosureTitle;
  v5->_disclosureTitle = v18;

  v20 = [(NSString *)self->_heroImageURL copyWithZone:zone];
  heroImageURL = v5->_heroImageURL;
  v5->_heroImageURL = v20;

  v5->_layout = self->_layout;
  return v5;
}

@end