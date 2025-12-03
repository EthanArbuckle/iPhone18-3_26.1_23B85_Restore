@interface PKDiscoveryCallToAction
- (BOOL)isEqual:(id)equal;
- (NSArray)paymentNetworks;
- (NSNumber)appStoreAppIdentifier;
- (NSSet)allowedFeatureIdentifiers;
- (NSSet)productIdentifiers;
- (NSSet)transitNetworkIdentifiers;
- (NSString)referrerIdentifier;
- (PKDiscoveryCallToAction)initWithCoder:(id)coder;
- (PKDiscoveryCallToAction)initWithDictionary:(id)dictionary;
- (PKDiscoveryCallToActionURL)actionURL;
- (PKDiscoveryItem)item;
- (id)description;
- (int64_t)paymentSetupMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)localizeWithBundle:(id)bundle table:(id)table;
- (void)setForegroundContentMode:(int64_t)mode;
- (void)setItem:(id)item;
- (void)setMediaBundle:(id)bundle;
@end

@implementation PKDiscoveryCallToAction

- (PKDiscoveryCallToAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = PKDiscoveryCallToAction;
  v5 = [(PKDiscoveryCallToAction *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v6;

    v8 = [dictionaryCopy PKStringForKey:@"subtitleKey"];
    subtitleKey = v5->_subtitleKey;
    v5->_subtitleKey = v8;

    v10 = [dictionaryCopy PKStringForKey:@"buttonTextKey"];
    buttonTextKey = v5->_buttonTextKey;
    v5->_buttonTextKey = v10;

    v12 = [dictionaryCopy PKStringForKey:@"action"];
    if ([@"transitDCI" isEqualToString:v12])
    {
      v13 = 1;
    }

    else if ([@"featureApply" isEqualToString:v12])
    {
      v13 = 2;
    }

    else if ([@"addCard" isEqualToString:v12])
    {
      v13 = 3;
    }

    else if ([@"settingsExpressTransit" isEqualToString:v12])
    {
      v13 = 4;
    }

    else if ([@"appleCashSetup" isEqualToString:v12])
    {
      v13 = 6;
    }

    else if ([@"appleCashFamilySetup" isEqualToString:v12])
    {
      v13 = 5;
    }

    else if ([@"accountUserCreateInvitation" isEqualToString:v12])
    {
      v13 = 7;
    }

    else if ([@"appLink" isEqualToString:v12])
    {
      v13 = 8;
    }

    else if ([@"provisionProduct" isEqualToString:v12])
    {
      v13 = 11;
    }

    else if ([@"featureApplyStandalone" isEqualToString:v12])
    {
      v13 = 9;
    }

    else if ([@"hideMyEmail" isEqualToString:v12])
    {
      v13 = 10;
    }

    else if ([@"openURL" isEqualToString:v12])
    {
      v13 = 12;
    }

    else
    {
      v13 = 0;
    }

    v5->_action = v13;
    v14 = [dictionaryCopy PKDictionaryForKey:@"actionInfo"];
    actionInfo = v5->_actionInfo;
    v5->_actionInfo = v14;

    v16 = [dictionaryCopy PKDictionaryForKey:@"icon"];
    if (v16)
    {
      v17 = [[PKDiscoveryMedia alloc] initWithDictionary:v16];
      icon = v5->_icon;
      v5->_icon = v17;

      v5->_roundIcon = [dictionaryCopy PKBoolForKey:@"shouldRoundIcon"];
    }

    v19 = [dictionaryCopy PKDictionaryForKey:@"wordmarkAsset"];
    if (v19)
    {
      v20 = [[PKDiscoveryMedia alloc] initWithDictionary:v19];
      wordmarkAsset = v5->_wordmarkAsset;
      v5->_wordmarkAsset = v20;
    }

    v22 = [dictionaryCopy PKColorForKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v22;

    v24 = [dictionaryCopy PKStringForKey:@"backgroundBlurStyle"];
    v5->_backgroundBlurStyle = PKDiscoveryCardBlurStyleFromString(v24);

    v25 = [dictionaryCopy PKStringForKey:@"foregroundContentMode"];
    v26 = v25;
    if (v25)
    {
      v5->_foregroundContentModeIsSet = 1;
      v5->_foregroundContentMode = PKDiscoveryCardForegroundContentModeFromString(v25);
    }
  }

  return v5;
}

- (void)setForegroundContentMode:(int64_t)mode
{
  if (!self->_foregroundContentModeIsSet)
  {
    self->_foregroundContentMode = mode;
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeWeak(&self->_item, itemCopy);
  identifier = [itemCopy identifier];

  itemIdentifier = self->_itemIdentifier;
  self->_itemIdentifier = identifier;
}

- (void)localizeWithBundle:(id)bundle table:(id)table
{
  bundleCopy = bundle;
  tableCopy = table;
  titleKey = self->_titleKey;
  if (titleKey)
  {
    v8 = [bundleCopy localizedStringForKey:titleKey value:&stru_1F227FD28 table:tableCopy];
    localizedTitle = self->_localizedTitle;
    self->_localizedTitle = v8;
  }

  subtitleKey = self->_subtitleKey;
  if (subtitleKey)
  {
    v11 = [bundleCopy localizedStringForKey:subtitleKey value:&stru_1F227FD28 table:tableCopy];
    localizedSubtitle = self->_localizedSubtitle;
    self->_localizedSubtitle = v11;
  }

  buttonTextKey = self->_buttonTextKey;
  if (buttonTextKey)
  {
    v14 = [bundleCopy localizedStringForKey:buttonTextKey value:&stru_1F227FD28 table:tableCopy];
    localizedButtonText = self->_localizedButtonText;
    self->_localizedButtonText = v14;
  }
}

- (void)setMediaBundle:(id)bundle
{
  icon = self->_icon;
  bundleCopy = bundle;
  [(PKDiscoveryMedia *)icon setBundle:bundleCopy];
  [(PKDiscoveryMedia *)self->_wordmarkAsset setBundle:bundleCopy];
}

- (NSString)referrerIdentifier
{
  referrerIdentifier = self->_referrerIdentifier;
  if (referrerIdentifier || (actionInfo = self->_actionInfo) == 0)
  {
    v3 = referrerIdentifier;
  }

  else
  {
    v3 = [(NSDictionary *)actionInfo objectForKeyedSubscript:@"referrerIdentifier"];
  }

  return v3;
}

- (int64_t)paymentSetupMode
{
  action = self->_action;
  switch(action)
  {
    case 11:
      return 3;
    case 2:
      return 4;
    case 1:
      return 3;
  }

  return 0;
}

- (NSArray)paymentNetworks
{
  v22 = *MEMORY[0x1E69E9840];
  actionInfo = self->_actionInfo;
  if (actionInfo && !self->_paymentNetworks)
  {
    v4 = [(NSDictionary *)actionInfo PKArrayForKey:@"paymentCredentials"];
    if ([v4 count])
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v18;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v9 = PKPaymentNetworkNameForPaymentCredentialType([*(*(&v17 + 1) + 8 * v11) integerValue]);

            if (v9)
            {
              [v5 addObject:v9];
            }

            ++v11;
            v12 = v9;
          }

          while (v8 != v11);
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }

      v13 = [v5 copy];
      paymentNetworks = self->_paymentNetworks;
      self->_paymentNetworks = v13;
    }
  }

  v15 = self->_paymentNetworks;

  return v15;
}

- (NSSet)allowedFeatureIdentifiers
{
  allowedFeatureIdentifiers = self->_allowedFeatureIdentifiers;
  if (!allowedFeatureIdentifiers)
  {
    allowedFeatureIdentifiers = self->_actionInfo;
    if (allowedFeatureIdentifiers)
    {
      v4 = [allowedFeatureIdentifiers objectForKeyedSubscript:@"featureIdentifier"];
      if (PKFeatureIdentifierFromString(v4))
      {
        v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v4, 0}];
        v6 = self->_allowedFeatureIdentifiers;
        self->_allowedFeatureIdentifiers = v5;
      }

      allowedFeatureIdentifiers = self->_allowedFeatureIdentifiers;
    }
  }

  return allowedFeatureIdentifiers;
}

- (NSSet)transitNetworkIdentifiers
{
  transitNetworkIdentifiers = self->_transitNetworkIdentifiers;
  if (!transitNetworkIdentifiers)
  {
    transitNetworkIdentifiers = self->_actionInfo;
    if (transitNetworkIdentifiers)
    {
      v4 = [transitNetworkIdentifiers PKArrayForKey:@"transitNetworkIdentifiers"];
      if ([v4 count])
      {
        v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
        v6 = self->_transitNetworkIdentifiers;
        self->_transitNetworkIdentifiers = v5;
      }

      transitNetworkIdentifiers = self->_transitNetworkIdentifiers;
    }
  }

  return transitNetworkIdentifiers;
}

- (NSSet)productIdentifiers
{
  productIdentifiers = self->_productIdentifiers;
  if (!productIdentifiers)
  {
    productIdentifiers = self->_actionInfo;
    if (productIdentifiers)
    {
      v4 = [productIdentifiers PKArrayForKey:@"productIdentifiers"];
      if ([v4 count])
      {
        v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
        v6 = self->_productIdentifiers;
        self->_productIdentifiers = v5;
      }

      productIdentifiers = self->_productIdentifiers;
    }
  }

  return productIdentifiers;
}

- (NSNumber)appStoreAppIdentifier
{
  appStoreAppIdentifier = self->_appStoreAppIdentifier;
  if (!appStoreAppIdentifier)
  {
    appStoreAppIdentifier = self->_actionInfo;
    if (appStoreAppIdentifier)
    {
      v4 = [appStoreAppIdentifier PKNumberForKey:@"appStoreAppIdentifier"];
      v5 = self->_appStoreAppIdentifier;
      self->_appStoreAppIdentifier = v4;

      appStoreAppIdentifier = self->_appStoreAppIdentifier;
    }
  }

  return appStoreAppIdentifier;
}

- (PKDiscoveryCallToActionURL)actionURL
{
  anyObject = 0;
  v3 = 0;
  v33 = *MEMORY[0x1E69E9840];
  action = self->_action;
  if (action <= 6)
  {
    if (action != 4)
    {
      if (action != 5)
      {
        if (action == 6)
        {
          v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
          BoolForKey = PKSharedCacheGetBoolForKey(@"PeerPaymentIsSetup");
          if (BoolForKey)
          {
            [v16 setScheme:@"wallet"];
            [v16 setHost:@"apple-cash"];
          }

          else
          {
            [v16 setScheme:@"settings-navigation"];
            [v16 setHost:@"com.apple.Settings.Wallet"];
            v26 = [@"/" stringByAppendingString:@"peerPaymentSetup"];
            [v16 setPath:v26];
          }

          v3 = BoolForKey ^ 1u;
          anyObject = [v16 URL];
        }

        goto LABEL_31;
      }

      anyObject = PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID(0);
      goto LABEL_23;
    }

    v22 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v22 setScheme:@"settings-navigation"];
    [v22 setHost:@"com.apple.Settings.Wallet"];
    v23 = PKURLActionExpressTransitSettings;
LABEL_21:
    v24 = [@"/" stringByAppendingString:*v23];
    [v22 setPath:v24];

    anyObject = [v22 URL];

LABEL_23:
    v3 = 1;
    goto LABEL_31;
  }

  if (action > 9)
  {
    if (action != 10)
    {
      if (action != 12)
      {
        goto LABEL_31;
      }

      v18 = [(NSDictionary *)self->_actionInfo PKStringForKey:@"url"];
      v19 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v18];
      scheme = [v19 scheme];
      v21 = [scheme isEqualToString:@"wallet"];

      if (v21)
      {
        anyObject = [v19 URL];
      }

      else
      {
        v25 = PKLogFacilityTypeGetObject(0x11uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v18;
          _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Invalid URL %@, only Wallet deep links are supported", buf, 0xCu);
        }

        anyObject = 0;
      }

LABEL_28:
      v3 = 0;
      goto LABEL_31;
    }

    v22 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v22 setScheme:@"settings-navigation"];
    [v22 setHost:@"com.apple.Settings.Wallet"];
    v23 = PKURLActionHideMyEmailSettings;
    goto LABEL_21;
  }

  if (action == 7)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v18 setScheme:@"wallet"];
    [v18 setHost:@"creditAccountAddUser"];
    anyObject = [v18 URL];
    goto LABEL_28;
  }

  if (action != 9)
  {
LABEL_31:
    v27 = [[PKDiscoveryCallToActionURL alloc] initWithURL:anyObject isSensitive:v3];
    goto LABEL_32;
  }

  anyObject = [(NSSet *)self->_allowedFeatureIdentifiers anyObject];
  v6 = PKFeatureIdentifierFromString(anyObject);
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v8 setScheme:@"wallet"];
    [v8 setHost:@"setup"];
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = PKFeatureIdentifierToString(v7);
    v11 = [v9 initWithFormat:@"/%@/%@", @"feature", v10];
    [v8 setPath:v11];

    referrerIdentifier = [(PKDiscoveryCallToAction *)self referrerIdentifier];
    if (referrerIdentifier)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"referrer" value:referrerIdentifier];
      v30 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      [v8 setQueryItems:v14];
    }

    v15 = [v8 URL];

    v3 = 0;
    anyObject = v15;
    goto LABEL_31;
  }

  v29 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = anyObject;
    _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Unknown feature %@, cannot form deep link", buf, 0xCu);
  }

  v27 = 0;
LABEL_32:

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  titleKey = self->_titleKey;
  v6 = *(equalCopy + 7);
  if (titleKey && v6)
  {
    if (([(NSString *)titleKey isEqual:?]& 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (titleKey != v6)
  {
    goto LABEL_44;
  }

  subtitleKey = self->_subtitleKey;
  v8 = *(equalCopy + 8);
  if (subtitleKey && v8)
  {
    if (([(NSString *)subtitleKey isEqual:?]& 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (subtitleKey != v8)
  {
    goto LABEL_44;
  }

  if (self->_action != *(equalCopy + 10))
  {
    goto LABEL_44;
  }

  actionInfo = self->_actionInfo;
  v10 = *(equalCopy + 11);
  if (actionInfo && v10)
  {
    if (([(NSDictionary *)actionInfo isEqual:?]& 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (actionInfo != v10)
  {
    goto LABEL_44;
  }

  icon = self->_icon;
  v12 = *(equalCopy + 13);
  if (icon && v12)
  {
    if (![(PKDiscoveryMedia *)icon isEqual:?])
    {
      goto LABEL_44;
    }
  }

  else if (icon != v12)
  {
    goto LABEL_44;
  }

  if (self->_roundIcon != equalCopy[49])
  {
    goto LABEL_44;
  }

  wordmarkAsset = self->_wordmarkAsset;
  v14 = *(equalCopy + 14);
  if (wordmarkAsset && v14)
  {
    if (![(PKDiscoveryMedia *)wordmarkAsset isEqual:?])
    {
      goto LABEL_44;
    }
  }

  else if (wordmarkAsset != v14)
  {
    goto LABEL_44;
  }

  if (!CGColorEqualToColor(-[PKColor CGColor](self->_backgroundColor, "CGColor"), [*(equalCopy + 15) CGColor]) || self->_foregroundContentMode != *(equalCopy + 17) || self->_backgroundBlurStyle != *(equalCopy + 16))
  {
    goto LABEL_44;
  }

  localizedTitle = self->_localizedTitle;
  v16 = *(equalCopy + 18);
  if (localizedTitle && v16)
  {
    if (([(NSString *)localizedTitle isEqual:?]& 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (localizedTitle != v16)
  {
    goto LABEL_44;
  }

  localizedSubtitle = self->_localizedSubtitle;
  v18 = *(equalCopy + 19);
  if (!localizedSubtitle || !v18)
  {
    if (localizedSubtitle == v18)
    {
      goto LABEL_40;
    }

LABEL_44:
    v21 = 0;
    goto LABEL_45;
  }

  if (([(NSString *)localizedSubtitle isEqual:?]& 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_40:
  localizedButtonText = self->_localizedButtonText;
  v20 = *(equalCopy + 20);
  if (localizedButtonText && v20)
  {
    v21 = [(NSString *)localizedButtonText isEqual:?];
  }

  else
  {
    v21 = localizedButtonText == v20;
  }

LABEL_45:

  return v21;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_titleKey];
  [v3 safelyAddObject:self->_subtitleKey];
  [v3 safelyAddObject:self->_buttonTextKey];
  [v3 safelyAddObject:self->_actionInfo];
  [v3 safelyAddObject:self->_icon];
  [v3 safelyAddObject:self->_wordmarkAsset];
  [v3 safelyAddObject:self->_backgroundColor];
  [v3 safelyAddObject:self->_localizedTitle];
  [v3 safelyAddObject:self->_localizedSubtitle];
  [v3 safelyAddObject:self->_localizedButtonText];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_action - v4 + 32 * v4;
  v6 = self->_roundIcon - v5 + 32 * v5;
  v7 = self->_foregroundContentMode - v6 + 32 * v6;
  v8 = self->_backgroundBlurStyle - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"titleKey", self->_titleKey];
  [v3 appendFormat:@"%@: '%@'; ", @"subtitleKey", self->_subtitleKey];
  [v3 appendFormat:@"%@: '%@'; ", @"buttonTextKey", self->_buttonTextKey];
  [v3 appendFormat:@"%@: '%ld'; ", @"action", self->_action];
  [v3 appendFormat:@"%@: '%@'; ", @"actionInfo", self->_actionInfo];
  [v3 appendFormat:@"%@: '%@'; ", @"icon", self->_icon];
  if (self->_roundIcon)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"shouldRoundIcon", v4];
  [v3 appendFormat:@"%@: '%@'; ", @"wordmarkAsset", self->_wordmarkAsset];
  [v3 appendFormat:@"%@: '%@'; ", @"backgroundColor", self->_backgroundColor];
  [v3 appendFormat:@"%@: '%ld'; ", @"backgroundBlurStyle", self->_backgroundBlurStyle];
  [v3 appendFormat:@"%@: '%ld'; ", @"foregroundContentMode", self->_foregroundContentMode];
  [v3 appendFormat:@"%@: '%@'; ", @"localizedTitle", self->_localizedTitle];
  [v3 appendFormat:@"%@: '%@'; ", @"localizedSubtitle", self->_localizedSubtitle];
  [v3 appendFormat:@"%@: '%@'; ", @"localizedButtonText", self->_localizedButtonText];
  [v3 appendFormat:@"%@: '%@'; ", @"itemIdentifier", self->_itemIdentifier];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  titleKey = self->_titleKey;
  coderCopy = coder;
  [coderCopy encodeObject:titleKey forKey:@"titleKey"];
  [coderCopy encodeObject:self->_subtitleKey forKey:@"subtitleKey"];
  [coderCopy encodeObject:self->_buttonTextKey forKey:@"buttonTextKey"];
  [coderCopy encodeInteger:self->_action forKey:@"action"];
  [coderCopy encodeObject:self->_actionInfo forKey:@"actionInfo"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeBool:self->_roundIcon forKey:@"shouldRoundIcon"];
  [coderCopy encodeObject:self->_wordmarkAsset forKey:@"wordmarkAsset"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeInteger:self->_backgroundBlurStyle forKey:@"backgroundBlurStyle"];
  [coderCopy encodeInteger:self->_foregroundContentMode forKey:@"foregroundContentMode"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedSubtitle forKey:@"localizedSubtitle"];
  [coderCopy encodeObject:self->_localizedButtonText forKey:@"localizedButtonText"];
  [coderCopy encodeObject:self->_itemIdentifier forKey:@"itemIdentifier"];
}

- (PKDiscoveryCallToAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKDiscoveryCallToAction;
  v5 = [(PKDiscoveryCallToAction *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitleKey"];
    subtitleKey = v5->_subtitleKey;
    v5->_subtitleKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonTextKey"];
    buttonTextKey = v5->_buttonTextKey;
    v5->_buttonTextKey = v10;

    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 initWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"actionInfo"];
    actionInfo = v5->_actionInfo;
    v5->_actionInfo = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v19;

    v5->_roundIcon = [coderCopy decodeBoolForKey:@"shouldRoundIcon"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v21;

    v5->_backgroundBlurStyle = [coderCopy decodeIntegerForKey:@"backgroundBlurStyle"];
    v5->_foregroundContentMode = [coderCopy decodeIntegerForKey:@"foregroundContentMode"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedButtonText"];
    localizedButtonText = v5->_localizedButtonText;
    v5->_localizedButtonText = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wordmarkAsset"];
    wordmarkAsset = v5->_wordmarkAsset;
    v5->_wordmarkAsset = v31;
  }

  return v5;
}

- (PKDiscoveryItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end