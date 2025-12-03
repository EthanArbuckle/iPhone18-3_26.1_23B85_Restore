@interface PKPaymentSetupMoreInfoItem
- (PKPaymentSetupMoreInfoItem)initWithCoder:(id)coder;
- (PKPaymentSetupMoreInfoItem)initWithMoreInfoDictionary:(id)dictionary imageData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateActionStrings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentSetupMoreInfoItem

- (PKPaymentSetupMoreInfoItem)initWithMoreInfoDictionary:(id)dictionary imageData:(id)data
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dataCopy = data;
  v49.receiver = self;
  v49.super_class = PKPaymentSetupMoreInfoItem;
  v8 = [(PKPaymentSetupMoreInfoItem *)&v49 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"title"];
    v10 = [v9 copy];
    title = v8->_title;
    v8->_title = v10;

    v12 = [dictionaryCopy PKStringForKey:@"body"];
    v13 = [v12 copy];
    body = v8->_body;
    v8->_body = v13;

    v15 = [dictionaryCopy PKURLForKey:@"imageURL"];
    v16 = [v15 copy];
    imageURL = v8->_imageURL;
    v8->_imageURL = v16;

    v18 = [dataCopy copy];
    imageData = v8->_imageData;
    v8->_imageData = v18;

    v20 = [dictionaryCopy PKURLForKey:@"linkURL"];
    v21 = [v20 copy];
    linkURL = v8->_linkURL;
    v8->_linkURL = v21;

    v23 = [dictionaryCopy PKStringForKey:@"linkText"];
    v24 = [v23 copy];
    linkText = v8->_linkText;
    v8->_linkText = v24;

    v26 = v8->_linkURL;
    if ((v26 == 0) != (v8->_linkText == 0))
    {
      v27 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = "linkText missing";
        if (!v26)
        {
          v28 = "linkURL missing or malformed";
        }

        *buf = 136315138;
        v51 = v28;
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "more info link invalid: %s", buf, 0xCu);
      }

      v29 = v8->_linkText;
      v8->_linkText = 0;

      v30 = v8->_linkURL;
      v8->_linkURL = 0;
    }

    v31 = [dictionaryCopy PKStringForKey:@"type"];
    v32 = v31;
    if (v31)
    {
      v33 = PKPaymentSetupMoreInfoItemTypeFromDescription(v31);
    }

    else
    {
      v33 = 2;
    }

    v8->_type = v33;
    v34 = [dictionaryCopy PKStringForKey:@"nextAction"];
    v35 = [v34 copy];
    nextActionOverride = v8->_nextActionOverride;
    v8->_nextActionOverride = v35;

    v37 = [dictionaryCopy PKStringForKey:@"doneAction"];
    v38 = [v37 copy];
    doneActionOverride = v8->_doneActionOverride;
    v8->_doneActionOverride = v38;

    v40 = [dictionaryCopy PKStringForKey:@"altAction"];
    v41 = [v40 copy];
    alternativeActionOverride = v8->_alternativeActionOverride;
    v8->_alternativeActionOverride = v41;

    v43 = [dictionaryCopy PKNumberForKey:@"hideAltAction"];
    v44 = v43;
    if (v43)
    {
      bOOLValue = [v43 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v8->_hideAlternativeAction = bOOLValue;
    v46 = [dictionaryCopy PKDictionaryForKey:@"reportingMetadata"];
    reportingMetadata = v8->_reportingMetadata;
    v8->_reportingMetadata = v46;

    [(PKPaymentSetupMoreInfoItem *)v8 _updateActionStrings];
  }

  return v8;
}

- (void)_updateActionStrings
{
  v3 = PKLocalizedPaymentString(&cfstr_Next.isa, 0);
  nextAction = self->_nextAction;
  self->_nextAction = v3;

  v5 = PKLocalizedString(&cfstr_Done.isa, 0);
  doneAction = self->_doneAction;
  self->_doneAction = v5;

  alternativeAction = self->_alternativeAction;
  self->_alternativeAction = 0;

  self->_hasAlternativeAction = 0;
  if ((self->_type - 1) <= 1)
  {
    v8 = PKLocalizedTransitString(&cfstr_ExpressTransit_5.isa, 0);
    v9 = self->_alternativeAction;
    self->_alternativeAction = v8;

    self->_hasAlternativeAction = !self->_hideAlternativeAction;
  }

  nextActionOverride = self->_nextActionOverride;
  if (nextActionOverride)
  {
    objc_storeStrong(&self->_nextAction, nextActionOverride);
    objc_storeStrong(&self->_doneAction, self->_doneActionOverride);
  }

  doneActionOverride = self->_doneActionOverride;
  if (doneActionOverride)
  {
    objc_storeStrong(&self->_doneAction, doneActionOverride);
  }

  alternativeActionOverride = self->_alternativeActionOverride;
  if (alternativeActionOverride)
  {

    objc_storeStrong(&self->_alternativeAction, alternativeActionOverride);
  }
}

- (PKPaymentSetupMoreInfoItem)initWithCoder:(id)coder
{
  v37 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKPaymentSetupMoreInfoItem;
  v5 = [(PKPaymentSetupMoreInfoItem *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDataKey"];
    imageData = v5->_imageData;
    v5->_imageData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkURL"];
    linkURL = v5->_linkURL;
    v5->_linkURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkText"];
    linkText = v5->_linkText;
    v5->_linkText = v16;

    v18 = v5->_linkURL;
    if ((v18 == 0) != (v5->_linkText == 0))
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "linkText missing";
        if (!v18)
        {
          v20 = "linkURL missing or malformed";
        }

        *buf = 136315138;
        v36 = v20;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "more info link invalid: %s", buf, 0xCu);
      }

      v21 = v5->_linkText;
      v5->_linkText = 0;

      v22 = v5->_linkURL;
      v5->_linkURL = 0;
    }

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentSetupMoreInfoItemTypeFromDescription(v23);

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextAction"];
    nextActionOverride = v5->_nextActionOverride;
    v5->_nextActionOverride = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneAction"];
    doneActionOverride = v5->_doneActionOverride;
    v5->_doneActionOverride = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altAction"];
    alternativeActionOverride = v5->_alternativeActionOverride;
    v5->_alternativeActionOverride = v28;

    v5->_hideAlternativeAction = [coderCopy decodeBoolForKey:@"hideAltAction"];
    v30 = objc_opt_class();
    v31 = [coderCopy decodeDictionaryWithKeysOfClass:v30 objectsOfClass:objc_opt_class() forKey:@"reportingMetadata"];
    reportingMetadata = v5->_reportingMetadata;
    v5->_reportingMetadata = v31;

    [(PKPaymentSetupMoreInfoItem *)v5 _updateActionStrings];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_imageURL forKey:@"imageURL"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageDataKey"];
  [coderCopy encodeObject:self->_linkURL forKey:@"linkURL"];
  [coderCopy encodeObject:self->_linkText forKey:@"linkText"];
  type = self->_type;
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79C4FD8[type];
  }

  [coderCopy encodeObject:v5 forKey:@"type"];
  [coderCopy encodeObject:self->_nextActionOverride forKey:@"nextAction"];
  [coderCopy encodeObject:self->_doneActionOverride forKey:@"doneAction"];
  [coderCopy encodeObject:self->_alternativeActionOverride forKey:@"altAction"];
  [coderCopy encodeBool:self->_hideAlternativeAction forKey:@"hideAltAction"];
  [coderCopy encodeObject:self->_reportingMetadata forKey:@"reportingMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_body copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSURL *)self->_imageURL copyWithZone:zone];
  v11 = *(v5 + 120);
  *(v5 + 120) = v10;

  v12 = [(NSData *)self->_imageData copyWithZone:zone];
  v13 = *(v5 + 128);
  *(v5 + 128) = v12;

  v14 = [(NSURL *)self->_linkURL copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSString *)self->_linkText copyWithZone:zone];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  *(v5 + 80) = self->_type;
  v18 = [(NSString *)self->_nextActionOverride copyWithZone:zone];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(NSString *)self->_doneActionOverride copyWithZone:zone];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v22 = [(NSString *)self->_alternativeActionOverride copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  *(v5 + 8) = self->_hideAlternativeAction;
  v24 = [(NSDictionary *)self->_reportingMetadata copyWithZone:zone];
  v25 = *(v5 + 112);
  *(v5 + 112) = v24;

  return v5;
}

@end