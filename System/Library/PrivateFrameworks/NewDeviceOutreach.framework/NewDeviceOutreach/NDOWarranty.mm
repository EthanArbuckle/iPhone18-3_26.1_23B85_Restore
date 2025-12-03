@interface NDOWarranty
+ (NDOWarranty)warrantyWithDictionary:(id)dictionary;
+ (id)_legacyWarrantyPath;
+ (id)_warrantyPathForSerialNumberFormat;
+ (id)cachedWarrantyForSerialNumber:(id)number;
+ (id)migrateLegacyCachedWarrantyIfNeededForSerialNumber:(id)number;
- (BOOL)isEqual:(id)equal;
- (NDOWarranty)initWithCoder:(id)coder;
- (NDOWarranty)initWithDictionary:(id)dictionary;
- (NSString)acLocalizedNotificationOfferDesc;
- (NSString)acLocalizedOfferDesc;
- (NSString)acLocalizedOfferDetailsEligibility;
- (NSString)description;
- (unsigned)daysEligible;
- (void)cacheWarranty:(id)warranty;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDOWarranty

+ (id)_legacyWarrantyPath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Application Support/com.apple.NewDeviceOutreach/Warranty.plist"];

  return v3;
}

+ (id)_warrantyPathForSerialNumberFormat
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Application Support/com.apple.NewDeviceOutreach/%@_Warranty.plist"];

  return v3;
}

+ (NDOWarranty)warrantyWithDictionary:(id)dictionary
{
  v12 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [[NDOWarranty alloc] initWithDictionary:dictionaryCopy];

  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[NDOWarranty warrantyWithDictionary:]";
    v10 = 1024;
    v11 = v4 != 0;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%s : %d", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)migrateLegacyCachedWarrantyIfNeededForSerialNumber:(id)number
{
  numberCopy = number;
  v5 = MEMORY[0x277CBEAC0];
  _legacyWarrantyPath = [self _legacyWarrantyPath];
  v7 = [v5 dictionaryWithContentsOfFile:_legacyWarrantyPath];
  v8 = [self warrantyWithDictionary:v7];

  if (v8)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "Migrating legacy warranty..", buf, 2u);
    }

    [v8 cacheWarranty:numberCopy];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [standardUserDefaults objectForKey:@"CachedWarrantyValidityDuration"];
    [v11 doubleValue];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = MEMORY[0x277CCACA8];
      sha256Hash = [numberCopy sha256Hash];
      v16 = [v14 stringWithFormat:@"%@_CachedWarrantyValidityDuration", sha256Hash];
      [standardUserDefaults setDouble:v16 forKey:v13];

      [standardUserDefaults removeObjectForKey:@"CachedWarrantyValidityDuration"];
    }

    v17 = [standardUserDefaults objectForKey:@"CachedWarrantyLastUpdatedDate"];
    if (v17)
    {
      v18 = MEMORY[0x277CCACA8];
      sha256Hash2 = [numberCopy sha256Hash];
      v20 = [v18 stringWithFormat:@"%@_CachedWarrantyLastUpdatedDate", sha256Hash2];
      [standardUserDefaults setObject:v17 forKey:v20];

      [standardUserDefaults removeObjectForKey:@"CachedWarrantyLastUpdatedDate"];
    }

    v21 = [standardUserDefaults objectForKey:@"CachedWarrantyLocale"];
    if (v21)
    {
      v22 = MEMORY[0x277CCACA8];
      sha256Hash3 = [numberCopy sha256Hash];
      v24 = [v22 stringWithFormat:@"%@_CachedWarrantyLocale", sha256Hash3];
      [standardUserDefaults setObject:v21 forKey:v24];

      [standardUserDefaults removeObjectForKey:@"CachedWarrantyLocale"];
      v25 = [standardUserDefaults objectForKey:@"CachedWarrantyVersion"];
      v26 = MEMORY[0x277CCACA8];
      sha256Hash4 = [numberCopy sha256Hash];
      v28 = [v26 stringWithFormat:@"%@_CachedWarrantyVersion", sha256Hash4];
      [standardUserDefaults setObject:v25 forKey:v28];

      [standardUserDefaults removeObjectForKey:@"CachedWarrantyVersion"];
    }

    else
    {
      v25 = [standardUserDefaults objectForKey:@"CachedWarrantyVersion"];
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    _legacyWarrantyPath2 = [self _legacyWarrantyPath];
    [defaultManager removeItemAtPath:_legacyWarrantyPath2 error:0];
  }

  return v8;
}

+ (id)cachedWarrantyForSerialNumber:(id)number
{
  v18 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if (numberCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    _warrantyPathForSerialNumberFormat = [self _warrantyPathForSerialNumberFormat];
    sha256Hash = [numberCopy sha256Hash];
    _legacyWarrantyPath = [v5 stringWithFormat:_warrantyPathForSerialNumberFormat, sha256Hash];
  }

  else
  {
    _legacyWarrantyPath = [self _legacyWarrantyPath];
  }

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "+[NDOWarranty cachedWarrantyForSerialNumber:]";
    v16 = 2112;
    v17 = _legacyWarrantyPath;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "%s : warrantyPath : %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:_legacyWarrantyPath];
  v11 = [self warrantyWithDictionary:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NDOWarranty)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v122.receiver = self;
  v122.super_class = NDOWarranty;
  v5 = [(NDOWarranty *)&v122 init];
  v6 = v5;
  if (v5)
  {
    if (!dictionaryCopy)
    {
      v47 = v5;
      v6 = 0;
LABEL_17:

      goto LABEL_18;
    }

    [(NDOWarranty *)v5 setDictionaryRepresentation:dictionaryCopy];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"covered"];
    -[NDOWarranty setCovered:](v6, "setCovered:", [v7 BOOLValue]);

    v8 = [dictionaryCopy objectForKeyedSubscript:@"coverageEndDate"];
    v9 = [NDOUtilities dateWithEpochNumber:v8];
    [(NDOWarranty *)v6 setCoverageEndDate:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"localizedCoveredDeviceDateLabelFormat"];
    [(NDOWarranty *)v6 setLocalizedCoveredDeviceDateLabelFormat:v10];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"coverageLocalizedLabel"];
    [(NDOWarranty *)v6 setCoverageLocalizedLabel:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"coverageLocalizedDesc"];
    [(NDOWarranty *)v6 setCoverageLocalizedDesc:v12];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"coverageLocalizedDescLong"];
    [(NDOWarranty *)v6 setCoverageLocalizedDescLong:v13];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"coverageLocalizedExpirationLabel"];
    [(NDOWarranty *)v6 setCoverageLocalizedExpirationLabel:v14];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"footer1FormatString"];
    [(NDOWarranty *)v6 setFooter1FormatString:v15];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"footer1LinkLabel"];
    [(NDOWarranty *)v6 setFooter1LinkLabel:v16];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"footer1LinkURL"];
    [(NDOWarranty *)v6 setFooter1LinkURL:v17];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"footer2FormatString"];
    [(NDOWarranty *)v6 setFooter2FormatString:v18];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"footer2LinkLabel"];
    [(NDOWarranty *)v6 setFooter2LinkLabel:v19];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"footer2LinkURL"];
    [(NDOWarranty *)v6 setFooter2LinkURL:v20];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"acOfferEligible"];
    -[NDOWarranty setAcOfferEligible:](v6, "setAcOfferEligible:", [v21 BOOLValue]);

    v22 = [dictionaryCopy objectForKeyedSubscript:@"acOfferEligibleUntil"];
    v23 = [NDOUtilities dateWithEpochNumber:v22];
    [(NDOWarranty *)v6 setAcOfferEligibleUntil:v23];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"acOfferFollowupDisplayDate"];
    v25 = [NDOUtilities dateWithEpochNumber:v24];
    [(NDOWarranty *)v6 setAcOfferFollowupDisplayDate:v25];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"acOfferDisplayDate"];
    v27 = [NDOUtilities dateWithEpochNumber:v26];
    [(NDOWarranty *)v6 setAcOfferDisplayDate:v27];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"acOfferIdentifier"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_286D686B8;
    }

    [(NDOWarranty *)v6 setAcOfferIdentifier:v30];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferLabel"];
    [(NDOWarranty *)v6 setAcLocalizedOfferLabel:v31];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferLongLabel"];
    [(NDOWarranty *)v6 setAcLocalizedOfferLongLabel:v32];

    v33 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedGroupedOfferFooterLabel"];
    [(NDOWarranty *)v6 setAcLocalizedGroupedOfferFooterLabel:v33];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferStatusLabel"];
    [(NDOWarranty *)v6 setAcLocalizedOfferStatusLabel:v34];

    v35 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferPluralDescFormat"];
    [(NDOWarranty *)v6 setAcLocalizedOfferPluralDescFormat:v35];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferSingularDesc"];
    [(NDOWarranty *)v6 setAcLocalizedOfferSingularDesc:v36];

    v37 = [dictionaryCopy objectForKeyedSubscript:@"acNotificationLocalizedOfferLabel"];
    [(NDOWarranty *)v6 setAcNotificationLocalizedOfferLabel:v37];

    v38 = [dictionaryCopy objectForKeyedSubscript:@"acNotificationLocalizedOfferPluralDescFormat"];
    [(NDOWarranty *)v6 setAcNotificationLocalizedOfferPluralDescFormat:v38];

    v39 = [dictionaryCopy objectForKeyedSubscript:@"acNotificationLocalizedOfferSingularDesc"];
    [(NDOWarranty *)v6 setAcNotificationLocalizedOfferSingularDesc:v39];

    v40 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferCTA"];
    [(NDOWarranty *)v6 setAcLocalizedOfferCTA:v40];

    v41 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedGroupedOfferCTA"];
    [(NDOWarranty *)v6 setAcLocalizedGroupedOfferCTA:v41];

    v42 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferDetails"];
    [(NDOWarranty *)v6 setAcLocalizedOfferDetails:v42];

    v43 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferDetailsPluralEligibilityFormat"];
    [(NDOWarranty *)v6 setAcLocalizedOfferDetailsPluralEligibilityFormat:v43];

    v44 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedOfferDetailsSingularEligibility"];
    [(NDOWarranty *)v6 setAcLocalizedOfferDetailsSingularEligibility:v44];

    v45 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedUnlinkedPlanLabel"];
    [(NDOWarranty *)v6 setAcLocalizedUnlinkedPlanLabel:v45];

    v46 = [dictionaryCopy objectForKeyedSubscript:@"acLocalizedUnlinkedPlanStatusLabel"];
    [(NDOWarranty *)v6 setAcLocalizedUnlinkedPlanStatusLabel:v46];

    v47 = [dictionaryCopy objectForKeyedSubscript:@"featureToggleParameters"];
    v48 = [v47 objectForKeyedSubscript:@"acOfferDisplay"];
    -[NDOWarranty setAcOfferDisplay:](v6, "setAcOfferDisplay:", [v48 BOOLValue]);

    v49 = [v47 objectForKeyedSubscript:@"acOfferSettingsAppBadge"];
    -[NDOWarranty setAcOfferSettingsAppBadge:](v6, "setAcOfferSettingsAppBadge:", [v49 BOOLValue]);

    v50 = [v47 objectForKeyedSubscript:@"acOfferSettingsRowBadge"];
    -[NDOWarranty setAcOfferSettingsRowBadge:](v6, "setAcOfferSettingsRowBadge:", [v50 BOOLValue]);

    v51 = [dictionaryCopy objectForKeyedSubscript:@"acOfferPromoFormat"];
    [(NDOWarranty *)v6 setAcOfferPromoFormat:v51];

    v52 = [dictionaryCopy objectForKeyedSubscript:@"acOfferPromoNew"];
    [(NDOWarranty *)v6 setAcOfferPromoNew:v52];

    v53 = [v47 objectForKeyedSubscript:@"acOfferDurationDaysBeforeEndDate"];
    [v53 doubleValue];
    [(NDOWarranty *)v6 setAcOfferDurationBeforeEndDate:v54 * 86400.0];

    v55 = [v47 objectForKeyedSubscript:@"acOfferToggle"];
    [(NDOWarranty *)v6 setAcOfferToggle:v55];

    v56 = [dictionaryCopy objectForKeyedSubscript:@"acOfferBadgeBeforeEndDate"];
    [v56 doubleValue];
    [(NDOWarranty *)v6 setAcOfferBadgeDurationBeforeEndDate:v57 * 86400.0];

    v58 = [dictionaryCopy objectForKeyedSubscript:@"acLogoToggle"];
    -[NDOWarranty setCoverageHasACLogo:](v6, "setCoverageHasACLogo:", [v58 BOOLValue]);

    v59 = [dictionaryCopy objectForKeyedSubscript:@"acServicesPartner"];
    [(NDOWarranty *)v6 setLocalizedCoverageSubTitleForServicesPartnerString:v59];

    v60 = [dictionaryCopy objectForKeyedSubscript:@"localizedSupportAppLabel"];
    [(NDOWarranty *)v6 setLocalizedSupportAppLabel:v60];

    v61 = [dictionaryCopy objectForKeyedSubscript:@"localizedSupportAppFooter"];
    [(NDOWarranty *)v6 setLocalizedSupportAppFooter:v61];

    v62 = [dictionaryCopy objectForKeyedSubscript:@"localizedManagePlanLabel"];
    [(NDOWarranty *)v6 setLocalizedManagePlanLabel:v62];

    v63 = [dictionaryCopy objectForKeyedSubscript:@"isAcSubscription"];
    -[NDOWarranty setIsCoveragePlanSubscriptionType:](v6, "setIsCoveragePlanSubscriptionType:", [v63 BOOLValue]);

    v64 = [dictionaryCopy objectForKeyedSubscript:@"isAcServicesPartner"];
    -[NDOWarranty setIsACServicesPartner:](v6, "setIsACServicesPartner:", [v64 BOOLValue]);

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v66 = [standardUserDefaults objectForKey:@"ConversionDate"];
    v67 = [NDOUtilities dateWithEpochNumber:v66];

    if (v67)
    {
      [(NDOWarranty *)v6 setAcOfferConversionDate:v67];
LABEL_16:
      v77 = [dictionaryCopy objectForKeyedSubscript:@"scIntervalInDays"];
      [(NDOWarranty *)v6 setScIntervalInDays:v77];

      v78 = [dictionaryCopy objectForKeyedSubscript:@"eligibilityEventId"];
      [(NDOWarranty *)v6 setEligibilityEventId:v78];

      v79 = [dictionaryCopy objectForKeyedSubscript:@"scIntervalFollowupEligible"];
      -[NDOWarranty setScIntervalFollowupEligible:](v6, "setScIntervalFollowupEligible:", [v79 BOOLValue]);

      v80 = [dictionaryCopy objectForKeyedSubscript:@"scIntervalPairedDeviceAllowed"];
      -[NDOWarranty setScIntervalPairedDeviceAllowed:](v6, "setScIntervalPairedDeviceAllowed:", [v80 BOOLValue]);

      v81 = [dictionaryCopy objectForKeyedSubscript:@"coverage"];
      [(NDOWarranty *)v6 setCoverageDetailsDictionary:v81];

      coverageDetailsDictionary = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v83 = [coverageDetailsDictionary objectForKeyedSubscript:@"localizedCoverageTitle"];
      [(NDOWarranty *)v6 setLocalizedCoverageDetailsTitle:v83];

      coverageDetailsDictionary2 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v85 = [coverageDetailsDictionary2 objectForKeyedSubscript:@"coverageDetails"];
      [(NDOWarranty *)v6 setCoverageDetailsArray:v85];

      coverageDetailsDictionary3 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v87 = [coverageDetailsDictionary3 objectForKeyedSubscript:@"localizedCoverageFooterFormatString"];
      [(NDOWarranty *)v6 setLocalizedCoverageFooterFormatString:v87];

      coverageDetailsDictionary4 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v89 = [coverageDetailsDictionary4 objectForKeyedSubscript:@"localizedCoverageFooterLinkLabel"];
      [(NDOWarranty *)v6 setLocalizedCoverageFooterLinkLabel:v89];

      coverageDetailsDictionary5 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v91 = [coverageDetailsDictionary5 objectForKeyedSubscript:@"benefitsCard"];
      [(NDOWarranty *)v6 setCoverageBenefitsDictionary:v91];

      coverageBenefitsDictionary = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v93 = [coverageBenefitsDictionary objectForKeyedSubscript:@"localizedBenefitsCardTitle"];
      [(NDOWarranty *)v6 setLocalizedBenefitsCardTitle:v93];

      coverageBenefitsDictionary2 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v95 = [coverageBenefitsDictionary2 objectForKeyedSubscript:@"localizedBenefitsCardSubTitle"];
      [(NDOWarranty *)v6 setLocalizedBenefitsCardSubTitle:v95];

      coverageBenefitsDictionary3 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v97 = [coverageBenefitsDictionary3 objectForKeyedSubscript:@"benefitDetails"];
      [(NDOWarranty *)v6 setBenefitDetailsArray:v97];

      coverageBenefitsDictionary4 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v99 = [coverageBenefitsDictionary4 objectForKeyedSubscript:@"localizedBenefitsCardFooter"];
      [(NDOWarranty *)v6 setLocalizedBenefitsCardFooter:v99];

      v100 = [dictionaryCopy objectForKeyedSubscript:@"displayRepairAndSupport"];
      -[NDOWarranty setDisplayRepairAndSupport:](v6, "setDisplayRepairAndSupport:", [v100 BOOLValue]);

      v101 = [dictionaryCopy objectForKeyedSubscript:@"agsURL"];
      [(NDOWarranty *)v6 setAgsURL:v101];

      v102 = [dictionaryCopy objectForKeyedSubscript:@"agsULURL"];
      [(NDOWarranty *)v6 setAgsULURL:v102];

      v103 = [dictionaryCopy objectForKeyedSubscript:@"supportAppURL"];
      [(NDOWarranty *)v6 setSupportAppURL:v103];

      v104 = [dictionaryCopy objectForKeyedSubscript:@"cacheTtlMinutes"];
      [v104 doubleValue];
      [(NDOWarranty *)v6 setCacheValidityDuration:v105 * 60.0];

      v106 = [dictionaryCopy objectForKeyedSubscript:@"showNotificationToggle"];
      -[NDOWarranty setShowNotificationToggle:](v6, "setShowNotificationToggle:", [v106 BOOLValue]);

      v107 = [dictionaryCopy objectForKeyedSubscript:@"showNotificationBeforeEndDate"];
      [v107 doubleValue];
      [(NDOWarranty *)v6 setShowNotificationBeforeEndDate:v108 * 86400.0];

      v109 = [dictionaryCopy objectForKeyedSubscript:@"deviceInfo"];
      v110 = [v109 objectForKeyedSubscript:@"deviceImageUrl"];
      [(NDOWarranty *)v6 setDeviceImageUrl:v110];

      v111 = [v109 objectForKeyedSubscript:@"deviceDesc"];
      [(NDOWarranty *)v6 setDeviceDesc:v111];

      v112 = [v109 objectForKeyedSubscript:@"sgId"];
      [(NDOWarranty *)v6 setSgId:v112];

      v113 = [v109 objectForKeyedSubscript:@"pfcId"];
      [(NDOWarranty *)v6 setPfcId:v113];

      v114 = [v109 objectForKeyedSubscript:@"pgfId"];
      [(NDOWarranty *)v6 setPgfId:v114];

      v115 = [v109 objectForKeyedSubscript:@"parentId"];
      [(NDOWarranty *)v6 setParentId:v115];

      v116 = [dictionaryCopy objectForKeyedSubscript:@"getSupportURL"];
      [(NDOWarranty *)v6 setGetSupportURL:v116];

      v117 = [dictionaryCopy objectForKeyedSubscript:@"mySupportURL"];
      [(NDOWarranty *)v6 setMySupportURL:v117];

      v118 = [dictionaryCopy objectForKeyedSubscript:@"isAPSSupported"];
      -[NDOWarranty setIsAPSSupported:](v6, "setIsAPSSupported:", [v118 BOOLValue]);

      v119 = [dictionaryCopy objectForKeyedSubscript:@"purchaseFlowAdditionalHeaders"];
      [(NDOWarranty *)v6 setAdditionalPurchaseFlowHeaders:v119];

      v120 = [dictionaryCopy objectForKeyedSubscript:@"purchaseFlowAdditionalBody"];
      [(NDOWarranty *)v6 setAdditionalPurchaseFlowData:v120];

      goto LABEL_17;
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"acOfferConversionDate"];
    v69 = v68;
    if (v68)
    {
      [v68 doubleValue];
      if (v70 == 0.0)
      {
        [(NDOWarranty *)v6 setAcOfferConversionDate:0];
        goto LABEL_15;
      }

      coverageEndDate = [NDOUtilities dateWithEpochNumber:v69];
      [(NDOWarranty *)v6 setAcOfferConversionDate:coverageEndDate];
    }

    else
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v73 = [standardUserDefaults2 objectForKey:@"OneDayInterval"];
      [v73 doubleValue];
      v75 = v74;

      coverageEndDate = [(NDOWarranty *)v6 coverageEndDate];
      v76 = [coverageEndDate dateByAddingTimeInterval:v75];
      [(NDOWarranty *)v6 setAcOfferConversionDate:v76];
    }

LABEL_15:
    goto LABEL_16;
  }

LABEL_18:

  return v6;
}

- (void)cacheWarranty:(id)warranty
{
  v18 = *MEMORY[0x277D85DE8];
  warrantyCopy = warranty;
  if (warrantyCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    _warrantyPathForSerialNumberFormat = [objc_opt_class() _warrantyPathForSerialNumberFormat];
    sha256Hash = [warrantyCopy sha256Hash];
    _legacyWarrantyPath = [v5 stringWithFormat:_warrantyPathForSerialNumberFormat, sha256Hash];
  }

  else
  {
    _legacyWarrantyPath = [objc_opt_class() _legacyWarrantyPath];
  }

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[NDOWarranty cacheWarranty:]";
    v16 = 2112;
    v17 = _legacyWarrantyPath;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "%s -> %@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [_legacyWarrantyPath stringByDeletingLastPathComponent];
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  dictionaryRepresentation = [(NDOWarranty *)self dictionaryRepresentation];
  [dictionaryRepresentation writeToFile:_legacyWarrantyPath atomically:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(NDOWarranty *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (NSString)acLocalizedOfferDesc
{
  daysEligible = [(NDOWarranty *)self daysEligible];
  if (daysEligible > 1)
  {
    v5 = daysEligible;
    acLocalizedOfferPluralDescFormat = [(NDOWarranty *)self acLocalizedOfferPluralDescFormat];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CCACA8];
      acLocalizedOfferPluralDescFormat2 = [(NDOWarranty *)self acLocalizedOfferPluralDescFormat];
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];
      acLocalizedOfferSingularDesc = [v8 stringWithFormat:acLocalizedOfferPluralDescFormat2, v12];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NDOWarranty *)v13 acLocalizedOfferDesc:v14];
      }

      acLocalizedOfferSingularDesc = 0;
    }
  }

  else
  {
    acLocalizedOfferSingularDesc = [(NDOWarranty *)self acLocalizedOfferSingularDesc];
  }

  return acLocalizedOfferSingularDesc;
}

- (NSString)acLocalizedNotificationOfferDesc
{
  daysEligible = [(NDOWarranty *)self daysEligible];
  if (daysEligible > 1)
  {
    v5 = daysEligible;
    acNotificationLocalizedOfferPluralDescFormat = [(NDOWarranty *)self acNotificationLocalizedOfferPluralDescFormat];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CCACA8];
      acNotificationLocalizedOfferPluralDescFormat2 = [(NDOWarranty *)self acNotificationLocalizedOfferPluralDescFormat];
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];
      acNotificationLocalizedOfferSingularDesc = [v8 stringWithFormat:acNotificationLocalizedOfferPluralDescFormat2, v12];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NDOWarranty *)v13 acLocalizedNotificationOfferDesc:v14];
      }

      acNotificationLocalizedOfferSingularDesc = 0;
    }
  }

  else
  {
    acNotificationLocalizedOfferSingularDesc = [(NDOWarranty *)self acNotificationLocalizedOfferSingularDesc];
  }

  return acNotificationLocalizedOfferSingularDesc;
}

- (NSString)acLocalizedOfferDetailsEligibility
{
  daysEligible = [(NDOWarranty *)self daysEligible];
  if (daysEligible > 1)
  {
    v5 = daysEligible;
    acLocalizedOfferDetailsPluralEligibilityFormat = [(NDOWarranty *)self acLocalizedOfferDetailsPluralEligibilityFormat];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CCACA8];
      acLocalizedOfferDetailsPluralEligibilityFormat2 = [(NDOWarranty *)self acLocalizedOfferDetailsPluralEligibilityFormat];
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];
      acLocalizedOfferDetailsSingularEligibility = [v8 stringWithFormat:acLocalizedOfferDetailsPluralEligibilityFormat2, v12];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NDOWarranty *)v13 acLocalizedOfferDetailsEligibility:v14];
      }

      acLocalizedOfferDetailsSingularEligibility = 0;
    }
  }

  else
  {
    acLocalizedOfferDetailsSingularEligibility = [(NDOWarranty *)self acLocalizedOfferDetailsSingularEligibility];
  }

  return acLocalizedOfferDetailsSingularEligibility;
}

- (unsigned)daysEligible
{
  acOfferEligibleUntil = [(NDOWarranty *)self acOfferEligibleUntil];
  v3 = [NDOUtilities daysFromDate:acOfferEligibleUntil];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(NDOWarranty *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"DictionaryRepresentation"];
}

- (NDOWarranty)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"DictionaryRepresentation"];

  v12 = [(NDOWarranty *)self initWithDictionary:v11];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionaryRepresentation = [equalCopy dictionaryRepresentation];

    dictionaryRepresentation2 = [(NDOWarranty *)self dictionaryRepresentation];
    v7 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NDOWarranty;
    v7 = [(NDOWarranty *)&v9 isEqual:equalCopy];
  }

  return v7;
}

@end