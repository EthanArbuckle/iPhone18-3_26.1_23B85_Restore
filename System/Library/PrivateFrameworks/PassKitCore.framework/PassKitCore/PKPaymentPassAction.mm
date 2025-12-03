@interface PKPaymentPassAction
+ (id)effectiveActionForActions:(id)actions;
- (BOOL)isActionAvailable;
- (BOOL)remoteContentRequiresAppletData;
- (NSDate)availableFrom;
- (NSDate)availableUntil;
- (NSString)title;
- (PKPaymentPassAction)initWithCoder:(id)coder;
- (PKPaymentPassAction)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (PKPaymentPassAction)initWithDictionary:(id)dictionary localizations:(id)localizations;
- (id)_initForFlightSharing;
- (id)_initWithAppClipURL:(id)l;
- (id)_initWithBusinessChatIdentifier:(id)identifier;
- (id)_initWithContext:(int64_t)context;
- (id)_initWithExternalURL:(id)l title:(id)title;
- (id)_initWithImage:(id)image title:(id)title;
- (id)actionUpdatedWithDictionary:(id)dictionary localizations:(id)localizations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_processLocalizableStrings:(id)strings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentPassAction

- (PKPaymentPassAction)initWithDictionary:(id)dictionary localizations:(id)localizations
{
  v187 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  localizationsCopy = localizations;
  v184.receiver = self;
  v184.super_class = PKPaymentPassAction;
  v8 = [(PKPaymentPassAction *)&v184 init];
  v9 = v8;
  v10 = &unk_1ADB86000;
  if (v8)
  {
    v8->_reverseButtonTitleForLegacySuica = 0;
    v11 = [dictionaryCopy copy];
    rawDictionary = v9->_rawDictionary;
    v9->_rawDictionary = v11;

    v13 = [localizationsCopy copy];
    localizations = v9->_localizations;
    v9->_localizations = v13;

    v15 = [dictionaryCopy PKStringForKey:@"identifier"];
    v16 = [v15 copy];
    identifier = v9->_identifier;
    v9->_identifier = v16;

    v18 = [dictionaryCopy PKStringForKey:@"type"];
    v9->_type = PKPaymentPassActionTypeFromString(v18);

    v19 = [PKPaymentPassActionRemoteConfiguration alloc];
    v20 = [dictionaryCopy PKDictionaryForKey:@"remoteContentConfiguration"];
    v21 = [(PKPaymentPassActionRemoteConfiguration *)v19 initWithDictionary:v20];
    remoteContentConfiguration = v9->_remoteContentConfiguration;
    v9->_remoteContentConfiguration = v21;

    if (!v9->_remoteContentConfiguration && [dictionaryCopy PKBoolForKey:@"hasRemoteContent"])
    {
      v23 = -[PKPaymentPassActionRemoteConfiguration initWithRequiresAppletData:appletDataRequiresEncryption:]([PKPaymentPassActionRemoteConfiguration alloc], "initWithRequiresAppletData:appletDataRequiresEncryption:", [dictionaryCopy PKBoolForKey:@"remoteContentRequiresAppletData"], 1);
      v24 = v9->_remoteContentConfiguration;
      v9->_remoteContentConfiguration = v23;
    }

    v25 = [PKPaymentPassActionExternalActionContent alloc];
    v26 = [dictionaryCopy PKDictionaryForKey:@"externalActionContent"];
    v27 = [(PKPaymentPassActionExternalActionContent *)v25 initWithDictionary:v26];
    externalActionContent = v9->_externalActionContent;
    v9->_externalActionContent = v27;

    v29 = [dictionaryCopy PKStringForKey:@"title"];
    v30 = [v29 copy];
    title = v9->_title;
    v9->_title = v30;

    v32 = [dictionaryCopy PKStringForKey:@"description"];
    v33 = [v32 copy];
    actionDescription = v9->_actionDescription;
    v9->_actionDescription = v33;

    v35 = [dictionaryCopy PKStringForKey:@"confirmationTitle"];
    v36 = [v35 copy];
    confirmationTitle = v9->_confirmationTitle;
    v9->_confirmationTitle = v36;

    v9->_featured = [dictionaryCopy PKBoolForKey:@"featured"];
    v38 = [dictionaryCopy PKStringForKey:@"relevantPropertyIdentifier"];
    v39 = [v38 copy];
    relevantPropertyIdentifier = v9->_relevantPropertyIdentifier;
    v9->_relevantPropertyIdentifier = v39;

    v41 = [dictionaryCopy PKStringForKey:@"associatedPlanIdentifier"];
    v42 = [v41 copy];
    associatedPlanIdentifier = v9->_associatedPlanIdentifier;
    v9->_associatedPlanIdentifier = v42;

    v44 = [dictionaryCopy PKStringForKey:@"associatedEnteredValueIdentifier"];
    v45 = [v44 copy];
    associatedEnteredValueIdentifier = v9->_associatedEnteredValueIdentifier;
    v9->_associatedEnteredValueIdentifier = v45;

    v47 = [dictionaryCopy PKStringForKey:@"associatedAutoTopUpIdentifier"];
    v48 = [v47 copy];
    associatedAutoTopUpIdentifier = v9->_associatedAutoTopUpIdentifier;
    v9->_associatedAutoTopUpIdentifier = v48;

    v50 = [dictionaryCopy PKDictionaryForKey:@"appletData"];
    v51 = [v50 copy];
    appletData = v9->_appletData;
    v9->_appletData = v51;

    v53 = [dictionaryCopy PKStringForKey:@"availableFrom"];
    v183 = 0.0;
    v54 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v53, 0, &v183);
    availableFromRaw = v9->_availableFromRaw;
    v9->_availableFromRaw = v54;

    if (v9->_availableFromRaw)
    {
      v9->_availableFromOffsetFromUTC = v183;
    }

    v56 = [dictionaryCopy PKDateForKey:@"availableUntil"];
    v57 = [v56 copy];
    availableUntilRaw = v9->_availableUntilRaw;
    v9->_availableUntilRaw = v57;

    v59 = [dictionaryCopy PKStringForKey:@"unavailableBeforeReason"];
    v60 = [v59 copy];
    unavailableBeforeReason = v9->_unavailableBeforeReason;
    v9->_unavailableBeforeReason = v60;

    v62 = [dictionaryCopy PKStringForKey:@"unavailableAfterReason"];
    v63 = [v62 copy];
    unavailableAfterReason = v9->_unavailableAfterReason;
    v9->_unavailableAfterReason = v63;

    v65 = [dictionaryCopy PKStringForKey:@"unavailableActionReason"];
    v66 = [v65 copy];
    unavailableActionReason = v9->_unavailableActionReason;
    v9->_unavailableActionReason = v66;

    v68 = [dictionaryCopy PKStringForKey:@"unavailableActionTitle"];
    v69 = [v68 copy];
    unavailableActionTitle = v9->_unavailableActionTitle;
    v9->_unavailableActionTitle = v69;

    v71 = [dictionaryCopy PKStringForKey:@"unavailableActionURL"];
    v72 = [v71 copy];
    unavailableActionURL = v9->_unavailableActionURL;
    v9->_unavailableActionURL = v72;

    v9->_unavailableActionBehavior = [dictionaryCopy PKIntegerForKey:@"unavailableActionBehavior"];
    v74 = [dictionaryCopy PKStringForKey:@"serviceProviderIdentifier"];
    v75 = [v74 copy];
    serviceProviderIdentifier = v9->_serviceProviderIdentifier;
    v9->_serviceProviderIdentifier = v75;

    v77 = [dictionaryCopy PKStringForKey:@"serviceProviderLocalizedDisplayName"];
    v78 = [v77 copy];
    serviceProviderLocalizedDisplayName = v9->_serviceProviderLocalizedDisplayName;
    v9->_serviceProviderLocalizedDisplayName = v78;

    v80 = [dictionaryCopy PKStringForKey:@"serviceProviderCountryCode"];
    v81 = [v80 copy];
    serviceProviderCountryCode = v9->_serviceProviderCountryCode;
    v9->_serviceProviderCountryCode = v81;

    v83 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderAcceptedNetworks"];
    if (!v83)
    {
      v83 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderSupportedNetworks"];
    }

    v84 = +[PKServiceProviderPaymentRequest availableNetworks];
    v85 = [v83 pk_intersectArray:v84];
    serviceProviderAcceptedNetworks = v9->_serviceProviderAcceptedNetworks;
    v9->_serviceProviderAcceptedNetworks = v85;

    v87 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderCapabilities"];
    v9->_serviceProviderCapabilities = PKMerchantCapabilityFromStrings(v87);

    v88 = [dictionaryCopy PKSetForKey:@"serviceProviderSupportedCountries"];
    if ([v88 count])
    {
      v89 = v88;
    }

    else
    {
      v89 = 0;
    }

    objc_storeStrong(&v9->_serviceProviderSupportedCountries, v89);
    type = v9->_type;
    if (type <= 4)
    {
      if (type > 2)
      {
        if (type == 3)
        {
          auxiliaryPassInformationItemIdentifier = [dictionaryCopy PKStringForKey:@"url"];
          if (auxiliaryPassInformationItemIdentifier)
          {
            v134 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:auxiliaryPassInformationItemIdentifier];
            externalURL = v9->_externalURL;
            v9->_externalURL = v134;
            goto LABEL_51;
          }

          goto LABEL_77;
        }

        auxiliaryPassInformationItemIdentifier = [dictionaryCopy PKDictionaryForKey:@"vehicleFunctionActions"];
        if (!auxiliaryPassInformationItemIdentifier)
        {
          goto LABEL_77;
        }

        v168 = v88;
        v120 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v121 = objc_opt_class();
        v122 = objc_opt_class();
        v171[0] = MEMORY[0x1E69E9820];
        v171[1] = 3221225472;
        v171[2] = __56__PKPaymentPassAction_initWithDictionary_localizations___block_invoke;
        v171[3] = &unk_1E79CFD80;
        v173 = v121;
        v174 = v122;
        v123 = v120;
        v172 = v123;
        [auxiliaryPassInformationItemIdentifier enumerateKeysAndObjectsUsingBlock:v171];
        if ([v123 count])
        {
          v124 = [v123 copy];
          vehicleFunctionActions = v9->_vehicleFunctionActions;
          v9->_vehicleFunctionActions = v124;
        }

        v10 = &unk_1ADB86000;
LABEL_70:
        v88 = v168;
        goto LABEL_77;
      }

      if (type == 1)
      {
        auxiliaryPassInformationItemIdentifier = [dictionaryCopy PKDictionaryForKey:@"item"];
        if (auxiliaryPassInformationItemIdentifier)
        {
          v133 = [[PKEnteredValueActionItem alloc] initWithDictionary:auxiliaryPassInformationItemIdentifier];
          externalURL = v9->_enteredValueItem;
          v9->_enteredValueItem = v133;
          goto LABEL_51;
        }

        goto LABEL_77;
      }

      if (type != 2)
      {
        goto LABEL_78;
      }

      v167 = localizationsCopy;
      v168 = v88;
      v165 = v83;
      v166 = v53;
      v94 = [dictionaryCopy PKStringForKey:@"headerText"];
      v95 = [v94 copy];
      headerText = v9->_headerText;
      v9->_headerText = v95;

      v97 = [dictionaryCopy PKStringForKey:@"footerText"];
      v98 = [v97 copy];
      footerText = v9->_footerText;
      v9->_footerText = v98;

      [dictionaryCopy PKDoubleForKey:@"availableFromRelative"];
      v9->_availableFromRelative = v100;
      [dictionaryCopy PKDoubleForKey:@"availableUntilRelative"];
      v9->_availableUntilRelative = v101;
      auxiliaryPassInformationItemIdentifier = objc_alloc_init(MEMORY[0x1E695DF70]);
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v102 = [dictionaryCopy PKArrayForKey:@"items"];
      v103 = [v102 countByEnumeratingWithState:&v179 objects:v186 count:16];
      if (v103)
      {
        v104 = v103;
        v105 = *v180;
        do
        {
          for (i = 0; i != v104; ++i)
          {
            if (*v180 != v105)
            {
              objc_enumerationMutation(v102);
            }

            v107 = *(*(&v179 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v108 = [[PKSelectedItemActionItem alloc] initWithDictionary:v107];
              if (v108)
              {
                [auxiliaryPassInformationItemIdentifier addObject:v108];
              }
            }
          }

          v104 = [v102 countByEnumeratingWithState:&v179 objects:v186 count:16];
        }

        while (v104);
      }

      v109 = [auxiliaryPassInformationItemIdentifier copy];
      selectedActionItems = v9->_selectedActionItems;
      v9->_selectedActionItems = v109;

      if ([(NSArray *)v9->_selectedActionItems count]== 1)
      {
        firstObject = [(NSArray *)v9->_selectedActionItems firstObject];
        amount = [firstObject amount];
        currency = [firstObject currency];
        v164 = PKFormattedCurrencyStringFromNumber(amount, currency);

        v114 = v9->_actionDescription;
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v116 = [(NSString *)v114 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
        if (v116)
        {
          v117 = v116;
          v118 = [v116 length];

          v83 = v165;
          v88 = v168;
          if (v118)
          {
            localizationsCopy = v167;
            v10 = &unk_1ADB86000;
            v119 = v164;
            if (!v164 || [(NSString *)v9->_actionDescription containsString:v164])
            {
              goto LABEL_76;
            }

LABEL_68:
            v160 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v119, v9->_actionDescription];
LABEL_75:
            v161 = v9->_actionDescription;
            v9->_actionDescription = v160;

            goto LABEL_76;
          }
        }

        else
        {

          v83 = v165;
          v88 = v168;
        }

LABEL_74:
        v119 = v164;
        v160 = v164;
        localizationsCopy = v167;
        v10 = &unk_1ADB86000;
        goto LABEL_75;
      }
    }

    else
    {
      if (type > 6)
      {
        switch(type)
        {
          case 7:
            v135 = [dictionaryCopy PKStringForKey:@"auxiliaryPassInformationIdentifier"];
            auxiliaryPassInformationIdentifier = v9->_auxiliaryPassInformationIdentifier;
            v9->_auxiliaryPassInformationIdentifier = v135;

            v137 = [dictionaryCopy PKStringForKey:@"auxiliaryPassInformationItemIdentifier"];
            auxiliaryPassInformationItemIdentifier = v9->_auxiliaryPassInformationItemIdentifier;
            v9->_auxiliaryPassInformationItemIdentifier = v137;
            goto LABEL_77;
          case 8:
            auxiliaryPassInformationItemIdentifier = [dictionaryCopy PKStringForKey:@"context"];
            v9->_context = PKPassTileContextFromString(auxiliaryPassInformationItemIdentifier);
            goto LABEL_77;
          case 10:
            auxiliaryPassInformationItemIdentifier = [dictionaryCopy PKStringForKey:@"url"];
            if (auxiliaryPassInformationItemIdentifier)
            {
              v92 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:auxiliaryPassInformationItemIdentifier];
              externalURL = v9->_appClipURL;
              v9->_appClipURL = v92;
LABEL_51:

              goto LABEL_77;
            }

            goto LABEL_77;
        }

LABEL_78:

        goto LABEL_79;
      }

      if (type != 5)
      {
        v126 = [dictionaryCopy PKStringForKey:@"headerText"];
        v127 = [v126 copy];
        v128 = v9->_headerText;
        v9->_headerText = v127;

        v129 = [dictionaryCopy PKStringForKey:@"footerText"];
        v130 = [v129 copy];
        v131 = v9->_footerText;
        v9->_footerText = v130;

        auxiliaryPassInformationItemIdentifier = [dictionaryCopy PKDictionaryForKey:@"item"];
        if (auxiliaryPassInformationItemIdentifier)
        {
          v132 = [[PKAutoTopUpActionItem alloc] initWithDictionary:auxiliaryPassInformationItemIdentifier];
          externalURL = v9->_autoTopUpItem;
          v9->_autoTopUpItem = v132;
          goto LABEL_51;
        }

LABEL_77:

        goto LABEL_78;
      }

      v167 = localizationsCopy;
      v168 = v88;
      v165 = v83;
      v166 = v53;
      v138 = [dictionaryCopy PKStringForKey:@"headerText"];
      v139 = [v138 copy];
      v140 = v9->_headerText;
      v9->_headerText = v139;

      v141 = [dictionaryCopy PKStringForKey:@"footerText"];
      v142 = [v141 copy];
      v143 = v9->_footerText;
      v9->_footerText = v142;

      auxiliaryPassInformationItemIdentifier = objc_alloc_init(MEMORY[0x1E695DF70]);
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v144 = [dictionaryCopy PKArrayForKey:@"items"];
      v145 = [v144 countByEnumeratingWithState:&v175 objects:v185 count:16];
      if (v145)
      {
        v146 = v145;
        v147 = *v176;
        do
        {
          for (j = 0; j != v146; ++j)
          {
            if (*v176 != v147)
            {
              objc_enumerationMutation(v144);
            }

            v149 = *(*(&v175 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v150 = [[PKPurchaseNewActionItem alloc] initWithDictionary:v149];
              if (v150)
              {
                [auxiliaryPassInformationItemIdentifier addObject:v150];
              }
            }
          }

          v146 = [v144 countByEnumeratingWithState:&v175 objects:v185 count:16];
        }

        while (v146);
      }

      v151 = [auxiliaryPassInformationItemIdentifier copy];
      purchaseNewActionItems = v9->_purchaseNewActionItems;
      v9->_purchaseNewActionItems = v151;

      if ([(NSArray *)v9->_purchaseNewActionItems count]== 1)
      {
        firstObject = [(NSArray *)v9->_purchaseNewActionItems firstObject];
        amount2 = [firstObject amount];
        currency2 = [firstObject currency];
        v164 = PKFormattedCurrencyStringFromNumber(amount2, currency2);

        v155 = v9->_actionDescription;
        whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v157 = [(NSString *)v155 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
        v83 = v165;
        v88 = v168;
        if (v157)
        {
          v158 = v157;
          v159 = [v157 length];

          if (v159)
          {
            v119 = v164;
            localizationsCopy = v167;
            v10 = &unk_1ADB86000;
            if ([(NSString *)v9->_actionDescription containsString:v164])
            {
LABEL_76:

              goto LABEL_77;
            }

            goto LABEL_68;
          }
        }

        else
        {
        }

        goto LABEL_74;
      }
    }

    v53 = v166;
    localizationsCopy = v167;
    v10 = &unk_1ADB86000;
    v83 = v165;
    goto LABEL_70;
  }

LABEL_79:
  v169[0] = MEMORY[0x1E69E9820];
  v169[1] = v10[283];
  v169[2] = __56__PKPaymentPassAction_initWithDictionary_localizations___block_invoke_2;
  v169[3] = &unk_1E79CFDA8;
  v162 = v9;
  v170 = v162;
  [(PKPaymentPassAction *)v162 _processLocalizableStrings:v169];

  return v162;
}

void __56__PKPaymentPassAction_initWithDictionary_localizations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v7 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v5];
    if ([v7 scanHexInt:&v10] && objc_msgSend(v7, "isAtEnd"))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
      [v8 setObject:v6 forKeyedSubscript:v9];
    }
  }
}

id __56__PKPaymentPassAction_initWithDictionary_localizations___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = a2;
    v4 = [v2 objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PKPaymentPassAction)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  if (bundle)
  {
    v7 = [bundle pathForResource:@"actions" ofType:@"strings"];
    bundle = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v7];
    self = [(PKPaymentPassAction *)self initWithDictionary:dictionaryCopy localizations:bundle];
  }

  v8 = [(PKPaymentPassAction *)self initWithDictionary:dictionaryCopy localizations:bundle];

  return v8;
}

- (id)_initWithExternalURL:(id)l title:(id)title
{
  lCopy = l;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = PKPaymentPassAction;
  v9 = [(PKPaymentPassAction *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_type = 3;
    objc_storeStrong(&v9->_externalURL, l);
    objc_storeStrong(p_isa + 3, title);
  }

  return p_isa;
}

- (id)_initWithAppClipURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PKPaymentPassAction;
  v6 = [(PKPaymentPassAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 10;
    objc_storeStrong(&v6->_appClipURL, l);
  }

  return v7;
}

- (id)_initWithContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = PKPaymentPassAction;
  result = [(PKPaymentPassAction *)&v5 init];
  if (result)
  {
    *(result + 8) = 8;
    *(result + 34) = context;
  }

  return result;
}

- (id)_initWithImage:(id)image title:(id)title
{
  imageCopy = image;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = PKPaymentPassAction;
  v9 = [(PKPaymentPassAction *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_type = 9;
    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(p_isa + 3, title);
  }

  return p_isa;
}

- (id)_initForFlightSharing
{
  v3.receiver = self;
  v3.super_class = PKPaymentPassAction;
  result = [(PKPaymentPassAction *)&v3 init];
  if (result)
  {
    *(result + 8) = 13;
  }

  return result;
}

- (id)_initWithBusinessChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPaymentPassAction;
  v6 = [(PKPaymentPassAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 14;
    objc_storeStrong(&v6->_businessChatIdentifier, identifier);
  }

  return v7;
}

- (NSString)title
{
  v2 = 24;
  if (self->_reverseButtonTitleForLegacySuica)
  {
    v2 = 104;
  }

  return *(&self->super.isa + v2);
}

- (void)_processLocalizableStrings:(id)strings
{
  v28 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  if (stringsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    _localizableKeys = [(PKPaymentPassAction *)self _localizableKeys];
    v6 = [_localizableKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(_localizableKeys);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(PKPaymentPassAction *)self valueForKey:v10];
          if (v11)
          {
            v12 = stringsCopy[2](stringsCopy, v11);
            if (v12)
            {
              [(PKPaymentPassAction *)self setValue:v12 forKey:v10];
            }
          }
        }

        v7 = [_localizableKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    [(PKEnteredValueActionItem *)self->_enteredValueItem _processLocalizableStrings:stringsCopy];
    [(PKAutoTopUpActionItem *)self->_autoTopUpItem _processLocalizableStrings:stringsCopy];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = self->_selectedActionItems;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * j) _processLocalizableStrings:{stringsCopy, v18}];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }
}

- (id)actionUpdatedWithDictionary:(id)dictionary localizations:(id)localizations
{
  dictionaryCopy = dictionary;
  localizationsCopy = localizations;
  identifier = [(PKPaymentPassAction *)self identifier];
  v9 = [dictionaryCopy PKStringForKey:@"identifier"];
  v10 = [identifier isEqualToString:v9];

  if (v10)
  {
    v11 = [(NSDictionary *)self->_rawDictionary mutableCopy];
    [v11 addEntriesFromDictionary:dictionaryCopy];
    v12 = [objc_alloc(objc_opt_class()) initWithDictionary:v11 localizations:localizationsCopy];
    v13 = v12;
    if (v12)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__PKPaymentPassAction_actionUpdatedWithDictionary_localizations___block_invoke;
      v15[3] = &unk_1E79CFDA8;
      v15[4] = self;
      [v12 _processLocalizableStrings:v15];
      [v13 setAssociatedPlan:self->_associatedPlan];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __65__PKPaymentPassAction_actionUpdatedWithDictionary_localizations___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = a2;
    v4 = [v2 objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)effectiveActionForActions:(id)actions
{
  actionsCopy = actions;
  v4 = actionsCopy;
  if (actionsCopy && [actionsCopy count])
  {
    v5 = [v4 pk_firstObjectPassingTest:&__block_literal_global_71];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)availableFrom
{
  if (self->_type == 2 && (associatedPlan = self->_associatedPlan) != 0 && !self->_availableFromRaw && self->_availableFromRelative != 0.0 && (-[PKTransitCommutePlan startDate](associatedPlan, "startDate"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [v9 dateByAddingTimeInterval:self->_availableFromRelative], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    distantPast = v11;
    v5 = distantPast;
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = 0;
  }

  if (self->_availableFromRaw)
  {
    availableFromRaw = self->_availableFromRaw;
  }

  else
  {
    availableFromRaw = distantPast;
  }

  v7 = availableFromRaw;

  return availableFromRaw;
}

- (NSDate)availableUntil
{
  if (self->_type == 2 && (associatedPlan = self->_associatedPlan) != 0 && !self->_availableUntilRaw && self->_availableUntilRelative != 0.0 && (-[PKTransitCommutePlan expiryDate](associatedPlan, "expiryDate"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [v9 dateByAddingTimeInterval:self->_availableUntilRelative], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    distantFuture = v11;
    v5 = distantFuture;
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v5 = 0;
  }

  if (self->_availableUntilRaw)
  {
    availableUntilRaw = self->_availableUntilRaw;
  }

  else
  {
    availableUntilRaw = distantFuture;
  }

  v7 = availableUntilRaw;

  return availableUntilRaw;
}

- (BOOL)isActionAvailable
{
  if ([(PKPaymentPassAction *)self hasExternalActionContent])
  {
    return 0;
  }

  availableFrom = [(PKPaymentPassAction *)self availableFrom];
  availableUntil = [(PKPaymentPassAction *)self availableUntil];
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date compare:availableFrom] == 1 && objc_msgSend(date, "compare:", availableUntil) == -1;

  return v3;
}

- (BOOL)remoteContentRequiresAppletData
{
  remoteContentConfiguration = self->_remoteContentConfiguration;
  if (remoteContentConfiguration)
  {
    LOBYTE(remoteContentConfiguration) = [(PKPaymentPassActionRemoteConfiguration *)remoteContentConfiguration requiresAppletData];
  }

  return remoteContentConfiguration;
}

- (PKPaymentPassAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v139.receiver = self;
  v139.super_class = PKPaymentPassAction;
  v5 = [(PKPaymentPassAction *)&v139 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v138 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:? forKey:?];
    v12 = [v11 copy];
    rawDictionary = v5->_rawDictionary;
    v5->_rawDictionary = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v137 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:? forKey:?];
    v21 = [v20 copy];
    localizations = v5->_localizations;
    v5->_localizations = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v24 = [v23 copy];
    identifier = v5->_identifier;
    v5->_identifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentPassActionTypeFromString(v26);

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteContentConfiguration"];
    remoteContentConfiguration = v5->_remoteContentConfiguration;
    v5->_remoteContentConfiguration = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalActionContent"];
    externalActionContent = v5->_externalActionContent;
    v5->_externalActionContent = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v32 = [v31 copy];
    title = v5->_title;
    v5->_title = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionDescription"];
    v35 = [v34 copy];
    actionDescription = v5->_actionDescription;
    v5->_actionDescription = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationTitle"];
    v38 = [v37 copy];
    confirmationTitle = v5->_confirmationTitle;
    v5->_confirmationTitle = v38;

    v5->_featured = [coderCopy decodeBoolForKey:@"featured"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletData"];
    appletData = v5->_appletData;
    v5->_appletData = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantPropertyIdentifier"];
    v43 = [v42 copy];
    relevantPropertyIdentifier = v5->_relevantPropertyIdentifier;
    v5->_relevantPropertyIdentifier = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPlanIdentifier"];
    v46 = [v45 copy];
    associatedPlanIdentifier = v5->_associatedPlanIdentifier;
    v5->_associatedPlanIdentifier = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedEnteredValueIdentifier"];
    v49 = [v48 copy];
    associatedEnteredValueIdentifier = v5->_associatedEnteredValueIdentifier;
    v5->_associatedEnteredValueIdentifier = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAutoTopUpIdentifier"];
    v52 = [v51 copy];
    associatedAutoTopUpIdentifier = v5->_associatedAutoTopUpIdentifier;
    v5->_associatedAutoTopUpIdentifier = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPlan"];
    v55 = [v54 copy];
    associatedPlan = v5->_associatedPlan;
    v5->_associatedPlan = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableFrom"];
    v58 = [v57 copy];
    availableFromRaw = v5->_availableFromRaw;
    v5->_availableFromRaw = v58;

    [coderCopy decodeDoubleForKey:@"availableFromOffsetFromUTC"];
    v5->_availableFromOffsetFromUTC = v60;
    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableUntil"];
    v62 = [v61 copy];
    availableUntilRaw = v5->_availableUntilRaw;
    v5->_availableUntilRaw = v62;

    [coderCopy decodeDoubleForKey:@"availableFromRelative"];
    v5->_availableFromRelative = v64;
    [coderCopy decodeDoubleForKey:@"availableUntilRelative"];
    v5->_availableUntilRelative = v65;
    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unavailableBeforeReason"];
    v67 = [v66 copy];
    unavailableBeforeReason = v5->_unavailableBeforeReason;
    v5->_unavailableBeforeReason = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unavailableAfterReason"];
    v70 = [v69 copy];
    unavailableAfterReason = v5->_unavailableAfterReason;
    v5->_unavailableAfterReason = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unavailableActionReason"];
    v73 = [v72 copy];
    unavailableActionReason = v5->_unavailableActionReason;
    v5->_unavailableActionReason = v73;

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unavailableActionTitle"];
    v76 = [v75 copy];
    unavailableActionTitle = v5->_unavailableActionTitle;
    v5->_unavailableActionTitle = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unavailableActionURL"];
    v79 = [v78 copy];
    unavailableActionURL = v5->_unavailableActionURL;
    v5->_unavailableActionURL = v79;

    v5->_unavailableActionBehavior = [coderCopy decodeIntegerForKey:@"unavailableActionBehavior"];
    v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderIdentifier"];
    v82 = [v81 copy];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderLocalizedDisplayName"];
    v85 = [v84 copy];
    serviceProviderLocalizedDisplayName = v5->_serviceProviderLocalizedDisplayName;
    v5->_serviceProviderLocalizedDisplayName = v85;

    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderCountryCode"];
    v88 = [v87 copy];
    serviceProviderCountryCode = v5->_serviceProviderCountryCode;
    v5->_serviceProviderCountryCode = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderCapabilities"];
    v5->_serviceProviderCapabilities = [v90 unsignedIntegerValue];

    v91 = MEMORY[0x1E695DFD8];
    v92 = objc_opt_class();
    v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
    v94 = [coderCopy decodeObjectOfClasses:v93 forKey:@"serviceProviderAcceptedNetworks"];
    v95 = [v94 copy];
    serviceProviderAcceptedNetworks = v5->_serviceProviderAcceptedNetworks;
    v5->_serviceProviderAcceptedNetworks = v95;

    v97 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v99 = [v97 setWithObjects:{v98, objc_opt_class(), 0}];
    v100 = [coderCopy decodeObjectOfClasses:v99 forKey:@"serviceProviderSupportedCountries"];
    serviceProviderSupportedCountries = v5->_serviceProviderSupportedCountries;
    v5->_serviceProviderSupportedCountries = v100;

    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enteredValueItem"];
    enteredValueItem = v5->_enteredValueItem;
    v5->_enteredValueItem = v102;

    v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoTopUpItem"];
    autoTopUpItem = v5->_autoTopUpItem;
    v5->_autoTopUpItem = v104;

    v106 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerText"];
    v107 = [v106 copy];
    headerText = v5->_headerText;
    v5->_headerText = v107;

    v109 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerText"];
    v110 = [v109 copy];
    footerText = v5->_footerText;
    v5->_footerText = v110;

    v112 = MEMORY[0x1E695DFD8];
    v113 = objc_opt_class();
    v114 = [v112 setWithObjects:{v113, objc_opt_class(), 0}];
    v115 = [coderCopy decodeObjectOfClasses:v114 forKey:@"selectedActionItems"];
    v116 = [v115 copy];
    selectedActionItems = v5->_selectedActionItems;
    v5->_selectedActionItems = v116;

    v118 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalURL"];
    externalURL = v5->_externalURL;
    v5->_externalURL = v118;

    v120 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appClipURL"];
    appClipURL = v5->_appClipURL;
    v5->_appClipURL = v120;

    v122 = objc_alloc(MEMORY[0x1E695DFD8]);
    v123 = objc_opt_class();
    v124 = [v122 initWithObjects:{v123, objc_opt_class(), 0}];
    v125 = [coderCopy decodeObjectOfClasses:v124 forKey:@"vehicleFunctionActions"];
    vehicleFunctionActions = v5->_vehicleFunctionActions;
    v5->_vehicleFunctionActions = v125;

    v127 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryPassInformationIdentifier"];
    auxiliaryPassInformationIdentifier = v5->_auxiliaryPassInformationIdentifier;
    v5->_auxiliaryPassInformationIdentifier = v127;

    v129 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryPassInformationItemIdentifier"];
    auxiliaryPassInformationItemIdentifier = v5->_auxiliaryPassInformationItemIdentifier;
    v5->_auxiliaryPassInformationItemIdentifier = v129;

    v131 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v5->_context = PKPassTileContextFromString(v131);

    v132 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v132;

    if (!v5->_remoteContentConfiguration && [coderCopy decodeBoolForKey:@"hasRemoteContent"])
    {
      v134 = -[PKPaymentPassActionRemoteConfiguration initWithRequiresAppletData:appletDataRequiresEncryption:]([PKPaymentPassActionRemoteConfiguration alloc], "initWithRequiresAppletData:appletDataRequiresEncryption:", [coderCopy decodeBoolForKey:@"remoteContentRequiresAppletData"], 1);
      v135 = v5->_remoteContentConfiguration;
      v5->_remoteContentConfiguration = v134;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rawDictionary = self->_rawDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:rawDictionary forKey:@"rawDictionary"];
  [coderCopy encodeObject:self->_localizations forKey:@"localizations"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_remoteContentConfiguration forKey:@"remoteContentConfiguration"];
  [coderCopy encodeObject:self->_externalActionContent forKey:@"externalActionContent"];
  v5 = PKPaymentPassActionTypeToString(self->_type);
  [coderCopy encodeObject:v5 forKey:@"type"];

  [coderCopy encodeObject:self->_appletData forKey:@"appletData"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_actionDescription forKey:@"actionDescription"];
  [coderCopy encodeObject:self->_confirmationTitle forKey:@"confirmationTitle"];
  [coderCopy encodeBool:self->_featured forKey:@"featured"];
  [coderCopy encodeObject:self->_relevantPropertyIdentifier forKey:@"relevantPropertyIdentifier"];
  [coderCopy encodeObject:self->_associatedPlanIdentifier forKey:@"associatedPlanIdentifier"];
  [coderCopy encodeObject:self->_associatedEnteredValueIdentifier forKey:@"associatedEnteredValueIdentifier"];
  [coderCopy encodeObject:self->_associatedAutoTopUpIdentifier forKey:@"associatedAutoTopUpIdentifier"];
  [coderCopy encodeObject:self->_associatedPlan forKey:@"associatedPlan"];
  [coderCopy encodeObject:self->_availableFromRaw forKey:@"availableFrom"];
  [coderCopy encodeDouble:@"availableFromOffsetFromUTC" forKey:self->_availableFromOffsetFromUTC];
  [coderCopy encodeObject:self->_availableUntilRaw forKey:@"availableUntil"];
  [coderCopy encodeDouble:@"availableFromRelative" forKey:self->_availableFromRelative];
  [coderCopy encodeDouble:@"availableUntilRelative" forKey:self->_availableUntilRelative];
  [coderCopy encodeObject:self->_unavailableBeforeReason forKey:@"unavailableBeforeReason"];
  [coderCopy encodeObject:self->_unavailableAfterReason forKey:@"unavailableAfterReason"];
  [coderCopy encodeObject:self->_unavailableActionReason forKey:@"unavailableActionReason"];
  [coderCopy encodeObject:self->_unavailableActionTitle forKey:@"unavailableActionTitle"];
  [coderCopy encodeObject:self->_unavailableActionURL forKey:@"unavailableActionURL"];
  [coderCopy encodeInteger:self->_unavailableActionBehavior forKey:@"unavailableActionBehavior"];
  [coderCopy encodeObject:self->_serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  [coderCopy encodeObject:self->_serviceProviderLocalizedDisplayName forKey:@"serviceProviderLocalizedDisplayName"];
  [coderCopy encodeObject:self->_serviceProviderCountryCode forKey:@"serviceProviderCountryCode"];
  [coderCopy encodeObject:self->_serviceProviderAcceptedNetworks forKey:@"serviceProviderAcceptedNetworks"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_serviceProviderCapabilities];
  [coderCopy encodeObject:v6 forKey:@"serviceProviderCapabilities"];

  [coderCopy encodeObject:self->_serviceProviderSupportedCountries forKey:@"serviceProviderSupportedCountries"];
  [coderCopy encodeObject:self->_enteredValueItem forKey:@"enteredValueItem"];
  [coderCopy encodeObject:self->_autoTopUpItem forKey:@"autoTopUpItem"];
  [coderCopy encodeObject:self->_headerText forKey:@"headerText"];
  [coderCopy encodeObject:self->_footerText forKey:@"footerText"];
  [coderCopy encodeObject:self->_selectedActionItems forKey:@"selectedActionItems"];
  [coderCopy encodeObject:self->_externalURL forKey:@"externalURL"];
  [coderCopy encodeObject:self->_appClipURL forKey:@"appClipURL"];
  [coderCopy encodeObject:self->_vehicleFunctionActions forKey:@"vehicleFunctionActions"];
  [coderCopy encodeObject:self->_auxiliaryPassInformationIdentifier forKey:@"auxiliaryPassInformationIdentifier"];
  [coderCopy encodeObject:self->_auxiliaryPassInformationItemIdentifier forKey:@"auxiliaryPassInformationItemIdentifier"];
  v7 = PKPassTileContextToString(self->_context);
  [coderCopy encodeObject:v7 forKey:@"context"];

  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeBool:-[PKPaymentPassAction hasRemoteContent](self forKey:{"hasRemoteContent"), @"hasRemoteContent"}];
  [coderCopy encodeBool:-[PKPaymentPassAction remoteContentRequiresAppletData](self forKey:{"remoteContentRequiresAppletData"), @"remoteContentRequiresAppletData"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSDictionary *)self->_rawDictionary copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSDictionary *)self->_localizations copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  *(v5 + 64) = self->_type;
  v12 = [(PKPaymentPassActionRemoteConfiguration *)self->_remoteContentConfiguration copyWithZone:zone];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent copyWithZone:zone];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSDictionary *)self->_appletData copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_title copyWithZone:zone];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  v20 = [(NSString *)self->_actionDescription copyWithZone:zone];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  v22 = [(NSString *)self->_confirmationTitle copyWithZone:zone];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  *(v5 + 49) = self->_featured;
  v24 = [(NSString *)self->_relevantPropertyIdentifier copyWithZone:zone];
  v25 = *(v5 + 112);
  *(v5 + 112) = v24;

  v26 = [(NSString *)self->_associatedPlanIdentifier copyWithZone:zone];
  v27 = *(v5 + 128);
  *(v5 + 128) = v26;

  v28 = [(NSString *)self->_associatedEnteredValueIdentifier copyWithZone:zone];
  v29 = *(v5 + 120);
  *(v5 + 120) = v28;

  v30 = [(NSString *)self->_associatedAutoTopUpIdentifier copyWithZone:zone];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  v32 = [(PKTransitCommutePlan *)self->_associatedPlan copyWithZone:zone];
  v33 = *(v5 + 144);
  *(v5 + 144) = v32;

  v34 = [(NSDate *)self->_availableFromRaw copyWithZone:zone];
  v35 = *(v5 + 32);
  *(v5 + 32) = v34;

  *(v5 + 152) = self->_availableFromOffsetFromUTC;
  *(v5 + 328) = self->_availableFromRelative;
  *(v5 + 336) = self->_availableUntilRelative;
  v36 = [(NSDate *)self->_availableUntilRaw copyWithZone:zone];
  v37 = *(v5 + 40);
  *(v5 + 40) = v36;

  v38 = [(NSString *)self->_unavailableBeforeReason copyWithZone:zone];
  v39 = *(v5 + 160);
  *(v5 + 160) = v38;

  v40 = [(NSString *)self->_unavailableAfterReason copyWithZone:zone];
  v41 = *(v5 + 168);
  *(v5 + 168) = v40;

  v42 = [(NSString *)self->_unavailableActionReason copyWithZone:zone];
  v43 = *(v5 + 176);
  *(v5 + 176) = v42;

  v44 = [(NSString *)self->_unavailableActionTitle copyWithZone:zone];
  v45 = *(v5 + 184);
  *(v5 + 184) = v44;

  v46 = [(NSString *)self->_unavailableActionURL copyWithZone:zone];
  v47 = *(v5 + 192);
  *(v5 + 192) = v46;

  *(v5 + 200) = self->_unavailableActionBehavior;
  v48 = [(NSString *)self->_serviceProviderIdentifier copyWithZone:zone];
  v49 = *(v5 + 208);
  *(v5 + 208) = v48;

  v50 = [(NSString *)self->_serviceProviderLocalizedDisplayName copyWithZone:zone];
  v51 = *(v5 + 216);
  *(v5 + 216) = v50;

  v52 = [(NSString *)self->_serviceProviderCountryCode copyWithZone:zone];
  v53 = *(v5 + 224);
  *(v5 + 224) = v52;

  v54 = [(NSArray *)self->_serviceProviderAcceptedNetworks copyWithZone:zone];
  v55 = *(v5 + 232);
  *(v5 + 232) = v54;

  *(v5 + 248) = self->_serviceProviderCapabilities;
  v56 = [(NSSet *)self->_serviceProviderSupportedCountries copyWithZone:zone];
  v57 = *(v5 + 240);
  *(v5 + 240) = v56;

  v58 = [(PKEnteredValueActionItem *)self->_enteredValueItem copyWithZone:zone];
  v59 = *(v5 + 376);
  *(v5 + 376) = v58;

  v60 = [(PKAutoTopUpActionItem *)self->_autoTopUpItem copyWithZone:zone];
  v61 = *(v5 + 344);
  *(v5 + 344) = v60;

  v62 = [(NSString *)self->_headerText copyWithZone:zone];
  v63 = *(v5 + 352);
  *(v5 + 352) = v62;

  v64 = [(NSString *)self->_footerText copyWithZone:zone];
  v65 = *(v5 + 360);
  *(v5 + 360) = v64;

  v66 = [(NSArray *)self->_selectedActionItems copyWithZone:zone];
  v67 = *(v5 + 368);
  *(v5 + 368) = v66;

  v68 = [(NSArray *)self->_purchaseNewActionItems copyWithZone:zone];
  v69 = *(v5 + 296);
  *(v5 + 296) = v68;

  v70 = [(NSURL *)self->_externalURL copyWithZone:zone];
  v71 = *(v5 + 320);
  *(v5 + 320) = v70;

  v72 = [(NSURL *)self->_appClipURL copyWithZone:zone];
  v73 = *(v5 + 312);
  *(v5 + 312) = v72;

  v74 = [(NSDictionary *)self->_vehicleFunctionActions copyWithZone:zone];
  v75 = *(v5 + 304);
  *(v5 + 304) = v74;

  v76 = [(NSString *)self->_auxiliaryPassInformationIdentifier copyWithZone:zone];
  v77 = *(v5 + 280);
  *(v5 + 280) = v76;

  v78 = [(NSString *)self->_auxiliaryPassInformationItemIdentifier copyWithZone:zone];
  v79 = *(v5 + 288);
  *(v5 + 288) = v78;

  *(v5 + 272) = self->_context;
  v80 = [(PKImage *)self->_image copy];
  v81 = *(v5 + 264);
  *(v5 + 264) = v80;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKPaymentPassActionTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  if (self->_remoteContentConfiguration)
  {
    [v3 appendFormat:@"remoteContent: '%@'; ", self->_remoteContentConfiguration];
  }

  if (self->_externalActionContent)
  {
    [v3 appendFormat:@"externalActionContent: '%@'; ", self->_externalActionContent];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end