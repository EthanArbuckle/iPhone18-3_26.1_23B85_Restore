@interface NDOWarranty
+ (NDOWarranty)warrantyWithDictionary:(id)a3;
+ (id)_legacyWarrantyPath;
+ (id)_warrantyPathForSerialNumberFormat;
+ (id)cachedWarrantyForSerialNumber:(id)a3;
+ (id)migrateLegacyCachedWarrantyIfNeededForSerialNumber:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NDOWarranty)initWithCoder:(id)a3;
- (NDOWarranty)initWithDictionary:(id)a3;
- (NSString)acLocalizedNotificationOfferDesc;
- (NSString)acLocalizedOfferDesc;
- (NSString)acLocalizedOfferDetailsEligibility;
- (NSString)description;
- (unsigned)daysEligible;
- (void)cacheWarranty:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (NDOWarranty)warrantyWithDictionary:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[NDOWarranty alloc] initWithDictionary:v3];

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

+ (id)migrateLegacyCachedWarrantyIfNeededForSerialNumber:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = [a1 _legacyWarrantyPath];
  v7 = [v5 dictionaryWithContentsOfFile:v6];
  v8 = [a1 warrantyWithDictionary:v7];

  if (v8)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "Migrating legacy warranty..", buf, 2u);
    }

    [v8 cacheWarranty:v4];
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v10 objectForKey:@"CachedWarrantyValidityDuration"];
    [v11 doubleValue];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v4 sha256Hash];
      v16 = [v14 stringWithFormat:@"%@_CachedWarrantyValidityDuration", v15];
      [v10 setDouble:v16 forKey:v13];

      [v10 removeObjectForKey:@"CachedWarrantyValidityDuration"];
    }

    v17 = [v10 objectForKey:@"CachedWarrantyLastUpdatedDate"];
    if (v17)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [v4 sha256Hash];
      v20 = [v18 stringWithFormat:@"%@_CachedWarrantyLastUpdatedDate", v19];
      [v10 setObject:v17 forKey:v20];

      [v10 removeObjectForKey:@"CachedWarrantyLastUpdatedDate"];
    }

    v21 = [v10 objectForKey:@"CachedWarrantyLocale"];
    if (v21)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = [v4 sha256Hash];
      v24 = [v22 stringWithFormat:@"%@_CachedWarrantyLocale", v23];
      [v10 setObject:v21 forKey:v24];

      [v10 removeObjectForKey:@"CachedWarrantyLocale"];
      v25 = [v10 objectForKey:@"CachedWarrantyVersion"];
      v26 = MEMORY[0x277CCACA8];
      v27 = [v4 sha256Hash];
      v28 = [v26 stringWithFormat:@"%@_CachedWarrantyVersion", v27];
      [v10 setObject:v25 forKey:v28];

      [v10 removeObjectForKey:@"CachedWarrantyVersion"];
    }

    else
    {
      v25 = [v10 objectForKey:@"CachedWarrantyVersion"];
    }

    v29 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = [a1 _legacyWarrantyPath];
    [v29 removeItemAtPath:v30 error:0];
  }

  return v8;
}

+ (id)cachedWarrantyForSerialNumber:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [a1 _warrantyPathForSerialNumberFormat];
    v7 = [v4 sha256Hash];
    v8 = [v5 stringWithFormat:v6, v7];
  }

  else
  {
    v8 = [a1 _legacyWarrantyPath];
  }

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "+[NDOWarranty cachedWarrantyForSerialNumber:]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "%s : warrantyPath : %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
  v11 = [a1 warrantyWithDictionary:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NDOWarranty)initWithDictionary:(id)a3
{
  v4 = a3;
  v122.receiver = self;
  v122.super_class = NDOWarranty;
  v5 = [(NDOWarranty *)&v122 init];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v47 = v5;
      v6 = 0;
LABEL_17:

      goto LABEL_18;
    }

    [(NDOWarranty *)v5 setDictionaryRepresentation:v4];
    v7 = [v4 objectForKeyedSubscript:@"covered"];
    -[NDOWarranty setCovered:](v6, "setCovered:", [v7 BOOLValue]);

    v8 = [v4 objectForKeyedSubscript:@"coverageEndDate"];
    v9 = [NDOUtilities dateWithEpochNumber:v8];
    [(NDOWarranty *)v6 setCoverageEndDate:v9];

    v10 = [v4 objectForKeyedSubscript:@"localizedCoveredDeviceDateLabelFormat"];
    [(NDOWarranty *)v6 setLocalizedCoveredDeviceDateLabelFormat:v10];

    v11 = [v4 objectForKeyedSubscript:@"coverageLocalizedLabel"];
    [(NDOWarranty *)v6 setCoverageLocalizedLabel:v11];

    v12 = [v4 objectForKeyedSubscript:@"coverageLocalizedDesc"];
    [(NDOWarranty *)v6 setCoverageLocalizedDesc:v12];

    v13 = [v4 objectForKeyedSubscript:@"coverageLocalizedDescLong"];
    [(NDOWarranty *)v6 setCoverageLocalizedDescLong:v13];

    v14 = [v4 objectForKeyedSubscript:@"coverageLocalizedExpirationLabel"];
    [(NDOWarranty *)v6 setCoverageLocalizedExpirationLabel:v14];

    v15 = [v4 objectForKeyedSubscript:@"footer1FormatString"];
    [(NDOWarranty *)v6 setFooter1FormatString:v15];

    v16 = [v4 objectForKeyedSubscript:@"footer1LinkLabel"];
    [(NDOWarranty *)v6 setFooter1LinkLabel:v16];

    v17 = [v4 objectForKeyedSubscript:@"footer1LinkURL"];
    [(NDOWarranty *)v6 setFooter1LinkURL:v17];

    v18 = [v4 objectForKeyedSubscript:@"footer2FormatString"];
    [(NDOWarranty *)v6 setFooter2FormatString:v18];

    v19 = [v4 objectForKeyedSubscript:@"footer2LinkLabel"];
    [(NDOWarranty *)v6 setFooter2LinkLabel:v19];

    v20 = [v4 objectForKeyedSubscript:@"footer2LinkURL"];
    [(NDOWarranty *)v6 setFooter2LinkURL:v20];

    v21 = [v4 objectForKeyedSubscript:@"acOfferEligible"];
    -[NDOWarranty setAcOfferEligible:](v6, "setAcOfferEligible:", [v21 BOOLValue]);

    v22 = [v4 objectForKeyedSubscript:@"acOfferEligibleUntil"];
    v23 = [NDOUtilities dateWithEpochNumber:v22];
    [(NDOWarranty *)v6 setAcOfferEligibleUntil:v23];

    v24 = [v4 objectForKeyedSubscript:@"acOfferFollowupDisplayDate"];
    v25 = [NDOUtilities dateWithEpochNumber:v24];
    [(NDOWarranty *)v6 setAcOfferFollowupDisplayDate:v25];

    v26 = [v4 objectForKeyedSubscript:@"acOfferDisplayDate"];
    v27 = [NDOUtilities dateWithEpochNumber:v26];
    [(NDOWarranty *)v6 setAcOfferDisplayDate:v27];

    v28 = [v4 objectForKeyedSubscript:@"acOfferIdentifier"];
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

    v31 = [v4 objectForKeyedSubscript:@"acLocalizedOfferLabel"];
    [(NDOWarranty *)v6 setAcLocalizedOfferLabel:v31];

    v32 = [v4 objectForKeyedSubscript:@"acLocalizedOfferLongLabel"];
    [(NDOWarranty *)v6 setAcLocalizedOfferLongLabel:v32];

    v33 = [v4 objectForKeyedSubscript:@"acLocalizedGroupedOfferFooterLabel"];
    [(NDOWarranty *)v6 setAcLocalizedGroupedOfferFooterLabel:v33];

    v34 = [v4 objectForKeyedSubscript:@"acLocalizedOfferStatusLabel"];
    [(NDOWarranty *)v6 setAcLocalizedOfferStatusLabel:v34];

    v35 = [v4 objectForKeyedSubscript:@"acLocalizedOfferPluralDescFormat"];
    [(NDOWarranty *)v6 setAcLocalizedOfferPluralDescFormat:v35];

    v36 = [v4 objectForKeyedSubscript:@"acLocalizedOfferSingularDesc"];
    [(NDOWarranty *)v6 setAcLocalizedOfferSingularDesc:v36];

    v37 = [v4 objectForKeyedSubscript:@"acNotificationLocalizedOfferLabel"];
    [(NDOWarranty *)v6 setAcNotificationLocalizedOfferLabel:v37];

    v38 = [v4 objectForKeyedSubscript:@"acNotificationLocalizedOfferPluralDescFormat"];
    [(NDOWarranty *)v6 setAcNotificationLocalizedOfferPluralDescFormat:v38];

    v39 = [v4 objectForKeyedSubscript:@"acNotificationLocalizedOfferSingularDesc"];
    [(NDOWarranty *)v6 setAcNotificationLocalizedOfferSingularDesc:v39];

    v40 = [v4 objectForKeyedSubscript:@"acLocalizedOfferCTA"];
    [(NDOWarranty *)v6 setAcLocalizedOfferCTA:v40];

    v41 = [v4 objectForKeyedSubscript:@"acLocalizedGroupedOfferCTA"];
    [(NDOWarranty *)v6 setAcLocalizedGroupedOfferCTA:v41];

    v42 = [v4 objectForKeyedSubscript:@"acLocalizedOfferDetails"];
    [(NDOWarranty *)v6 setAcLocalizedOfferDetails:v42];

    v43 = [v4 objectForKeyedSubscript:@"acLocalizedOfferDetailsPluralEligibilityFormat"];
    [(NDOWarranty *)v6 setAcLocalizedOfferDetailsPluralEligibilityFormat:v43];

    v44 = [v4 objectForKeyedSubscript:@"acLocalizedOfferDetailsSingularEligibility"];
    [(NDOWarranty *)v6 setAcLocalizedOfferDetailsSingularEligibility:v44];

    v45 = [v4 objectForKeyedSubscript:@"acLocalizedUnlinkedPlanLabel"];
    [(NDOWarranty *)v6 setAcLocalizedUnlinkedPlanLabel:v45];

    v46 = [v4 objectForKeyedSubscript:@"acLocalizedUnlinkedPlanStatusLabel"];
    [(NDOWarranty *)v6 setAcLocalizedUnlinkedPlanStatusLabel:v46];

    v47 = [v4 objectForKeyedSubscript:@"featureToggleParameters"];
    v48 = [v47 objectForKeyedSubscript:@"acOfferDisplay"];
    -[NDOWarranty setAcOfferDisplay:](v6, "setAcOfferDisplay:", [v48 BOOLValue]);

    v49 = [v47 objectForKeyedSubscript:@"acOfferSettingsAppBadge"];
    -[NDOWarranty setAcOfferSettingsAppBadge:](v6, "setAcOfferSettingsAppBadge:", [v49 BOOLValue]);

    v50 = [v47 objectForKeyedSubscript:@"acOfferSettingsRowBadge"];
    -[NDOWarranty setAcOfferSettingsRowBadge:](v6, "setAcOfferSettingsRowBadge:", [v50 BOOLValue]);

    v51 = [v4 objectForKeyedSubscript:@"acOfferPromoFormat"];
    [(NDOWarranty *)v6 setAcOfferPromoFormat:v51];

    v52 = [v4 objectForKeyedSubscript:@"acOfferPromoNew"];
    [(NDOWarranty *)v6 setAcOfferPromoNew:v52];

    v53 = [v47 objectForKeyedSubscript:@"acOfferDurationDaysBeforeEndDate"];
    [v53 doubleValue];
    [(NDOWarranty *)v6 setAcOfferDurationBeforeEndDate:v54 * 86400.0];

    v55 = [v47 objectForKeyedSubscript:@"acOfferToggle"];
    [(NDOWarranty *)v6 setAcOfferToggle:v55];

    v56 = [v4 objectForKeyedSubscript:@"acOfferBadgeBeforeEndDate"];
    [v56 doubleValue];
    [(NDOWarranty *)v6 setAcOfferBadgeDurationBeforeEndDate:v57 * 86400.0];

    v58 = [v4 objectForKeyedSubscript:@"acLogoToggle"];
    -[NDOWarranty setCoverageHasACLogo:](v6, "setCoverageHasACLogo:", [v58 BOOLValue]);

    v59 = [v4 objectForKeyedSubscript:@"acServicesPartner"];
    [(NDOWarranty *)v6 setLocalizedCoverageSubTitleForServicesPartnerString:v59];

    v60 = [v4 objectForKeyedSubscript:@"localizedSupportAppLabel"];
    [(NDOWarranty *)v6 setLocalizedSupportAppLabel:v60];

    v61 = [v4 objectForKeyedSubscript:@"localizedSupportAppFooter"];
    [(NDOWarranty *)v6 setLocalizedSupportAppFooter:v61];

    v62 = [v4 objectForKeyedSubscript:@"localizedManagePlanLabel"];
    [(NDOWarranty *)v6 setLocalizedManagePlanLabel:v62];

    v63 = [v4 objectForKeyedSubscript:@"isAcSubscription"];
    -[NDOWarranty setIsCoveragePlanSubscriptionType:](v6, "setIsCoveragePlanSubscriptionType:", [v63 BOOLValue]);

    v64 = [v4 objectForKeyedSubscript:@"isAcServicesPartner"];
    -[NDOWarranty setIsACServicesPartner:](v6, "setIsACServicesPartner:", [v64 BOOLValue]);

    v65 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v66 = [v65 objectForKey:@"ConversionDate"];
    v67 = [NDOUtilities dateWithEpochNumber:v66];

    if (v67)
    {
      [(NDOWarranty *)v6 setAcOfferConversionDate:v67];
LABEL_16:
      v77 = [v4 objectForKeyedSubscript:@"scIntervalInDays"];
      [(NDOWarranty *)v6 setScIntervalInDays:v77];

      v78 = [v4 objectForKeyedSubscript:@"eligibilityEventId"];
      [(NDOWarranty *)v6 setEligibilityEventId:v78];

      v79 = [v4 objectForKeyedSubscript:@"scIntervalFollowupEligible"];
      -[NDOWarranty setScIntervalFollowupEligible:](v6, "setScIntervalFollowupEligible:", [v79 BOOLValue]);

      v80 = [v4 objectForKeyedSubscript:@"scIntervalPairedDeviceAllowed"];
      -[NDOWarranty setScIntervalPairedDeviceAllowed:](v6, "setScIntervalPairedDeviceAllowed:", [v80 BOOLValue]);

      v81 = [v4 objectForKeyedSubscript:@"coverage"];
      [(NDOWarranty *)v6 setCoverageDetailsDictionary:v81];

      v82 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v83 = [v82 objectForKeyedSubscript:@"localizedCoverageTitle"];
      [(NDOWarranty *)v6 setLocalizedCoverageDetailsTitle:v83];

      v84 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v85 = [v84 objectForKeyedSubscript:@"coverageDetails"];
      [(NDOWarranty *)v6 setCoverageDetailsArray:v85];

      v86 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v87 = [v86 objectForKeyedSubscript:@"localizedCoverageFooterFormatString"];
      [(NDOWarranty *)v6 setLocalizedCoverageFooterFormatString:v87];

      v88 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v89 = [v88 objectForKeyedSubscript:@"localizedCoverageFooterLinkLabel"];
      [(NDOWarranty *)v6 setLocalizedCoverageFooterLinkLabel:v89];

      v90 = [(NDOWarranty *)v6 coverageDetailsDictionary];
      v91 = [v90 objectForKeyedSubscript:@"benefitsCard"];
      [(NDOWarranty *)v6 setCoverageBenefitsDictionary:v91];

      v92 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v93 = [v92 objectForKeyedSubscript:@"localizedBenefitsCardTitle"];
      [(NDOWarranty *)v6 setLocalizedBenefitsCardTitle:v93];

      v94 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v95 = [v94 objectForKeyedSubscript:@"localizedBenefitsCardSubTitle"];
      [(NDOWarranty *)v6 setLocalizedBenefitsCardSubTitle:v95];

      v96 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v97 = [v96 objectForKeyedSubscript:@"benefitDetails"];
      [(NDOWarranty *)v6 setBenefitDetailsArray:v97];

      v98 = [(NDOWarranty *)v6 coverageBenefitsDictionary];
      v99 = [v98 objectForKeyedSubscript:@"localizedBenefitsCardFooter"];
      [(NDOWarranty *)v6 setLocalizedBenefitsCardFooter:v99];

      v100 = [v4 objectForKeyedSubscript:@"displayRepairAndSupport"];
      -[NDOWarranty setDisplayRepairAndSupport:](v6, "setDisplayRepairAndSupport:", [v100 BOOLValue]);

      v101 = [v4 objectForKeyedSubscript:@"agsURL"];
      [(NDOWarranty *)v6 setAgsURL:v101];

      v102 = [v4 objectForKeyedSubscript:@"agsULURL"];
      [(NDOWarranty *)v6 setAgsULURL:v102];

      v103 = [v4 objectForKeyedSubscript:@"supportAppURL"];
      [(NDOWarranty *)v6 setSupportAppURL:v103];

      v104 = [v4 objectForKeyedSubscript:@"cacheTtlMinutes"];
      [v104 doubleValue];
      [(NDOWarranty *)v6 setCacheValidityDuration:v105 * 60.0];

      v106 = [v4 objectForKeyedSubscript:@"showNotificationToggle"];
      -[NDOWarranty setShowNotificationToggle:](v6, "setShowNotificationToggle:", [v106 BOOLValue]);

      v107 = [v4 objectForKeyedSubscript:@"showNotificationBeforeEndDate"];
      [v107 doubleValue];
      [(NDOWarranty *)v6 setShowNotificationBeforeEndDate:v108 * 86400.0];

      v109 = [v4 objectForKeyedSubscript:@"deviceInfo"];
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

      v116 = [v4 objectForKeyedSubscript:@"getSupportURL"];
      [(NDOWarranty *)v6 setGetSupportURL:v116];

      v117 = [v4 objectForKeyedSubscript:@"mySupportURL"];
      [(NDOWarranty *)v6 setMySupportURL:v117];

      v118 = [v4 objectForKeyedSubscript:@"isAPSSupported"];
      -[NDOWarranty setIsAPSSupported:](v6, "setIsAPSSupported:", [v118 BOOLValue]);

      v119 = [v4 objectForKeyedSubscript:@"purchaseFlowAdditionalHeaders"];
      [(NDOWarranty *)v6 setAdditionalPurchaseFlowHeaders:v119];

      v120 = [v4 objectForKeyedSubscript:@"purchaseFlowAdditionalBody"];
      [(NDOWarranty *)v6 setAdditionalPurchaseFlowData:v120];

      goto LABEL_17;
    }

    v68 = [v4 objectForKeyedSubscript:@"acOfferConversionDate"];
    v69 = v68;
    if (v68)
    {
      [v68 doubleValue];
      if (v70 == 0.0)
      {
        [(NDOWarranty *)v6 setAcOfferConversionDate:0];
        goto LABEL_15;
      }

      v71 = [NDOUtilities dateWithEpochNumber:v69];
      [(NDOWarranty *)v6 setAcOfferConversionDate:v71];
    }

    else
    {
      v72 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v73 = [v72 objectForKey:@"OneDayInterval"];
      [v73 doubleValue];
      v75 = v74;

      v71 = [(NDOWarranty *)v6 coverageEndDate];
      v76 = [v71 dateByAddingTimeInterval:v75];
      [(NDOWarranty *)v6 setAcOfferConversionDate:v76];
    }

LABEL_15:
    goto LABEL_16;
  }

LABEL_18:

  return v6;
}

- (void)cacheWarranty:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [objc_opt_class() _warrantyPathForSerialNumberFormat];
    v7 = [v4 sha256Hash];
    v8 = [v5 stringWithFormat:v6, v7];
  }

  else
  {
    v8 = [objc_opt_class() _legacyWarrantyPath];
  }

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[NDOWarranty cacheWarranty:]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "%s -> %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 stringByDeletingLastPathComponent];
  [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];

  v12 = [(NDOWarranty *)self dictionaryRepresentation];
  [v12 writeToFile:v8 atomically:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NDOWarranty *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (NSString)acLocalizedOfferDesc
{
  v3 = [(NDOWarranty *)self daysEligible];
  if (v3 > 1)
  {
    v5 = v3;
    v6 = [(NDOWarranty *)self acLocalizedOfferPluralDescFormat];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [(NDOWarranty *)self acLocalizedOfferPluralDescFormat];
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];
      v4 = [v8 stringWithFormat:v9, v12];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NDOWarranty *)v13 acLocalizedOfferDesc:v14];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = [(NDOWarranty *)self acLocalizedOfferSingularDesc];
  }

  return v4;
}

- (NSString)acLocalizedNotificationOfferDesc
{
  v3 = [(NDOWarranty *)self daysEligible];
  if (v3 > 1)
  {
    v5 = v3;
    v6 = [(NDOWarranty *)self acNotificationLocalizedOfferPluralDescFormat];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [(NDOWarranty *)self acNotificationLocalizedOfferPluralDescFormat];
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];
      v4 = [v8 stringWithFormat:v9, v12];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NDOWarranty *)v13 acLocalizedNotificationOfferDesc:v14];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = [(NDOWarranty *)self acNotificationLocalizedOfferSingularDesc];
  }

  return v4;
}

- (NSString)acLocalizedOfferDetailsEligibility
{
  v3 = [(NDOWarranty *)self daysEligible];
  if (v3 > 1)
  {
    v5 = v3;
    v6 = [(NDOWarranty *)self acLocalizedOfferDetailsPluralEligibilityFormat];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [(NDOWarranty *)self acLocalizedOfferDetailsPluralEligibilityFormat];
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];
      v4 = [v8 stringWithFormat:v9, v12];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NDOWarranty *)v13 acLocalizedOfferDetailsEligibility:v14];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = [(NDOWarranty *)self acLocalizedOfferDetailsSingularEligibility];
  }

  return v4;
}

- (unsigned)daysEligible
{
  v2 = [(NDOWarranty *)self acOfferEligibleUntil];
  v3 = [NDOUtilities daysFromDate:v2];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NDOWarranty *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"DictionaryRepresentation"];
}

- (NDOWarranty)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v5 decodeObjectOfClasses:v10 forKey:@"DictionaryRepresentation"];

  v12 = [(NDOWarranty *)self initWithDictionary:v11];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dictionaryRepresentation];

    v6 = [(NDOWarranty *)self dictionaryRepresentation];
    v7 = [v5 isEqualToDictionary:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NDOWarranty;
    v7 = [(NDOWarranty *)&v9 isEqual:v4];
  }

  return v7;
}

@end