@interface BLTSectionConfigurationInternal
- (BLTSectionConfigurationInternal)init;
- (BOOL)applyAllowListToChildSections:(id)sections;
- (BOOL)hasSectionIDDisplayedCriticalBulletins:(id)bulletins;
- (BOOL)hasSectionIDOptedOutOfAttachmentCoordination:(id)coordination;
- (BOOL)hasSectionIDOptedOutOfNotificationTuning:(id)tuning;
- (BOOL)hasSectionIDOptedOutOfSettingsCoordination:(id)coordination;
- (BOOL)hasSectionIDOptedOutOfSubtitleRemovalForOlderWatches:(id)watches;
- (BOOL)hasSectionIDOptedOutOfWaitForUserIdle:(id)idle;
- (BOOL)setCoordinationType:(unint64_t)type sectionID:(id)d;
- (BOOL)shouldSectionIDAlwaysAlert:(id)alert category:(id)category;
- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)sync;
- (BOOL)shouldUsePhoneExpirationDateForSectionID:(id)d;
- (id)_loadConfigurations;
- (id)additionalBridgeSectionIDsForSectionID:(id)d;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)watchVersionThatUsesAttachmentURLForSectionID:(id)d;
- (id)watchVersionThatUsesUserInfoForContextForSectionID:(id)d;
- (unint64_t)coordinationTypeForSectionID:(id)d subtype:(int64_t)subtype category:(id)category;
- (unint64_t)legacyMapLocationForSectionID:(id)d;
@end

@implementation BLTSectionConfigurationInternal

- (BLTSectionConfigurationInternal)init
{
  v7.receiver = self;
  v7.super_class = BLTSectionConfigurationInternal;
  v2 = [(BLTSectionConfigurationInternal *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _loadConfigurations = [(BLTSectionConfigurationInternal *)v2 _loadConfigurations];
    configurations = v3->_configurations;
    v3->_configurations = _loadConfigurations;
  }

  return v3;
}

- (unint64_t)coordinationTypeForSectionID:(id)d subtype:(int64_t)subtype category:(id)category
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  categoryCopy = category;
  v10 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:dCopy];
  v11 = [v10 coordinationTypeWithSubtype:subtype];
  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  bltVersion = [blt_boundedWaitForActivePairedDevice bltVersion];

  if (v11 == 2)
  {
    if (bltVersion >= 4)
    {
      if (subtype == 0xFFFFFFFF80000000)
      {
        allowListedSubtypes = [v10 allowListedSubtypes];
        v15 = [allowListedSubtypes count] != 0;
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        allowListedSubtypes2 = [v10 allowListedSubtypes];
        v19 = [allowListedSubtypes2 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v19)
        {
          v20 = *v35;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(allowListedSubtypes2);
              }

              if ([*(*(&v34 + 1) + 8 * i) integerValue] == subtype)
              {
                v15 = 1;
                goto LABEL_22;
              }
            }

            v19 = [allowListedSubtypes2 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v15 = 0;
LABEL_22:
      }

      if (v15 || !categoryCopy || bltVersion < 7)
      {
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        allowListedCategories = [v10 allowListedCategories];
        v24 = [allowListedCategories containsObject:categoryCopy];

        if ((v24 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v11 = 0;
      goto LABEL_30;
    }

LABEL_27:
    v11 = 2;
    goto LABEL_30;
  }

  if (categoryCopy && bltVersion >= 6)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    denyListedCategories = [v10 denyListedCategories];
    v17 = [denyListedCategories containsObject:categoryCopy];

    v33 = v17;
    if (v31[3])
    {
      v11 = 2;
    }

    else
    {
      denyListedCategoriesWithVersion = [v10 denyListedCategoriesWithVersion];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __81__BLTSectionConfigurationInternal_coordinationTypeForSectionID_subtype_category___block_invoke;
      v27[3] = &unk_278D319B8;
      v29 = &v30;
      v28 = categoryCopy;
      [denyListedCategoriesWithVersion enumerateKeysAndObjectsUsingBlock:v27];

      if (v31[3])
      {
        v11 = 2;
      }
    }

    _Block_object_dispose(&v30, 8);
  }

LABEL_30:

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

void __81__BLTSectionConfigurationInternal_coordinationTypeForSectionID_subtype_category___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportIsGreaterEqualVersion:{objc_msgSend(a2, "unsignedIntValue")}] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 containsObject:*(a1 + 32)];
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)hasSectionIDOptedOutOfAttachmentCoordination:(id)coordination
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:coordination];
  optOutOfAttachmentTransmission = [v3 optOutOfAttachmentTransmission];

  return optOutOfAttachmentTransmission;
}

- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)sync
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:sync];
  alwaysSyncSettings = [v3 alwaysSyncSettings];

  return alwaysSyncSettings;
}

- (BOOL)shouldSectionIDAlwaysAlert:(id)alert category:(id)category
{
  categoryCopy = category;
  v7 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:alert];
  v8 = v7;
  if (categoryCopy && ([v7 denyListedCategories], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", categoryCopy), v9, (v10 & 1) != 0))
  {
    alwaysAlert = 0;
  }

  else
  {
    alwaysAlert = [v8 alwaysAlert];
  }

  return alwaysAlert;
}

- (BOOL)hasSectionIDOptedOutOfWaitForUserIdle:(id)idle
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:idle];
  optOutOfWaitForUserIdle = [v3 optOutOfWaitForUserIdle];

  return optOutOfWaitForUserIdle;
}

- (BOOL)hasSectionIDOptedOutOfNotificationTuning:(id)tuning
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:tuning];
  optOutOfNotificationTuning = [v3 optOutOfNotificationTuning];

  return optOutOfNotificationTuning;
}

- (BOOL)hasSectionIDDisplayedCriticalBulletins:(id)bulletins
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:bulletins];
  hasDisplayedCriticalBulletins = [v3 hasDisplayedCriticalBulletins];

  return hasDisplayedCriticalBulletins;
}

- (BOOL)applyAllowListToChildSections:(id)sections
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:sections];
  applyAllowListToChildSections = [v3 applyAllowListToChildSections];

  return applyAllowListToChildSections;
}

- (unint64_t)legacyMapLocationForSectionID:(id)d
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:d];
  hasLegacyMapInUserInfo = [v3 hasLegacyMapInUserInfo];

  return hasLegacyMapInUserInfo;
}

- (id)watchVersionThatUsesUserInfoForContextForSectionID:(id)d
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:d];
  watchVersionThatUsesUserInfoForContext = [v3 watchVersionThatUsesUserInfoForContext];

  return watchVersionThatUsesUserInfoForContext;
}

- (id)additionalBridgeSectionIDsForSectionID:(id)d
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:d];
  additionalBridgeSectionIDs = [v3 additionalBridgeSectionIDs];

  return additionalBridgeSectionIDs;
}

- (BOOL)hasSectionIDOptedOutOfSubtitleRemovalForOlderWatches:(id)watches
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:watches];
  optOutOfSubtitleRemovalForOlderWatches = [v3 optOutOfSubtitleRemovalForOlderWatches];

  return optOutOfSubtitleRemovalForOlderWatches;
}

- (id)_loadConfigurations
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SectionConfiguration" ofType:@"plist"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__BLTSectionConfigurationInternal__loadConfigurations__block_invoke;
  v8[3] = &unk_278D319E0;
  v6 = dictionary;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __54__BLTSectionConfigurationInternal__loadConfigurations__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [BLTSectionConfigurationItemFactory itemForSection:v5 dictionary:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)shouldUsePhoneExpirationDateForSectionID:(id)d
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:d];
  shouldUsePhoneExpirationDate = [v3 shouldUsePhoneExpirationDate];

  return shouldUsePhoneExpirationDate;
}

- (BOOL)hasSectionIDOptedOutOfSettingsCoordination:(id)coordination
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:coordination];
  optOutOfSettingsCoordination = [v3 optOutOfSettingsCoordination];

  return optOutOfSettingsCoordination;
}

- (BOOL)setCoordinationType:(unint64_t)type sectionID:(id)d
{
  v5 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:d];
  LOBYTE(type) = [v5 updateCoordinationType:type];

  return type;
}

- (id)watchVersionThatUsesAttachmentURLForSectionID:(id)d
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:d];
  watchVersionThatUsesAttachmentURL = [v3 watchVersionThatUsesAttachmentURL];

  return watchVersionThatUsesAttachmentURL;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BLTSectionConfigurationInternal *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BLTSectionConfigurationInternal *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_configurations withName:@"configurations"];

  return v3;
}

@end