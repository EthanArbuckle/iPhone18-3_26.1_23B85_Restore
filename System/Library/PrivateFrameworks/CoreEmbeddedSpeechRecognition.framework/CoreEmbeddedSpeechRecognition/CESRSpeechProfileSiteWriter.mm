@interface CESRSpeechProfileSiteWriter
- (BOOL)_removeProfileInstance:(id)instance;
- (BOOL)_shouldDeferRadioStationUpdate;
- (BOOL)_shouldDeferUpdateForProfileInstance:(id)instance categoryGroup:(id)group sets:(id)sets;
- (BOOL)_updateProfileInstance:(id)instance categoryGroup:(id)group shouldDefer:(id)defer;
- (BOOL)_updateRequiredProfileInstancesWithSets:(id)sets shouldDefer:(id)defer;
- (BOOL)_verifyAllProfileInstances:(BOOL)instances shouldDefer:(id)defer;
- (BOOL)_verifyProfileInstance:(id)instance shouldDefer:(id)defer;
- (CESRSpeechProfileSiteWriter)initWithSpeechProfileSite:(id)site settings:(id)settings setEnumerator:(id)enumerator;
- (id)_filterSetsForCategoryGroup:(id)group sets:(id)sets;
- (id)_filterSetsForProfileInstance:(id)instance sets:(id)sets;
- (id)_filterSetsForSite:(id)site;
- (id)_requiredSetsForProfileInstance:(id)instance categoryGroup:(id)group;
- (id)_siteApplicableSets;
- (id)_sortInstancesByLocale:(id)locale;
- (id)description;
- (void)addBookmarksForLocale:(id)locale toChangeRegistry:(id)registry;
- (void)logRequiredProfileInstances;
@end

@implementation CESRSpeechProfileSiteWriter

- (BOOL)_shouldDeferRadioStationUpdate
{
  v2 = BiomeLibrary();
  carPlay = [v2 CarPlay];
  connected = [carPlay Connected];

  v5 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:1 reversed:0];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [connected publisherWithUseCase:@"SpeechProfile" options:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__CESRSpeechProfileSiteWriter__shouldDeferRadioStationUpdate__block_invoke_2;
  v10[3] = &unk_27857F308;
  v10[4] = &v11;
  v10[5] = &v15;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_228 receiveInput:v10];

  v8 = *(v16 + 24) != 1 || CFAbsoluteTimeGetCurrent() - v12[3] >= 30.0;
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __61__CESRSpeechProfileSiteWriter__shouldDeferRadioStationUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  v5 = [v3 eventBody];

  *(*(*(a1 + 40) + 8) + 24) = [v5 starting];
}

- (BOOL)_shouldDeferUpdateForProfileInstance:(id)instance categoryGroup:(id)group sets:(id)sets
{
  v89 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  groupCopy = group;
  setsCopy = sets;
  v11 = [CESRSpeechProfileSettings updateCadenceForSets:setsCopy];
  if (v11 == 1)
  {
    v12 = *MEMORY[0x277CEF0E8];
    v13 = 1;
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    *buf = 136315394;
    v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
    v79 = 2112;
    v80 = instanceCopy;
    v14 = "%s (%@) Deferring update due to platform constraints.";
    goto LABEL_8;
  }

  v15 = v11;
  v16 = +[CESRSpeechProfileSettings deviceHasFavorablePowerConditions];
  v17 = v16;
  if (v15 == 2 && !v16)
  {
    v12 = *MEMORY[0x277CEF0E8];
    v13 = 1;
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    *buf = 136315394;
    v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
    v79 = 2112;
    v80 = instanceCopy;
    v14 = "%s (%@) Deferring update due to power conditions.";
LABEL_8:
    v18 = v12;
    v19 = 22;
LABEL_9:
    _os_log_impl(&dword_225EEB000, v18, OS_LOG_TYPE_INFO, v14, buf, v19);
    goto LABEL_65;
  }

  v76 = 0;
  v20 = [CESRSpeechProfileUpdater updateModeForSets:setsCopy speechProfileInstance:instanceCopy speechProfileSite:self->_speechProfileSite isAnySetNew:&v76];
  if (v76 == 1)
  {
    v21 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
      v79 = 2112;
      v80 = instanceCopy;
      _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_INFO, "%s (%@) No deferral. One or more sets are new.", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_65;
  }

  if (!v20)
  {
    v50 = *MEMORY[0x277CEF0E8];
    v13 = 1;
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    *buf = 136315650;
    v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
    v79 = 2112;
    v80 = instanceCopy;
    v81 = 2112;
    v82 = setsCopy;
    v14 = "%s (%@) Skipping empty update for sets: %@";
    v18 = v50;
    v19 = 32;
    goto LABEL_9;
  }

  v61 = groupCopy;
  v66 = instanceCopy;
  v67 = +[CESRSpeechProfileSettings itemTypesRequiringImmediateUpdate];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = setsCopy;
  v22 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v73;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v73 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v72 + 1) + 8 * i);
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v26, "itemType")}];
        v28 = [v67 containsObject:v27];

        if (v28)
        {
          v51 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
          {
            v52 = MEMORY[0x277D21178];
            v53 = v51;
            v54 = [v52 descriptionForTypeIdentifier:{objc_msgSend(v26, "itemType")}];
            *buf = 136315394;
            v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
            v79 = 2112;
            v80 = v54;
            _os_log_impl(&dword_225EEB000, v53, OS_LOG_TYPE_INFO, "%s Overriding deferral because changes to item type (%@) require an immediate update.", buf, 0x16u);
          }

          goto LABEL_59;
        }

        if ([v26 itemType] == 49066 && !-[CESRSpeechProfileSiteWriter _shouldDeferRadioStationUpdate](self, "_shouldDeferRadioStationUpdate"))
        {
          v57 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
            v79 = 2112;
            v80 = v66;
            _os_log_impl(&dword_225EEB000, v57, OS_LOG_TYPE_INFO, "%s (%@) Overriding deferral for CarPlay radio entities donated at the start of a CarPlay session.", buf, 0x16u);
          }

LABEL_59:

          v13 = 0;
          instanceCopy = v66;
          groupCopy = v61;
          goto LABEL_64;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v23);
  }

  v29 = 1800000000;
  if (v17)
  {
    v29 = 180000000;
  }

  v63 = v29;
  v30 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
    v79 = 2048;
    v80 = (1200959901 * v63) >> 56;
    _os_log_impl(&dword_225EEB000, v30, OS_LOG_TYPE_INFO, "%s Using a deferral window of %lld minutes.", buf, 0x16u);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  groupCopy = v61;
  obja = [v61 speechCategories];
  v31 = [obja countByEnumeratingWithState:&v68 objects:v87 count:16];
  if (!v31)
  {
    v56 = 0;
    v49 = 1;
    instanceCopy = v66;
    goto LABEL_61;
  }

  v33 = v31;
  v62 = 0;
  v34 = *v69;
  *&v32 = 136315650;
  v60 = v32;
  instanceCopy = v66;
  while (2)
  {
    for (j = 0; j != v33; ++j)
    {
      if (*v69 != v34)
      {
        objc_enumerationMutation(obja);
      }

      v36 = *(*(&v68 + 1) + 8 * j);
      v37 = [instanceCopy lastCompletedVersionForSpeechCategory:{v36, v60}];
      v38 = [instanceCopy lastRegisteredVersionForSpeechCategory:v36];
      v39 = v38;
      if (!v37)
      {
        v55 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          *buf = v60;
          v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
          v79 = 2112;
          v80 = v66;
          v81 = 2112;
          v82 = v36;
          _os_log_impl(&dword_225EEB000, v55, OS_LOG_TYPE_INFO, "%s (%@) No deferral. At least one speech category (%@) has not completed an update.", buf, 0x20u);
        }

        v49 = 0;
        instanceCopy = v66;
        goto LABEL_56;
      }

      if (!v38)
      {
        v46 = *MEMORY[0x277CEF0E8];
        if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *buf = v60;
        v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
        v79 = 2112;
        v80 = v66;
        v81 = 2112;
        v82 = v36;
        v44 = v46;
        v45 = "%s (%@) No registered update for category: %@";
        goto LABEL_41;
      }

      longLongValue = [v37 longLongValue];
      longLongValue2 = [v39 longLongValue];
      v42 = longLongValue2 - longLongValue;
      if (longLongValue2 < longLongValue)
      {
        v43 = *MEMORY[0x277CEF0E8];
        if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *buf = v60;
        v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
        v79 = 2112;
        v80 = v66;
        v81 = 2112;
        v82 = v36;
        v44 = v43;
        v45 = "%s (%@) Unexpected last registered update occurred prior to last completed update: %@";
LABEL_41:
        _os_log_error_impl(&dword_225EEB000, v44, OS_LOG_TYPE_ERROR, v45, buf, 0x20u);
        goto LABEL_46;
      }

      if (v42 < v63)
      {
        v47 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          v48 = v42 / 1000000.0;
          *buf = 136316162;
          v78 = "[CESRSpeechProfileSiteWriter _shouldDeferUpdateForProfileInstance:categoryGroup:sets:]";
          v79 = 2112;
          v80 = v66;
          v81 = 2112;
          v82 = v36;
          v83 = 1024;
          v84 = v48 / 60;
          v85 = 2048;
          v86 = v48 - (60 * v84);
          _os_log_impl(&dword_225EEB000, v47, OS_LOG_TYPE_INFO, "%s (%@) At least one speech category (%@) has completed an update within the deferral window (%i minutes, %lf seconds ago).", buf, 0x30u);
        }

        ++v62;
      }

LABEL_46:

      instanceCopy = v66;
    }

    v33 = [obja countByEnumeratingWithState:&v68 objects:v87 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

  v49 = 1;
LABEL_56:
  groupCopy = v61;
  v56 = v62;
LABEL_61:

  if (v56)
  {
    v13 = v49;
  }

  else
  {
    v13 = 0;
  }

LABEL_64:

LABEL_65:
  v58 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_updateProfileInstance:(id)instance categoryGroup:(id)group shouldDefer:(id)defer
{
  v58 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  groupCopy = group;
  deferCopy = defer;
  v11 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v14 = [v11 numberWithLongLong:(v13 * 1000000.0)];

  speechCategories = [groupCopy speechCategories];
  [instanceCopy registerUpdateForSpeechCategories:speechCategories version:v14];

  if (!deferCopy || !deferCopy[2](deferCopy))
  {
    v18 = [(CESRSpeechProfileSiteWriter *)self _requiredSetsForProfileInstance:instanceCopy categoryGroup:groupCopy];
    if (![v18 count])
    {
      v38 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
        v52 = 2112;
        v53 = instanceCopy;
        v54 = 2112;
        *v55 = groupCopy;
        _os_log_impl(&dword_225EEB000, v38, OS_LOG_TYPE_INFO, "%s (%@) No required sets for category group: %@", buf, 0x20u);
      }

      v32 = 0;
      v17 = 0;
      goto LABEL_29;
    }

    v19 = +[CESRSpeechProfileCategoryGroup all];
    v20 = [groupCopy isEqual:v19];

    v21 = MEMORY[0x277CEF0E8];
    v22 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      if (v20)
      {
        v23 = @"ALL";
      }

      else
      {
        v23 = @"selected";
      }

      v24 = v22;
      speechCategories2 = [groupCopy speechCategories];
      *buf = 136315906;
      v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
      v52 = 2112;
      v53 = instanceCopy;
      v54 = 2112;
      *v55 = v23;
      *&v55[8] = 2112;
      *&v55[10] = speechCategories2;
      _os_log_impl(&dword_225EEB000, v24, OS_LOG_TYPE_INFO, "%s (%@) Preparing to rebuild %@ categories: %@", buf, 0x2Au);

      v21 = MEMORY[0x277CEF0E8];
    }

    if (v20)
    {
      changeRegistry = [instanceCopy changeRegistry];
      [changeRegistry clearAllBookmarks];
    }

    v27 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      v29 = [v18 count];
      *buf = 136315906;
      v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
      v52 = 2112;
      v53 = instanceCopy;
      v54 = 1024;
      *v55 = v29;
      *&v55[4] = 2112;
      *&v55[6] = v18;
      _os_log_impl(&dword_225EEB000, v28, OS_LOG_TYPE_INFO, "%s (%@) About to perform an update with %u required sets: %@", buf, 0x26u);
    }

    v30 = [CESRSpeechProfileUpdater updaterForInstance:instanceCopy atSpeechProfileSite:self->_speechProfileSite];
    v49 = 0;
    v31 = [v30 rebuildCategoryGroup:groupCopy withSets:v18 version:v14 error:&v49];
    v32 = v49;
    if (v31)
    {
      speechCategories3 = [groupCopy speechCategories];
      [instanceCopy recordUpdateCompletedForSpeechCategories:speechCategories3 version:v14];

      v34 = *v21;
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
        v52 = 2112;
        v53 = instanceCopy;
        v54 = 2112;
        *v55 = groupCopy;
        *&v55[8] = 2112;
        *&v55[10] = v18;
        _os_log_impl(&dword_225EEB000, v34, OS_LOG_TYPE_INFO, "%s (%@) Completed speech profile update for category group: %@ with sets: %@", buf, 0x2Au);
      }

      changeRegistry2 = [instanceCopy changeRegistry];
      v48 = v32;
      v36 = [changeRegistry2 commitAllBookmarkUpdates:&v48];
      v37 = v48;

      if (v36)
      {
        v17 = 1;
        v32 = v37;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v43 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
        v52 = 2112;
        v53 = instanceCopy;
        v54 = 2112;
        *v55 = v37;
        _os_log_error_impl(&dword_225EEB000, v43, OS_LOG_TYPE_ERROR, "%s (%@) Failed to commit change registry transaction: %@", buf, 0x20u);
      }

      changeRegistry3 = [instanceCopy changeRegistry];
      v47 = v37;
      v45 = [changeRegistry3 clearAllBookmarksAndCommit:&v47];
      v32 = v47;

      if (v45)
      {
        v17 = 1;
        goto LABEL_28;
      }

      v46 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
        v52 = 2112;
        v53 = instanceCopy;
        v54 = 2112;
        *v55 = v32;
        _os_log_error_impl(&dword_225EEB000, v46, OS_LOG_TYPE_ERROR, "%s (%@) Failed to reset change registry: %@", buf, 0x20u);
      }
    }

    else
    {
      v39 = *v21;
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
        v52 = 2112;
        v53 = instanceCopy;
        v54 = 2112;
        *v55 = groupCopy;
        *&v55[8] = 2112;
        *&v55[10] = v18;
        v56 = 2112;
        v57 = v32;
        _os_log_error_impl(&dword_225EEB000, v39, OS_LOG_TYPE_ERROR, "%s (%@) Failed to rebuild category group: %@ with sets: %@ error: %@", buf, 0x34u);
      }

      changeRegistry4 = [instanceCopy changeRegistry];
      [changeRegistry4 rollbackAllBookmarkUpdates];
    }

    v17 = 0;
    goto LABEL_28;
  }

  v16 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v51 = "[CESRSpeechProfileSiteWriter _updateProfileInstance:categoryGroup:shouldDefer:]";
    v52 = 2112;
    v53 = instanceCopy;
    v54 = 2112;
    *v55 = groupCopy;
    _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s (%@) Deferring update to category group: %@", buf, 0x20u);
  }

  v17 = 0;
LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_updateRequiredProfileInstancesWithSets:(id)sets shouldDefer:(id)defer
{
  v21 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  deferCopy = defer;
  if (!setsCopy)
  {
    _siteApplicableSets = [(CESRSpeechProfileSiteWriter *)self _siteApplicableSets];
    goto LABEL_6;
  }

  _siteApplicableSets = [(CESRSpeechProfileSiteWriter *)self _filterSetsForSite:setsCopy];
  if ([_siteApplicableSets count])
  {
LABEL_6:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 1;
    settings = self->_settings;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__CESRSpeechProfileSiteWriter__updateRequiredProfileInstancesWithSets_shouldDefer___block_invoke;
    v15[3] = &unk_27857F2C0;
    v15[4] = self;
    v17 = buf;
    _siteApplicableSets = _siteApplicableSets;
    v16 = _siteApplicableSets;
    v18 = setsCopy == 0;
    [(CESRSpeechProfileSettings *)settings enumerateRequiredInstances:v15];
    v10 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_7;
  }

  v9 = *MEMORY[0x277CEF0E8];
  v10 = 1;
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    speechProfileSite = self->_speechProfileSite;
    *buf = 136315394;
    *&buf[4] = "[CESRSpeechProfileSiteWriter _updateRequiredProfileInstancesWithSets:shouldDefer:]";
    *&buf[12] = 2112;
    *&buf[14] = speechProfileSite;
    _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s No updated sets are applicable to site: %@", buf, 0x16u);
  }

LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __83__CESRSpeechProfileSiteWriter__updateRequiredProfileInstancesWithSets_shouldDefer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = *(*(a1 + 32) + 16);
  v22 = 0;
  v8 = [v7 instanceWithLocale:v5 options:a3 error:&v22];
  v9 = v22;
  if (v8)
  {
    v10 = [*(a1 + 32) _filterSetsForProfileInstance:v8 sets:*(a1 + 40)];
    if ([v10 count])
    {
      v11 = [CESRSpeechProfileCategoryGroup groupForSets:v10];
      v12 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __83__CESRSpeechProfileSiteWriter__updateRequiredProfileInstancesWithSets_shouldDefer___block_invoke_311;
      v17[3] = &unk_27857F298;
      v21 = *(a1 + 56);
      v17[4] = v12;
      v18 = v8;
      v13 = v11;
      v19 = v13;
      v20 = v10;
      if (([v12 _updateProfileInstance:v18 categoryGroup:v13 shouldDefer:v17] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else
    {
      v15 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v24 = "[CESRSpeechProfileSiteWriter _updateRequiredProfileInstancesWithSets:shouldDefer:]_block_invoke";
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_225EEB000, v15, OS_LOG_TYPE_INFO, "%s No updated sets are applicable to profile instance: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[CESRSpeechProfileSiteWriter _updateRequiredProfileInstancesWithSets:shouldDefer:]_block_invoke";
      v25 = 2112;
      v26 = v9;
      _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get/create profile instance: %@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  objc_autoreleasePoolPop(v6);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __83__CESRSpeechProfileSiteWriter__updateRequiredProfileInstancesWithSets_shouldDefer___block_invoke_311(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  else
  {
    return [*(a1 + 32) _shouldDeferUpdateForProfileInstance:*(a1 + 40) categoryGroup:*(a1 + 48) sets:*(a1 + 56)];
  }
}

- (BOOL)_removeProfileInstance:(id)instance
{
  v28 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v5 = [CESRSpeechProfileUpdater updaterForInstance:instanceCopy atSpeechProfileSite:self->_speechProfileSite];
  v19 = 0;
  v6 = [v5 removeProfile:&v19];
  v7 = v19;
  if (v6)
  {
    speechProfileSite = self->_speechProfileSite;
    v18 = v7;
    v9 = [(CESRSpeechProfileSite *)speechProfileSite removeInstance:instanceCopy error:&v18];
    v10 = v18;

    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v13 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v17 = self->_speechProfileSite;
        *buf = 136315906;
        v21 = "[CESRSpeechProfileSiteWriter _removeProfileInstance:]";
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = instanceCopy;
        v26 = 2112;
        v27 = v10;
        _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Site (%@) failed to remove profile instance info (%@) error: %@", buf, 0x2Au);
      }

      v11 = 0;
    }

    v7 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v16 = self->_speechProfileSite;
      *buf = 136315906;
      v21 = "[CESRSpeechProfileSiteWriter _removeProfileInstance:]";
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = instanceCopy;
      v26 = 2112;
      v27 = v7;
      _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Site (%@) failed to remove profile (%@) error: %@", buf, 0x2Au);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_verifyProfileInstance:(id)instance shouldDefer:(id)defer
{
  v37 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  deferCopy = defer;
  v8 = [CESRSpeechProfileUpdater updaterForInstance:instanceCopy atSpeechProfileSite:self->_speechProfileSite];
  v28 = 0;
  v29 = 0;
  v9 = [v8 detectCategoriesToRebuild:&v29 error:&v28];
  v10 = v29;
  v11 = v28;
  v12 = MEMORY[0x277CEF0E8];
  v13 = *MEMORY[0x277CEF0E8];
  v14 = *MEMORY[0x277CEF0E8];
  if (v9)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v32 = "[CESRSpeechProfileSiteWriter _verifyProfileInstance:shouldDefer:]";
      v33 = 2112;
      v34 = instanceCopy;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s (%@) Categories with an invalid version: %@", buf, 0x20u);
    }

    v15 = [(CESRSpeechProfileSiteWriter *)self _requiredSetsForProfileInstance:instanceCopy categoryGroup:0];
    v16 = [v8 categoriesToRebuildForAllSets:v15];
    v17 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v32 = "[CESRSpeechProfileSiteWriter _verifyProfileInstance:shouldDefer:]";
      v33 = 2112;
      v34 = instanceCopy;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_225EEB000, v17, OS_LOG_TYPE_INFO, "%s (%@) Categories with a set update: %@", buf, 0x20u);
    }

    if (v16)
    {
      if (v10)
      {
        v30[0] = v10;
        v30[1] = v16;
        [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
        v18 = deferCopy;
        v20 = v19 = v11;
        v21 = [CESRSpeechProfileCategoryGroup mergeGroups:v20];

        v11 = v19;
        deferCopy = v18;
        v12 = MEMORY[0x277CEF0E8];
        v10 = v21;
      }

      else
      {
        v10 = v16;
      }
    }

    v22 = v10;

    v10 = v15;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "[CESRSpeechProfileSiteWriter _verifyProfileInstance:shouldDefer:]";
      v33 = 2112;
      v34 = instanceCopy;
      v35 = 2112;
      v36 = v11;
      _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s (%@) Failed to detect categories for rebuild: %@", buf, 0x20u);
    }

    v22 = +[CESRSpeechProfileCategoryGroup all];
  }

  if (v22)
  {

    v23 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v32 = "[CESRSpeechProfileSiteWriter _verifyProfileInstance:shouldDefer:]";
      v33 = 2112;
      v34 = instanceCopy;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_225EEB000, v23, OS_LOG_TYPE_INFO, "%s (%@) Profile instance requires rebuild for category group: %@", buf, 0x20u);
    }

    v24 = [(CESRSpeechProfileSiteWriter *)self _updateProfileInstance:instanceCopy categoryGroup:v22 shouldDefer:deferCopy];
  }

  else
  {
    v25 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[CESRSpeechProfileSiteWriter _verifyProfileInstance:shouldDefer:]";
      v33 = 2112;
      v34 = instanceCopy;
      _os_log_impl(&dword_225EEB000, v25, OS_LOG_TYPE_INFO, "%s (%@) Verified profile instance. No rebuild required.", buf, 0x16u);
    }

    v24 = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)_sortInstancesByLocale:(id)locale
{
  v19 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(localeCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = localeCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        locale = [v10 locale];
        [v4 setObject:v10 forKey:locale];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_verifyAllProfileInstances:(BOOL)instances shouldDefer:(id)defer
{
  v43 = *MEMORY[0x277D85DE8];
  deferCopy = defer;
  instances = [(CESRSpeechProfileSite *)self->_speechProfileSite instances];
  v8 = [(CESRSpeechProfileSiteWriter *)self _sortInstancesByLocale:instances];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  settings = self->_settings;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __70__CESRSpeechProfileSiteWriter__verifyAllProfileInstances_shouldDefer___block_invoke;
  v28[3] = &unk_27857F270;
  v10 = v8;
  instancesCopy = instances;
  v32 = &v34;
  v29 = v10;
  selfCopy = self;
  v11 = deferCopy;
  v31 = v11;
  [(CESRSpeechProfileSettings *)settings enumerateRequiredInstances:v28];
  v22 = v11;
  v23 = v10;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allValues = [v10 allValues];
  v13 = [allValues countByEnumeratingWithState:&v24 objects:v42 count:16];
  if (v13)
  {
    v14 = *v25;
    v15 = MEMORY[0x277CEF0E8];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v39 = "[CESRSpeechProfileSiteWriter _verifyAllProfileInstances:shouldDefer:]";
          v40 = 2112;
          v41 = v17;
          _os_log_impl(&dword_225EEB000, v18, OS_LOG_TYPE_INFO, "%s Profile instance (%@) is no longer required following settings refresh.", buf, 0x16u);
        }

        [(CESRSpeechProfileSiteWriter *)self _removeProfileInstance:v17];
      }

      v13 = [allValues countByEnumeratingWithState:&v24 objects:v42 count:16];
    }

    while (v13);
  }

  v19 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __70__CESRSpeechProfileSiteWriter__verifyAllProfileInstances_shouldDefer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) objectForKey:v8];
  [*(a1 + 32) removeObjectForKey:v8];
  if (v6 && [v6 options] == a3)
  {
    if (*(a1 + 64))
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 40) _verifyProfileInstance:v6 shouldDefer:*(a1 + 48)];
  }

  else
  {
    v7 = [*(a1 + 40) _fullRebuildForInvalidProfileInstance:v6 locale:v8 options:a3 shouldDefer:*(a1 + 48)];
  }

  *(*(*(a1 + 56) + 8) + 24) &= v7;
LABEL_7:

  objc_autoreleasePoolPop(v5);
}

- (id)_filterSetsForCategoryGroup:(id)group sets:(id)sets
{
  v25 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  setsCopy = sets;
  v19 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = setsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        itemTypes = [groupCopy itemTypes];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "itemType")}];
        v15 = [itemTypes containsObject:v14];

        if (v15)
        {
          [v19 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  allObjects = [v19 allObjects];

  v17 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)_filterSetsForProfileInstance:(id)instance sets:(id)sets
{
  v22 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  setsCopy = sets;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(setsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = setsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (-[CESRSpeechProfileSettings isSupportedSet:instanceOptions:](self->_settings, "isSupportedSet:instanceOptions:", v14, [instanceCopy options]))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_filterSetsForSite:(id)site
{
  v54 = *MEMORY[0x277D85DE8];
  siteCopy = site;
  array = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = siteCopy;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v40)
  {
    v8 = *v42;
    *&v7 = 136315906;
    v36 = v7;
    v38 = *v42;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        personaIdentifier = [(__CFString *)v10 personaIdentifier];
        if (personaIdentifier)
        {
          v12 = personaIdentifier;
          mEMORY[0x277CDCEB0] = [MEMORY[0x277CDCEB0] sharedInstance];
          personaIdentifier2 = [(__CFString *)v10 personaIdentifier];
          v15 = [mEMORY[0x277CDCEB0] personaMatchesEnrolledUser:personaIdentifier2];

          if ((v15 & 1) == 0)
          {
            v22 = *MEMORY[0x277CEF0E8];
            if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            speechProfileSite = self->_speechProfileSite;
            *buf = 136315650;
            v46 = "[CESRSpeechProfileSiteWriter _filterSetsForSite:]";
            v47 = 2112;
            v48 = speechProfileSite;
            v49 = 2112;
            v50 = v10;
            v24 = v22;
            v25 = "%s Site (%@) ignoring set with invalid persona: %@";
            goto LABEL_20;
          }
        }

        personaId = [(CESRSpeechProfileSite *)self->_speechProfileSite personaId];
        if (personaId)
        {
          personaId2 = [(CESRSpeechProfileSite *)self->_speechProfileSite personaId];
          personaIdentifier3 = [(__CFString *)v10 personaIdentifier];
          if (([personaId2 isEqualToString:personaIdentifier3] & 1) == 0)
          {

LABEL_18:
            v26 = *MEMORY[0x277CEF0E8];
            if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            v27 = self->_speechProfileSite;
            *buf = 136315650;
            v46 = "[CESRSpeechProfileSiteWriter _filterSetsForSite:]";
            v47 = 2112;
            v48 = v27;
            v49 = 2112;
            v50 = v10;
            v24 = v26;
            v25 = "%s Site (%@) ignoring set with mismatched persona: %@";
LABEL_20:
            _os_log_error_impl(&dword_225EEB000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x20u);
            continue;
          }
        }

        personaIdentifier4 = [(__CFString *)v10 personaIdentifier];
        if (personaIdentifier4)
        {
          v18 = personaIdentifier4;
          personaIdentifier5 = [(__CFString *)v10 personaIdentifier];
          personaId3 = [(CESRSpeechProfileSite *)self->_speechProfileSite personaId];
          v21 = [personaIdentifier5 isEqualToString:personaId3];

          if (personaId)
          {
          }

          v8 = v38;
          if ((v21 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else if (personaId)
        {
        }

        isInUserVault = [(CESRSpeechProfileSite *)self->_speechProfileSite isInUserVault];
        if (isInUserVault == [(__CFString *)v10 isInUserVault])
        {
          [array addObject:v10];
        }

        else
        {
          v29 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
          {
            v30 = self->_speechProfileSite;
            v31 = v29;
            isInUserVault2 = [(__CFString *)v10 isInUserVault];
            *buf = v36;
            v33 = @"is NOT";
            if (isInUserVault2)
            {
              v33 = @"is";
            }

            v46 = "[CESRSpeechProfileSiteWriter _filterSetsForSite:]";
            v47 = 2112;
            v48 = v30;
            v8 = v38;
            v49 = 2112;
            v50 = v33;
            v51 = 2112;
            v52 = v10;
            _os_log_error_impl(&dword_225EEB000, v31, OS_LOG_TYPE_ERROR, "%s Site (%@) ignoring set since it %@ from UserVault: %@", buf, 0x2Au);
          }
        }
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v40);
  }

  v34 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_siteApplicableSets
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CESRSpeechProfileSiteWriter__siteApplicableSets__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_sync(queue, block);
  return self->_cachedSets;
}

void __50__CESRSpeechProfileSiteWriter__siteApplicableSets__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    v3 = [*(v1 + 16) isInUserVault];
    v4 = *(*(a1 + 32) + 32);
    v13 = 0;
    v5 = [v4 allSetsWithOptions:v3 error:&v13];
    v6 = v13;
    *(*(a1 + 32) + 48) = 1;
    v7 = *MEMORY[0x277CEF0E8];
    v8 = *MEMORY[0x277CEF0E8];
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[CESRSpeechProfileSiteWriter _siteApplicableSets]_block_invoke";
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Enumerated all sets: %@", buf, 0x16u);
      }

      v9 = [*(a1 + 32) _filterSetsForSite:v5];
      v10 = *(a1 + 32);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[CESRSpeechProfileSiteWriter _siteApplicableSets]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Failed to enumerate all sets, error: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_requiredSetsForProfileInstance:(id)instance categoryGroup:(id)group
{
  v28 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  groupCopy = group;
  _siteApplicableSets = [(CESRSpeechProfileSiteWriter *)self _siteApplicableSets];
  v9 = _siteApplicableSets;
  if (_siteApplicableSets)
  {
    array = _siteApplicableSets;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v11 = array;

  if ([v11 count])
  {
    v12 = [(CESRSpeechProfileSiteWriter *)self _filterSetsForProfileInstance:instanceCopy sets:v11];

    if ([v12 count])
    {
      if (groupCopy)
      {
        v11 = [(CESRSpeechProfileSiteWriter *)self _filterSetsForCategoryGroup:groupCopy sets:v12];

        if (![v11 count])
        {
          v13 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
          {
            v22 = 136315650;
            v23 = "[CESRSpeechProfileSiteWriter _requiredSetsForProfileInstance:categoryGroup:]";
            v24 = 2112;
            v25 = instanceCopy;
            v26 = 2112;
            v27 = groupCopy;
            v14 = "%s (%@) No instance applicable sets belong to this category group: %@";
            v15 = v13;
LABEL_12:
            _os_log_impl(&dword_225EEB000, v15, OS_LOG_TYPE_INFO, v14, &v22, 0x20u);
            goto LABEL_16;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v18 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v22 = 136315394;
        v23 = "[CESRSpeechProfileSiteWriter _requiredSetsForProfileInstance:categoryGroup:]";
        v24 = 2112;
        v25 = instanceCopy;
        _os_log_impl(&dword_225EEB000, v18, OS_LOG_TYPE_INFO, "%s (%@) No site applicable sets are supported by this profile instance.", &v22, 0x16u);
      }
    }

    v11 = v12;
    goto LABEL_16;
  }

  v16 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    speechProfileSite = self->_speechProfileSite;
    v22 = 136315650;
    v23 = "[CESRSpeechProfileSiteWriter _requiredSetsForProfileInstance:categoryGroup:]";
    v24 = 2112;
    v25 = instanceCopy;
    v26 = 2112;
    v27 = speechProfileSite;
    v14 = "%s (%@) No applicable sets for site: %@";
    v15 = v16;
    goto LABEL_12;
  }

LABEL_16:
  v19 = v11;

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)addBookmarksForLocale:(id)locale toChangeRegistry:(id)registry
{
  localeCopy = locale;
  registryCopy = registry;
  settings = self->_settings;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__CESRSpeechProfileSiteWriter_addBookmarksForLocale_toChangeRegistry___block_invoke;
  v11[3] = &unk_27857F248;
  v12 = localeCopy;
  selfCopy = self;
  v14 = registryCopy;
  v9 = registryCopy;
  v10 = localeCopy;
  [(CESRSpeechProfileSettings *)settings enumerateRequiredInstances:v11];
}

void __70__CESRSpeechProfileSiteWriter_addBookmarksForLocale_toChangeRegistry___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isEqual:*(a1 + 32)])
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy_;
    v48 = __Block_byref_object_dispose_;
    v49 = 0;
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 16);
    obj = 0;
    v8 = [v7 instanceWithLocale:v6 options:a3 error:&obj];
    objc_storeStrong(&v49, obj);
    if (v8)
    {
      v9 = [v8 changeRegistry];
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v10 = (v45 + 5);
      v34 = v45[5];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__CESRSpeechProfileSiteWriter_addBookmarksForLocale_toChangeRegistry___block_invoke_296;
      v27[3] = &unk_27857F220;
      v11 = *(a1 + 48);
      v31 = &v44;
      v12 = *(a1 + 40);
      v28 = v11;
      v29 = v12;
      v13 = v8;
      v30 = v13;
      v32 = &v39;
      v33 = &v35;
      v14 = [v9 enumerateAllBookmarks:&v34 usingBlock:v27];
      objc_storeStrong(v10, v34);
      if (v14)
      {

        v15 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 48);
          v17 = *(*(a1 + 40) + 16);
          v18 = *(v40 + 6);
          v19 = *(v36 + 6);
          *buf = 136316418;
          v51 = "[CESRSpeechProfileSiteWriter addBookmarksForLocale:toChangeRegistry:]_block_invoke";
          v52 = 2112;
          v53 = v17;
          v54 = 2112;
          v55 = v13;
          v56 = 1024;
          *v57 = v18;
          *&v57[4] = 1024;
          *&v57[6] = v19;
          v58 = 2112;
          v59 = v16;
          _os_log_impl(&dword_225EEB000, v15, OS_LOG_TYPE_INFO, "%s (%@) [%@] Added %u bookmarks for %u sets to registry: %@", buf, 0x36u);
        }
      }

      else
      {
        v23 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v25 = *(*(a1 + 40) + 16);
          v26 = v45[5];
          *buf = 136315906;
          v51 = "[CESRSpeechProfileSiteWriter addBookmarksForLocale:toChangeRegistry:]_block_invoke";
          v52 = 2112;
          v53 = v25;
          v54 = 2112;
          v55 = v13;
          v56 = 2112;
          *v57 = v26;
          _os_log_error_impl(&dword_225EEB000, v23, OS_LOG_TYPE_ERROR, "%s (%@) [%@] Failed to enumerate change registry, error: %@", buf, 0x2Au);
        }
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v20 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v21 = *(*(a1 + 40) + 16);
        v22 = v45[5];
        *buf = 136315650;
        v51 = "[CESRSpeechProfileSiteWriter addBookmarksForLocale:toChangeRegistry:]_block_invoke";
        v52 = 2112;
        v53 = v21;
        v54 = 2112;
        v55 = v22;
        _os_log_error_impl(&dword_225EEB000, v20, OS_LOG_TYPE_ERROR, "%s (%@) Failed to get/create profile instance, error: %@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v44, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __70__CESRSpeechProfileSiteWriter_addBookmarksForLocale_toChangeRegistry___block_invoke_296(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 updateBookmark:a3 forSet:a2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    ++*(*(a1[8] + 8) + 24);
  }

  else
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      v10 = *(a1[5] + 16);
      v11 = *(*(a1[7] + 8) + 40);
      *buf = 136315906;
      v14 = "[CESRSpeechProfileSiteWriter addBookmarksForLocale:toChangeRegistry:]_block_invoke";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s (%@) [%@] Failed to add bookmark to change registry, error: %@", buf, 0x2Au);
    }
  }

  ++*(*(a1[9] + 8) + 24);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logRequiredProfileInstances
{
  _siteApplicableSets = [(CESRSpeechProfileSiteWriter *)self _siteApplicableSets];
  v4 = _siteApplicableSets;
  if (_siteApplicableSets)
  {
    settings = self->_settings;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__CESRSpeechProfileSiteWriter_logRequiredProfileInstances__block_invoke;
    v6[3] = &unk_27857F1F8;
    v6[4] = self;
    v7 = _siteApplicableSets;
    [(CESRSpeechProfileSettings *)settings enumerateRequiredInstances:v6];
  }
}

void __58__CESRSpeechProfileSiteWriter_logRequiredProfileInstances__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v45 = a2;
  context = objc_autoreleasePoolPush();
  v49 = a1;
  v5 = *(*(a1 + 32) + 16);
  v66 = 0;
  v47 = [v5 instanceWithLocale:v45 options:a3 error:&v66];
  v6 = v66;
  v7 = v47;
  if (v47)
  {
    v8 = MEMORY[0x277CBEB58];
    v9 = [*(a1 + 32) _filterSetsForProfileInstance:v47 sets:*(a1 + 40)];
    v10 = [v8 setWithArray:v9];

    v11 = [v47 changeRegistry];
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v12 = MEMORY[0x277CEF0E8];
    v13 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v14 = *(*(v49 + 32) + 16);
      *buf = 136315650;
      v68 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
      v69 = 2112;
      v70 = v14;
      v71 = 2112;
      v72 = v47;
      _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s (%@) [%@] Enumerating all registered bookmarks...", buf, 0x20u);
    }

    v61 = v6;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __58__CESRSpeechProfileSiteWriter_logRequiredProfileInstances__block_invoke_290;
    v55[3] = &unk_27857F1D0;
    v15 = v11;
    v16 = *(v49 + 32);
    v56 = v15;
    v57 = v16;
    v48 = v47;
    v58 = v48;
    v17 = v10;
    v59 = v17;
    v60 = &v62;
    v43 = v15;
    v18 = [(__CFString *)v15 enumerateAllBookmarks:&v61 usingBlock:v55];
    v44 = v61;

    if (v18)
    {

      v19 = *v12;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(*(v49 + 32) + 16);
        v21 = *(v63 + 6);
        v22 = [(__CFString *)v17 count];
        v68 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
        v23 = @"none";
        *buf = 136316162;
        v69 = 2112;
        if (v22)
        {
          v23 = v17;
        }

        v70 = v20;
        v71 = 2112;
        v72 = v48;
        v73 = 1024;
        *v74 = v21;
        *&v74[4] = 2112;
        *&v74[6] = v23;
        _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_INFO, "%s (%@) [%@] Enumerated %u bookmarks for sets excluding: %@", buf, 0x30u);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v24 = v17;
      v25 = [(__CFString *)v24 countByEnumeratingWithState:&v51 objects:v77 count:16];
      if (v25)
      {
        v26 = *v52;
        do
        {
          v27 = 0;
          v50 = v25;
          do
          {
            if (*v52 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v51 + 1) + 8 * v27);
            v29 = [v28 changePublisherWithUseCase:@"SpeechProfile"];
            v30 = *v12;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = v26;
              v32 = v24;
              v33 = v12;
              v34 = v17;
              v35 = *(*(v49 + 32) + 16);
              v36 = [v29 sharedItemCount];
              v37 = [v29 localItemInstanceCount];
              *buf = 136316418;
              v68 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
              v69 = 2112;
              v70 = v35;
              v71 = 2112;
              v72 = v48;
              v73 = 2112;
              *v74 = v28;
              *&v74[8] = 2048;
              *&v74[10] = v36;
              v75 = 2048;
              v76 = v37;
              _os_log_impl(&dword_225EEB000, v30, OS_LOG_TYPE_INFO, "%s (%@) [%@] EXCLUDED applicable set: %@ (sharedItemCount: %lu, localItemInstanceCount: %lu)", buf, 0x3Eu);
              v17 = v34;
              v12 = v33;
              v24 = v32;
              v26 = v31;
              v25 = v50;
            }

            ++v27;
          }

          while (v25 != v27);
          v25 = [(__CFString *)v24 countByEnumeratingWithState:&v51 objects:v77 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v42 = *(*(v49 + 32) + 16);
        *buf = 136315906;
        v68 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
        v69 = 2112;
        v70 = v42;
        v71 = 2112;
        v72 = v48;
        v73 = 2112;
        *v74 = v44;
        _os_log_error_impl(&dword_225EEB000, v40, OS_LOG_TYPE_ERROR, "%s (%@) [%@] Failed to enumerate change registry, error: %@", buf, 0x2Au);
      }

      v24 = v56;
    }

    _Block_object_dispose(&v62, 8);
    v6 = v44;
    v7 = v47;
  }

  else
  {
    v38 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v39 = *(*(a1 + 32) + 16);
      *buf = 136315650;
      v68 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
      v69 = 2112;
      v70 = v39;
      v71 = 2112;
      v72 = v6;
      _os_log_error_impl(&dword_225EEB000, v38, OS_LOG_TYPE_ERROR, "%s (%@) Failed to get/create profile instance, error: %@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(context);
  v41 = *MEMORY[0x277D85DE8];
}

void __58__CESRSpeechProfileSiteWriter_logRequiredProfileInstances__block_invoke_290(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 changePublisherWithUseCase:@"SpeechProfile"];
  v8 = [*(a1 + 32) descriptionForBookmark:v6];
  v9 = [v7 isBookmarkUpToDate:v6];

  v10 = *MEMORY[0x277CEF0E8];
  v11 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 48);
      v13 = *(*(a1 + 40) + 16);
      v18 = 136315906;
      v19 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s (%@) [%@] Up-to-date: %@", &v18, 0x2Au);
    }
  }

  else if (v11)
  {
    v14 = *(a1 + 48);
    v15 = *(*(a1 + 40) + 16);
    v16 = v10;
    v18 = 136316674;
    v19 = "[CESRSpeechProfileSiteWriter logRequiredProfileInstances]_block_invoke";
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v5;
    v28 = 2048;
    v29 = [v7 sharedItemCount];
    v30 = 2048;
    v31 = [v7 localItemInstanceCount];
    _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s (%@) [%@] OUTDATED: %@ with current set %@ (sharedItemCount: %lu, localItemInstanceCount: %lu)", &v18, 0x48u);
  }

  [*(a1 + 56) removeObject:v5];
  ++*(*(*(a1 + 64) + 8) + 24);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CESRSpeechProfileSiteWriter;
  v4 = [(CESRSpeechProfileSiteWriter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_speechProfileSite];

  return v5;
}

- (CESRSpeechProfileSiteWriter)initWithSpeechProfileSite:(id)site settings:(id)settings setEnumerator:(id)enumerator
{
  siteCopy = site;
  settingsCopy = settings;
  enumeratorCopy = enumerator;
  v25.receiver = self;
  v25.super_class = CESRSpeechProfileSiteWriter;
  v12 = [(CESRSpeechProfileSiteWriter *)&v25 init];
  if (v12)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v14 cStringUsingEncoding:4];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UTILITY, 0);
    obj = enumerator;
    v17 = enumeratorCopy;
    v18 = settingsCopy;
    v20 = v19 = siteCopy;
    v21 = dispatch_queue_create(v15, v20);
    queue = v12->_queue;
    v12->_queue = v21;

    siteCopy = v19;
    settingsCopy = v18;
    enumeratorCopy = v17;

    objc_storeStrong(&v12->_speechProfileSite, site);
    objc_storeStrong(&v12->_settings, settings);
    objc_storeStrong(&v12->_setEnumerator, obj);
    v12->_didEnumerateSets = 0;
  }

  return v12;
}

@end