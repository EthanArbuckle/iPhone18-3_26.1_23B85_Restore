@interface PKPaymentSetupMoreInfoItem
- (PKPaymentSetupMoreInfoItem)initWithCoder:(id)a3;
- (PKPaymentSetupMoreInfoItem)initWithMoreInfoDictionary:(id)a3 imageData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updateActionStrings;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentSetupMoreInfoItem

- (PKPaymentSetupMoreInfoItem)initWithMoreInfoDictionary:(id)a3 imageData:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v49.receiver = self;
  v49.super_class = PKPaymentSetupMoreInfoItem;
  v8 = [(PKPaymentSetupMoreInfoItem *)&v49 init];
  if (v8)
  {
    v9 = [v6 PKStringForKey:@"title"];
    v10 = [v9 copy];
    title = v8->_title;
    v8->_title = v10;

    v12 = [v6 PKStringForKey:@"body"];
    v13 = [v12 copy];
    body = v8->_body;
    v8->_body = v13;

    v15 = [v6 PKURLForKey:@"imageURL"];
    v16 = [v15 copy];
    imageURL = v8->_imageURL;
    v8->_imageURL = v16;

    v18 = [v7 copy];
    imageData = v8->_imageData;
    v8->_imageData = v18;

    v20 = [v6 PKURLForKey:@"linkURL"];
    v21 = [v20 copy];
    linkURL = v8->_linkURL;
    v8->_linkURL = v21;

    v23 = [v6 PKStringForKey:@"linkText"];
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

    v31 = [v6 PKStringForKey:@"type"];
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
    v34 = [v6 PKStringForKey:@"nextAction"];
    v35 = [v34 copy];
    nextActionOverride = v8->_nextActionOverride;
    v8->_nextActionOverride = v35;

    v37 = [v6 PKStringForKey:@"doneAction"];
    v38 = [v37 copy];
    doneActionOverride = v8->_doneActionOverride;
    v8->_doneActionOverride = v38;

    v40 = [v6 PKStringForKey:@"altAction"];
    v41 = [v40 copy];
    alternativeActionOverride = v8->_alternativeActionOverride;
    v8->_alternativeActionOverride = v41;

    v43 = [v6 PKNumberForKey:@"hideAltAction"];
    v44 = v43;
    if (v43)
    {
      v45 = [v43 BOOLValue];
    }

    else
    {
      v45 = 1;
    }

    v8->_hideAlternativeAction = v45;
    v46 = [v6 PKDictionaryForKey:@"reportingMetadata"];
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

- (PKPaymentSetupMoreInfoItem)initWithCoder:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKPaymentSetupMoreInfoItem;
  v5 = [(PKPaymentSetupMoreInfoItem *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageDataKey"];
    imageData = v5->_imageData;
    v5->_imageData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkURL"];
    linkURL = v5->_linkURL;
    v5->_linkURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkText"];
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

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentSetupMoreInfoItemTypeFromDescription(v23);

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nextAction"];
    nextActionOverride = v5->_nextActionOverride;
    v5->_nextActionOverride = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneAction"];
    doneActionOverride = v5->_doneActionOverride;
    v5->_doneActionOverride = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altAction"];
    alternativeActionOverride = v5->_alternativeActionOverride;
    v5->_alternativeActionOverride = v28;

    v5->_hideAlternativeAction = [v4 decodeBoolForKey:@"hideAltAction"];
    v30 = objc_opt_class();
    v31 = [v4 decodeDictionaryWithKeysOfClass:v30 objectsOfClass:objc_opt_class() forKey:@"reportingMetadata"];
    reportingMetadata = v5->_reportingMetadata;
    v5->_reportingMetadata = v31;

    [(PKPaymentSetupMoreInfoItem *)v5 _updateActionStrings];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_title forKey:@"title"];
  [v6 encodeObject:self->_body forKey:@"body"];
  [v6 encodeObject:self->_imageURL forKey:@"imageURL"];
  [v6 encodeObject:self->_imageData forKey:@"imageDataKey"];
  [v6 encodeObject:self->_linkURL forKey:@"linkURL"];
  [v6 encodeObject:self->_linkText forKey:@"linkText"];
  type = self->_type;
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79C4FD8[type];
  }

  [v6 encodeObject:v5 forKey:@"type"];
  [v6 encodeObject:self->_nextActionOverride forKey:@"nextAction"];
  [v6 encodeObject:self->_doneActionOverride forKey:@"doneAction"];
  [v6 encodeObject:self->_alternativeActionOverride forKey:@"altAction"];
  [v6 encodeBool:self->_hideAlternativeAction forKey:@"hideAltAction"];
  [v6 encodeObject:self->_reportingMetadata forKey:@"reportingMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_body copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSURL *)self->_imageURL copyWithZone:a3];
  v11 = *(v5 + 120);
  *(v5 + 120) = v10;

  v12 = [(NSData *)self->_imageData copyWithZone:a3];
  v13 = *(v5 + 128);
  *(v5 + 128) = v12;

  v14 = [(NSURL *)self->_linkURL copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSString *)self->_linkText copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  *(v5 + 80) = self->_type;
  v18 = [(NSString *)self->_nextActionOverride copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(NSString *)self->_doneActionOverride copyWithZone:a3];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v22 = [(NSString *)self->_alternativeActionOverride copyWithZone:a3];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  *(v5 + 8) = self->_hideAlternativeAction;
  v24 = [(NSDictionary *)self->_reportingMetadata copyWithZone:a3];
  v25 = *(v5 + 112);
  *(v5 + 112) = v24;

  return v5;
}

@end