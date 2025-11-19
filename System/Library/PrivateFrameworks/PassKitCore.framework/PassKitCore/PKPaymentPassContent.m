@interface PKPaymentPassContent
- (PKPaymentPassContent)initWithCoder:(id)a3;
- (PKPaymentPassContent)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentPassContent

- (PKPaymentPassContent)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6
{
  v161 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v156.receiver = self;
  v156.super_class = PKPaymentPassContent;
  v138 = a5;
  v139 = v11;
  v12 = [PKPassContent initWithDictionary:sel_initWithDictionary_bundle_privateBundle_passType_ bundle:v10 privateBundle:v11 passType:?];
  v13 = v12;
  if (v12)
  {
    v123 = a6;
    [(PKPassContent *)v12 setLogoText:0];
    v14 = [v10 PKStringForKey:@"cobrandName"];
    [(PKPaymentPassContent *)v13 setCobrandName:v14];

    v15 = MEMORY[0x1E695DFF8];
    v16 = [v10 PKStringForKey:@"transactionServiceURL"];
    v17 = [v15 URLWithString:v16];
    [(PKPaymentPassContent *)v13 setTransactionServiceURL:v17];

    v18 = MEMORY[0x1E695DFF8];
    v19 = [v10 PKStringForKey:@"transactionServiceRegistrationURL"];
    v20 = [v18 URLWithString:v19];
    [(PKPaymentPassContent *)v13 setTransactionServiceRegistrationURL:v20];

    v21 = [v10 PKStringForKey:@"transactionPushTopic"];
    [(PKPaymentPassContent *)v13 setTransactionPushTopic:v21];

    v22 = MEMORY[0x1E695DFF8];
    v23 = [v10 PKStringForKey:@"messageServiceURL"];
    v24 = [v22 URLWithString:v23];
    [(PKPaymentPassContent *)v13 setMessageServiceURL:v24];

    v25 = MEMORY[0x1E695DFF8];
    v26 = [v10 PKStringForKey:@"messageServiceRegistrationURL"];
    v27 = [v25 URLWithString:v26];
    [(PKPaymentPassContent *)v13 setMessageServiceRegistrationURL:v27];

    v28 = [v10 PKStringForKey:@"messagePushTopic"];
    [(PKPaymentPassContent *)v13 setMessagePushTopic:v28];

    v29 = [v10 PKStringForKey:@"appLaunchURLScheme"];
    [(PKPaymentPassContent *)v13 setAppURLScheme:v29];

    v30 = [v10 PKStringForKey:@"customerServiceIdentifier"];
    [(PKPaymentPassContent *)v13 setCustomerServiceIdentifier:v30];

    v31 = [v10 PKStringForKey:@"shippingAddressSeed"];
    [(PKPaymentPassContent *)v13 setShippingAddressSeed:v31];

    v32 = [v10 PKStringForKey:@"speakableCarMake"];
    [(PKPaymentPassContent *)v13 setSpeakableMake:v32];

    v33 = [v10 PKStringForKey:@"speakableCarModel"];
    [(PKPaymentPassContent *)v13 setSpeakableModel:v33];

    v34 = [v10 PKDictionaryForKey:@"supportedSiriIntents"];
    if (v34)
    {
      v35 = [[PKSiriIntentsConfiguration alloc] initWithDictionary:v34];
      [(PKPaymentPassContent *)v13 setSupportedSiriIntents:v35];
    }

    v127 = v34;
    v129 = v13;
    v132 = [MEMORY[0x1E695DF90] dictionary];
    v131 = [MEMORY[0x1E695DF90] dictionary];
    v130 = [MEMORY[0x1E695DF90] dictionary];
    v36 = [v10 PKArrayContaining:objc_opt_class() forKey:@"paymentApplications"];
    v37 = v36;
    v38 = MEMORY[0x1E695E0F0];
    if (v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = MEMORY[0x1E695E0F0];
    }

    v40 = v39;

    v128 = v10;
    v41 = [v10 PKArrayContaining:objc_opt_class() forKey:@"auxiliaryPaymentApplications"];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v38;
    }

    v44 = v43;

    v125 = v44;
    v126 = v40;
    [v40 arrayByAddingObjectsFromArray:v44];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    obj = v155 = 0u;
    v45 = [obj countByEnumeratingWithState:&v152 objects:v160 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v153;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v153 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v152 + 1) + 8 * i);
          v50 = [v49 PKStringForKey:@"applicationIdentifier"];
          if (v50)
          {
            v51 = [v49 PKDictionaryForKey:@"paymentApplicationStateMessagingOverride"];
            v52 = [v51 PKDictionaryForKey:@"dashboard"];
            if (v52)
            {
              v53 = [[PKPaymentApplicationStateMessageOverride alloc] initWithDictionary:v52 bundle:v139 privateBundle:v138];
              if (v53)
              {
                [v131 setObject:v53 forKey:v50];
              }
            }

            v54 = [v51 PKDictionaryForKey:@"notification"];
            if (v54)
            {
              v55 = [[PKPaymentApplicationStateMessageOverride alloc] initWithDictionary:v54 bundle:v139 privateBundle:v138];
              if (v55)
              {
                [v130 setObject:v55 forKey:v50];
              }
            }

            v56 = [v49 PKStringForKey:@"suspendedReason"];
            v57 = PKLocalizedPassStringForPassBundle(v56, v139, v138);
            if (v57)
            {
              [v132 setObject:v57 forKey:v50];
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v152 objects:v160 count:16];
      }

      while (v46);
    }

    [(PKPaymentPassContent *)v129 setPaymentApplicationStateDashboardMessageOverridesByAID:v131];
    [(PKPaymentPassContent *)v129 setPaymentApplicationStateNotificationMessageOverridesByAID:v130];
    [(PKPaymentPassContent *)v129 setLocalizedSuspendedReasonsByAID:v132];
    v10 = v128;
    v58 = [v128 PKDictionaryForKey:@"transitCard"];
    v59 = v58;
    if (v58)
    {
      -[PKPaymentPassContent setSupportsTransitOnly:](v129, "setSupportsTransitOnly:", [v58 PKBoolForKey:@"showTransitOnly"]);
    }

    v60 = [PKTransitCommutePlanPackage alloc];
    v61 = [(PKPassContent *)v129 backFieldBuckets];
    v62 = [(PKTransitCommutePlanPackage *)v60 initWithDictionary:v128 backFieldBuckets:v61 bundle:v139 privateBundle:v138 passType:v123];

    v63 = [(PKTransitCommutePlanPackage *)v62 transitCommutePlans];
    v64 = [v63 copy];
    [(PKPaymentPassContent *)v129 setTransitCommutePlans:v64];

    v134 = v62;
    [(PKPaymentPassContent *)v129 setTransitCommutePlanType:[(PKTransitCommutePlanPackage *)v62 transitCommutePlanType]];
    v65 = [v139 pathForResource:@"actions" ofType:@"strings"];
    v137 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v65];
    [(PKPaymentPassContent *)v129 setActionLocalizations:?];
    v66 = [v139 bundleURL];
    v67 = PKPaymentPassActionsDictionaryWithError(v66, 0);

    v124 = v67;
    if (v67 && [v67 count])
    {
      v68 = [v67 objectForKey:@"actionGroups"];
      v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v68, "count")}];
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v136 = v68;
      v70 = [v136 countByEnumeratingWithState:&v148 objects:v159 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v149;
        do
        {
          for (j = 0; j != v71; ++j)
          {
            if (*v149 != v72)
            {
              objc_enumerationMutation(v136);
            }

            v74 = [[PKPaymentPassActionGroup alloc] initWithDictionary:*(*(&v148 + 1) + 8 * j) localizations:v137];
            [v69 safelyAddObject:v74];
          }

          v71 = [v136 countByEnumeratingWithState:&v148 objects:v159 count:16];
        }

        while (v71);
      }

      v122 = v59;

      v121 = v69;
      v75 = [v69 copy];
      [(PKPaymentPassContent *)v129 setActionGroups:v75];

      v76 = [v67 objectForKey:@"actions"];
      v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v76, "count")}];
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v135 = v76;
      v78 = [v135 countByEnumeratingWithState:&v144 objects:v158 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v145;
        do
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v145 != v80)
            {
              objc_enumerationMutation(v135);
            }

            v82 = [[PKPaymentPassAction alloc] initWithDictionary:*(*(&v144 + 1) + 8 * k) localizations:v137];
            v83 = v82;
            if (v82)
            {
              v84 = [(PKPaymentPassAction *)v82 associatedPlanIdentifier];
              v85 = v84;
              if (v84)
              {
                v86 = v84;
              }

              else
              {
                v86 = [(PKPaymentPassAction *)v83 relevantPropertyIdentifier];
              }

              v87 = v86;

              if (v87)
              {
                v88 = v87;
              }

              else
              {
                v88 = @"commute_plan";
              }

              v89 = v88;

              if (v89)
              {
                v90 = [(PKTransitCommutePlanPackage *)v134 planForIdentifier:v89];
                v91 = [v90 copy];

                if (v91)
                {
                  [(PKPaymentPassAction *)v83 setAssociatedPlanIdentifier:v89];
                  [(PKPaymentPassAction *)v83 setAssociatedPlan:v91];
                }
              }

              [v77 addObject:v83];
            }
          }

          v79 = [v135 countByEnumeratingWithState:&v144 objects:v158 count:16];
        }

        while (v79);
      }

      [(PKPaymentPassContent *)v129 setAvailableActions:v77];
      v10 = v128;
      v59 = v122;
    }

    v92 = [v10 PKArrayContaining:objc_opt_class() forKey:@"passUpgrades"];
    v93 = v92;
    v94 = MEMORY[0x1E695E0F0];
    if (v92)
    {
      v94 = v92;
    }

    v95 = v94;

    v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v97 = v95;
    v98 = [v97 countByEnumeratingWithState:&v140 objects:v157 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v141;
      do
      {
        for (m = 0; m != v99; ++m)
        {
          if (*v141 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v102 = [PKPassUpgradeRequest passUpgradeRequestFromDictionary:*(*(&v140 + 1) + 8 * m)];
          if (v102)
          {
            [v96 addObject:v102];
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v140 objects:v157 count:16];
      }

      while (v99);
    }

    v103 = [v96 copy];
    v13 = v129;
    upgradeRequests = v129->_upgradeRequests;
    v129->_upgradeRequests = v103;

    v105 = [v10 PKDictionaryForKey:@"auxiliaryCapabilities"];
    v106 = v105;
    if (v105)
    {
      v107 = v105;
    }

    else
    {
      v107 = [v10 PKDictionaryForKey:@"auxiliaryRegistrationRequirements"];
    }

    v108 = v107;

    v109 = [[PKPassAuxiliaryRegistrationRequirements alloc] initWithDictionary:v108];
    auxiliaryRegistrationRequirements = v129->_auxiliaryRegistrationRequirements;
    v129->_auxiliaryRegistrationRequirements = v109;

    v111 = [v10 PKDictionaryForKey:@"dynamicLayerConfiguration"];
    if (v111)
    {
      v112 = [[PKDynamicLayerConfiguration alloc] initWithDictionary:v111];
      dynamicLayerConfiguration = v129->_dynamicLayerConfiguration;
      v129->_dynamicLayerConfiguration = v112;
    }

    v114 = [v10 PKStringForKey:@"cardType"];
    v115 = PKPaymentCardTypeFromString(v114);

    if (v115 == 4)
    {
      accessReportingType = [v10 PKStringForKey:@"cardSubtype"];
      v129->_identityType = PKSecureElementIdentityPassTypeFromString(accessReportingType);
      v116 = v127;
    }

    else
    {
      v116 = v127;
      if (v115 == 3)
      {
        v118 = [v10 PKStringForKey:@"cardSubtype"];
        v119 = 432;
        accessReportingType = v129->_accessReportingType;
      }

      else
      {
        if (v115 != 1)
        {
LABEL_84:

          goto LABEL_85;
        }

        accessReportingType = [v10 PKStringForKey:@"cardSubtype"];
        v118 = PKSecureElementPaymentPassTypeFromString(accessReportingType);
        v119 = 440;
      }

      *(&v129->super.super.super.isa + v119) = v118;
    }

    goto LABEL_84;
  }

LABEL_85:

  return v13;
}

- (PKPaymentPassContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v83.receiver = self;
  v83.super_class = PKPaymentPassContent;
  v6 = [(PKPassContent *)&v83 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cobrandName"];
    cobrandName = v6->_cobrandName;
    v6->_cobrandName = v7;

    v82 = v5;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionServiceURL"];
    transactionServiceURL = v6->_transactionServiceURL;
    v6->_transactionServiceURL = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionServiceRegistrationURL"];
    transactionServiceRegistrationURL = v6->_transactionServiceRegistrationURL;
    v6->_transactionServiceRegistrationURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionPushTopic"];
    transactionPushTopic = v6->_transactionPushTopic;
    v6->_transactionPushTopic = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageServiceURL"];
    messageServiceURL = v6->_messageServiceURL;
    v6->_messageServiceURL = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageServiceRegistrationURL"];
    messageServiceRegistrationURL = v6->_messageServiceRegistrationURL;
    v6->_messageServiceRegistrationURL = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messagePushTopic"];
    messagePushTopic = v6->_messagePushTopic;
    v6->_messagePushTopic = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURLScheme"];
    appURLScheme = v6->_appURLScheme;
    v6->_appURLScheme = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customerServiceIdentifier"];
    customerServiceIdentifier = v6->_customerServiceIdentifier;
    v6->_customerServiceIdentifier = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddressSeed"];
    shippingAddressSeed = v6->_shippingAddressSeed;
    v6->_shippingAddressSeed = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarMake"];
    speakableMake = v6->_speakableMake;
    v6->_speakableMake = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarModel"];
    speakableModel = v6->_speakableModel;
    v6->_speakableModel = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v81 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v81 forKey:@"dashboard"];
    paymentApplicationStateDashboardMessageOverridesByAID = v6->_paymentApplicationStateDashboardMessageOverridesByAID;
    v6->_paymentApplicationStateDashboardMessageOverridesByAID = v34;

    v36 = [v4 decodeObjectOfClasses:v81 forKey:@"notification"];
    paymentApplicationStateNotificationMessageOverridesByAID = v6->_paymentApplicationStateNotificationMessageOverridesByAID;
    v6->_paymentApplicationStateNotificationMessageOverridesByAID = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v80 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v80 forKey:@"suspendedReason"];
    localizedSuspendedReasonsByAID = v6->_localizedSuspendedReasonsByAID;
    v6->_localizedSuspendedReasonsByAID = v40;

    v6->_supportsTransitOnly = [v4 decodeBoolForKey:@"showTransitOnly"];
    v6->_transitCommutePlanType = [v4 decodeIntegerForKey:@"commutePlanPassContentType"];
    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"actionLocalizations"];
    actionLocalizations = v6->_actionLocalizations;
    v6->_actionLocalizations = v48;

    v50 = [v4 decodeObjectOfClasses:v44 forKey:@"actions"];
    availableActions = v6->_availableActions;
    v6->_availableActions = v50;

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v55 = [v4 decodeObjectOfClasses:v54 forKey:@"transitCommutePlans"];
    transitCommutePlans = v6->_transitCommutePlans;
    v6->_transitCommutePlans = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [v4 decodeObjectOfClasses:v59 forKey:@"actionGroups"];
    actionGroups = v6->_actionGroups;
    v6->_actionGroups = v60;

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = [v62 setWithObjects:{v63, v64, v65, objc_opt_class(), 0}];
    v67 = [v4 decodeObjectOfClasses:v66 forKey:@"passUpgrades"];
    upgradeRequests = v6->_upgradeRequests;
    v6->_upgradeRequests = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedSiriIntents"];
    supportedSiriIntents = v6->_supportedSiriIntents;
    v6->_supportedSiriIntents = v69;

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryRegistrationRequirements"];
    auxiliaryRegistrationRequirements = v6->_auxiliaryRegistrationRequirements;
    v6->_auxiliaryRegistrationRequirements = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dynamicLayerConfiguration"];
    dynamicLayerConfiguration = v6->_dynamicLayerConfiguration;
    v6->_dynamicLayerConfiguration = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityType"];
    v6->_identityType = PKSecureElementIdentityPassTypeFromString(v75);

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessReportingType"];
    accessReportingType = v6->_accessReportingType;
    v6->_accessReportingType = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentType"];
    v6->_paymentType = PKSecureElementPaymentPassTypeFromString(v78);

    v5 = v82;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPaymentPassContent;
  v4 = a3;
  [(PKPassContent *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_cobrandName forKey:{@"cobrandName", v7.receiver, v7.super_class}];
  [v4 encodeObject:self->_transactionServiceURL forKey:@"transactionServiceURL"];
  [v4 encodeObject:self->_transactionServiceRegistrationURL forKey:@"transactionServiceRegistrationURL"];
  [v4 encodeObject:self->_transactionPushTopic forKey:@"transactionPushTopic"];
  [v4 encodeObject:self->_messageServiceURL forKey:@"messageServiceURL"];
  [v4 encodeObject:self->_messageServiceRegistrationURL forKey:@"messageServiceRegistrationURL"];
  [v4 encodeObject:self->_messagePushTopic forKey:@"messagePushTopic"];
  [v4 encodeObject:self->_appURLScheme forKey:@"appLaunchURLScheme"];
  [v4 encodeObject:self->_customerServiceIdentifier forKey:@"customerServiceIdentifier"];
  [v4 encodeObject:self->_shippingAddressSeed forKey:@"shippingAddressSeed"];
  [v4 encodeObject:self->_speakableMake forKey:@"speakableCarMake"];
  [v4 encodeObject:self->_speakableModel forKey:@"speakableCarModel"];
  [v4 encodeObject:self->_paymentApplicationStateDashboardMessageOverridesByAID forKey:@"dashboard"];
  [v4 encodeObject:self->_paymentApplicationStateNotificationMessageOverridesByAID forKey:@"notification"];
  [v4 encodeObject:self->_localizedSuspendedReasonsByAID forKey:@"suspendedReason"];
  [v4 encodeBool:self->_supportsTransitOnly forKey:@"showTransitOnly"];
  [v4 encodeInteger:self->_transitCommutePlanType forKey:@"commutePlanPassContentType"];
  [v4 encodeObject:self->_availableActions forKey:@"actions"];
  [v4 encodeObject:self->_actionGroups forKey:@"actionGroups"];
  [v4 encodeObject:self->_transitCommutePlans forKey:@"transitCommutePlans"];
  [v4 encodeObject:self->_upgradeRequests forKey:@"passUpgrades"];
  [v4 encodeObject:self->_actionLocalizations forKey:@"actionLocalizations"];
  [v4 encodeObject:self->_auxiliaryRegistrationRequirements forKey:@"auxiliaryRegistrationRequirements"];
  [v4 encodeObject:self->_dynamicLayerConfiguration forKey:@"dynamicLayerConfiguration"];
  v5 = PKSecureElementIdentityPassTypeToString(self->_identityType);
  [v4 encodeObject:v5 forKey:@"identityType"];

  [v4 encodeObject:self->_accessReportingType forKey:@"accessReportingType"];
  v6 = PKSecureElementPaymentPassTypeToString(self->_paymentType);
  [v4 encodeObject:v6 forKey:@"paymentType"];

  [v4 encodeObject:self->_supportedSiriIntents forKey:@"supportedSiriIntents"];
}

@end