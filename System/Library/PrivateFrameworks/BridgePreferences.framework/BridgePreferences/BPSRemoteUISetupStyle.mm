@interface BPSRemoteUISetupStyle
- (void)_applyToLabel:(id)label;
- (void)_applyToTitleLabel:(id)label;
- (void)applyToObjectModel:(id)model;
@end

@implementation BPSRemoteUISetupStyle

- (void)_applyToTitleLabel:(id)label
{
  labelCopy = label;
  v3 = BPSTextColor();
  [labelCopy setTextColor:v3];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [labelCopy setBackgroundColor:blackColor];

  v5 = BPSFontWithSize(30.0);
  [labelCopy setFont:v5];

  [labelCopy setTextAlignment:1];
  text = [labelCopy text];
  v7 = [text componentsSeparatedByString:@" "];
  v8 = [v7 count];

  if (v8 == 1)
  {
    [labelCopy setNumberOfLines:1];
    [labelCopy setAdjustsFontSizeToFitWidth:1];
  }
}

- (void)_applyToLabel:(id)label
{
  labelCopy = label;
  v4 = BPSTextColor();
  [labelCopy setTextColor:v4];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [labelCopy setBackgroundColor:blackColor];
}

- (void)applyToObjectModel:(id)model
{
  v106 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  [modelCopy setNextButtonStyle:2];
  v74 = modelCopy;
  [modelCopy allPages];
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
          webViewOM = [v8 webViewOM];
          webView = [webViewOM webView];

          scrollView = [webView scrollView];
          [scrollView setDecelerationRate:v6];

          scrollView2 = [webView scrollView];
          [scrollView2 setIndicatorStyle:2];

          [webView evaluateJavaScript:@"document.body.style.webkitUserSelect='none';" completionHandler:0];
        }

        [v8 setShowsTitlesAsHeaderViews:1];
        [v8 setTitleLabelPadding:{6.0, 0.0, 14.0, 0.0}];
        titleLabel = [v8 titleLabel];
        [(BPSRemoteUISetupStyle *)self _applyToTitleLabel:titleLabel];

        if ([v8 hasTableView])
        {
          v79 = v8;
          v80 = v7;
          tableViewOM = [v8 tableViewOM];
          tableView = [tableViewOM tableView];
          blackColor = [MEMORY[0x277D75348] blackColor];
          [tableView setBackgroundColor:blackColor];

          [tableView setBackgroundView:0];
          v17 = BPSSeparatorColor();
          [tableView setSeparatorColor:v17];

          v77 = tableView;
          [tableView setIndicatorStyle:2];
          v78 = tableViewOM;
          sections = [tableViewOM sections];
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v83 = sections;
          v85 = [sections countByEnumeratingWithState:&v93 objects:v104 count:16];
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
              rows = [v86 rows];
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v21 = [rows countByEnumeratingWithState:&v89 objects:v103 count:16];
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
                      objc_enumerationMutation(rows);
                    }

                    v25 = *(*(&v89 + 1) + 8 * i);
                    tableCell = [v25 tableCell];
                    attributes = [v25 attributes];
                    v28 = [attributes objectForKey:@"class"];
                    v29 = [v28 isEqualToString:@"label"];

                    if (v29)
                    {
                      textLabel = [tableCell textLabel];
                      v31 = BPSForegroundColor();
                      [tableCell setBackgroundColor:v31];

                      v32 = BPSTextColor();
                      [textLabel setTextColor:v32];

                      v33 = BPSFontWithSize(15.0);
                      [textLabel setFont:v33];

                      [textLabel setAdjustsFontSizeToFitWidth:1];
                      [textLabel setMinimumScaleFactor:0.70588237];
                      detailTextLabel = [tableCell detailTextLabel];
                      v35 = BPSTextColor();
                      [detailTextLabel setTextColor:v35];

                      attributes2 = [v25 attributes];
                      v37 = [attributes2 mutableCopy];

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
                    [tableCell setBackgroundColor:v39];

                    textLabel2 = [tableCell textLabel];
                    v41 = BPSSetupTintColor();
                    [textLabel2 setTextColor:v41];

                    editableTextField = [tableCell editableTextField];

                    if (!editableTextField)
                    {
                      goto LABEL_28;
                    }

                    editableTextField2 = [tableCell editableTextField];
                    v44 = BPSTextColor();
                    [editableTextField2 setTextColor:v44];

                    editableTextField3 = [tableCell editableTextField];
                    textLabel = [editableTextField3 placeholder];

                    if ([textLabel length])
                    {
                      v101 = v88;
                      lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
                      v102 = lightGrayColor;
                      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];

                      v47 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textLabel attributes:v37];
                      editableTextField4 = [tableCell editableTextField];
                      [editableTextField4 setAttributedPlaceholder:v47];

LABEL_26:
                    }

LABEL_28:
                    v49 = objc_alloc_init(MEMORY[0x277D75D18]);
                    v50 = BPSCellHightlightColor();
                    [v49 setBackgroundColor:v50];

                    [tableCell setSelectedBackgroundView:v49];
                  }

                  v22 = [rows countByEnumeratingWithState:&v89 objects:v103 count:16];
                }

                while (v22);
              }

              footerView = [v86 footerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                linkButton = [footerView linkButton];
                titleLabel2 = [linkButton titleLabel];
                v54 = BPSFontWithSize(15.0);
                [titleLabel2 setFont:v54];
              }

              headerView = [v86 headerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                headerLabel = [headerView headerLabel];
                subHeaderLabel = [headerView subHeaderLabel];
                [(BPSRemoteUISetupStyle *)self _applyToLabel:headerLabel];
                [(BPSRemoteUISetupStyle *)self _applyToLabel:subHeaderLabel];
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
              blackColor2 = v77;
              containerView = v78;
              goto LABEL_43;
            }
          }
        }

        if ([v8 hasPasscodeView])
        {
          passcodeViewOM = [v8 passcodeViewOM];
          passcodeView = [passcodeViewOM passcodeView];
          [MEMORY[0x277D75348] blackColor];
          v63 = v62 = v7;
          [passcodeView setBackgroundColor:v63];

          v7 = v62;
          passcodeViewOM2 = [v8 passcodeViewOM];
          v65 = BPSTextColor();
          [passcodeViewOM2 setForegroundColor:v65];

          passcodeViewOM3 = [v8 passcodeViewOM];
          [passcodeViewOM3 setKeyboardAppearance:1];

          containerView = [v8 containerView];
          v67 = MEMORY[0x277D75348];
        }

        else
        {
          if ([v8 hasSpinnerView])
          {
            spinnerViewOM = [v8 spinnerViewOM];
            whiteColor = [MEMORY[0x277D75348] whiteColor];
            [spinnerViewOM setSpinnerColor:whiteColor];
          }

          containerView = [v8 containerView];
          v67 = MEMORY[0x277D75348];
        }

        blackColor2 = [v67 blackColor];
        [containerView setBackgroundColor:blackColor2];
LABEL_43:

        leftToolbarItem = [v8 leftToolbarItem];
        v71 = BPSSetupTintColor();
        [leftToolbarItem setTintColor:v71];

        rightToolbarItem = [v8 rightToolbarItem];
        v73 = BPSSetupTintColor();
        [rightToolbarItem setTintColor:v73];

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v5);
  }
}

@end