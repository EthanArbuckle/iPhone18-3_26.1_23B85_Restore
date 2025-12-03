@interface UICollectionReusableView(GKReusableView)
+ (id)_gkSetupThreeLineLayoutWithSuperview:()GKReusableView icon:upperLine:middleLine:lowerLine:metricOverrides:;
+ (id)_gkSetupTwoLineLayoutWithSuperview:()GKReusableView icon:upperLabel:lowerLabel:leadingBetween:fontTextStyle:metricOverrides:;
+ (id)_gkStandardConstraintMetricsForIdiom:()GKReusableView;
+ (id)_gkStandardConstraintMetricsForIdiom:()GKReusableView withOverrides:;
+ (void)_gkAdjustConstraintMargins:()GKReusableView leading:trailing:;
+ (void)_gkSetupSelectableThreeLineLayoutWithCell:()GKReusableView icon:selectionView:upperLine:middleLine:lowerLine:metricOverrides:;
+ (void)_gkSetupSelectableTwoLineLayoutWithCell:()GKReusableView icon:selectionView:upperLine:lowerLine:metricOverrides:;
+ (void)registerSupplementaryViewClassesForKind:()GKReusableView withCollectionView:;
- (GKFixedSizeImageView)_gkNewStandardImageView;
- (GKLabel)_gkNewStandardInfoLabel;
- (GKLabel)_gkNewStandardTitleLabel;
- (void)_gkSetLeadingGuideConstraint:()GKReusableView trailingGuideConstraint:;
@end

@implementation UICollectionReusableView(GKReusableView)

+ (void)registerSupplementaryViewClassesForKind:()GKReusableView withCollectionView:
{
  v5 = a4;
  v6 = a3;
  [v5 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:v6];
}

+ (id)_gkStandardConstraintMetricsForIdiom:()GKReusableView
{
  if (a3 == 1)
  {
    if (_gkStandardConstraintMetricsForIdiom__onceToken_380 != -1)
    {
      +[UICollectionReusableView(GKReusableView) _gkStandardConstraintMetricsForIdiom:];
    }

    v3 = _gkStandardConstraintMetricsForIdiom__sPadMetrics;
    goto LABEL_9;
  }

  if (!a3)
  {
    if (_gkStandardConstraintMetricsForIdiom__onceToken != -1)
    {
      +[UICollectionReusableView(GKReusableView) _gkStandardConstraintMetricsForIdiom:];
    }

    v3 = _gkStandardConstraintMetricsForIdiom__sPhoneMetrics;
LABEL_9:
    v4 = v3;
    goto LABEL_11;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewCell.m"];
  lastPathComponent = [v7 lastPathComponent];
  v9 = [v5 stringWithFormat:@"%@ (__objc_no)\n[%s (%s:%d)]", v6, "+[UICollectionReusableView(GKReusableView) _gkStandardConstraintMetricsForIdiom:]", objc_msgSend(lastPathComponent, "UTF8String"), 912];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  v4 = 0;
LABEL_11:

  return v4;
}

+ (id)_gkStandardConstraintMetricsForIdiom:()GKReusableView withOverrides:
{
  v6 = a4;
  v7 = [v6 count];
  v8 = [self _gkStandardConstraintMetricsForIdiom:a3];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 mutableCopy];

    [v10 addEntriesFromDictionary:v6];
    v9 = v10;
  }

  return v9;
}

- (void)_gkSetLeadingGuideConstraint:()GKReusableView trailingGuideConstraint:
{
  v9 = a4;
  v6 = a3;
  [self _contentMargin];
  v8 = v7;
  [v6 setConstant:?];
  [v9 setConstant:v8];
  [v6 setIdentifier:@"leadingMargin"];

  [v9 setIdentifier:@"trailingMargin"];
}

+ (void)_gkAdjustConstraintMargins:()GKReusableView leading:trailing:
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:@"trailingMargin"];

        selfCopy = a2;
        if ((v14 & 1) == 0)
        {
          identifier2 = [v12 identifier];
          v17 = [identifier2 isEqualToString:@"leadingMargin"];

          selfCopy = self;
          if (!v17)
          {
            continue;
          }
        }

        [v12 setConstant:selfCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:{16, selfCopy}];
    }

    while (v9);
  }
}

- (GKLabel)_gkNewStandardTitleLabel
{
  v0 = [GKLabel alloc];
  v1 = [(GKLabel *)v0 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  tableCellTitle = [textStyle tableCellTitle];
  [(GKLabel *)v1 applyTextStyle:tableCellTitle];

  [(GKLabel *)v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  selectedTextColor = [mEMORY[0x277D0C868] selectedTextColor];
  [(GKLabel *)v1 setHighlightedTextColor:selectedTextColor];

  [(GKLabel *)v1 setOpaque:0];
  [(GKLabel *)v1 setBackgroundColor:0];

  return v1;
}

- (GKLabel)_gkNewStandardInfoLabel
{
  v0 = [GKLabel alloc];
  v1 = [(GKLabel *)v0 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  tableCellSubtitle = [textStyle tableCellSubtitle];
  [(GKLabel *)v1 applyTextStyle:tableCellSubtitle];

  [(GKLabel *)v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  selectedTextColor = [mEMORY[0x277D0C868] selectedTextColor];
  [(GKLabel *)v1 setHighlightedTextColor:selectedTextColor];

  [(GKLabel *)v1 setOpaque:0];
  [(GKLabel *)v1 setBackgroundColor:0];

  return v1;
}

- (GKFixedSizeImageView)_gkNewStandardImageView
{
  v0 = [GKFixedSizeImageView alloc];
  v1 = [(GKFixedSizeImageView *)v0 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(GKFixedSizeImageView *)v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GKFixedSizeImageView *)v1 setOpaque:0];
  [(GKFixedSizeImageView *)v1 setBackgroundColor:0];
  return v1;
}

+ (id)_gkSetupTwoLineLayoutWithSuperview:()GKReusableView icon:upperLabel:lowerLabel:leadingBetween:fontTextStyle:metricOverrides:
{
  v49[4] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277D75418];
  v17 = a9;
  v46 = a8;
  v45 = a7;
  v18 = a6;
  v42 = v18;
  v19 = a5;
  v20 = a4;
  currentDevice = [v16 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v23 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v23 = 1;
  }

  if (userInterfaceIdiom == 1)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [self _gkStandardConstraintMetricsForIdiom:v24 withOverrides:v17];

  array = [MEMORY[0x277CBEB18] array];
  v27 = MEMORY[0x277CCAAD0];
  v28 = _NSDictionaryOfVariableBindings(&cfstr_Iconview.isa, v19, 0);
  v43 = [v27 constraintsWithVisualFormat:@"|-(imageLeadingMargin)-[iconView(iconSize)]" options:0 metrics:v25 views:v28];

  firstObject = [v43 firstObject];
  [firstObject setIdentifier:@"leadingMargin"];
  [array addObjectsFromArray:v43];
  firstObject2 = [v43 firstObject];
  [firstObject2 setIdentifier:@"leadingMargin"];

  v47 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v19 centeredYInView:v20];
  [array addObject:v47];
  v30 = MEMORY[0x277CCAAD0];
  v31 = [v25 objectForKeyedSubscript:@"iconSize"];
  [v31 floatValue];
  v44 = [v30 _gkConstraintForView:v19 withConstantHeight:v32];

  [array addObject:v44];
  v49[0] = v18;
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v49[1] = v33;
  v49[2] = v46;
  v49[3] = v45;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  v35 = [GKContiguousContainerView containerForViewsFontsLeadings:v34 options:2];

  [v20 addSubview:v35];
  v36 = MEMORY[0x277CCAAD0];
  v37 = _NSDictionaryOfVariableBindings(&cfstr_IconviewLabelc.isa, v19, v35, 0);

  v38 = [v36 constraintsWithVisualFormat:@"[iconView]-(spaceBetweenImageAndLabels)-[labelContainer]-(textTrailingMargin)-|" options:0 metrics:v25 views:v37];

  lastObject = [v38 lastObject];
  [lastObject setIdentifier:@"trailingMargin"];
  [array addObjectsFromArray:v38];
  v40 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v35 centeredYInView:v20];

  [array addObject:v40];
  [v20 addConstraints:array];

  return array;
}

+ (id)_gkSetupThreeLineLayoutWithSuperview:()GKReusableView icon:upperLine:middleLine:lowerLine:metricOverrides:
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38[0] = @"icon";
  v38[1] = @"line1";
  v39[0] = a4;
  v39[1] = a5;
  v38[2] = @"line2";
  v38[3] = @"line3";
  v39[2] = a6;
  v39[3] = a7;
  v14 = MEMORY[0x277CBEAC0];
  v15 = a8;
  v34 = a7;
  v16 = a6;
  v33 = a5;
  v36 = a4;
  v35 = a3;
  v17 = [v14 dictionaryWithObjects:v39 forKeys:v38 count:4];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v20 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v20 = 1;
  }

  if (userInterfaceIdiom == 1)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v32 = [self _gkStandardConstraintMetricsForIdiom:v21 withOverrides:v15];

  v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[line1][line2][line3]" options:2 metrics:0 views:v17];
  v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-hMargin-[icon(iconSize)]-betweenMargin-[line2]-textRightMargin-|" options:0 metrics:v32 views:v17];
  v24 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-hMargin-[icon]-betweenMargin-[line1]-textRightMargin-|" options:0 metrics:v32 views:v17];
  v25 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-hMargin-[icon]-betweenMargin-[line3]-textRightMargin-|" options:0 metrics:v32 views:v17];
  v26 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[icon(iconSize)]" options:1024 metrics:v32 views:v17];
  v31 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v16 centeredYInView:v35];
  v30 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v36 centeredYInView:v35];
  [v30 setConstant:-1.0];
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count") + objc_msgSend(v23, "count") + objc_msgSend(v24, "count") + objc_msgSend(v25, "count") + objc_msgSend(v26, "count") + 2}];
  [v27 addObjectsFromArray:v22];
  [v27 addObjectsFromArray:v23];
  [v27 addObjectsFromArray:v24];
  [v27 addObjectsFromArray:v25];
  [v27 addObjectsFromArray:v26];
  v37[0] = v31;
  v37[1] = v30;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];

  [v27 addObjectsFromArray:v28];
  [v35 addConstraints:v27];

  return v27;
}

+ (void)_gkSetupSelectableTwoLineLayoutWithCell:()GKReusableView icon:selectionView:upperLine:lowerLine:metricOverrides:
{
  v63[5] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277D75D18];
  v14 = a8;
  v15 = a7;
  v61 = a6;
  v59 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v13 alloc];
  v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setHidden:1];
  v62[0] = @"selection";
  v62[1] = @"icon";
  v63[0] = v59;
  v63[1] = v16;
  v62[2] = @"line1";
  v62[3] = @"line2";
  v63[2] = v61;
  v63[3] = v15;
  v20 = v15;
  v62[4] = @"leftSpacer";
  v63[4] = v19;
  v60 = v19;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:5];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v24 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v24 = 1;
  }

  if (userInterfaceIdiom == 1)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = [self _gkStandardConstraintMetricsForIdiom:v25 withOverrides:v14];

  array = [MEMORY[0x277CBEB18] array];
  interactiveContentView = [v17 interactiveContentView];
  staticContentView = [v17 staticContentView];

  [staticContentView addSubview:v19];
  v29 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v16 centeredYInView:staticContentView];
  [array addObject:v29];

  v30 = MEMORY[0x277CCAAD0];
  v31 = [v26 objectForKeyedSubscript:@"iconSize"];
  [v31 floatValue];
  v33 = [v30 _gkConstraintForView:v16 withConstantHeight:v32];
  [array addObject:v33];

  v34 = v21;
  v55 = v21;
  v35 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-imageLeadingMargin-[leftSpacer(selectionSize)]-imageLeadingMargin-[icon(iconSize)]-betweenMargin@999-[line1]-textRightMargin-|" options:0 metrics:v26 views:v21];
  firstObject = [v35 firstObject];
  [firstObject setIdentifier:@"leadingMargin"];

  v58 = v35;
  lastObject = [v35 lastObject];
  [lastObject setIdentifier:@"trailingMargin"];

  [array addObjectsFromArray:v35];
  v38 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:1 relatedBy:0 toItem:v61 attribute:1 multiplier:1.0 constant:0.0];
  [array addObject:v38];

  v39 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:2 relatedBy:0 toItem:v61 attribute:2 multiplier:1.0 constant:0.0];
  [array addObject:v39];

  v40 = MEMORY[0x277CCAAD0];
  v41 = [v26 objectForKeyedSubscript:@"twoLineTopToFirstTop"];
  [v41 floatValue];
  v43 = [v40 constraintWithItem:v61 attribute:3 relatedBy:0 toItem:staticContentView attribute:3 multiplier:1.0 constant:v42];
  [array addObject:v43];

  v44 = MEMORY[0x277CCAAD0];
  v45 = [v26 objectForKeyedSubscript:@"twoLineTopToSecondTop"];
  [v45 floatValue];
  v47 = [v44 constraintWithItem:v20 attribute:3 relatedBy:0 toItem:staticContentView attribute:3 multiplier:1.0 constant:v46];
  [array addObject:v47];

  [staticContentView addConstraints:array];
  v48 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-hMargin-[selection(selectionSize)]" options:0 metrics:v26 views:v34];
  [interactiveContentView addConstraints:v48];
  v49 = MEMORY[0x277CCAAD0];
  v50 = [v26 objectForKeyedSubscript:@"selectionSize"];
  [v50 floatValue];
  v52 = [v49 _gkConstraintForView:v59 withConstantHeight:v51];
  [interactiveContentView addConstraint:v52];

  v53 = [MEMORY[0x277CCAAD0] constraintWithItem:v59 attribute:10 relatedBy:0 toItem:interactiveContentView attribute:10 multiplier:1.0 constant:0.0];

  [interactiveContentView addConstraint:v53];
  firstObject2 = [v48 firstObject];
  [firstObject2 setIdentifier:@"leadingMargin"];
}

+ (void)_gkSetupSelectableThreeLineLayoutWithCell:()GKReusableView icon:selectionView:upperLine:middleLine:lowerLine:metricOverrides:
{
  v57[6] = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277D75D18];
  v16 = a9;
  v17 = a8;
  v47 = a7;
  v18 = a6;
  v53 = a5;
  v52 = a4;
  v19 = a3;
  v20 = [v15 alloc];
  v21 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setHidden:1];
  v56[0] = @"selection";
  v56[1] = @"icon";
  v57[0] = v53;
  v57[1] = v52;
  v56[2] = @"line1";
  v56[3] = @"line2";
  v57[2] = v18;
  v57[3] = v47;
  v56[4] = @"line3";
  v56[5] = @"leftSpacer";
  v57[4] = v17;
  v57[5] = v21;
  v45 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:6];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v25 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v25 = 1;
  }

  if (userInterfaceIdiom == 1)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = [self _gkStandardConstraintMetricsForIdiom:v26 withOverrides:v16];

  interactiveContentView = [v19 interactiveContentView];
  staticContentView = [v19 staticContentView];

  [staticContentView addSubview:v21];
  v48 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[line1][line2][line3]" options:2 metrics:0 views:v22];
  v41 = v27;
  v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-imageLeadingMargin-[leftSpacer(selectionSize)]-imageLeadingMargin-[icon(iconSize)]-betweenMargin@999-[line1]-textRightMargin-|" options:0 metrics:v27 views:v22];
  firstObject = [v28 firstObject];
  [firstObject setIdentifier:@"leadingMargin"];

  lastObject = [v28 lastObject];
  [lastObject setIdentifier:@"trailingMargin"];

  v49 = [MEMORY[0x277CCAAD0] constraintWithItem:v47 attribute:1 relatedBy:0 toItem:v18 attribute:1 multiplier:1.0 constant:0.0];
  v44 = [MEMORY[0x277CCAAD0] constraintWithItem:v47 attribute:2 relatedBy:0 toItem:v18 attribute:2 multiplier:1.0 constant:0.0];
  v43 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:1 relatedBy:0 toItem:v18 attribute:1 multiplier:1.0 constant:0.0];
  v42 = [MEMORY[0x277CCAAD0] constraintWithItem:v17 attribute:2 relatedBy:0 toItem:v18 attribute:2 multiplier:1.0 constant:0.0];
  v31 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[icon(iconSize)]" options:1024 metrics:v27 views:v22];
  v39 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v47 centeredYInView:staticContentView];
  v40 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v53 centeredYInView:interactiveContentView];
  v32 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v52 centeredYInView:staticContentView];
  [v32 setConstant:-1.0];
  [v40 setConstant:-1.0];
  v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v48, "count") + objc_msgSend(v28, "count") + objc_msgSend(v31, "count") + 5}];
  [v33 addObjectsFromArray:v48];
  [v33 addObjectsFromArray:v28];
  v55[0] = v49;
  v55[1] = v44;
  v55[2] = v43;
  v55[3] = v42;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
  [v33 addObjectsFromArray:v34];

  [v33 addObjectsFromArray:v31];
  v54[0] = v39;
  v54[1] = v32;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  [v33 addObjectsFromArray:v35];

  [staticContentView addConstraints:v33];
  [interactiveContentView addConstraint:v40];
  v36 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[selection(selectionSize)]" options:1024 metrics:v41 views:v22];
  [interactiveContentView addConstraints:v36];

  v37 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-hMargin-[selection(selectionSize)]" options:0 metrics:v41 views:v22];

  firstObject2 = [v37 firstObject];
  [firstObject2 setIdentifier:@"leadingMargin"];

  [interactiveContentView addConstraints:v37];
}

@end