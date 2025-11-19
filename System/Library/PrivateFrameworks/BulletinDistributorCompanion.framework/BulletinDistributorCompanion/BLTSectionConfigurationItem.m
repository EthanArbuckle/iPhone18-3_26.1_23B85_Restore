@interface BLTSectionConfigurationItem
- (BLTSectionConfigurationItem)initWithDictionary:(id)a3;
- (BOOL)updateCoordinationType:(unint64_t)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BLTSectionConfigurationItem

- (BLTSectionConfigurationItem)initWithDictionary:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = BLTSectionConfigurationItem;
  v5 = [(BLTSectionConfigurationItem *)&v77 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"OptOutOfCoordination"];
    if (v6 && (v7 = v6, [v4 objectForKeyedSubscript:@"OptOutOfCoordination"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, (v9 & 1) != 0))
    {
      v10 = 2;
    }

    else
    {
      v11 = [v4 objectForKeyedSubscript:@"OptOutOfCoordinationForwardOnly"];
      v10 = 0;
      if (v11)
      {
        v12 = v11;
        v13 = [v4 objectForKeyedSubscript:@"OptOutOfCoordinationForwardOnly"];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v10 = 1;
        }
      }
    }

    v5->_coordinationType = v10;
    v15 = [v4 objectForKeyedSubscript:@"OptOutOfAttachmentTransmission"];

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"OptOutOfAttachmentTransmission"];
      v5->_optOutOfAttachmentTransmission = [v16 BOOLValue];
    }

    v17 = [v4 objectForKeyedSubscript:@"AllowListedSubtypes"];

    if (v17)
    {
      v18 = [v4 objectForKeyedSubscript:@"AllowListedSubtypes"];
      allowListedSubtypes = v5->_allowListedSubtypes;
      v5->_allowListedSubtypes = v18;
    }

    v20 = [v4 objectForKeyedSubscript:@"DenyListedCategories"];

    if (v20)
    {
      v21 = [v4 objectForKeyedSubscript:@"DenyListedCategories"];
      denyListedCategories = v5->_denyListedCategories;
      v5->_denyListedCategories = v21;
    }

    v23 = [v4 objectForKeyedSubscript:@"DenyListedCategoriesWithVersion"];
    if (v23)
    {
      v72 = v4;
      v24 = [MEMORY[0x277CBEB38] dictionary];
      denyListedCategoriesWithVersion = v5->_denyListedCategoriesWithVersion;
      v5->_denyListedCategoriesWithVersion = v24;

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = v23;
      v26 = v23;
      v27 = [v26 countByEnumeratingWithState:&v73 objects:v78 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v74;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v74 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v73 + 1) + 8 * i);
            v32 = [v31 objectForKeyedSubscript:{@"Version", v71}];
            if (v32)
            {
              v33 = v32;
              v34 = [v31 objectForKeyedSubscript:@"DenyListedCategories"];

              if (v34)
              {
                v35 = [v31 objectForKeyedSubscript:@"DenyListedCategories"];
                v36 = v5->_denyListedCategoriesWithVersion;
                v37 = [v31 objectForKeyedSubscript:@"Version"];
                [(NSMutableDictionary *)v36 setObject:v35 forKeyedSubscript:v37];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v73 objects:v78 count:16];
        }

        while (v28);
      }

      v23 = v71;
      v4 = v72;
    }

    v38 = [v4 objectForKeyedSubscript:{@"AllowListedCategories", v71}];

    if (v38)
    {
      v39 = [v4 objectForKeyedSubscript:@"AllowListedCategories"];
      allowListedCategories = v5->_allowListedCategories;
      v5->_allowListedCategories = v39;
    }

    v41 = [v4 objectForKeyedSubscript:@"AlwaysSyncSettings"];

    if (v41)
    {
      v42 = [v4 objectForKeyedSubscript:@"AlwaysSyncSettings"];
      v5->_alwaysSyncSettings = [v42 BOOLValue];
    }

    else
    {
      v5->_alwaysSyncSettings = 0;
    }

    v43 = [v4 objectForKeyedSubscript:@"AlwaysAlert"];

    if (v43)
    {
      v44 = [v4 objectForKeyedSubscript:@"AlwaysAlert"];
      v5->_alwaysAlert = [v44 BOOLValue];
    }

    v45 = [v4 objectForKeyedSubscript:@"OptOutOfWaitForUserIdle"];

    if (v45)
    {
      v46 = [v4 objectForKeyedSubscript:@"OptOutOfWaitForUserIdle"];
      v5->_optOutOfWaitForUserIdle = [v46 BOOLValue];
    }

    v47 = [v4 objectForKeyedSubscript:@"ApplyAllowListToChildSections"];

    if (v47)
    {
      v48 = [v4 objectForKeyedSubscript:@"ApplyAllowListToChildSections"];
      v5->_applyAllowListToChildSections = [v48 BOOLValue];
    }

    v49 = [v4 objectForKeyedSubscript:@"OptOutOfNotificationTuning"];

    if (v49)
    {
      v50 = [v4 objectForKeyedSubscript:@"OptOutOfNotificationTuning"];
      v5->_optOutOfNotificationTuning = [v50 BOOLValue];
    }

    v51 = [v4 objectForKeyedSubscript:@"HasLegacyMapInUserInfo"];

    if (v51)
    {
      v52 = [v4 objectForKeyedSubscript:@"HasLegacyMapInUserInfo"];
      v5->_hasLegacyMapInUserInfo = [v52 BOOLValue];
    }

    v53 = [v4 objectForKeyedSubscript:@"HasLegacyMapInContext"];

    if (v53)
    {
      v54 = [v4 objectForKeyedSubscript:@"HasLegacyMapInContext"];
      v5->_hasLegacyMapInContext = [v54 BOOLValue];
    }

    v55 = [v4 objectForKeyedSubscript:@"WatchVersionThatUsesUserInfoForContext"];
    watchVersionThatUsesUserInfoForContext = v5->_watchVersionThatUsesUserInfoForContext;
    v5->_watchVersionThatUsesUserInfoForContext = v55;

    v57 = [v4 objectForKeyedSubscript:@"AdditionalBridgeSectionIDs"];
    additionalBridgeSectionIDs = v5->_additionalBridgeSectionIDs;
    v5->_additionalBridgeSectionIDs = v57;

    v59 = [v4 objectForKeyedSubscript:@"OptOutOfSubtitleRemovalForOlderWatches"];

    if (v59)
    {
      v60 = [v4 objectForKeyedSubscript:@"OptOutOfSubtitleRemovalForOlderWatches"];
      v5->_optOutOfSubtitleRemovalForOlderWatches = [v60 BOOLValue];
    }

    v61 = [v4 objectForKeyedSubscript:@"ShouldUsePhoneExpirationDate"];

    if (v61)
    {
      v62 = [v4 objectForKeyedSubscript:@"ShouldUsePhoneExpirationDate"];
      v5->_shouldUsePhoneExpirationDate = [v62 BOOLValue];
    }

    v63 = [v4 objectForKeyedSubscript:@"OptOutOfSettingsCoordination"];

    if (v63)
    {
      v64 = [v4 objectForKeyedSubscript:@"OptOutOfSettingsCoordination"];
      v5->_optOutOfSettingsCoordination = [v64 BOOLValue];
    }

    v65 = [v4 objectForKeyedSubscript:@"OverrideAppliesToCoordinationOptOut"];

    if (v65)
    {
      v66 = [v4 objectForKeyedSubscript:@"OverrideAppliesToCoordinationOptOut"];
      v5->_overrideAppliesToCoordinationOptOut = [v66 BOOLValue];
    }

    v67 = [v4 objectForKeyedSubscript:@"WatchVersionThatUsesAttachmentURL"];
    watchVersionThatUsesAttachmentURL = v5->_watchVersionThatUsesAttachmentURL;
    v5->_watchVersionThatUsesAttachmentURL = v67;
  }

  v69 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)updateCoordinationType:(unint64_t)a3
{
  if (self->_overrideAppliesToCoordinationOptOut)
  {
    [(BLTSectionConfigurationItem *)self setCoordinationType:a3];
    return self->_overrideAppliesToCoordinationOptOut;
  }

  else
  {
    return 0;
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BLTSectionConfigurationItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BLTSectionConfigurationItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLTSectionConfigurationItem *)self coordinationType];
  if (v4 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278D31A00[v4];
  }

  v6 = [v3 appendObject:v5 withName:@"coordinationType"];
  v7 = [v3 appendBool:self->_optOutOfAttachmentTransmission withName:@"optOutOfAttachmentTransmission"];
  v8 = [v3 appendBool:self->_alwaysSyncSettings withName:@"alwaysSyncSettings"];
  v9 = [v3 appendBool:self->_alwaysAlert withName:@"alwaysAlert"];
  v10 = [v3 appendBool:self->_optOutOfWaitForUserIdle withName:@"optOutOfWaitForUserIdle"];
  v11 = [v3 appendBool:self->_applyAllowListToChildSections withName:@"applyAllowListToChildSections"];
  v12 = [v3 appendBool:self->_optOutOfNotificationTuning withName:@"optOutOfNotificationTuning"];
  v13 = [v3 appendObject:self->_denyListedCategories withName:@"denyListedCategories"];
  v14 = [v3 appendObject:self->_allowListedSubtypes withName:@"_allowListedSubtypes"];

  return v3;
}

@end