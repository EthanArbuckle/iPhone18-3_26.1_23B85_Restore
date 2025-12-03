@interface WDMedicalRecordTableViewUtility
+ (id)medicalRecordCellWithTableView:(id)view displayItem:(id)item clinicalAccount:(id)account accountOwner:(id)owner clinicalDataSourcesProvider:(id)provider;
+ (void)registerReuseIdentifiersWithTableView:(id)view;
@end

@implementation WDMedicalRecordTableViewUtility

+ (void)registerReuseIdentifiersWithTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[HRTimelineHeaderView reuseIdentifier];
  [viewCopy registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
  v6 = objc_opt_class();
  v7 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordCategorySectionHeaderCell];
  [viewCopy registerClass:v6 forCellReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordCategoryMinimizedSectionHeaderCell];
  [viewCopy registerClass:v8 forCellReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordReferenceRangeViewCell];
  [viewCopy registerClass:v10 forCellReuseIdentifier:v11];

  v12 = objc_opt_class();
  v13 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordBrandCell];
  [viewCopy registerClass:v12 forCellReuseIdentifier:v13];

  v14 = objc_opt_class();
  v15 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordStandaloneCell];
  [viewCopy registerClass:v14 forCellReuseIdentifier:v15];

  v16 = objc_opt_class();
  v17 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordSectionHeaderCell];
  [viewCopy registerClass:v16 forCellReuseIdentifier:v17];

  v18 = objc_opt_class();
  v19 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineProviderTitleCell];
  [viewCopy registerClass:v18 forCellReuseIdentifier:v19];

  v20 = objc_opt_class();
  v21 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineContentSubtitleCell];
  [viewCopy registerClass:v20 forCellReuseIdentifier:v21];

  v22 = objc_opt_class();
  v23 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineValueCell];
  [viewCopy registerClass:v22 forCellReuseIdentifier:v23];

  v24 = objc_opt_class();
  v25 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelinePanelTitleCell];
  [viewCopy registerClass:v24 forCellReuseIdentifier:v25];

  v26 = objc_opt_class();
  v27 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineAppendixCell];
  [viewCopy registerClass:v26 forCellReuseIdentifier:v27];

  v28 = objc_opt_class();
  v29 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailTitleCell];
  [viewCopy registerClass:v28 forCellReuseIdentifier:v29];

  v30 = objc_opt_class();
  v31 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailSubtitleCell];
  [viewCopy registerClass:v30 forCellReuseIdentifier:v31];

  v32 = objc_opt_class();
  v33 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailAttributedSubtitleCell];
  [viewCopy registerClass:v32 forCellReuseIdentifier:v33];

  v34 = objc_opt_class();
  v35 = +[HRConceptHeaderCell defaultReuseIdentifier];
  [viewCopy registerClass:v34 forCellReuseIdentifier:v35];

  v36 = objc_opt_class();
  v37 = +[WDMedicalRecordSpacerTextCell defaultReuseIdentifier];
  [viewCopy registerClass:v36 forCellReuseIdentifier:v37];
}

+ (id)medicalRecordCellWithTableView:(id)view displayItem:(id)item clinicalAccount:(id)account accountOwner:(id)owner clinicalDataSourcesProvider:(id)provider
{
  viewCopy = view;
  itemCopy = item;
  accountCopy = account;
  ownerCopy = owner;
  providerCopy = provider;
  switch([itemCopy displayItemType])
  {
    case 1:
      v44 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineProviderTitleCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v44];

      [v18 setIntendedPlacement:1];
      brandableObject = [itemCopy brandableObject];
      title = [brandableObject title];
      [v18 setTitle:title];

      goto LABEL_25;
    case 2:
      v46 = +[WDMedicalRecordSpacerTextCell defaultReuseIdentifier];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v46];

      title2 = [itemCopy title];
      [v18 setTitle:title2];

      [v18 setUseTallTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      break;
    case 3:
      v25 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordCategoryMinimizedSectionHeaderCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v25];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      metricColors = [itemCopy metricColors];
      keyColor = [metricColors keyColor];

      v28 = [objc_alloc(MEMORY[0x1E69A4398]) initWithTopColor:keyColor bottomColor:keyColor];
      [v18 setGradient:v28];

      [v18 setSeparatorDashStyle:objc_msgSend(itemCopy hidden:{"separatorStyle"), objc_msgSend(itemCopy, "separatorHidden")}];
      goto LABEL_36;
    case 4:
      v56 = ownerCopy;
      v57 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineContentSubtitleCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v57];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title3 = [itemCopy title];
      [v18 setTitle:title3];

      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      [v18 setShowDisclosureIndicator:{objc_msgSend(itemCopy, "showDisclosureIndicator")}];
      [v18 setUseRegularFontForSubtitle:{objc_msgSend(itemCopy, "useRegularFontForSubtitle")}];
      [v18 setSeparatorDashStyle:objc_msgSend(itemCopy hidden:{"separatorStyle"), objc_msgSend(itemCopy, "separatorHidden")}];
      medicalRecord = [itemCopy medicalRecord];
      medicalRecordOriginType = [medicalRecord medicalRecordOriginType];

      if (medicalRecordOriginType == 3)
      {
        medicalRecord2 = [itemCopy medicalRecord];
        originIdentifier = [medicalRecord2 originIdentifier];

        signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];
        if (providerCopy)
        {
          [v18 setCurrentSignedClinicalDataRecordIdentifier:signedClinicalDataRecordIdentifier];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke;
          v97[3] = &unk_1E83DCF18;
          v98 = v18;
          v99 = signedClinicalDataRecordIdentifier;
          v100 = itemCopy;
          selfCopy = self;
          [providerCopy fetchSignedClinicalDataRecordWithIdentifier:v99 completion:v97];
        }

        else
        {
          _HKInitializeLogging();
          v93 = *MEMORY[0x1E696B948];
          if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_FAULT))
          {
            [WDMedicalRecordTableViewUtility medicalRecordCellWithTableView:originIdentifier displayItem:v93 clinicalAccount:? accountOwner:? clinicalDataSourcesProvider:?];
          }
        }
      }

      else
      {
        subtitle = [itemCopy subtitle];
        [v18 setSubtitle:subtitle];
      }

      ownerCopy = v56;
      break;
    case 5:
      v94 = providerCopy;
      v69 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineValueCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v69];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title4 = [itemCopy title];
      [v18 setTitle:title4];

      valueString = [itemCopy valueString];
      unitString = [itemCopy unitString];
      [v18 setValue:valueString unit:unitString];

      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setSeparatorDashStyle:objc_msgSend(itemCopy hidden:{"separatorStyle"), objc_msgSend(itemCopy, "separatorHidden")}];
      medicalRecord3 = [itemCopy medicalRecord];
      medicalRecordOriginType2 = [medicalRecord3 medicalRecordOriginType];

      v96 = ownerCopy;
      v75 = accountCopy;
      if (medicalRecordOriginType2 == 3)
      {
        checkmarkSymbol = [MEMORY[0x1E69DCAB8] checkmarkSymbol];
      }

      else
      {
        checkmarkSymbol = 0;
      }

      v88 = MEMORY[0x1E696AD40];
      subtitle2 = [itemCopy subtitle];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v92 = [v88 attributedStringText:subtitle2 textColor:secondaryLabelColor symbol:checkmarkSymbol symbolColor:secondaryLabelColor2 useLargeSpacing:0];

      [v18 setAttributedSubtitleText:v92];
      accountCopy = v75;
      providerCopy = v94;
      ownerCopy = v96;
      break;
    case 6:
      v29 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordReferenceRangeViewCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v29];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      subtitle3 = [itemCopy subtitle];
      [v18 setSubtitle:subtitle3];

      chartValueWithRange = [itemCopy chartValueWithRange];
      [v18 setValueInRange:chartValueWithRange];

      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setSeparatorDashStyle:objc_msgSend(itemCopy hidden:{"separatorStyle"), objc_msgSend(itemCopy, "separatorHidden")}];
      medicalRecord4 = [itemCopy medicalRecord];
      medicalRecordOriginType3 = [medicalRecord4 medicalRecordOriginType];

      if (medicalRecordOriginType3 == 3)
      {
        v34 = MEMORY[0x1E696AD40];
        subtitle4 = [itemCopy subtitle];
        [MEMORY[0x1E69DC888] secondaryLabelColor];
        v36 = v95 = ownerCopy;
        [MEMORY[0x1E69DCAB8] checkmarkSymbol];
        v37 = providerCopy;
        v39 = v38 = accountCopy;
        secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        subtitle5 = [v34 attributedStringText:subtitle4 textColor:v36 symbol:v39 symbolColor:secondaryLabelColor3 useLargeSpacing:0];

        accountCopy = v38;
        providerCopy = v37;

        ownerCopy = v95;
        [v18 setAttributedSubtitleText:subtitle5];
      }

      else
      {
        subtitle5 = [itemCopy subtitle];
        [v18 setSubtitle:subtitle5];
      }

      break;
    case 7:
      v48 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineAppendixCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v48];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title5 = [itemCopy title];
      [v18 setTitle:title5];
      goto LABEL_13;
    case 8:
      v50 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelinePanelTitleCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v50];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title6 = [itemCopy title];
      [v18 setTitle:title6];

      title5 = [itemCopy subtitle];
      [v18 setSubtitle:title5];
LABEL_13:

      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      separatorStyle = [itemCopy separatorStyle];
      separatorHidden = [itemCopy separatorHidden];
      v54 = v18;
      v55 = separatorStyle;
      goto LABEL_26;
    case 9:
      v81 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordSectionHeaderCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v81];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      brandableObject = [itemCopy title];
      [v18 setTitle:brandableObject];
      goto LABEL_25;
    case 10:
      v77 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordBrandCell];
      keyColor = [viewCopy dequeueReusableCellWithIdentifier:v77];

      [keyColor setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      [itemCopy separatorInsets];
      [keyColor setSeparatorInsets:?];
      [keyColor setExtraTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      if (accountCopy && providerCopy)
      {
        [keyColor setBrandable:accountCopy dataProvider:providerCopy];
        v78 = [providerCopy nameAndFormattedBirthDateForAccountOwner:ownerCopy];
        brandDetailLabel = [keyColor brandDetailLabel];
        [brandDetailLabel setText:v78];

        [keyColor _updateLabelVisibility];
        v80 = keyColor;
      }

      else
      {
        v87 = objc_opt_class();
        v78 = NSStringFromClass(v87);
        v80 = HKErrorTableViewCell();
      }

      v18 = v80;

LABEL_36:
      break;
    case 11:
      v21 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordStandaloneCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v21];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title7 = [itemCopy title];
      [v18 setTitle:title7];

      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      goto LABEL_18;
    case 14:
      v42 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailTitleCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v42];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title8 = [itemCopy title];
      [v18 setTitle:title8];

      brandableObject = [itemCopy subtitle];
      [v18 setDateSubtitle:brandableObject];
      goto LABEL_25;
    case 15:
      v23 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailSubtitleCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v23];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title9 = [itemCopy title];
      [v18 setTitle:title9];

      brandableObject = [itemCopy subtitle];
      [v18 setSubtitle:brandableObject];
      goto LABEL_25;
    case 16:
    case 17:
      v17 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailAttributedSubtitleCell];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v17];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      title10 = [itemCopy title];
      [v18 setTitle:title10];

      brandableObject = [itemCopy attributedSubtitle];
      [v18 setAttributedSubtitle:brandableObject];
LABEL_25:

      [itemCopy separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      separatorStyle2 = [itemCopy separatorStyle];
      separatorHidden = [itemCopy separatorHidden];
      v54 = v18;
      v55 = separatorStyle2;
LABEL_26:
      [v54 setSeparatorDashStyle:v55 hidden:separatorHidden];
      break;
    case 18:
      v64 = +[HRConceptHeaderCell defaultReuseIdentifier];
      v18 = [viewCopy dequeueReusableCellWithIdentifier:v64];

      [v18 setIntendedPlacement:{objc_msgSend(itemCopy, "placement")}];
      image = [itemCopy image];
      [v18 setHeaderImage:image];

      title11 = [itemCopy title];
      [v18 setTitle:title11];

      metricColors2 = [itemCopy metricColors];
      keyColor2 = [metricColors2 keyColor];
      [v18 setCategoryColor:keyColor2];

LABEL_18:
      [v18 setExtraTopPadding:{objc_msgSend(itemCopy, "extraTopPadding")}];
      break;
    default:
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v18 = HKErrorTableViewCell();

      break;
  }

  return v18;
}

void __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke_2;
    v8[3] = &unk_1E83DCA90;
    v9 = a1[4];
    v10 = a1[5];
    v11 = v5;
    v12 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke_cold_1(a1, v6, v7);
    }
  }
}

void __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSignedClinicalDataRecordIdentifier];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 56) subtitle];
    v6 = [v5 attributedMeaningfulDateStringWithDateTitle:v7];
    [v4 setAttributedSubtitleText:v6];
  }
}

+ (void)medicalRecordCellWithTableView:(uint64_t)a1 displayItem:(NSObject *)a2 clinicalAccount:accountOwner:clinicalDataSourcesProvider:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1D101F000, a2, OS_LOG_TYPE_FAULT, "%{public}@ has no ClinicalSourcesDataProvider", &v2, 0xCu);
}

void __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1D101F000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch SCD record with error: %{public}@", &v4, 0x16u);
}

@end