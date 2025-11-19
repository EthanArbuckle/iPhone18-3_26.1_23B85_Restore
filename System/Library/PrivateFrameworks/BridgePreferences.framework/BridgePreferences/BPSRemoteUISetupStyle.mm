@interface BPSRemoteUISetupStyle
- (void)_applyToLabel:(id)a3;
- (void)_applyToTitleLabel:(id)a3;
- (void)applyToObjectModel:(id)a3;
@end

@implementation BPSRemoteUISetupStyle

- (void)_applyToTitleLabel:(id)a3
{
  v9 = a3;
  v3 = BPSTextColor();
  [v9 setTextColor:v3];

  v4 = [MEMORY[0x277D75348] blackColor];
  [v9 setBackgroundColor:v4];

  v5 = BPSFontWithSize(30.0);
  [v9 setFont:v5];

  [v9 setTextAlignment:1];
  v6 = [v9 text];
  v7 = [v6 componentsSeparatedByString:@" "];
  v8 = [v7 count];

  if (v8 == 1)
  {
    [v9 setNumberOfLines:1];
    [v9 setAdjustsFontSizeToFitWidth:1];
  }
}

- (void)_applyToLabel:(id)a3
{
  v3 = a3;
  v4 = BPSTextColor();
  [v3 setTextColor:v4];

  v5 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v5];
}

- (void)applyToObjectModel:(id)a3
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 setNextButtonStyle:2];
  v74 = v3;
  [v3 allPages];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v100 = 0u;
  v4 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v4)
  {
    v5 = v4;
    v81 = *v98;
    v6 = *MEMORY[0x277D76EC0];
    v88 = *MEMORY[0x277D740C0];
    do
    {
      v7 = 0;
      v75 = v5;
      do
      {
        if (*v98 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v97 + 1) + 8 * v7);
        if ([v8 hasWebView])
        {
          v9 = [v8 webViewOM];
          v10 = [v9 webView];

          v11 = [v10 scrollView];
          [v11 setDecelerationRate:v6];

          v12 = [v10 scrollView];
          [v12 setIndicatorStyle:2];

          [v10 evaluateJavaScript:@"document.body.style.webkitUserSelect='none';" completionHandler:0];
        }

        [v8 setShowsTitlesAsHeaderViews:1];
        [v8 setTitleLabelPadding:{6.0, 0.0, 14.0, 0.0}];
        v13 = [v8 titleLabel];
        [(BPSRemoteUISetupStyle *)self _applyToTitleLabel:v13];

        if ([v8 hasTableView])
        {
          v79 = v8;
          v80 = v7;
          v14 = [v8 tableViewOM];
          v15 = [v14 tableView];
          v16 = [MEMORY[0x277D75348] blackColor];
          [v15 setBackgroundColor:v16];

          [v15 setBackgroundView:0];
          v17 = BPSSeparatorColor();
          [v15 setSeparatorColor:v17];

          v77 = v15;
          [v15 setIndicatorStyle:2];
          v78 = v14;
          v18 = [v14 sections];
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v83 = v18;
          v85 = [v18 countByEnumeratingWithState:&v93 objects:v104 count:16];
          if (!v85)
          {
            goto LABEL_36;
          }

          v84 = *v94;
          while (1)
          {
            v19 = 0;
            do
            {
              if (*v94 != v84)
              {
                objc_enumerationMutation(v83);
              }

              v86 = *(*(&v93 + 1) + 8 * v19);
              v87 = v19;
              v20 = [v86 rows];
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v21 = [v20 countByEnumeratingWithState:&v89 objects:v103 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v90;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v90 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v89 + 1) + 8 * i);
                    v26 = [v25 tableCell];
                    v27 = [v25 attributes];
                    v28 = [v27 objectForKey:@"class"];
                    v29 = [v28 isEqualToString:@"label"];

                    if (v29)
                    {
                      v30 = [v26 textLabel];
                      v31 = BPSForegroundColor();
                      [v26 setBackgroundColor:v31];

                      v32 = BPSTextColor();
                      [v30 setTextColor:v32];

                      v33 = BPSFontWithSize(15.0);
                      [v30 setFont:v33];

                      [v30 setAdjustsFontSizeToFitWidth:1];
                      [v30 setMinimumScaleFactor:0.70588237];
                      v34 = [v26 detailTextLabel];
                      v35 = BPSTextColor();
                      [v34 setTextColor:v35];

                      v36 = [v25 attributes];
                      v37 = [v36 mutableCopy];

                      [v37 setObject:@"white" forKey:@"labelColor"];
                      v38 = [v37 objectForKey:@"radioGroup"];

                      if (v38)
                      {
                        [v37 setObject:@"systemOrange" forKey:@"radioGroupSelectedColor"];
                      }

                      [v25 setAttributes:v37];
                      goto LABEL_26;
                    }

                    v39 = BPSForegroundColor();
                    [v26 setBackgroundColor:v39];

                    v40 = [v26 textLabel];
                    v41 = BPSSetupTintColor();
                    [v40 setTextColor:v41];

                    v42 = [v26 editableTextField];

                    if (!v42)
                    {
                      goto LABEL_28;
                    }

                    v43 = [v26 editableTextField];
                    v44 = BPSTextColor();
                    [v43 setTextColor:v44];

                    v45 = [v26 editableTextField];
                    v30 = [v45 placeholder];

                    if ([v30 length])
                    {
                      v101 = v88;
                      v46 = [MEMORY[0x277D75348] lightGrayColor];
                      v102 = v46;
                      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];

                      v47 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v30 attributes:v37];
                      v48 = [v26 editableTextField];
                      [v48 setAttributedPlaceholder:v47];

LABEL_26:
                    }

LABEL_28:
                    v49 = objc_alloc_init(MEMORY[0x277D75D18]);
                    v50 = BPSCellHightlightColor();
                    [v49 setBackgroundColor:v50];

                    [v26 setSelectedBackgroundView:v49];
                  }

                  v22 = [v20 countByEnumeratingWithState:&v89 objects:v103 count:16];
                }

                while (v22);
              }

              v51 = [v86 footerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 = [v51 linkButton];
                v53 = [v52 titleLabel];
                v54 = BPSFontWithSize(15.0);
                [v53 setFont:v54];
              }

              v55 = [v86 headerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v56 = [v55 headerLabel];
                v57 = [v55 subHeaderLabel];
                [(BPSRemoteUISetupStyle *)self _applyToLabel:v56];
                [(BPSRemoteUISetupStyle *)self _applyToLabel:v57];
              }

              v19 = v87 + 1;
            }

            while (v87 + 1 != v85);
            v85 = [v83 countByEnumeratingWithState:&v93 objects:v104 count:16];
            if (!v85)
            {
LABEL_36:

              v5 = v75;
              v8 = v79;
              v7 = v80;
              v59 = v77;
              v58 = v78;
              goto LABEL_43;
            }
          }
        }

        if ([v8 hasPasscodeView])
        {
          v60 = [v8 passcodeViewOM];
          v61 = [v60 passcodeView];
          [MEMORY[0x277D75348] blackColor];
          v63 = v62 = v7;
          [v61 setBackgroundColor:v63];

          v7 = v62;
          v64 = [v8 passcodeViewOM];
          v65 = BPSTextColor();
          [v64 setForegroundColor:v65];

          v66 = [v8 passcodeViewOM];
          [v66 setKeyboardAppearance:1];

          v58 = [v8 containerView];
          v67 = MEMORY[0x277D75348];
        }

        else
        {
          if ([v8 hasSpinnerView])
          {
            v68 = [v8 spinnerViewOM];
            v69 = [MEMORY[0x277D75348] whiteColor];
            [v68 setSpinnerColor:v69];
          }

          v58 = [v8 containerView];
          v67 = MEMORY[0x277D75348];
        }

        v59 = [v67 blackColor];
        [v58 setBackgroundColor:v59];
LABEL_43:

        v70 = [v8 leftToolbarItem];
        v71 = BPSSetupTintColor();
        [v70 setTintColor:v71];

        v72 = [v8 rightToolbarItem];
        v73 = BPSSetupTintColor();
        [v72 setTintColor:v73];

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v5);
  }
}

@end