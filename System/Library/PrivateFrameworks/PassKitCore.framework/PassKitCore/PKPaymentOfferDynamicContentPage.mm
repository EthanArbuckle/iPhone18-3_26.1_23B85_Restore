@interface PKPaymentOfferDynamicContentPage
+ (id)postPurchaseChoosePlanDynamicContentPageForAmountString:(id)string merchantName:(id)name;
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferDynamicContentPage)initWithCoder:(id)coder;
- (PKPaymentOfferDynamicContentPage)initWithDictionary:(id)dictionary pageType:(unint64_t)type;
- (id)bodyLinkContent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferDynamicContentPage

- (PKPaymentOfferDynamicContentPage)initWithDictionary:(id)dictionary pageType:(unint64_t)type
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy PKStringForKey:@"title"];
  v8 = [dictionaryCopy PKStringForKey:@"subtitle"];
  v9 = [dictionaryCopy PKStringForKey:@"body"];
  v10 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"bodyLinks"];
  v11 = [dictionaryCopy PKStringForKey:@"primaryActionTitle"];
  v47 = [dictionaryCopy PKDictionaryForKey:@"primaryActionDetails"];
  v51 = [dictionaryCopy PKStringForKey:@"secondaryActionTitle"];
  v46 = [dictionaryCopy PKDictionaryForKey:@"secondaryActionDetails"];
  v12 = [dictionaryCopy PKDictionaryForKey:@"iconURL"];
  v48 = [dictionaryCopy PKDictionaryForKey:@"systemIcon"];
  v50 = [dictionaryCopy PKDictionaryForKey:@"footerContent"];
  v49 = [dictionaryCopy PKDictionaryForKey:@"altFooterContent"];
  v13 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"customLayout"];
  if (v7 || v8 || v9 || v11 || v51 || [v12 count] || objc_msgSend(v12, "count") || objc_msgSend(v50, "count") || objc_msgSend(v49, "count") || objc_msgSend(v13, "count") || objc_msgSend(v10, "count") || objc_msgSend(v48, "count") || objc_msgSend(v47, "count") || objc_msgSend(v46, "count"))
  {
    v56.receiver = self;
    v56.super_class = PKPaymentOfferDynamicContentPage;
    v14 = [(PKPaymentOfferDynamicContentPage *)&v56 init];
    v15 = v14;
    if (v14)
    {
      v45 = v13;
      v14->_pageType = type;
      objc_storeStrong(&v14->_title, v7);
      objc_storeStrong(&v15->_subtitle, v8);
      objc_storeStrong(&v15->_body, v9);
      objc_storeStrong(&v15->_primaryActionTitle, v11);
      if ([v47 count])
      {
        v16 = [[PKApplyFooterContentLink alloc] initWithDictionary:v47];
        primaryActionDetails = v15->_primaryActionDetails;
        v15->_primaryActionDetails = v16;
      }

      objc_storeStrong(&v15->_secondaryActionTitle, v51);
      if ([v46 count])
      {
        v18 = [[PKApplyFooterContentLink alloc] initWithDictionary:v46];
        secondaryActionDetails = v15->_secondaryActionDetails;
        v15->_secondaryActionDetails = v18;
      }

      if ([v12 count])
      {
        v20 = [[PKPaymentOfferDynamicContentIcon alloc] initWithDictionary:v12];
        iconURL = v15->_iconURL;
        v15->_iconURL = v20;
      }

      if ([v48 count])
      {
        v22 = [[PKSystemIconConfiguration alloc] initWithDictionary:v48];
        systemIcon = v15->_systemIcon;
        v15->_systemIcon = v22;
      }

      if ([v50 count])
      {
        v24 = [[PKApplyFooterContent alloc] initWithDictionary:v50];
        footerContent = v15->_footerContent;
        v15->_footerContent = v24;
      }

      if ([v49 count])
      {
        v26 = [[PKApplyFooterContent alloc] initWithDictionary:v49];
        altFooterContent = v15->_altFooterContent;
        v15->_altFooterContent = v26;
      }

      if ([v13 count])
      {
        v28 = [[PKPaymentOfferDynamicContentCustomLayout alloc] initWithArray:v13];
        customLayout = v15->_customLayout;
        v15->_customLayout = v28;
      }

      if ([v10 count])
      {
        v42 = v9;
        v43 = v8;
        v44 = v7;
        v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v41 = v10;
        v31 = v10;
        v32 = [v31 countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v53;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v53 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [[PKApplyFooterContentLink alloc] initWithDictionary:*(*(&v52 + 1) + 8 * i)];
              [v30 pk_safelyAddObject:v36];
            }

            v33 = [v31 countByEnumeratingWithState:&v52 objects:v57 count:16];
          }

          while (v33);
        }

        v37 = [v30 count];
        if (v37)
        {
          v37 = [v30 copy];
        }

        v8 = v43;
        v7 = v44;
        v9 = v42;
        v13 = v45;
        bodyLinks = v15->_bodyLinks;
        v15->_bodyLinks = v37;

        v10 = v41;
      }
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = PKPaymentOfferDynamicContentPageTypeToString(self->_pageType);
  [v3 setObject:v4 forKeyedSubscript:@"pageType"];

  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_subtitle forKeyedSubscript:@"subtitle"];
  [v3 setObject:self->_body forKeyedSubscript:@"body"];
  [v3 setObject:self->_primaryActionTitle forKeyedSubscript:@"primaryActionTitle"];
  dictionaryRepresentation = [(PKApplyFooterContentLink *)self->_primaryActionDetails dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"primaryActionDetails"];

  [v3 setObject:self->_secondaryActionTitle forKeyedSubscript:@"secondaryActionTitle"];
  dictionaryRepresentation2 = [(PKApplyFooterContentLink *)self->_secondaryActionDetails dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"secondaryActionDetails"];

  dictionaryRepresentation3 = [(PKPaymentOfferDynamicContentIcon *)self->_iconURL dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation3 forKeyedSubscript:@"iconURL"];

  dictionaryRepresentation4 = [(PKSystemIconConfiguration *)self->_systemIcon dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation4 forKeyedSubscript:@"systemIcon"];

  dictionaryRepresentation5 = [(PKApplyFooterContent *)self->_footerContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation5 forKeyedSubscript:@"footerContent"];

  dictionaryRepresentation6 = [(PKApplyFooterContent *)self->_altFooterContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation6 forKeyedSubscript:@"altFooterContent"];

  arrayRepresentation = [(PKPaymentOfferDynamicContentCustomLayout *)self->_customLayout arrayRepresentation];
  [v3 setObject:arrayRepresentation forKeyedSubscript:@"customLayout"];

  allObjects = [(NSSet *)self->_bodyLinks allObjects];
  v13 = [allObjects pk_createArrayBySafelyApplyingBlock:&__block_literal_global_185];
  [v3 setObject:v13 forKeyedSubscript:@"bodyLinks"];

  v14 = [v3 copy];

  return v14;
}

- (id)bodyLinkContent
{
  if (self->_body)
  {
    v3 = objc_alloc_init(PKApplyFooterContent);
    [(PKApplyFooterContent *)v3 setFooterText:self->_body];
    [(PKApplyFooterContent *)v3 setLinks:self->_bodyLinks];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)postPurchaseChoosePlanDynamicContentPageForAmountString:(id)string merchantName:(id)name
{
  v4 = 0;
  if (string && name)
  {
    nameCopy = name;
    stringCopy = string;
    v4 = objc_alloc_init(PKPaymentOfferDynamicContentPage);
    v8 = PKLocalizedPaymentOffersString(&cfstr_TransactionNot.isa, 0);
    [(PKPaymentOfferDynamicContentPage *)v4 setTitle:v8];

    v9 = PKLocalizedPaymentOffersString(&cfstr_TransactionDet_10.isa, &cfstr_12_0.isa, nameCopy, stringCopy);

    [(PKPaymentOfferDynamicContentPage *)v4 setBody:v9];
    v10 = PKLocalizedPaymentOffersString(&cfstr_TransactionDet_11.isa, 0);
    [(PKPaymentOfferDynamicContentPage *)v4 setPrimaryActionTitle:v10];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        title = v6->_title;
        v8 = self->_title;
        v9 = title;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_40;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_41;
          }
        }

        subtitle = v6->_subtitle;
        v8 = self->_subtitle;
        v14 = subtitle;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_40;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_41;
          }
        }

        body = v6->_body;
        v8 = self->_body;
        v17 = body;
        v10 = v17;
        if (v8 == v17)
        {
        }

        else
        {
          if (!v8 || !v17)
          {
            goto LABEL_40;
          }

          v18 = [(NSString *)v8 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_41;
          }
        }

        primaryActionTitle = v6->_primaryActionTitle;
        v8 = self->_primaryActionTitle;
        v20 = primaryActionTitle;
        v10 = v20;
        if (v8 == v20)
        {
        }

        else
        {
          if (!v8 || !v20)
          {
            goto LABEL_40;
          }

          v21 = [(NSString *)v8 isEqualToString:v20];

          if (!v21)
          {
            goto LABEL_41;
          }
        }

        primaryActionDetails = self->_primaryActionDetails;
        v23 = v6->_primaryActionDetails;
        if (primaryActionDetails && v23)
        {
          if (![(PKApplyFooterContentLink *)primaryActionDetails isEqual:?])
          {
            goto LABEL_41;
          }
        }

        else if (primaryActionDetails != v23)
        {
          goto LABEL_41;
        }

        secondaryActionTitle = v6->_secondaryActionTitle;
        v8 = self->_secondaryActionTitle;
        v25 = secondaryActionTitle;
        v10 = v25;
        if (v8 == v25)
        {

LABEL_45:
          secondaryActionDetails = self->_secondaryActionDetails;
          v29 = v6->_secondaryActionDetails;
          if (secondaryActionDetails && v29)
          {
            if (![(PKApplyFooterContentLink *)secondaryActionDetails isEqual:?])
            {
              goto LABEL_41;
            }
          }

          else if (secondaryActionDetails != v29)
          {
            goto LABEL_41;
          }

          iconURL = self->_iconURL;
          v31 = v6->_iconURL;
          if (iconURL && v31)
          {
            if (![(PKPaymentOfferDynamicContentIcon *)iconURL isEqual:?])
            {
              goto LABEL_41;
            }
          }

          else if (iconURL != v31)
          {
            goto LABEL_41;
          }

          systemIcon = self->_systemIcon;
          v33 = v6->_systemIcon;
          if (systemIcon && v33)
          {
            if (![(PKSystemIconConfiguration *)systemIcon isEqual:?])
            {
              goto LABEL_41;
            }
          }

          else if (systemIcon != v33)
          {
            goto LABEL_41;
          }

          footerContent = self->_footerContent;
          v35 = v6->_footerContent;
          if (footerContent && v35)
          {
            if (![(PKApplyFooterContent *)footerContent isEqual:?])
            {
              goto LABEL_41;
            }
          }

          else if (footerContent != v35)
          {
            goto LABEL_41;
          }

          altFooterContent = self->_altFooterContent;
          v37 = v6->_altFooterContent;
          if (altFooterContent && v37)
          {
            if (![(PKApplyFooterContent *)altFooterContent isEqual:?])
            {
              goto LABEL_41;
            }
          }

          else if (altFooterContent != v37)
          {
            goto LABEL_41;
          }

          customLayout = self->_customLayout;
          v39 = v6->_customLayout;
          if (customLayout && v39)
          {
            if (![(PKPaymentOfferDynamicContentCustomLayout *)customLayout isEqual:?])
            {
              goto LABEL_41;
            }
          }

          else if (customLayout != v39)
          {
            goto LABEL_41;
          }

          bodyLinks = self->_bodyLinks;
          v41 = v6->_bodyLinks;
          if (bodyLinks && v41)
          {
            if (([(NSSet *)bodyLinks isEqual:?]& 1) != 0)
            {
              goto LABEL_80;
            }
          }

          else if (bodyLinks == v41)
          {
LABEL_80:
            v12 = self->_pageType == v6->_pageType;
            goto LABEL_42;
          }

LABEL_41:
          v12 = 0;
LABEL_42:

          goto LABEL_43;
        }

        if (v8 && v25)
        {
          v26 = [(NSString *)v8 isEqualToString:v25];

          if (!v26)
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }

LABEL_40:

        goto LABEL_41;
      }
    }

    v12 = 0;
  }

LABEL_43:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_subtitle];
  [v3 safelyAddObject:self->_body];
  [v3 safelyAddObject:self->_primaryActionTitle];
  [v3 safelyAddObject:self->_primaryActionDetails];
  [v3 safelyAddObject:self->_secondaryActionTitle];
  [v3 safelyAddObject:self->_secondaryActionDetails];
  [v3 safelyAddObject:self->_iconURL];
  [v3 safelyAddObject:self->_systemIcon];
  [v3 safelyAddObject:self->_footerContent];
  [v3 safelyAddObject:self->_altFooterContent];
  [v3 safelyAddObject:self->_customLayout];
  [v3 safelyAddObject:self->_bodyLinks];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_pageType - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = PKPaymentOfferDynamicContentPageTypeToString(self->_pageType);
  [v3 appendFormat:@"pageType: '%@'; ", v4];

  if (self->_title)
  {
    [v3 appendFormat:@"title: '%@'; ", self->_title];
  }

  if (self->_subtitle)
  {
    [v3 appendFormat:@"subtitle: '%@'; ", self->_subtitle];
  }

  if (self->_body)
  {
    [v3 appendFormat:@"body: '%@'; ", self->_body];
  }

  if (self->_primaryActionTitle)
  {
    [v3 appendFormat:@"primaryActionTitle: '%@'; ", self->_primaryActionTitle];
  }

  if (self->_primaryActionDetails)
  {
    [v3 appendFormat:@"primaryActionDetails: '%@'; ", self->_primaryActionDetails];
  }

  if (self->_secondaryActionTitle)
  {
    [v3 appendFormat:@"secondaryActionTitle: '%@'; ", self->_secondaryActionTitle];
  }

  if (self->_secondaryActionDetails)
  {
    [v3 appendFormat:@"secondaryActionDetails: '%@'; ", self->_secondaryActionDetails];
  }

  if (self->_iconURL)
  {
    [v3 appendFormat:@"iconURL: '%@'; ", self->_iconURL];
  }

  if (self->_systemIcon)
  {
    [v3 appendFormat:@"systemIcon: '%@'; ", self->_systemIcon];
  }

  if (self->_footerContent)
  {
    [v3 appendFormat:@"footerContent: '%@'; ", self->_footerContent];
  }

  if (self->_altFooterContent)
  {
    [v3 appendFormat:@"altFooterContent: '%@'; ", self->_altFooterContent];
  }

  if ([(NSSet *)self->_bodyLinks count])
  {
    [v3 appendFormat:@"bodyLinks: '%@'; ", self->_bodyLinks];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContentPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKPaymentOfferDynamicContentPage;
  v5 = [(PKPaymentOfferDynamicContentPage *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryActionTitle"];
    primaryActionTitle = v5->_primaryActionTitle;
    v5->_primaryActionTitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryActionDetails"];
    primaryActionDetails = v5->_primaryActionDetails;
    v5->_primaryActionDetails = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryActionTitle"];
    secondaryActionTitle = v5->_secondaryActionTitle;
    v5->_secondaryActionTitle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryActionDetails"];
    secondaryActionDetails = v5->_secondaryActionDetails;
    v5->_secondaryActionDetails = v18;

    v5->_pageType = [coderCopy decodeIntegerForKey:@"pageType"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerContent"];
    footerContent = v5->_footerContent;
    v5->_footerContent = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altFooterContent"];
    altFooterContent = v5->_altFooterContent;
    v5->_altFooterContent = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customLayout"];
    customLayout = v5->_customLayout;
    v5->_customLayout = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemIcon"];
    systemIcon = v5->_systemIcon;
    v5->_systemIcon = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"bodyLinks"];
    bodyLinks = v5->_bodyLinks;
    v5->_bodyLinks = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_primaryActionTitle forKey:@"primaryActionTitle"];
  [coderCopy encodeObject:self->_primaryActionDetails forKey:@"primaryActionDetails"];
  [coderCopy encodeObject:self->_secondaryActionTitle forKey:@"secondaryActionTitle"];
  [coderCopy encodeObject:self->_secondaryActionDetails forKey:@"secondaryActionDetails"];
  [coderCopy encodeInteger:self->_pageType forKey:@"pageType"];
  [coderCopy encodeObject:self->_footerContent forKey:@"footerContent"];
  [coderCopy encodeObject:self->_altFooterContent forKey:@"altFooterContent"];
  [coderCopy encodeObject:self->_customLayout forKey:@"customLayout"];
  [coderCopy encodeObject:self->_iconURL forKey:@"iconURL"];
  [coderCopy encodeObject:self->_systemIcon forKey:@"systemIcon"];
  [coderCopy encodeObject:self->_bodyLinks forKey:@"bodyLinks"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferDynamicContentPage allocWithZone:](PKPaymentOfferDynamicContentPage init];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  subtitle = v5->_subtitle;
  v5->_subtitle = v8;

  v10 = [(NSString *)self->_body copyWithZone:zone];
  body = v5->_body;
  v5->_body = v10;

  v12 = [(NSString *)self->_primaryActionTitle copyWithZone:zone];
  primaryActionTitle = v5->_primaryActionTitle;
  v5->_primaryActionTitle = v12;

  v14 = [(PKApplyFooterContentLink *)self->_primaryActionDetails copyWithZone:zone];
  primaryActionDetails = v5->_primaryActionDetails;
  v5->_primaryActionDetails = v14;

  v16 = [(NSString *)self->_secondaryActionTitle copyWithZone:zone];
  secondaryActionTitle = v5->_secondaryActionTitle;
  v5->_secondaryActionTitle = v16;

  v18 = [(PKApplyFooterContentLink *)self->_secondaryActionDetails copyWithZone:zone];
  secondaryActionDetails = v5->_secondaryActionDetails;
  v5->_secondaryActionDetails = v18;

  v20 = [(PKApplyFooterContent *)self->_footerContent copyWithZone:zone];
  footerContent = v5->_footerContent;
  v5->_footerContent = v20;

  v22 = [(PKApplyFooterContent *)self->_altFooterContent copyWithZone:zone];
  altFooterContent = v5->_altFooterContent;
  v5->_altFooterContent = v22;

  v24 = [(PKPaymentOfferDynamicContentCustomLayout *)self->_customLayout copyWithZone:zone];
  customLayout = v5->_customLayout;
  v5->_customLayout = v24;

  v26 = [(PKPaymentOfferDynamicContentIcon *)self->_iconURL copyWithZone:zone];
  iconURL = v5->_iconURL;
  v5->_iconURL = v26;

  v28 = [(PKSystemIconConfiguration *)self->_systemIcon copyWithZone:zone];
  systemIcon = v5->_systemIcon;
  v5->_systemIcon = v28;

  v30 = [(NSSet *)self->_bodyLinks copyWithZone:zone];
  bodyLinks = v5->_bodyLinks;
  v5->_bodyLinks = v30;

  v5->_pageType = self->_pageType;
  return v5;
}

@end