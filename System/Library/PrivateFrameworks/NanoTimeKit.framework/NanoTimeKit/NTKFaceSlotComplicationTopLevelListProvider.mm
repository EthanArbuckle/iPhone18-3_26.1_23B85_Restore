@interface NTKFaceSlotComplicationTopLevelListProvider
- (NSDiffableDataSourceSnapshot)pickerListDataSourceSnapshot;
- (NTKFaceSlotComplicationTopLevelListProvider)initWithRichSlot:(BOOL)slot complicationFamily:(int64_t)family complications:(id)complications selectedComplication:(id)complication;
- (id)detailListProviderForSectionIdentifier:(id)identifier;
- (void)_buildDataIfNeeded;
@end

@implementation NTKFaceSlotComplicationTopLevelListProvider

- (NTKFaceSlotComplicationTopLevelListProvider)initWithRichSlot:(BOOL)slot complicationFamily:(int64_t)family complications:(id)complications selectedComplication:(id)complication
{
  complicationsCopy = complications;
  complicationCopy = complication;
  v16.receiver = self;
  v16.super_class = NTKFaceSlotComplicationTopLevelListProvider;
  v12 = [(NTKFaceSlotComplicationTopLevelListProvider *)&v16 init];
  if (v12)
  {
    v13 = [complicationsCopy copy];
    complications = v12->_complications;
    v12->_complications = v13;

    objc_storeStrong(&v12->_selectedItemIgnoringMoreButton, complication);
    v12->_pickerListProviderSlotIsRich = slot;
    v12->_pickerComplicationFamily = family;
  }

  return v12;
}

- (id)detailListProviderForSectionIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    [(NTKFaceSlotComplicationTopLevelListProvider *)self _buildDataIfNeeded];
    complicationsBySectionIdentifier = [(NTKFaceSlotComplicationTopLevelListProvider *)self complicationsBySectionIdentifier];
    v6 = [complicationsBySectionIdentifier objectForKey:identifierCopy];

    selectedItemIgnoringMoreButton = [(NTKFaceSlotComplicationTopLevelListProvider *)self selectedItemIgnoringMoreButton];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      selectedItemIgnoringMoreButton = 0;
    }

    v8 = [[NTKFaceSlotComplicationDetailListProvider alloc] initWithRichSlot:[(NTKFaceSlotComplicationTopLevelListProvider *)self pickerListProviderSlotIsRich] complicationFamily:self->_pickerComplicationFamily complications:v6 selectedComplication:selectedItemIgnoringMoreButton];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDiffableDataSourceSnapshot)pickerListDataSourceSnapshot
{
  [(NTKFaceSlotComplicationTopLevelListProvider *)self _buildDataIfNeeded];
  pickerListDataSourceSnapshot = self->_pickerListDataSourceSnapshot;

  return pickerListDataSourceSnapshot;
}

- (void)_buildDataIfNeeded
{
  v108 = *MEMORY[0x277D85DE8];
  if (!self->_pickerListDataSourceSnapshot)
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = [(NTKFaceSlotComplicationTopLevelListProvider *)self complications];
    v3 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
    selfCopy = self;
    if (!v3)
    {
      v68 = 0;
      goto LABEL_34;
    }

    v4 = v3;
    v68 = 0;
    v5 = *v96;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v96 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v95 + 1) + 8 * i);
        ntk_sectionIdentifier = [v7 ntk_sectionIdentifier];
        if (ntk_sectionIdentifier)
        {
          v9 = ntk_sectionIdentifier;
          if ([(__CFString *)ntk_sectionIdentifier isEqualToString:@"com.apple.DateComplicationsHost"])
          {

            v9 = @"com.apple.NanoCalendar";
          }

          array = [v70 objectForKeyedSubscript:v9];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [v70 setObject:array forKeyedSubscript:v9];
            localizedSectionHeaderName = [v7 localizedSectionHeaderName];
            if (!localizedSectionHeaderName)
            {
              localizedSectionHeaderName = v9;
            }

            v12 = [[NTKTopLevelSectionInfo alloc] initWithIdentifier:v9 localizedSectionName:localizedSectionHeaderName];
            [v74 addObject:v12];
          }

          selectedItemIgnoringMoreButton = [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy selectedItemIgnoringMoreButton];
          ntk_identifier = [selectedItemIgnoringMoreButton ntk_identifier];
          ntk_identifier2 = [v7 ntk_identifier];
          v16 = [ntk_identifier isEqual:ntk_identifier2];

          if (v16)
          {
            v17 = v9;

            v68 = v17;
          }

          if ([v7 complicationType] == 31 || objc_msgSend(v7, "complicationType") == 37)
          {
LABEL_18:
            [array addObject:v7];
          }

          else
          {
            if ([(__CFString *)v9 isEqualToString:@"com.apple.NanoWorldClock"])
            {
              v18 = [array count];
              v19 = array;
              v20 = v7;
              v21 = &__block_literal_global_87;
            }

            else if ([(__CFString *)v9 isEqualToString:@"com.apple.private.NanoTimer"])
            {
              v18 = [array count];
              v19 = array;
              v20 = v7;
              v21 = &__block_literal_global_14_0;
            }

            else
            {
              if ([(__CFString *)v9 isEqualToString:@"com.apple.NanoCompass.watchkitapp.waypoints"])
              {
                v18 = [array count];
                v94[0] = MEMORY[0x277D85DD0];
                v94[1] = 3221225472;
                v94[2] = __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_3;
                v94[3] = &unk_2787827E0;
                v94[4] = selfCopy;
                v94[5] = 1;
                v21 = v94;
              }

              else
              {
                if ([v7 complicationType] == 56)
                {
                  goto LABEL_18;
                }

                pickerListProviderSlotIsRich = [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy pickerListProviderSlotIsRich];
                v18 = [array count];
                v92[0] = MEMORY[0x277D85DD0];
                v92[1] = 3221225472;
                v92[2] = __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_4;
                v92[3] = &__block_descriptor_41_e45_q24__0__NTKComplication_8__NTKComplication_16l;
                v92[4] = 1;
                v93 = pickerListProviderSlotIsRich;
                v21 = v92;
              }

              v19 = array;
              v20 = v7;
            }

            [array insertObject:v7 atIndex:{objc_msgSend(v19, "indexOfObject:inSortedRange:options:usingComparator:", v20, 0, v18, 1024, v21)}];
          }

          continue;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
      if (!v4)
      {
LABEL_34:

        [v74 sortUsingComparator:&__block_literal_global_19_0];
        v23 = [MEMORY[0x277CBEB58] set];
        v66 = objc_alloc_init(MEMORY[0x277CFB890]);
        [v66 appendSectionsWithIdentifiers:v74];
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v64 = v74;
        v67 = [v64 countByEnumeratingWithState:&v88 objects:v106 count:16];
        if (!v67)
        {
          goto LABEL_96;
        }

        v65 = *v89;
        v63 = v86;
        while (1)
        {
          v24 = 0;
          do
          {
            if (*v89 != v65)
            {
              objc_enumerationMutation(v64);
            }

            v71 = *(*(&v88 + 1) + 8 * v24);
            ntk_identifier3 = [v71 ntk_identifier];
            v26 = [v70 objectForKey:ntk_identifier3];
            if ([ntk_identifier3 isEqualToString:@"com.apple.nanotimekit.contacts"])
            {
              v27 = [NTKPeopleComplication _complicationPickerShouldShowMoreButtonForList:v26];
              if ([v26 count] > 4)
              {
                goto LABEL_41;
              }

              v29 = [v26 count];
              v75 = [v26 copy];
              if (v27)
              {
                v31 = v26;
                goto LABEL_51;
              }

              goto LABEL_52;
            }

            if ((NTKUseComplicationEditor() & 1) != 0 || ![ntk_identifier3 isEqualToString:@"com.apple.NanoHome"])
            {
              v30 = [v26 count];
              v75 = [v26 copy];
              if (v30 <= 4)
              {
LABEL_42:
                v28 = 0;
                v29 = 3;
                goto LABEL_53;
              }

LABEL_48:
              v31 = v26;
              v29 = 3;
LABEL_51:
              v26 = [v31 subarrayWithRange:{0, v29}];

              v28 = 1;
              goto LABEL_53;
            }

            if ([v26 count] <= 4)
            {
              v29 = [v26 count];
              v75 = [v26 copy];
LABEL_52:
              v28 = 0;
              goto LABEL_53;
            }

            v31 = [NTKHomeListPickerDataSource topLevelItemsForComplicationFamily:[(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy pickerComplicationFamily] sectionIdentifier:ntk_identifier3];

            v27 = +[NTKHomeListPickerDataSource shouldShowTopLevelMoreButton];
            if ([v31 count] > 4)
            {
              v26 = v31;
LABEL_41:
              v75 = [v26 copy];
              if (!v27)
              {
                goto LABEL_42;
              }

              goto LABEL_48;
            }

            v29 = [v31 count];
            v75 = [v31 copy];
            if (v27)
            {
              goto LABEL_51;
            }

            v28 = 0;
            v26 = v31;
LABEL_53:
            if ([(__CFString *)v68 isEqual:ntk_identifier3])
            {
              selectedItemIgnoringMoreButton2 = [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy selectedItemIgnoringMoreButton];
              v33 = selectedItemIgnoringMoreButton2;
              v34 = v28 ^ 1;
              if (!selectedItemIgnoringMoreButton2)
              {
                v34 = 1;
              }

              if ((v34 & 1) == 0)
              {
                v85[0] = MEMORY[0x277D85DD0];
                v85[1] = 3221225472;
                v86[0] = __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_6;
                v86[1] = &unk_278782848;
                v35 = selectedItemIgnoringMoreButton2;
                v87 = v35;
                v36 = [v75 indexOfObjectPassingTest:v85];
                if (v36 != 0x7FFFFFFFFFFFFFFFLL && v36 >= v29)
                {
                  v38 = [v26 subarrayWithRange:{0, v29 - 1}];
                  v105 = v35;
                  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
                  v40 = [v39 arrayByAddingObjectsFromArray:v38];

                  v26 = v40;
                }
              }

              [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy setPickerSelectedItem:v33];
            }

            v73 = v24;
            if (v28)
            {
              v41 = [[NTKMoreButtonListItem alloc] initWithSectionIdentifier:ntk_identifier3];
              v42 = [v26 arrayByAddingObject:v41];

              v26 = v42;
            }

            v72 = ntk_identifier3;
            v43 = [MEMORY[0x277CBEB40] orderedSetWithArray:v26];
            v44 = [v43 count];
            if (v44 != [v26 count])
            {
              array2 = [MEMORY[0x277CBEB18] array];
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v46 = v26;
              v47 = [v46 countByEnumeratingWithState:&v81 objects:v104 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v82;
                do
                {
                  for (j = 0; j != v48; ++j)
                  {
                    if (*v82 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    ntk_identifier4 = [*(*(&v81 + 1) + 8 * j) ntk_identifier];
                    [array2 addObject:ntk_identifier4];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v81 objects:v104 count:16];
                }

                while (v48);
              }

              v52 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
              if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v101 = array2;
                v102 = 2112;
                v103 = v46;
                _os_log_fault_impl(&dword_22D9C5000, v52, OS_LOG_TYPE_FAULT, "NTKListProviderError: Items %@ has a duplicate (%@)", buf, 0x16u);
              }
            }

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v53 = v26;
            v54 = [v53 countByEnumeratingWithState:&v77 objects:v99 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v78;
              do
              {
                for (k = 0; k != v55; ++k)
                {
                  if (*v78 != v56)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v58 = *(*(&v77 + 1) + 8 * k);
                  if ([v23 containsObject:v58])
                  {
                    [v43 removeObject:v58];
                    v59 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
                    {
                      ntk_identifier5 = [v58 ntk_identifier];
                      *buf = 138412546;
                      v101 = ntk_identifier5;
                      v102 = 2112;
                      v103 = v58;
                      _os_log_fault_impl(&dword_22D9C5000, v59, OS_LOG_TYPE_FAULT, "NTKListProviderError: Item %@ (%@) already in list provider", buf, 0x16u);
                    }
                  }
                }

                v55 = [v53 countByEnumeratingWithState:&v77 objects:v99 count:16];
              }

              while (v55);
            }

            array3 = [v43 array];
            [v23 addObjectsFromArray:array3];
            [v66 appendItemsWithIdentifiers:array3 intoSectionWithIdentifier:v71];

            v24 = v73 + 1;
          }

          while (v73 + 1 != v67);
          v62 = [v64 countByEnumeratingWithState:&v88 objects:v106 count:16];
          v67 = v62;
          if (!v62)
          {
LABEL_96:

            [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy setPickerListDataSourceSnapshot:v66];
            [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy setComplicationsBySectionIdentifier:v70];

            return;
          }
        }
      }
    }
  }
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ((v7 = v6, [v5 complication], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.NanoCompass.complications.waypoint"), v9, v8, objc_msgSend(v7, "complication"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "bundleIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"com.apple.NanoCompass.complications.waypoint"), v12, v11, v7, v10) ? (v14 = -1) : (v14 = 1), (v10 & 1) == 0 && (v13 & 1) == 0))
  {
    v15 = [*(a1 + 32) pickerListProviderSlotIsRich];
    v16 = [v5 ntk_localizedNameWithOptions:*(a1 + 40) forRichComplicationSlot:v15];
    v17 = [v6 ntk_localizedNameWithOptions:*(a1 + 40) forRichComplicationSlot:v15];
    v14 = [v16 localizedCaseInsensitiveCompare:v17];
  }

  return v14;
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [a2 ntk_localizedNameWithOptions:v5 forRichComplicationSlot:v6];
  v9 = [v7 ntk_localizedNameWithOptions:*(a1 + 32) forRichComplicationSlot:*(a1 + 40)];

  v10 = [v8 localizedCaseInsensitiveCompare:v9];
  return v10;
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 ntk_identifier];
  v7 = [v6 isEqualToString:@"com.apple.nanotimekit.off"];

  if (v7)
  {
    v8 = -1;
  }

  else
  {
    v9 = [v4 ntk_localizedSectionName];
    v10 = [v5 ntk_localizedSectionName];
    v8 = [v9 localizedCaseInsensitiveCompare:v10];
  }

  return v8;
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 ntk_identifier];
  v4 = [*(a1 + 32) ntk_identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end