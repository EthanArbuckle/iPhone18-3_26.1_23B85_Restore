@interface BLTSectionConfigurationInternal
- (BLTSectionConfigurationInternal)init;
- (BOOL)applyAllowListToChildSections:(id)a3;
- (BOOL)hasSectionIDDisplayedCriticalBulletins:(id)a3;
- (BOOL)hasSectionIDOptedOutOfAttachmentCoordination:(id)a3;
- (BOOL)hasSectionIDOptedOutOfNotificationTuning:(id)a3;
- (BOOL)hasSectionIDOptedOutOfSettingsCoordination:(id)a3;
- (BOOL)hasSectionIDOptedOutOfSubtitleRemovalForOlderWatches:(id)a3;
- (BOOL)hasSectionIDOptedOutOfWaitForUserIdle:(id)a3;
- (BOOL)setCoordinationType:(unint64_t)a3 sectionID:(id)a4;
- (BOOL)shouldSectionIDAlwaysAlert:(id)a3 category:(id)a4;
- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)a3;
- (BOOL)shouldUsePhoneExpirationDateForSectionID:(id)a3;
- (id)_loadConfigurations;
- (id)additionalBridgeSectionIDsForSectionID:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)watchVersionThatUsesAttachmentURLForSectionID:(id)a3;
- (id)watchVersionThatUsesUserInfoForContextForSectionID:(id)a3;
- (unint64_t)coordinationTypeForSectionID:(id)a3 subtype:(int64_t)a4 category:(id)a5;
- (unint64_t)legacyMapLocationForSectionID:(id)a3;
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
    v4 = [(BLTSectionConfigurationInternal *)v2 _loadConfigurations];
    configurations = v3->_configurations;
    v3->_configurations = v4;
  }

  return v3;
}

- (unint64_t)coordinationTypeForSectionID:(id)a3 subtype:(int64_t)a4 category:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:v8];
  v11 = [v10 coordinationTypeWithSubtype:a4];
  v12 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v13 = [v12 bltVersion];

  if (v11 == 2)
  {
    if (v13 >= 4)
    {
      if (a4 == 0xFFFFFFFF80000000)
      {
        v14 = [v10 allowListedSubtypes];
        v15 = [v14 count] != 0;
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v18 = [v10 allowListedSubtypes];
        v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v19)
        {
          v20 = *v35;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v18);
              }

              if ([*(*(&v34 + 1) + 8 * i) integerValue] == a4)
              {
                v15 = 1;
                goto LABEL_22;
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
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

      if (v15 || !v9 || v13 < 7)
      {
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = [v10 allowListedCategories];
        v24 = [v23 containsObject:v9];

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

  if (v9 && v13 >= 6)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v16 = [v10 denyListedCategories];
    v17 = [v16 containsObject:v9];

    v33 = v17;
    if (v31[3])
    {
      v11 = 2;
    }

    else
    {
      v22 = [v10 denyListedCategoriesWithVersion];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __81__BLTSectionConfigurationInternal_coordinationTypeForSectionID_subtype_category___block_invoke;
      v27[3] = &unk_278D319B8;
      v29 = &v30;
      v28 = v9;
      [v22 enumerateKeysAndObjectsUsingBlock:v27];

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

- (BOOL)hasSectionIDOptedOutOfAttachmentCoordination:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 optOutOfAttachmentTransmission];

  return v4;
}

- (BOOL)shouldSectionIDSettingsAlwaysSync:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 alwaysSyncSettings];

  return v4;
}

- (BOOL)shouldSectionIDAlwaysAlert:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v8 = v7;
  if (v6 && ([v7 denyListedCategories], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v6), v9, (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = [v8 alwaysAlert];
  }

  return v11;
}

- (BOOL)hasSectionIDOptedOutOfWaitForUserIdle:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 optOutOfWaitForUserIdle];

  return v4;
}

- (BOOL)hasSectionIDOptedOutOfNotificationTuning:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 optOutOfNotificationTuning];

  return v4;
}

- (BOOL)hasSectionIDDisplayedCriticalBulletins:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 hasDisplayedCriticalBulletins];

  return v4;
}

- (BOOL)applyAllowListToChildSections:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 applyAllowListToChildSections];

  return v4;
}

- (unint64_t)legacyMapLocationForSectionID:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 hasLegacyMapInUserInfo];

  return v4;
}

- (id)watchVersionThatUsesUserInfoForContextForSectionID:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 watchVersionThatUsesUserInfoForContext];

  return v4;
}

- (id)additionalBridgeSectionIDsForSectionID:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 additionalBridgeSectionIDs];

  return v4;
}

- (BOOL)hasSectionIDOptedOutOfSubtitleRemovalForOlderWatches:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 optOutOfSubtitleRemovalForOlderWatches];

  return v4;
}

- (id)_loadConfigurations
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SectionConfiguration" ofType:@"plist"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__BLTSectionConfigurationInternal__loadConfigurations__block_invoke;
  v8[3] = &unk_278D319E0;
  v6 = v5;
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

- (BOOL)shouldUsePhoneExpirationDateForSectionID:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 shouldUsePhoneExpirationDate];

  return v4;
}

- (BOOL)hasSectionIDOptedOutOfSettingsCoordination:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 optOutOfSettingsCoordination];

  return v4;
}

- (BOOL)setCoordinationType:(unint64_t)a3 sectionID:(id)a4
{
  v5 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a4];
  LOBYTE(a3) = [v5 updateCoordinationType:a3];

  return a3;
}

- (id)watchVersionThatUsesAttachmentURLForSectionID:(id)a3
{
  v3 = [(NSDictionary *)self->_configurations objectForKeyedSubscript:a3];
  v4 = [v3 watchVersionThatUsesAttachmentURL];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BLTSectionConfigurationInternal *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BLTSectionConfigurationInternal *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_configurations withName:@"configurations"];

  return v3;
}

@end