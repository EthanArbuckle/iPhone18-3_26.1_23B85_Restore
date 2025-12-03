@interface HUSoftwareUpdateInfoItem
+ (id)_dateFormatter;
+ (id)_iconDescriptorForAccessories:(id)accessories;
- (HUSoftwareUpdateInfoItem)init;
- (HUSoftwareUpdateInfoItem)initWithAccessories:(id)accessories;
- (id)_releaseNotesResultsFuture;
- (id)_subclass_updateWithOptions:(id)options;
- (id)description;
@end

@implementation HUSoftwareUpdateInfoItem

+ (id)_dateFormatter
{
  if (qword_27C837FD0 != -1)
  {
    dispatch_once(&qword_27C837FD0, &__block_literal_global_162);
  }

  v3 = _MergedGlobals_3_8;

  return v3;
}

uint64_t __42__HUSoftwareUpdateInfoItem__dateFormatter__block_invoke()
{
  v0 = [MEMORY[0x277D146A0] sharedInstance];
  v1 = [v0 relativeDateFormatter];
  v2 = _MergedGlobals_3_8;
  _MergedGlobals_3_8 = v1;

  [_MergedGlobals_3_8 setDateStyle:2];
  v3 = _MergedGlobals_3_8;

  return [v3 setTimeStyle:0];
}

+ (id)_iconDescriptorForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  anyObject = [accessoriesCopy anyObject];
  hf_isMediaAccessory = [anyObject hf_isMediaAccessory];

  if (hf_isMediaAccessory)
  {
    v6 = [accessoriesCopy na_flatMap:&__block_literal_global_13_2];
    if ([v6 count] == 1)
    {
      anyObject2 = [v6 anyObject];

      if (anyObject2)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = MEMORY[0x277D14AC0];
  anyObject3 = [accessoriesCopy anyObject];
  anyObject2 = [v8 iconDescriptorForAccessory:anyObject3];

LABEL_7:

  return anyObject2;
}

id __58__HUSoftwareUpdateInfoItem__iconDescriptorForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14810];
  v3 = [a2 mediaProfile];
  v4 = [v2 mediaIconDescriptorForMediaContainer:v3];

  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v4];

  return v5;
}

- (HUSoftwareUpdateInfoItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessories_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateInfoItem.m" lineNumber:72 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateInfoItem init]", v5}];

  return 0;
}

- (HUSoftwareUpdateInfoItem)initWithAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v9.receiver = self;
  v9.super_class = HUSoftwareUpdateInfoItem;
  v6 = [(HUSoftwareUpdateInfoItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessories, accessories);
  }

  return v7;
}

- (id)_releaseNotesResultsFuture
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__21;
  v23 = __Block_byref_object_dispose__21;
  v24 = *MEMORY[0x277CE1E20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke;
  v18[3] = &unk_277DBFD68;
  v18[4] = self;
  v18[5] = &v19;
  v4 = __54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke(v18);
  if (![v4 length] || !objc_msgSend(v20[5], "isEqual:", *MEMORY[0x277CE1DA0]))
  {
    [dictionary setObject:v4 forKeyedSubscript:@"releaseNotesString"];
    [(HUSoftwareUpdateInfoItem *)self setReleaseNotesHTMLString:0];
    [(HUSoftwareUpdateInfoItem *)self setReleaseNotesAttributedString:0];
    goto LABEL_6;
  }

  releaseNotesHTMLString = [(HUSoftwareUpdateInfoItem *)self releaseNotesHTMLString];
  v6 = [v4 isEqualToString:releaseNotesHTMLString];

  if (v6)
  {
    releaseNotesAttributedString = [(HUSoftwareUpdateInfoItem *)self releaseNotesAttributedString];
    [dictionary setObject:releaseNotesAttributedString forKeyedSubscript:@"releaseNotesAttributedString"];

LABEL_6:
    v8 = [MEMORY[0x277D2C900] futureWithResult:dictionary];
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCA898] hf_safeAttributedStringWithHTML:v4 attributes:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke_3;
  v15[3] = &unk_277DBFD90;
  v15[4] = self;
  v16 = v4;
  v11 = dictionary;
  v17 = v11;
  v12 = [v10 flatMap:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke_4;
  v13[3] = &unk_277DB9858;
  v14 = v11;
  v8 = [v12 recover:v13];

LABEL_7:
  _Block_object_dispose(&v19, 8);

  return v8;
}

__CFString *__54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessories];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_29_0];

  v4 = [v3 hf_softwareUpdateDocumentation];
  v5 = [v4 releaseNotes];
  v6 = [v5 stringValue];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *MEMORY[0x277CE1DA0]);
    v7 = [v4 releaseNotes];
LABEL_7:
    v12 = v7;
    v13 = [v7 stringValue];

    goto LABEL_8;
  }

  v8 = [v4 textReleaseNotes];
  v9 = [v8 stringValue];

  if (v9)
  {
    v7 = [v4 textReleaseNotes];
    goto LABEL_7;
  }

  v10 = [v4 releaseNotesSummary];
  v11 = [v10 stringValue];

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *MEMORY[0x277CE1DA0]);
    v7 = [v4 releaseNotesSummary];
    goto LABEL_7;
  }

  v13 = &stru_2823E0EE8;
LABEL_8:

  return v13;
}

BOOL __54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hf_softwareUpdateDocumentation];
  v3 = v2 != 0;

  return v3;
}

uint64_t __54__HUSoftwareUpdateInfoItem__releaseNotesResultsFuture__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  [v4 setReleaseNotesHTMLString:v3];
  v6 = [v5 hf_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters];

  [*(a1 + 32) setReleaseNotesAttributedString:v6];
  v7 = [*(a1 + 32) releaseNotesAttributedString];
  [*(a1 + 48) setObject:v7 forKeyedSubscript:@"releaseNotesAttributedString"];

  v8 = MEMORY[0x277D2C900];
  v9 = *(a1 + 48);

  return [v8 futureWithResult:v9];
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _releaseNotesResultsFuture = [(HUSoftwareUpdateInfoItem *)self _releaseNotesResultsFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUSoftwareUpdateInfoItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DB9090;
  v10 = dictionary;
  selfCopy = self;
  v6 = dictionary;
  v7 = [_releaseNotesResultsFuture flatMap:v9];

  return v7;
}

id __56__HUSoftwareUpdateInfoItem__subclass_updateWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addEntriesFromDictionary:a2];
  v3 = [*(a1 + 40) accessories];
  v4 = [v3 na_any:&__block_literal_global_39_0];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277D140F0]];

  v6 = [*(a1 + 40) accessories];
  LODWORD(v4) = [v6 na_any:&__block_literal_global_42_0];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v4 ^ 1];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v8 = [*(a1 + 40) accessories];
  v9 = [v8 na_all:&__block_literal_global_44];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:*MEMORY[0x277D14100]];

  v11 = [*(a1 + 40) accessories];
  v12 = [v11 na_filter:&__block_literal_global_46_0];

  v13 = [MEMORY[0x277D14B28] progressForAccessoriesDownloadingSoftwareUpdate:v12];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:*MEMORY[0x277D14108]];

  v14 = [*(a1 + 40) accessories];
  v15 = [v14 anyObject];
  v16 = [v15 hf_userFriendlyLocalizedCapitalizedDescription];
  [*(a1 + 32) setObject:v16 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v17 = objc_opt_class();
  v18 = [*(a1 + 40) accessories];
  v19 = [v17 _iconDescriptorForAccessories:v18];
  [*(a1 + 32) setObject:v19 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v20 = [*(a1 + 40) accessories];
  v21 = [v20 na_flatMap:&__block_literal_global_49_0];
  [*(a1 + 32) setObject:v21 forKeyedSubscript:@"affectedAccessories"];

  v22 = [*(a1 + 40) accessories];
  v23 = [v22 anyObject];
  v24 = [v23 manufacturer];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateInfoItemProviderUnknownPublisher", @"HUSoftwareUpdateInfoItemProviderUnknownPublisher", 1);
  }

  v27 = v26;

  [*(a1 + 32) setObject:v27 forKeyedSubscript:*MEMORY[0x277D13E30]];
  v28 = [*(a1 + 40) accessories];
  v29 = [v28 anyObject];
  v30 = [v29 hf_softwareUpdateDisplayableVersion];

  if (v30)
  {
    v37 = HULocalizedStringWithFormat(@"HUSoftwareUpdateVersionFormat", @"%@", v31, v32, v33, v34, v35, v36, v30);
    if (v37)
    {
      v38 = v37;
      [*(a1 + 32) setObject:v37 forKeyedSubscript:*MEMORY[0x277D13EF8]];
    }
  }

  v39 = [*(a1 + 40) accessories];
  v40 = [v39 anyObject];
  v41 = [v40 hf_softwareUpdateReleaseDate];

  if (v41)
  {
    v42 = [objc_opt_class() _dateFormatter];
    v43 = [v42 stringFromDate:v41];
  }

  else
  {
    v43 = 0;
  }

  v44 = [*(a1 + 40) accessories];
  v45 = [v44 anyObject];
  v46 = [v45 hf_softwareUpdateDownloadSize];

  if (v46 < 2)
  {
    v54 = 0;
LABEL_15:
    if (v43)
    {
      v55 = v43;
    }

    else
    {
      v55 = v54;
      v54 = v55;
    }

    goto LABEL_18;
  }

  v47 = [MEMORY[0x277CCA8E8] stringFromByteCount:v46 countStyle:0];
  v54 = v47;
  if (!v41 || !v47)
  {
    goto LABEL_15;
  }

  v55 = HULocalizedStringWithFormat(@"HUSoftwareUpdateCombinedReleaseDateAndSizeFormat", @"%@%@", v48, v49, v50, v51, v52, v53, v43);
LABEL_18:
  v56 = v55;
  [*(a1 + 32) setObject:v55 forKeyedSubscript:*MEMORY[0x277D13F50]];
  v57 = [*(a1 + 40) accessories];
  v58 = [v57 na_all:&__block_literal_global_68_0];

  v59 = [MEMORY[0x277CCABB0] numberWithBool:v58];
  [*(a1 + 32) setObject:v59 forKeyedSubscript:*MEMORY[0x277D14110]];

  if (v58)
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EA8]];
    v60 = @"HUSoftwareUpdateControlTitle_Requested";
  }

  else
  {
    v60 = @"HUSoftwareUpdateControlTitle_Update";
  }

  v61 = _HULocalizedStringWithDefaultValue(v60, v60, 1);
  [*(a1 + 32) setObject:v61 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  v62 = [*(a1 + 40) accessories];
  [*(a1 + 32) setObject:v62 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v63 = MEMORY[0x277CBEB98];
  v64 = objc_opt_class();
  v65 = [v63 setWithObjects:{v64, objc_opt_class(), 0}];
  [*(a1 + 32) setObject:v65 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v66 = MEMORY[0x277CBEC38];
  [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FA8]];
  [*(a1 + 32) setObject:v66 forKeyedSubscript:*MEMORY[0x277D13FA0]];
  [*(a1 + 32) setObject:v66 forKeyedSubscript:*MEMORY[0x277D13F18]];
  v67 = MEMORY[0x277D2C900];
  v68 = [MEMORY[0x277D14780] outcomeWithResults:*(a1 + 32)];
  v69 = [v67 futureWithResult:v68];

  return v69;
}

id __56__HUSoftwareUpdateInfoItem__subclass_updateWithOptions___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB58];
  v3 = a2;
  v4 = [v2 setWithObject:v3];
  v5 = [v3 hf_bridgedAccessories];

  [v4 addObjectsFromArray:v5];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  latestResults = [(HUSoftwareUpdateInfoItem *)self latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v3 appendBool:objc_msgSend(v5 withName:"BOOLValue") ifEqualTo:{@"hidden", 1}];

  accessories = [(HUSoftwareUpdateInfoItem *)self accessories];
  hf_prettyDescription = [accessories hf_prettyDescription];
  v9 = [v3 appendObject:hf_prettyDescription withName:@"accessories"];

  build = [v3 build];

  return build;
}

@end