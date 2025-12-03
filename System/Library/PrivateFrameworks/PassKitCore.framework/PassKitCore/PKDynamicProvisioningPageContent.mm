@interface PKDynamicProvisioningPageContent
- (PKDynamicProvisioningPageContent)initWithDictonary:(id)dictonary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKDynamicProvisioningPageContent

- (PKDynamicProvisioningPageContent)initWithDictonary:(id)dictonary
{
  v109 = *MEMORY[0x1E69E9840];
  dictonaryCopy = dictonary;
  v104.receiver = self;
  v104.super_class = PKDynamicProvisioningPageContent;
  v5 = [(PKDynamicProvisioningPageContent *)&v104 init];
  if (!v5)
  {
    goto LABEL_76;
  }

  v6 = [dictonaryCopy PKStringForKey:@"identifier"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [dictonaryCopy PKStringForKey:@"contextIdentifier"];
  }

  p_identifier = &v5->_identifier;
  identifier = v5->_identifier;
  v5->_identifier = v8;

  v11 = [dictonaryCopy PKStringForKey:@"title"];
  title = v5->_title;
  v5->_title = v11;

  if (!v5->_title)
  {
    v13 = [dictonaryCopy PKStringForKey:@"contextLocalizedTitle"];
    v14 = v5->_title;
    v5->_title = v13;

    if (!v5->_title)
    {
      v15 = [dictonaryCopy PKStringForKey:@"localizedTitle"];
      v16 = v5->_title;
      v5->_title = v15;
    }
  }

  v17 = [dictonaryCopy PKStringForKey:@"description"];
  subtitle = v5->_subtitle;
  v5->_subtitle = v17;

  if (!v5->_subtitle)
  {
    v19 = [dictonaryCopy PKStringForKey:@"contextLocalizedDescription"];
    v20 = v5->_subtitle;
    v5->_subtitle = v19;

    if (!v5->_subtitle)
    {
      v21 = [dictonaryCopy PKStringForKey:@"localizedDescription"];
      v22 = v5->_subtitle;
      v5->_subtitle = v21;
    }
  }

  v23 = [dictonaryCopy PKStringForKey:@"altDescription"];
  altSubtitle = v5->_altSubtitle;
  v5->_altSubtitle = v23;

  if (!v5->_altSubtitle)
  {
    v25 = [dictonaryCopy PKStringForKey:@"contextLocalizedAltDescription"];
    v26 = v5->_altSubtitle;
    v5->_altSubtitle = v25;

    if (!v5->_altSubtitle)
    {
      v27 = [dictonaryCopy PKStringForKey:@"localizedAltDescription"];
      v28 = v5->_altSubtitle;
      v5->_altSubtitle = v27;
    }
  }

  v5->_altSubtitleTimeInterval = [dictonaryCopy PKIntegerForKey:@"contextAltDescriptionTimeInterval"];
  v29 = [dictonaryCopy PKStringForKey:@"contentAlignment"];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = [dictonaryCopy PKStringForKey:@"contentAlingment"];
  }

  v32 = v31;

  if ([v32 isEqualToString:@"center"])
  {
    v33 = 2;
  }

  else
  {
    v33 = 4;
  }

  v5->_contentAlignment = v33;
  v34 = [dictonaryCopy PKStringForKey:@"body"];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = [dictonaryCopy PKStringForKey:@"contextLocalizedBody"];
  }

  body = v5->_body;
  v5->_body = v36;

  v38 = [dictonaryCopy PKStringForKey:@"footnote"];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = [dictonaryCopy PKStringForKey:@"contextLocalizedFootnote"];
  }

  footnote = v5->_footnote;
  v5->_footnote = v40;

  v42 = [dictonaryCopy PKStringForKey:@"footnoteDisclosure"];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = [dictonaryCopy PKStringForKey:@"contextLocalizedFootnoteDisclosure"];
  }

  footnoteDisclosure = v5->_footnoteDisclosure;
  v5->_footnoteDisclosure = v44;

  v46 = [dictonaryCopy PKStringForKey:@"primaryActionTitle"];
  v47 = v46;
  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = [dictonaryCopy PKStringForKey:@"contextLocalizedPrimaryActionTitle"];
  }

  primaryActionTitle = v5->_primaryActionTitle;
  v5->_primaryActionTitle = v48;

  v50 = [dictonaryCopy PKStringForKey:@"altPrimaryActionTitle"];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = [dictonaryCopy PKStringForKey:@"contextLocalizedAltPrimaryActionTitle"];
  }

  altPrimaryActionTitle = v5->_altPrimaryActionTitle;
  v5->_altPrimaryActionTitle = v52;

  v54 = [dictonaryCopy PKStringForKey:@"primaryActionIdentifier"];
  v55 = v54;
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = [dictonaryCopy PKStringForKey:@"contextPrimaryActionIdentifier"];
  }

  primaryActionIdentifier = v5->_primaryActionIdentifier;
  v5->_primaryActionIdentifier = v56;

  v58 = [dictonaryCopy PKStringForKey:@"secondaryActionTitle"];
  v59 = v58;
  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = [dictonaryCopy PKStringForKey:@"contextLocalizedSecondaryActionTitle"];
  }

  secondaryActionTitle = v5->_secondaryActionTitle;
  v5->_secondaryActionTitle = v60;

  v62 = [dictonaryCopy PKStringForKey:@"secondaryActionIdentifier"];
  v63 = v62;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = [dictonaryCopy PKStringForKey:@"contextSecondaryActionIdentifier"];
  }

  secondaryActionIdentifier = v5->_secondaryActionIdentifier;
  v5->_secondaryActionIdentifier = v64;

  v66 = [dictonaryCopy PKStringForKey:@"disclosureTitle"];
  v67 = v66;
  if (v66)
  {
    v68 = v66;
  }

  else
  {
    v68 = [dictonaryCopy PKStringForKey:@"contextDisclosureTitle"];
  }

  disclosureTitle = v5->_disclosureTitle;
  v5->_disclosureTitle = v68;

  v70 = [dictonaryCopy PKStringForKey:@"layout"];
  v71 = v70;
  if (v70 == @"default")
  {
    goto LABEL_50;
  }

  if (!v70)
  {
    goto LABEL_54;
  }

  v72 = [(__CFString *)v70 isEqualToString:@"default"];

  if (v72)
  {
LABEL_50:
    v73 = 1;
    goto LABEL_55;
  }

  v74 = v71;
  if (v74 == @"compact" || (v75 = v74, v76 = [(__CFString *)v74 isEqualToString:@"compact"], v75, v76))
  {
    v73 = 2;
  }

  else
  {
LABEL_54:
    v73 = 0;
  }

LABEL_55:

  v5->_layout = v73;
  v5->_requiresExplicitPrimaryAction = [dictonaryCopy PKBoolForKey:@"requiresExplicitPrimaryAction"];
  v77 = [dictonaryCopy PKDictionaryForKey:@"heroImage"];
  if (v77 || ([dictonaryCopy PKDictionaryForKey:@"contextHeroImage"], (v77 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v78 = v77;
    v79 = PKScreenScale();
    v80 = @"2x";
    if (v79 > 2.0)
    {
      v80 = @"3x";
    }

    v81 = v80;
    v82 = [v78 PKStringForKey:v81];
    heroImageURL = v5->_heroImageURL;
    v5->_heroImageURL = v82;

    if (!v5->_heroImageURL)
    {
      v84 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = *p_identifier;
        *buf = 138412546;
        v106 = v85;
        v107 = 2112;
        v108 = v81;
        _os_log_impl(&dword_1AD337000, v84, OS_LOG_TYPE_DEFAULT, "No valid imageURL found for identifier: %@ with scale: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v78 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v103 = *p_identifier;
      *buf = 138412290;
      v106 = v103;
      _os_log_impl(&dword_1AD337000, v78, OS_LOG_TYPE_DEFAULT, "No imageURLs specified for identifier: %@", buf, 0xCu);
    }
  }

  v86 = [dictonaryCopy PKDictionaryForKey:@"learnMore"];
  if (v86 || ([dictonaryCopy PKDictionaryForKey:@"contextLearnMore"], (v86 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v87 = v86;
    v88 = [[PKDynamicProvisioningPageLearnMoreContent alloc] initWithDictionary:v86];
    learnMore = v5->_learnMore;
    v5->_learnMore = v88;
  }

  v90 = [dictonaryCopy PKDictionaryForKey:@"secondaryActionItem"];
  if (v90)
  {
    v91 = [[PKDynamicProvisioningPageLearnMoreContent alloc] initWithDictionary:v90];
    secondaryActionItem = v5->_secondaryActionItem;
    v5->_secondaryActionItem = v91;
  }

  v93 = [dictonaryCopy PKDictionaryForKey:@"contextLoading"];
  if (v93)
  {
    v94 = [[PKDynamicProvisioningPageContent alloc] initWithDictonary:v93];
    loadingPageContent = v5->_loadingPageContent;
    v5->_loadingPageContent = v94;
  }

  v96 = [dictonaryCopy PKDictionaryForKey:@"actionContent"];
  if ([v96 count])
  {
    v97 = [[PKApplyActionContent alloc] initWithDictionary:v96];
    actionContent = v5->_actionContent;
    v5->_actionContent = v97;
  }

  v99 = [dictonaryCopy PKDictionaryForKey:@"footerContent"];
  if ([v99 count])
  {
    v100 = [[PKApplyFooterContent alloc] initWithDictionary:v99];
    footerContent = v5->_footerContent;
    v5->_footerContent = v100;
  }

LABEL_76:
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKDynamicProvisioningPageContent allocWithZone:](PKDynamicProvisioningPageContent init];
  v5->_pageNumber = self->_pageNumber;
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:zone];
  subtitle = v5->_subtitle;
  v5->_subtitle = v10;

  v12 = [(NSString *)self->_altSubtitle copyWithZone:zone];
  altSubtitle = v5->_altSubtitle;
  v5->_altSubtitle = v12;

  v14 = [(NSString *)self->_body copyWithZone:zone];
  body = v5->_body;
  v5->_body = v14;

  v16 = [(NSString *)self->_footnote copyWithZone:zone];
  footnote = v5->_footnote;
  v5->_footnote = v16;

  v18 = [(NSString *)self->_footnoteDisclosure copyWithZone:zone];
  footnoteDisclosure = v5->_footnoteDisclosure;
  v5->_footnoteDisclosure = v18;

  v20 = [(NSString *)self->_primaryActionTitle copyWithZone:zone];
  primaryActionTitle = v5->_primaryActionTitle;
  v5->_primaryActionTitle = v20;

  v22 = [(NSString *)self->_altPrimaryActionTitle copyWithZone:zone];
  altPrimaryActionTitle = v5->_altPrimaryActionTitle;
  v5->_altPrimaryActionTitle = v22;

  v24 = [(NSString *)self->_primaryActionIdentifier copyWithZone:zone];
  primaryActionIdentifier = v5->_primaryActionIdentifier;
  v5->_primaryActionIdentifier = v24;

  v26 = [(NSString *)self->_secondaryActionTitle copyWithZone:zone];
  secondaryActionTitle = v5->_secondaryActionTitle;
  v5->_secondaryActionTitle = v26;

  v28 = [(NSString *)self->_secondaryActionIdentifier copyWithZone:zone];
  secondaryActionIdentifier = v5->_secondaryActionIdentifier;
  v5->_secondaryActionIdentifier = v28;

  v30 = [(NSString *)self->_disclosureTitle copyWithZone:zone];
  disclosureTitle = v5->_disclosureTitle;
  v5->_disclosureTitle = v30;

  v32 = [(PKDynamicProvisioningPageLearnMoreContent *)self->_learnMore copyWithZone:zone];
  learnMore = v5->_learnMore;
  v5->_learnMore = v32;

  v34 = [(PKDynamicProvisioningPageLearnMoreContent *)self->_secondaryActionItem copyWithZone:zone];
  secondaryActionItem = v5->_secondaryActionItem;
  v5->_secondaryActionItem = v34;

  v36 = [(NSString *)self->_heroImageURL copyWithZone:zone];
  heroImageURL = v5->_heroImageURL;
  v5->_heroImageURL = v36;

  v38 = [(PKApplyFooterContent *)self->_footerContent copyWithZone:zone];
  footerContent = v5->_footerContent;
  v5->_footerContent = v38;

  v40 = [(PKApplyActionContent *)self->_actionContent copyWithZone:zone];
  actionContent = v5->_actionContent;
  v5->_actionContent = v40;

  v42 = [(PKDynamicProvisioningPageContent *)self->_loadingPageContent copyWithZone:zone];
  loadingPageContent = v5->_loadingPageContent;
  v5->_loadingPageContent = v42;

  v5->_contentAlignment = self->_contentAlignment;
  v5->_layout = self->_layout;
  v5->_altSubtitleTimeInterval = self->_altSubtitleTimeInterval;
  return v5;
}

@end