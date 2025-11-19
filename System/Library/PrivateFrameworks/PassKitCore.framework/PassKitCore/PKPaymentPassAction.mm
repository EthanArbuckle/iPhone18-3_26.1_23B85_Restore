@interface PKPaymentPassAction
+ (id)effectiveActionForActions:(id)a3;
- (BOOL)isActionAvailable;
- (BOOL)remoteContentRequiresAppletData;
- (NSDate)availableFrom;
- (NSDate)availableUntil;
- (NSString)title;
- (PKPaymentPassAction)initWithCoder:(id)a3;
- (PKPaymentPassAction)initWithDictionary:(id)a3 bundle:(id)a4;
- (PKPaymentPassAction)initWithDictionary:(id)a3 localizations:(id)a4;
- (id)_initForFlightSharing;
- (id)_initWithAppClipURL:(id)a3;
- (id)_initWithBusinessChatIdentifier:(id)a3;
- (id)_initWithContext:(int64_t)a3;
- (id)_initWithExternalURL:(id)a3 title:(id)a4;
- (id)_initWithImage:(id)a3 title:(id)a4;
- (id)actionUpdatedWithDictionary:(id)a3 localizations:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_processLocalizableStrings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentPassAction

- (PKPaymentPassAction)initWithDictionary:(id)a3 localizations:(id)a4
{
  v187 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v184.receiver = self;
  v184.super_class = PKPaymentPassAction;
  v8 = [(PKPaymentPassAction *)&v184 init];
  v9 = v8;
  v10 = &unk_1ADB86000;
  if (v8)
  {
    v8->_reverseButtonTitleForLegacySuica = 0;
    v11 = [v6 copy];
    rawDictionary = v9->_rawDictionary;
    v9->_rawDictionary = v11;

    v13 = [v7 copy];
    localizations = v9->_localizations;
    v9->_localizations = v13;

    v15 = [v6 PKStringForKey:@"identifier"];
    v16 = [v15 copy];
    identifier = v9->_identifier;
    v9->_identifier = v16;

    v18 = [v6 PKStringForKey:@"type"];
    v9->_type = PKPaymentPassActionTypeFromString(v18);

    v19 = [PKPaymentPassActionRemoteConfiguration alloc];
    v20 = [v6 PKDictionaryForKey:@"remoteContentConfiguration"];
    v21 = [(PKPaymentPassActionRemoteConfiguration *)v19 initWithDictionary:v20];
    remoteContentConfiguration = v9->_remoteContentConfiguration;
    v9->_remoteContentConfiguration = v21;

    if (!v9->_remoteContentConfiguration && [v6 PKBoolForKey:@"hasRemoteContent"])
    {
      v23 = -[PKPaymentPassActionRemoteConfiguration initWithRequiresAppletData:appletDataRequiresEncryption:]([PKPaymentPassActionRemoteConfiguration alloc], "initWithRequiresAppletData:appletDataRequiresEncryption:", [v6 PKBoolForKey:@"remoteContentRequiresAppletData"], 1);
      v24 = v9->_remoteContentConfiguration;
      v9->_remoteContentConfiguration = v23;
    }

    v25 = [PKPaymentPassActionExternalActionContent alloc];
    v26 = [v6 PKDictionaryForKey:@"externalActionContent"];
    v27 = [(PKPaymentPassActionExternalActionContent *)v25 initWithDictionary:v26];
    externalActionContent = v9->_externalActionContent;
    v9->_externalActionContent = v27;

    v29 = [v6 PKStringForKey:@"title"];
    v30 = [v29 copy];
    title = v9->_title;
    v9->_title = v30;

    v32 = [v6 PKStringForKey:@"description"];
    v33 = [v32 copy];
    actionDescription = v9->_actionDescription;
    v9->_actionDescription = v33;

    v35 = [v6 PKStringForKey:@"confirmationTitle"];
    v36 = [v35 copy];
    confirmationTitle = v9->_confirmationTitle;
    v9->_confirmationTitle = v36;

    v9->_featured = [v6 PKBoolForKey:@"featured"];
    v38 = [v6 PKStringForKey:@"relevantPropertyIdentifier"];
    v39 = [v38 copy];
    relevantPropertyIdentifier = v9->_relevantPropertyIdentifier;
    v9->_relevantPropertyIdentifier = v39;

    v41 = [v6 PKStringForKey:@"associatedPlanIdentifier"];
    v42 = [v41 copy];
    associatedPlanIdentifier = v9->_associatedPlanIdentifier;
    v9->_associatedPlanIdentifier = v42;

    v44 = [v6 PKStringForKey:@"associatedEnteredValueIdentifier"];
    v45 = [v44 copy];
    associatedEnteredValueIdentifier = v9->_associatedEnteredValueIdentifier;
    v9->_associatedEnteredValueIdentifier = v45;

    v47 = [v6 PKStringForKey:@"associatedAutoTopUpIdentifier"];
    v48 = [v47 copy];
    associatedAutoTopUpIdentifier = v9->_associatedAutoTopUpIdentifier;
    v9->_associatedAutoTopUpIdentifier = v48;

    v50 = [v6 PKDictionaryForKey:@"appletData"];
    v51 = [v50 copy];
    appletData = v9->_appletData;
    v9->_appletData = v51;

    v53 = [v6 PKStringForKey:@"availableFrom"];
    v183 = 0.0;
    v54 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v53, 0, &v183);
    availableFromRaw = v9->_availableFromRaw;
    v9->_availableFromRaw = v54;

    if (v9->_availableFromRaw)
    {
      v9->_availableFromOffsetFromUTC = v183;
    }

    v56 = [v6 PKDateForKey:@"availableUntil"];
    v57 = [v56 copy];
    availableUntilRaw = v9->_availableUntilRaw;
    v9->_availableUntilRaw = v57;

    v59 = [v6 PKStringForKey:@"unavailableBeforeReason"];
    v60 = [v59 copy];
    unavailableBeforeReason = v9->_unavailableBeforeReason;
    v9->_unavailableBeforeReason = v60;

    v62 = [v6 PKStringForKey:@"unavailableAfterReason"];
    v63 = [v62 copy];
    unavailableAfterReason = v9->_unavailableAfterReason;
    v9->_unavailableAfterReason = v63;

    v65 = [v6 PKStringForKey:@"unavailableActionReason"];
    v66 = [v65 copy];
    unavailableActionReason = v9->_unavailableActionReason;
    v9->_unavailableActionReason = v66;

    v68 = [v6 PKStringForKey:@"unavailableActionTitle"];
    v69 = [v68 copy];
    unavailableActionTitle = v9->_unavailableActionTitle;
    v9->_unavailableActionTitle = v69;

    v71 = [v6 PKStringForKey:@"unavailableActionURL"];
    v72 = [v71 copy];
    unavailableActionURL = v9->_unavailableActionURL;
    v9->_unavailableActionURL = v72;

    v9->_unavailableActionBehavior = [v6 PKIntegerForKey:@"unavailableActionBehavior"];
    v74 = [v6 PKStringForKey:@"serviceProviderIdentifier"];
    v75 = [v74 copy];
    serviceProviderIdentifier = v9->_serviceProviderIdentifier;
    v9->_serviceProviderIdentifier = v75;

    v77 = [v6 PKStringForKey:@"serviceProviderLocalizedDisplayName"];
    v78 = [v77 copy];
    serviceProviderLocalizedDisplayName = v9->_serviceProviderLocalizedDisplayName;
    v9->_serviceProviderLocalizedDisplayName = v78;

    v80 = [v6 PKStringForKey:@"serviceProviderCountryCode"];
    v81 = [v80 copy];
    serviceProviderCountryCode = v9->_serviceProviderCountryCode;
    v9->_serviceProviderCountryCode = v81;

    v83 = [v6 PKArrayContaining:objc_opt_class() forKey:@"serviceProviderAcceptedNetworks"];
    if (!v83)
    {
      v83 = [v6 PKArrayContaining:objc_opt_class() forKey:@"serviceProviderSupportedNetworks"];
    }

    v84 = +[PKServiceProviderPaymentRequest availableNetworks];
    v85 = [v83 pk_intersectArray:v84];
    serviceProviderAcceptedNetworks = v9->_serviceProviderAcceptedNetworks;
    v9->_serviceProviderAcceptedNetworks = v85;

    v87 = [v6 PKArrayContaining:objc_opt_class() forKey:@"serviceProviderCapabilities"];
    v9->_serviceProviderCapabilities = PKMerchantCapabilityFromStrings(v87);

    v88 = [v6 PKSetForKey:@"serviceProviderSupportedCountries"];
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
          auxiliaryPassInformationItemIdentifier = [v6 PKStringForKey:@"url"];
          if (auxiliaryPassInformationItemIdentifier)
          {
            v134 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:auxiliaryPassInformationItemIdentifier];
            externalURL = v9->_externalURL;
            v9->_externalURL = v134;
            goto LABEL_51;
          }

          goto LABEL_77;
        }

        auxiliaryPassInformationItemIdentifier = [v6 PKDictionaryForKey:@"vehicleFunctionActions"];
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
        auxiliaryPassInformationItemIdentifier = [v6 PKDictionaryForKey:@"item"];
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

      v167 = v7;
      v168 = v88;
      v165 = v83;
      v166 = v53;
      v94 = [v6 PKStringForKey:@"headerText"];
      v95 = [v94 copy];
      headerText = v9->_headerText;
      v9->_headerText = v95;

      v97 = [v6 PKStringForKey:@"footerText"];
      v98 = [v97 copy];
      footerText = v9->_footerText;
      v9->_footerText = v98;

      [v6 PKDoubleForKey:@"availableFromRelative"];
      v9->_availableFromRelative = v100;
      [v6 PKDoubleForKey:@"availableUntilRelative"];
      v9->_availableUntilRelative = v101;
      auxiliaryPassInformationItemIdentifier = objc_alloc_init(MEMORY[0x1E695DF70]);
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v102 = [v6 PKArrayForKey:@"items"];
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
        v111 = [(NSArray *)v9->_selectedActionItems firstObject];
        v112 = [v111 amount];
        v113 = [v111 currency];
        v164 = PKFormattedCurrencyStringFromNumber(v112, v113);

        v114 = v9->_actionDescription;
        v115 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v116 = [(NSString *)v114 stringByTrimmingCharactersInSet:v115];
        if (v116)
        {
          v117 = v116;
          v118 = [v116 length];

          v83 = v165;
          v88 = v168;
          if (v118)
          {
            v7 = v167;
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
        v7 = v167;
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
            v135 = [v6 PKStringForKey:@"auxiliaryPassInformationIdentifier"];
            auxiliaryPassInformationIdentifier = v9->_auxiliaryPassInformationIdentifier;
            v9->_auxiliaryPassInformationIdentifier = v135;

            v137 = [v6 PKStringForKey:@"auxiliaryPassInformationItemIdentifier"];
            auxiliaryPassInformationItemIdentifier = v9->_auxiliaryPassInformationItemIdentifier;
            v9->_auxiliaryPassInformationItemIdentifier = v137;
            goto LABEL_77;
          case 8:
            auxiliaryPassInformationItemIdentifier = [v6 PKStringForKey:@"context"];
            v9->_context = PKPassTileContextFromString(auxiliaryPassInformationItemIdentifier);
            goto LABEL_77;
          case 10:
            auxiliaryPassInformationItemIdentifier = [v6 PKStringForKey:@"url"];
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
        v126 = [v6 PKStringForKey:@"headerText"];
        v127 = [v126 copy];
        v128 = v9->_headerText;
        v9->_headerText = v127;

        v129 = [v6 PKStringForKey:@"footerText"];
        v130 = [v129 copy];
        v131 = v9->_footerText;
        v9->_footerText = v130;

        auxiliaryPassInformationItemIdentifier = [v6 PKDictionaryForKey:@"item"];
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

      v167 = v7;
      v168 = v88;
      v165 = v83;
      v166 = v53;
      v138 = [v6 PKStringForKey:@"headerText"];
      v139 = [v138 copy];
      v140 = v9->_headerText;
      v9->_headerText = v139;

      v141 = [v6 PKStringForKey:@"footerText"];
      v142 = [v141 copy];
      v143 = v9->_footerText;
      v9->_footerText = v142;

      auxiliaryPassInformationItemIdentifier = objc_alloc_init(MEMORY[0x1E695DF70]);
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v144 = [v6 PKArrayForKey:@"items"];
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
        v111 = [(NSArray *)v9->_purchaseNewActionItems firstObject];
        v153 = [v111 amount];
        v154 = [v111 currency];
        v164 = PKFormattedCurrencyStringFromNumber(v153, v154);

        v155 = v9->_actionDescription;
        v156 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v157 = [(NSString *)v155 stringByTrimmingCharactersInSet:v156];
        v83 = v165;
        v88 = v168;
        if (v157)
        {
          v158 = v157;
          v159 = [v157 length];

          if (v159)
          {
            v119 = v164;
            v7 = v167;
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
    v7 = v167;
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

- (PKPaymentPassAction)initWithDictionary:(id)a3 bundle:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a4 pathForResource:@"actions" ofType:@"strings"];
    a4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v7];
    self = [(PKPaymentPassAction *)self initWithDictionary:v6 localizations:a4];
  }

  v8 = [(PKPaymentPassAction *)self initWithDictionary:v6 localizations:a4];

  return v8;
}

- (id)_initWithExternalURL:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentPassAction;
  v9 = [(PKPaymentPassAction *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_type = 3;
    objc_storeStrong(&v9->_externalURL, a3);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (id)_initWithAppClipURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentPassAction;
  v6 = [(PKPaymentPassAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 10;
    objc_storeStrong(&v6->_appClipURL, a3);
  }

  return v7;
}

- (id)_initWithContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentPassAction;
  result = [(PKPaymentPassAction *)&v5 init];
  if (result)
  {
    *(result + 8) = 8;
    *(result + 34) = a3;
  }

  return result;
}

- (id)_initWithImage:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentPassAction;
  v9 = [(PKPaymentPassAction *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_type = 9;
    objc_storeStrong(&v9->_image, a3);
    objc_storeStrong(p_isa + 3, a4);
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

- (id)_initWithBusinessChatIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentPassAction;
  v6 = [(PKPaymentPassAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 14;
    objc_storeStrong(&v6->_businessChatIdentifier, a3);
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

- (void)_processLocalizableStrings:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(PKPaymentPassAction *)self _localizableKeys];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(PKPaymentPassAction *)self valueForKey:v10];
          if (v11)
          {
            v12 = v4[2](v4, v11);
            if (v12)
            {
              [(PKPaymentPassAction *)self setValue:v12 forKey:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    [(PKEnteredValueActionItem *)self->_enteredValueItem _processLocalizableStrings:v4];
    [(PKAutoTopUpActionItem *)self->_autoTopUpItem _processLocalizableStrings:v4];
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

          [*(*(&v18 + 1) + 8 * j) _processLocalizableStrings:{v4, v18}];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }
}

- (id)actionUpdatedWithDictionary:(id)a3 localizations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentPassAction *)self identifier];
  v9 = [v6 PKStringForKey:@"identifier"];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [(NSDictionary *)self->_rawDictionary mutableCopy];
    [v11 addEntriesFromDictionary:v6];
    v12 = [objc_alloc(objc_opt_class()) initWithDictionary:v11 localizations:v7];
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

+ (id)effectiveActionForActions:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
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
    v4 = v11;
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    v5 = 0;
  }

  if (self->_availableFromRaw)
  {
    availableFromRaw = self->_availableFromRaw;
  }

  else
  {
    availableFromRaw = v4;
  }

  v7 = availableFromRaw;

  return availableFromRaw;
}

- (NSDate)availableUntil
{
  if (self->_type == 2 && (associatedPlan = self->_associatedPlan) != 0 && !self->_availableUntilRaw && self->_availableUntilRelative != 0.0 && (-[PKTransitCommutePlan expiryDate](associatedPlan, "expiryDate"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [v9 dateByAddingTimeInterval:self->_availableUntilRelative], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v4 = v11;
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] distantFuture];
    v5 = 0;
  }

  if (self->_availableUntilRaw)
  {
    availableUntilRaw = self->_availableUntilRaw;
  }

  else
  {
    availableUntilRaw = v4;
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

  v4 = [(PKPaymentPassAction *)self availableFrom];
  v5 = [(PKPaymentPassAction *)self availableUntil];
  v6 = [MEMORY[0x1E695DF00] date];
  v3 = [v6 compare:v4] == 1 && objc_msgSend(v6, "compare:", v5) == -1;

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

- (PKPaymentPassAction)initWithCoder:(id)a3
{
  v4 = a3;
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
    v11 = [v4 decodeObjectOfClasses:? forKey:?];
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
    v20 = [v4 decodeObjectOfClasses:? forKey:?];
    v21 = [v20 copy];
    localizations = v5->_localizations;
    v5->_localizations = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v24 = [v23 copy];
    identifier = v5->_identifier;
    v5->_identifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentPassActionTypeFromString(v26);

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteContentConfiguration"];
    remoteContentConfiguration = v5->_remoteContentConfiguration;
    v5->_remoteContentConfiguration = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalActionContent"];
    externalActionContent = v5->_externalActionContent;
    v5->_externalActionContent = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v32 = [v31 copy];
    title = v5->_title;
    v5->_title = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionDescription"];
    v35 = [v34 copy];
    actionDescription = v5->_actionDescription;
    v5->_actionDescription = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationTitle"];
    v38 = [v37 copy];
    confirmationTitle = v5->_confirmationTitle;
    v5->_confirmationTitle = v38;

    v5->_featured = [v4 decodeBoolForKey:@"featured"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletData"];
    appletData = v5->_appletData;
    v5->_appletData = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relevantPropertyIdentifier"];
    v43 = [v42 copy];
    relevantPropertyIdentifier = v5->_relevantPropertyIdentifier;
    v5->_relevantPropertyIdentifier = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPlanIdentifier"];
    v46 = [v45 copy];
    associatedPlanIdentifier = v5->_associatedPlanIdentifier;
    v5->_associatedPlanIdentifier = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedEnteredValueIdentifier"];
    v49 = [v48 copy];
    associatedEnteredValueIdentifier = v5->_associatedEnteredValueIdentifier;
    v5->_associatedEnteredValueIdentifier = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAutoTopUpIdentifier"];
    v52 = [v51 copy];
    associatedAutoTopUpIdentifier = v5->_associatedAutoTopUpIdentifier;
    v5->_associatedAutoTopUpIdentifier = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPlan"];
    v55 = [v54 copy];
    associatedPlan = v5->_associatedPlan;
    v5->_associatedPlan = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableFrom"];
    v58 = [v57 copy];
    availableFromRaw = v5->_availableFromRaw;
    v5->_availableFromRaw = v58;

    [v4 decodeDoubleForKey:@"availableFromOffsetFromUTC"];
    v5->_availableFromOffsetFromUTC = v60;
    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableUntil"];
    v62 = [v61 copy];
    availableUntilRaw = v5->_availableUntilRaw;
    v5->_availableUntilRaw = v62;

    [v4 decodeDoubleForKey:@"availableFromRelative"];
    v5->_availableFromRelative = v64;
    [v4 decodeDoubleForKey:@"availableUntilRelative"];
    v5->_availableUntilRelative = v65;
    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unavailableBeforeReason"];
    v67 = [v66 copy];
    unavailableBeforeReason = v5->_unavailableBeforeReason;
    v5->_unavailableBeforeReason = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unavailableAfterReason"];
    v70 = [v69 copy];
    unavailableAfterReason = v5->_unavailableAfterReason;
    v5->_unavailableAfterReason = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unavailableActionReason"];
    v73 = [v72 copy];
    unavailableActionReason = v5->_unavailableActionReason;
    v5->_unavailableActionReason = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unavailableActionTitle"];
    v76 = [v75 copy];
    unavailableActionTitle = v5->_unavailableActionTitle;
    v5->_unavailableActionTitle = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unavailableActionURL"];
    v79 = [v78 copy];
    unavailableActionURL = v5->_unavailableActionURL;
    v5->_unavailableActionURL = v79;

    v5->_unavailableActionBehavior = [v4 decodeIntegerForKey:@"unavailableActionBehavior"];
    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderIdentifier"];
    v82 = [v81 copy];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderLocalizedDisplayName"];
    v85 = [v84 copy];
    serviceProviderLocalizedDisplayName = v5->_serviceProviderLocalizedDisplayName;
    v5->_serviceProviderLocalizedDisplayName = v85;

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderCountryCode"];
    v88 = [v87 copy];
    serviceProviderCountryCode = v5->_serviceProviderCountryCode;
    v5->_serviceProviderCountryCode = v88;

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderCapabilities"];
    v5->_serviceProviderCapabilities = [v90 unsignedIntegerValue];

    v91 = MEMORY[0x1E695DFD8];
    v92 = objc_opt_class();
    v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
    v94 = [v4 decodeObjectOfClasses:v93 forKey:@"serviceProviderAcceptedNetworks"];
    v95 = [v94 copy];
    serviceProviderAcceptedNetworks = v5->_serviceProviderAcceptedNetworks;
    v5->_serviceProviderAcceptedNetworks = v95;

    v97 = MEMORY[0x1E695DFD8];
    v98 = objc_opt_class();
    v99 = [v97 setWithObjects:{v98, objc_opt_class(), 0}];
    v100 = [v4 decodeObjectOfClasses:v99 forKey:@"serviceProviderSupportedCountries"];
    serviceProviderSupportedCountries = v5->_serviceProviderSupportedCountries;
    v5->_serviceProviderSupportedCountries = v100;

    v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enteredValueItem"];
    enteredValueItem = v5->_enteredValueItem;
    v5->_enteredValueItem = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoTopUpItem"];
    autoTopUpItem = v5->_autoTopUpItem;
    v5->_autoTopUpItem = v104;

    v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerText"];
    v107 = [v106 copy];
    headerText = v5->_headerText;
    v5->_headerText = v107;

    v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerText"];
    v110 = [v109 copy];
    footerText = v5->_footerText;
    v5->_footerText = v110;

    v112 = MEMORY[0x1E695DFD8];
    v113 = objc_opt_class();
    v114 = [v112 setWithObjects:{v113, objc_opt_class(), 0}];
    v115 = [v4 decodeObjectOfClasses:v114 forKey:@"selectedActionItems"];
    v116 = [v115 copy];
    selectedActionItems = v5->_selectedActionItems;
    v5->_selectedActionItems = v116;

    v118 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalURL"];
    externalURL = v5->_externalURL;
    v5->_externalURL = v118;

    v120 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appClipURL"];
    appClipURL = v5->_appClipURL;
    v5->_appClipURL = v120;

    v122 = objc_alloc(MEMORY[0x1E695DFD8]);
    v123 = objc_opt_class();
    v124 = [v122 initWithObjects:{v123, objc_opt_class(), 0}];
    v125 = [v4 decodeObjectOfClasses:v124 forKey:@"vehicleFunctionActions"];
    vehicleFunctionActions = v5->_vehicleFunctionActions;
    v5->_vehicleFunctionActions = v125;

    v127 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryPassInformationIdentifier"];
    auxiliaryPassInformationIdentifier = v5->_auxiliaryPassInformationIdentifier;
    v5->_auxiliaryPassInformationIdentifier = v127;

    v129 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryPassInformationItemIdentifier"];
    auxiliaryPassInformationItemIdentifier = v5->_auxiliaryPassInformationItemIdentifier;
    v5->_auxiliaryPassInformationItemIdentifier = v129;

    v131 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v5->_context = PKPassTileContextFromString(v131);

    v132 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v132;

    if (!v5->_remoteContentConfiguration && [v4 decodeBoolForKey:@"hasRemoteContent"])
    {
      v134 = -[PKPaymentPassActionRemoteConfiguration initWithRequiresAppletData:appletDataRequiresEncryption:]([PKPaymentPassActionRemoteConfiguration alloc], "initWithRequiresAppletData:appletDataRequiresEncryption:", [v4 decodeBoolForKey:@"remoteContentRequiresAppletData"], 1);
      v135 = v5->_remoteContentConfiguration;
      v5->_remoteContentConfiguration = v134;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rawDictionary = self->_rawDictionary;
  v8 = a3;
  [v8 encodeObject:rawDictionary forKey:@"rawDictionary"];
  [v8 encodeObject:self->_localizations forKey:@"localizations"];
  [v8 encodeObject:self->_identifier forKey:@"identifier"];
  [v8 encodeObject:self->_remoteContentConfiguration forKey:@"remoteContentConfiguration"];
  [v8 encodeObject:self->_externalActionContent forKey:@"externalActionContent"];
  v5 = PKPaymentPassActionTypeToString(self->_type);
  [v8 encodeObject:v5 forKey:@"type"];

  [v8 encodeObject:self->_appletData forKey:@"appletData"];
  [v8 encodeObject:self->_title forKey:@"title"];
  [v8 encodeObject:self->_actionDescription forKey:@"actionDescription"];
  [v8 encodeObject:self->_confirmationTitle forKey:@"confirmationTitle"];
  [v8 encodeBool:self->_featured forKey:@"featured"];
  [v8 encodeObject:self->_relevantPropertyIdentifier forKey:@"relevantPropertyIdentifier"];
  [v8 encodeObject:self->_associatedPlanIdentifier forKey:@"associatedPlanIdentifier"];
  [v8 encodeObject:self->_associatedEnteredValueIdentifier forKey:@"associatedEnteredValueIdentifier"];
  [v8 encodeObject:self->_associatedAutoTopUpIdentifier forKey:@"associatedAutoTopUpIdentifier"];
  [v8 encodeObject:self->_associatedPlan forKey:@"associatedPlan"];
  [v8 encodeObject:self->_availableFromRaw forKey:@"availableFrom"];
  [v8 encodeDouble:@"availableFromOffsetFromUTC" forKey:self->_availableFromOffsetFromUTC];
  [v8 encodeObject:self->_availableUntilRaw forKey:@"availableUntil"];
  [v8 encodeDouble:@"availableFromRelative" forKey:self->_availableFromRelative];
  [v8 encodeDouble:@"availableUntilRelative" forKey:self->_availableUntilRelative];
  [v8 encodeObject:self->_unavailableBeforeReason forKey:@"unavailableBeforeReason"];
  [v8 encodeObject:self->_unavailableAfterReason forKey:@"unavailableAfterReason"];
  [v8 encodeObject:self->_unavailableActionReason forKey:@"unavailableActionReason"];
  [v8 encodeObject:self->_unavailableActionTitle forKey:@"unavailableActionTitle"];
  [v8 encodeObject:self->_unavailableActionURL forKey:@"unavailableActionURL"];
  [v8 encodeInteger:self->_unavailableActionBehavior forKey:@"unavailableActionBehavior"];
  [v8 encodeObject:self->_serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  [v8 encodeObject:self->_serviceProviderLocalizedDisplayName forKey:@"serviceProviderLocalizedDisplayName"];
  [v8 encodeObject:self->_serviceProviderCountryCode forKey:@"serviceProviderCountryCode"];
  [v8 encodeObject:self->_serviceProviderAcceptedNetworks forKey:@"serviceProviderAcceptedNetworks"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_serviceProviderCapabilities];
  [v8 encodeObject:v6 forKey:@"serviceProviderCapabilities"];

  [v8 encodeObject:self->_serviceProviderSupportedCountries forKey:@"serviceProviderSupportedCountries"];
  [v8 encodeObject:self->_enteredValueItem forKey:@"enteredValueItem"];
  [v8 encodeObject:self->_autoTopUpItem forKey:@"autoTopUpItem"];
  [v8 encodeObject:self->_headerText forKey:@"headerText"];
  [v8 encodeObject:self->_footerText forKey:@"footerText"];
  [v8 encodeObject:self->_selectedActionItems forKey:@"selectedActionItems"];
  [v8 encodeObject:self->_externalURL forKey:@"externalURL"];
  [v8 encodeObject:self->_appClipURL forKey:@"appClipURL"];
  [v8 encodeObject:self->_vehicleFunctionActions forKey:@"vehicleFunctionActions"];
  [v8 encodeObject:self->_auxiliaryPassInformationIdentifier forKey:@"auxiliaryPassInformationIdentifier"];
  [v8 encodeObject:self->_auxiliaryPassInformationItemIdentifier forKey:@"auxiliaryPassInformationItemIdentifier"];
  v7 = PKPassTileContextToString(self->_context);
  [v8 encodeObject:v7 forKey:@"context"];

  [v8 encodeObject:self->_image forKey:@"image"];
  [v8 encodeBool:-[PKPaymentPassAction hasRemoteContent](self forKey:{"hasRemoteContent"), @"hasRemoteContent"}];
  [v8 encodeBool:-[PKPaymentPassAction remoteContentRequiresAppletData](self forKey:{"remoteContentRequiresAppletData"), @"remoteContentRequiresAppletData"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSDictionary *)self->_rawDictionary copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSDictionary *)self->_localizations copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  *(v5 + 64) = self->_type;
  v12 = [(PKPaymentPassActionRemoteConfiguration *)self->_remoteContentConfiguration copyWithZone:a3];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent copyWithZone:a3];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSDictionary *)self->_appletData copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_title copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  v20 = [(NSString *)self->_actionDescription copyWithZone:a3];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  v22 = [(NSString *)self->_confirmationTitle copyWithZone:a3];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  *(v5 + 49) = self->_featured;
  v24 = [(NSString *)self->_relevantPropertyIdentifier copyWithZone:a3];
  v25 = *(v5 + 112);
  *(v5 + 112) = v24;

  v26 = [(NSString *)self->_associatedPlanIdentifier copyWithZone:a3];
  v27 = *(v5 + 128);
  *(v5 + 128) = v26;

  v28 = [(NSString *)self->_associatedEnteredValueIdentifier copyWithZone:a3];
  v29 = *(v5 + 120);
  *(v5 + 120) = v28;

  v30 = [(NSString *)self->_associatedAutoTopUpIdentifier copyWithZone:a3];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  v32 = [(PKTransitCommutePlan *)self->_associatedPlan copyWithZone:a3];
  v33 = *(v5 + 144);
  *(v5 + 144) = v32;

  v34 = [(NSDate *)self->_availableFromRaw copyWithZone:a3];
  v35 = *(v5 + 32);
  *(v5 + 32) = v34;

  *(v5 + 152) = self->_availableFromOffsetFromUTC;
  *(v5 + 328) = self->_availableFromRelative;
  *(v5 + 336) = self->_availableUntilRelative;
  v36 = [(NSDate *)self->_availableUntilRaw copyWithZone:a3];
  v37 = *(v5 + 40);
  *(v5 + 40) = v36;

  v38 = [(NSString *)self->_unavailableBeforeReason copyWithZone:a3];
  v39 = *(v5 + 160);
  *(v5 + 160) = v38;

  v40 = [(NSString *)self->_unavailableAfterReason copyWithZone:a3];
  v41 = *(v5 + 168);
  *(v5 + 168) = v40;

  v42 = [(NSString *)self->_unavailableActionReason copyWithZone:a3];
  v43 = *(v5 + 176);
  *(v5 + 176) = v42;

  v44 = [(NSString *)self->_unavailableActionTitle copyWithZone:a3];
  v45 = *(v5 + 184);
  *(v5 + 184) = v44;

  v46 = [(NSString *)self->_unavailableActionURL copyWithZone:a3];
  v47 = *(v5 + 192);
  *(v5 + 192) = v46;

  *(v5 + 200) = self->_unavailableActionBehavior;
  v48 = [(NSString *)self->_serviceProviderIdentifier copyWithZone:a3];
  v49 = *(v5 + 208);
  *(v5 + 208) = v48;

  v50 = [(NSString *)self->_serviceProviderLocalizedDisplayName copyWithZone:a3];
  v51 = *(v5 + 216);
  *(v5 + 216) = v50;

  v52 = [(NSString *)self->_serviceProviderCountryCode copyWithZone:a3];
  v53 = *(v5 + 224);
  *(v5 + 224) = v52;

  v54 = [(NSArray *)self->_serviceProviderAcceptedNetworks copyWithZone:a3];
  v55 = *(v5 + 232);
  *(v5 + 232) = v54;

  *(v5 + 248) = self->_serviceProviderCapabilities;
  v56 = [(NSSet *)self->_serviceProviderSupportedCountries copyWithZone:a3];
  v57 = *(v5 + 240);
  *(v5 + 240) = v56;

  v58 = [(PKEnteredValueActionItem *)self->_enteredValueItem copyWithZone:a3];
  v59 = *(v5 + 376);
  *(v5 + 376) = v58;

  v60 = [(PKAutoTopUpActionItem *)self->_autoTopUpItem copyWithZone:a3];
  v61 = *(v5 + 344);
  *(v5 + 344) = v60;

  v62 = [(NSString *)self->_headerText copyWithZone:a3];
  v63 = *(v5 + 352);
  *(v5 + 352) = v62;

  v64 = [(NSString *)self->_footerText copyWithZone:a3];
  v65 = *(v5 + 360);
  *(v5 + 360) = v64;

  v66 = [(NSArray *)self->_selectedActionItems copyWithZone:a3];
  v67 = *(v5 + 368);
  *(v5 + 368) = v66;

  v68 = [(NSArray *)self->_purchaseNewActionItems copyWithZone:a3];
  v69 = *(v5 + 296);
  *(v5 + 296) = v68;

  v70 = [(NSURL *)self->_externalURL copyWithZone:a3];
  v71 = *(v5 + 320);
  *(v5 + 320) = v70;

  v72 = [(NSURL *)self->_appClipURL copyWithZone:a3];
  v73 = *(v5 + 312);
  *(v5 + 312) = v72;

  v74 = [(NSDictionary *)self->_vehicleFunctionActions copyWithZone:a3];
  v75 = *(v5 + 304);
  *(v5 + 304) = v74;

  v76 = [(NSString *)self->_auxiliaryPassInformationIdentifier copyWithZone:a3];
  v77 = *(v5 + 280);
  *(v5 + 280) = v76;

  v78 = [(NSString *)self->_auxiliaryPassInformationItemIdentifier copyWithZone:a3];
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