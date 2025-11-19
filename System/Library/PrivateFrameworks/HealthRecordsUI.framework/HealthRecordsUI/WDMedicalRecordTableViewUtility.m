@interface WDMedicalRecordTableViewUtility
+ (id)medicalRecordCellWithTableView:(id)a3 displayItem:(id)a4 clinicalAccount:(id)a5 accountOwner:(id)a6 clinicalDataSourcesProvider:(id)a7;
+ (void)registerReuseIdentifiersWithTableView:(id)a3;
@end

@implementation WDMedicalRecordTableViewUtility

+ (void)registerReuseIdentifiersWithTableView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[HRTimelineHeaderView reuseIdentifier];
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
  v6 = objc_opt_class();
  v7 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordCategorySectionHeaderCell];
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordCategoryMinimizedSectionHeaderCell];
  [v3 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordReferenceRangeViewCell];
  [v3 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = objc_opt_class();
  v13 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordBrandCell];
  [v3 registerClass:v12 forCellReuseIdentifier:v13];

  v14 = objc_opt_class();
  v15 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordStandaloneCell];
  [v3 registerClass:v14 forCellReuseIdentifier:v15];

  v16 = objc_opt_class();
  v17 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordSectionHeaderCell];
  [v3 registerClass:v16 forCellReuseIdentifier:v17];

  v18 = objc_opt_class();
  v19 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineProviderTitleCell];
  [v3 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = objc_opt_class();
  v21 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineContentSubtitleCell];
  [v3 registerClass:v20 forCellReuseIdentifier:v21];

  v22 = objc_opt_class();
  v23 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineValueCell];
  [v3 registerClass:v22 forCellReuseIdentifier:v23];

  v24 = objc_opt_class();
  v25 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelinePanelTitleCell];
  [v3 registerClass:v24 forCellReuseIdentifier:v25];

  v26 = objc_opt_class();
  v27 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineAppendixCell];
  [v3 registerClass:v26 forCellReuseIdentifier:v27];

  v28 = objc_opt_class();
  v29 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailTitleCell];
  [v3 registerClass:v28 forCellReuseIdentifier:v29];

  v30 = objc_opt_class();
  v31 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailSubtitleCell];
  [v3 registerClass:v30 forCellReuseIdentifier:v31];

  v32 = objc_opt_class();
  v33 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailAttributedSubtitleCell];
  [v3 registerClass:v32 forCellReuseIdentifier:v33];

  v34 = objc_opt_class();
  v35 = +[HRConceptHeaderCell defaultReuseIdentifier];
  [v3 registerClass:v34 forCellReuseIdentifier:v35];

  v36 = objc_opt_class();
  v37 = +[WDMedicalRecordSpacerTextCell defaultReuseIdentifier];
  [v3 registerClass:v36 forCellReuseIdentifier:v37];
}

+ (id)medicalRecordCellWithTableView:(id)a3 displayItem:(id)a4 clinicalAccount:(id)a5 accountOwner:(id)a6 clinicalDataSourcesProvider:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  switch([v13 displayItemType])
  {
    case 1:
      v44 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineProviderTitleCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v44];

      [v18 setIntendedPlacement:1];
      v20 = [v13 brandableObject];
      v45 = [v20 title];
      [v18 setTitle:v45];

      goto LABEL_25;
    case 2:
      v46 = +[WDMedicalRecordSpacerTextCell defaultReuseIdentifier];
      v18 = [v12 dequeueReusableCellWithIdentifier:v46];

      v47 = [v13 title];
      [v18 setTitle:v47];

      [v18 setUseTallTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
      break;
    case 3:
      v25 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordCategoryMinimizedSectionHeaderCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v25];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
      v26 = [v13 metricColors];
      v27 = [v26 keyColor];

      v28 = [objc_alloc(MEMORY[0x1E69A4398]) initWithTopColor:v27 bottomColor:v27];
      [v18 setGradient:v28];

      [v18 setSeparatorDashStyle:objc_msgSend(v13 hidden:{"separatorStyle"), objc_msgSend(v13, "separatorHidden")}];
      goto LABEL_36;
    case 4:
      v56 = v15;
      v57 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineContentSubtitleCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v57];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v58 = [v13 title];
      [v18 setTitle:v58];

      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
      [v18 setShowDisclosureIndicator:{objc_msgSend(v13, "showDisclosureIndicator")}];
      [v18 setUseRegularFontForSubtitle:{objc_msgSend(v13, "useRegularFontForSubtitle")}];
      [v18 setSeparatorDashStyle:objc_msgSend(v13 hidden:{"separatorStyle"), objc_msgSend(v13, "separatorHidden")}];
      v59 = [v13 medicalRecord];
      v60 = [v59 medicalRecordOriginType];

      if (v60 == 3)
      {
        v61 = [v13 medicalRecord];
        v62 = [v61 originIdentifier];

        v63 = [v62 signedClinicalDataRecordIdentifier];
        if (v16)
        {
          [v18 setCurrentSignedClinicalDataRecordIdentifier:v63];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __135__WDMedicalRecordTableViewUtility_medicalRecordCellWithTableView_displayItem_clinicalAccount_accountOwner_clinicalDataSourcesProvider___block_invoke;
          v97[3] = &unk_1E83DCF18;
          v98 = v18;
          v99 = v63;
          v100 = v13;
          v101 = a1;
          [v16 fetchSignedClinicalDataRecordWithIdentifier:v99 completion:v97];
        }

        else
        {
          _HKInitializeLogging();
          v93 = *MEMORY[0x1E696B948];
          if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_FAULT))
          {
            [WDMedicalRecordTableViewUtility medicalRecordCellWithTableView:v62 displayItem:v93 clinicalAccount:? accountOwner:? clinicalDataSourcesProvider:?];
          }
        }
      }

      else
      {
        v86 = [v13 subtitle];
        [v18 setSubtitle:v86];
      }

      v15 = v56;
      break;
    case 5:
      v94 = v16;
      v69 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineValueCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v69];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v70 = [v13 title];
      [v18 setTitle:v70];

      v71 = [v13 valueString];
      v72 = [v13 unitString];
      [v18 setValue:v71 unit:v72];

      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setSeparatorDashStyle:objc_msgSend(v13 hidden:{"separatorStyle"), objc_msgSend(v13, "separatorHidden")}];
      v73 = [v13 medicalRecord];
      v74 = [v73 medicalRecordOriginType];

      v96 = v15;
      v75 = v14;
      if (v74 == 3)
      {
        v76 = [MEMORY[0x1E69DCAB8] checkmarkSymbol];
      }

      else
      {
        v76 = 0;
      }

      v88 = MEMORY[0x1E696AD40];
      v89 = [v13 subtitle];
      v90 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v91 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v92 = [v88 attributedStringText:v89 textColor:v90 symbol:v76 symbolColor:v91 useLargeSpacing:0];

      [v18 setAttributedSubtitleText:v92];
      v14 = v75;
      v16 = v94;
      v15 = v96;
      break;
    case 6:
      v29 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordReferenceRangeViewCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v29];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v30 = [v13 subtitle];
      [v18 setSubtitle:v30];

      v31 = [v13 chartValueWithRange];
      [v18 setValueInRange:v31];

      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setSeparatorDashStyle:objc_msgSend(v13 hidden:{"separatorStyle"), objc_msgSend(v13, "separatorHidden")}];
      v32 = [v13 medicalRecord];
      v33 = [v32 medicalRecordOriginType];

      if (v33 == 3)
      {
        v34 = MEMORY[0x1E696AD40];
        v35 = [v13 subtitle];
        [MEMORY[0x1E69DC888] secondaryLabelColor];
        v36 = v95 = v15;
        [MEMORY[0x1E69DCAB8] checkmarkSymbol];
        v37 = v16;
        v39 = v38 = v14;
        v40 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v41 = [v34 attributedStringText:v35 textColor:v36 symbol:v39 symbolColor:v40 useLargeSpacing:0];

        v14 = v38;
        v16 = v37;

        v15 = v95;
        [v18 setAttributedSubtitleText:v41];
      }

      else
      {
        v41 = [v13 subtitle];
        [v18 setSubtitle:v41];
      }

      break;
    case 7:
      v48 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelineAppendixCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v48];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v49 = [v13 title];
      [v18 setTitle:v49];
      goto LABEL_13;
    case 8:
      v50 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordTimelinePanelTitleCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v50];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v51 = [v13 title];
      [v18 setTitle:v51];

      v49 = [v13 subtitle];
      [v18 setSubtitle:v49];
LABEL_13:

      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
      v52 = [v13 separatorStyle];
      v53 = [v13 separatorHidden];
      v54 = v18;
      v55 = v52;
      goto LABEL_26;
    case 9:
      v81 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordSectionHeaderCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v81];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v20 = [v13 title];
      [v18 setTitle:v20];
      goto LABEL_25;
    case 10:
      v77 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordBrandCell];
      v27 = [v12 dequeueReusableCellWithIdentifier:v77];

      [v27 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      [v13 separatorInsets];
      [v27 setSeparatorInsets:?];
      [v27 setExtraTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
      if (v14 && v16)
      {
        [v27 setBrandable:v14 dataProvider:v16];
        v78 = [v16 nameAndFormattedBirthDateForAccountOwner:v15];
        v79 = [v27 brandDetailLabel];
        [v79 setText:v78];

        [v27 _updateLabelVisibility];
        v80 = v27;
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
      v18 = [v12 dequeueReusableCellWithIdentifier:v21];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v22 = [v13 title];
      [v18 setTitle:v22];

      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      goto LABEL_18;
    case 14:
      v42 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailTitleCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v42];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v43 = [v13 title];
      [v18 setTitle:v43];

      v20 = [v13 subtitle];
      [v18 setDateSubtitle:v20];
      goto LABEL_25;
    case 15:
      v23 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailSubtitleCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v23];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v24 = [v13 title];
      [v18 setTitle:v24];

      v20 = [v13 subtitle];
      [v18 setSubtitle:v20];
      goto LABEL_25;
    case 16:
    case 17:
      v17 = +[(WDMedicalRecordGroupableCell *)WDMedicalRecordDetailAttributedSubtitleCell];
      v18 = [v12 dequeueReusableCellWithIdentifier:v17];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v19 = [v13 title];
      [v18 setTitle:v19];

      v20 = [v13 attributedSubtitle];
      [v18 setAttributedSubtitle:v20];
LABEL_25:

      [v13 separatorInsets];
      [v18 setSeparatorInsets:?];
      [v18 setExtraTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
      v82 = [v13 separatorStyle];
      v53 = [v13 separatorHidden];
      v54 = v18;
      v55 = v82;
LABEL_26:
      [v54 setSeparatorDashStyle:v55 hidden:v53];
      break;
    case 18:
      v64 = +[HRConceptHeaderCell defaultReuseIdentifier];
      v18 = [v12 dequeueReusableCellWithIdentifier:v64];

      [v18 setIntendedPlacement:{objc_msgSend(v13, "placement")}];
      v65 = [v13 image];
      [v18 setHeaderImage:v65];

      v66 = [v13 title];
      [v18 setTitle:v66];

      v67 = [v13 metricColors];
      v68 = [v67 keyColor];
      [v18 setCategoryColor:v68];

LABEL_18:
      [v18 setExtraTopPadding:{objc_msgSend(v13, "extraTopPadding")}];
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