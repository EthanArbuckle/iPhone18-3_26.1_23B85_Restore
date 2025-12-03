@interface ICAttributionView
- (ICAttributionView)initWithConfiguration:(id)configuration;
- (void)setConfiguration:(id)configuration;
- (void)updateContentAnimated:(BOOL)animated;
- (void)updatePositionAndVisibility;
- (void)updateVisibility;
@end

@implementation ICAttributionView

- (ICAttributionView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy adjustedFrame];
  v30.receiver = self;
  v30.super_class = ICAttributionView;
  v6 = [(ICAttributionView *)&v30 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    [configurationCopy attributionFrame];
    [configurationCopy attributionFrame];
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICAttributionView *)v7 frame];
    v9 = [v8 initWithFrame:{0.0, 0.0}];
    attributionClippingView = v7->_attributionClippingView;
    v7->_attributionClippingView = v9;

    ic_noteEditorBackgroundColor = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
    [(UIView *)v7->_attributionClippingView setBackgroundColor:ic_noteEditorBackgroundColor];

    [(ICAttributionView *)v7 insertSubview:v7->_attributionClippingView atIndex:0];
    v12 = objc_alloc(MEMORY[0x277D756B8]);
    [configurationCopy attributionFrame];
    v13 = [v12 initWithFrame:?];
    attributionLabel = v7->_attributionLabel;
    v7->_attributionLabel = v13;

    [(UILabel *)v7->_attributionLabel setTextAlignment:2];
    [(UILabel *)v7->_attributionLabel setLineBreakMode:5];
    [(ICAttributionView *)v7 addSubview:v7->_attributionLabel];
    v15 = objc_alloc(MEMORY[0x277D756B8]);
    [configurationCopy adjustedFormattedTimestampFrame];
    v16 = [v15 initWithFrame:?];
    timestampLabel = v7->_timestampLabel;
    v7->_timestampLabel = v16;

    [(UILabel *)v7->_timestampLabel setTextAlignment:2];
    [(ICAttributionView *)v7 insertSubview:v7->_timestampLabel atIndex:0];
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    [configurationCopy disclosureImageFrame];
    v19 = [v18 initWithFrame:?];
    disclosureImageView = v7->_disclosureImageView;
    v7->_disclosureImageView = v19;

    [(UIImageView *)v7->_disclosureImageView setContentMode:4];
    placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
    [(UIImageView *)v7->_disclosureImageView setTintColor:placeholderTextColor];

    [(ICAttributionView *)v7 addSubview:v7->_disclosureImageView];
    v22 = objc_alloc(MEMORY[0x277D755E8]);
    [configurationCopy statusImageFrame];
    v23 = [v22 initWithFrame:?];
    statusImageView = v7->_statusImageView;
    v7->_statusImageView = v23;

    [(UIImageView *)v7->_statusImageView setContentMode:4];
    [(ICAttributionView *)v7 addSubview:v7->_statusImageView];
    v25 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    childAttributionViews = v7->_childAttributionViews;
    v7->_childAttributionViews = v25;

    v27 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    highlightViews = v7->_highlightViews;
    v7->_highlightViews = v27;

    [(ICAttributionView *)v7 updateContentAnimated:0];
  }

  return v7;
}

- (void)setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  [(ICAttributionView *)self updateContentAnimated:0];

  [(ICAttributionView *)self updatePositionAndVisibility];
}

- (void)updateContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v122 = *MEMORY[0x277D85DE8];
  if (animated)
  {
    configuration = [(ICAttributionView *)self configuration];
    attribution = [configuration attribution];
    attributionLabel = [(ICAttributionView *)self attributionLabel];
    attributedText = [attributionLabel attributedText];
    v9 = [attribution isEqualToAttributedString:attributedText];

    v10 = MEMORY[0x277D36490];
    if (v9)
    {
      v11 = *MEMORY[0x277D36490];
    }

    else
    {
      animation = [MEMORY[0x277CDA000] animation];
      v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [animation setTimingFunction:v13];

      [animation setType:*MEMORY[0x277CDA928]];
      v11 = *v10;
      [animation setDuration:*v10];
      attributionLabel2 = [(ICAttributionView *)self attributionLabel];
      layer = [attributionLabel2 layer];
      [layer addAnimation:animation forKey:@"kCATransitionFade"];
    }

    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __43__ICAttributionView_updateContentAnimated___block_invoke;
    v116[3] = &unk_2781ABCF8;
    v116[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v116 animations:v11];
  }

  else
  {
    [(ICAttributionView *)self updateVisibility];
  }

  configuration2 = [(ICAttributionView *)self configuration];
  -[ICAttributionView setUserInteractionEnabled:](self, "setUserInteractionEnabled:", [configuration2 isBlurred] ^ 1);

  configuration3 = [(ICAttributionView *)self configuration];
  attribution2 = [configuration3 attribution];
  attributionLabel3 = [(ICAttributionView *)self attributionLabel];
  [attributionLabel3 setAttributedText:attribution2];

  configuration4 = [(ICAttributionView *)self configuration];
  formattedTimestamp = [configuration4 formattedTimestamp];

  timestampLabel = [(ICAttributionView *)self timestampLabel];
  v95 = formattedTimestamp;
  [timestampLabel setAttributedText:formattedTimestamp];

  configuration5 = [(ICAttributionView *)self configuration];
  disclosureImage = [configuration5 disclosureImage];
  disclosureImageView = [(ICAttributionView *)self disclosureImageView];
  [disclosureImageView setImage:disclosureImage];

  configuration6 = [(ICAttributionView *)self configuration];
  statusImage = [configuration6 statusImage];
  statusImageView = [(ICAttributionView *)self statusImageView];
  [statusImageView setImage:statusImage];

  childAttributionViews = [(ICAttributionView *)self childAttributionViews];
  objectEnumerator = [childAttributionViews objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v32 = [allObjects ic_map:&__block_literal_global_11];

  v94 = v32;
  v33 = [MEMORY[0x277CBEB98] setWithArray:v32];
  v34 = MEMORY[0x277CBEB98];
  configuration7 = [(ICAttributionView *)self configuration];
  childConfigurations = [configuration7 childConfigurations];
  v37 = [v34 setWithArray:childConfigurations];
  v38 = [v33 isEqualToSet:v37];

  if ((v38 & 1) == 0)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    childAttributionViews2 = [(ICAttributionView *)self childAttributionViews];
    objectEnumerator2 = [childAttributionViews2 objectEnumerator];
    allObjects2 = [objectEnumerator2 allObjects];

    v42 = [allObjects2 countByEnumeratingWithState:&v112 objects:v121 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v113;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v113 != v44)
          {
            objc_enumerationMutation(allObjects2);
          }

          [*(*(&v112 + 1) + 8 * i) removeFromSuperview];
        }

        v43 = [allObjects2 countByEnumeratingWithState:&v112 objects:v121 count:16];
      }

      while (v43);
    }

    childAttributionViews3 = [(ICAttributionView *)self childAttributionViews];
    [childAttributionViews3 removeAllObjects];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    configuration8 = [(ICAttributionView *)self configuration];
    childConfigurations2 = [configuration8 childConfigurations];

    v49 = [childConfigurations2 countByEnumeratingWithState:&v108 objects:v120 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v109;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v109 != v51)
          {
            objc_enumerationMutation(childConfigurations2);
          }

          v53 = *(*(&v108 + 1) + 8 * j);
          v54 = [[ICAttributionView alloc] initWithConfiguration:v53];
          [(ICAttributionView *)self insertSubview:v54 atIndex:0];
          childAttributionViews4 = [(ICAttributionView *)self childAttributionViews];
          [childAttributionViews4 setObject:v54 forKey:v53];
        }

        v50 = [childConfigurations2 countByEnumeratingWithState:&v108 objects:v120 count:16];
      }

      while (v50);
    }
  }

  highlightViews = [(ICAttributionView *)self highlightViews];
  objectEnumerator3 = [highlightViews objectEnumerator];
  allObjects3 = [objectEnumerator3 allObjects];
  v59 = [allObjects3 ic_map:&__block_literal_global_25];

  v60 = [MEMORY[0x277CBEB98] setWithArray:v59];
  v61 = MEMORY[0x277CBEB98];
  configuration9 = [(ICAttributionView *)self configuration];
  highlightConfigurations = [configuration9 highlightConfigurations];
  v64 = [v61 setWithArray:highlightConfigurations];
  v65 = [v60 isEqualToSet:v64];

  if ((v65 & 1) == 0)
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    highlightViews2 = [(ICAttributionView *)self highlightViews];
    objectEnumerator4 = [highlightViews2 objectEnumerator];
    allObjects4 = [objectEnumerator4 allObjects];

    v69 = [allObjects4 countByEnumeratingWithState:&v104 objects:v119 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v105;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v105 != v71)
          {
            objc_enumerationMutation(allObjects4);
          }

          [*(*(&v104 + 1) + 8 * k) removeFromSuperview];
        }

        v70 = [allObjects4 countByEnumeratingWithState:&v104 objects:v119 count:16];
      }

      while (v70);
    }

    v93 = v59;

    highlightViews3 = [(ICAttributionView *)self highlightViews];
    [highlightViews3 removeAllObjects];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    configuration10 = [(ICAttributionView *)self configuration];
    highlightConfigurations2 = [configuration10 highlightConfigurations];

    v76 = [highlightConfigurations2 countByEnumeratingWithState:&v100 objects:v118 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v101;
      do
      {
        for (m = 0; m != v77; ++m)
        {
          if (*v101 != v78)
          {
            objc_enumerationMutation(highlightConfigurations2);
          }

          v80 = *(*(&v100 + 1) + 8 * m);
          v81 = [[ICAttributionHighlightView alloc] initWithConfiguration:v80];
          [v80 alpha];
          [(ICAttributionHighlightView *)v81 setAlpha:?];
          [(ICAttributionView *)self addSubview:v81];
          highlightViews4 = [(ICAttributionView *)self highlightViews];
          [highlightViews4 setObject:v81 forKey:v80];
        }

        v77 = [highlightConfigurations2 countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v77);
    }

    v59 = v93;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  childAttributionViews5 = [(ICAttributionView *)self childAttributionViews];
  objectEnumerator5 = [childAttributionViews5 objectEnumerator];
  allObjects5 = [objectEnumerator5 allObjects];

  v86 = [allObjects5 countByEnumeratingWithState:&v96 objects:v117 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v97;
    do
    {
      for (n = 0; n != v87; ++n)
      {
        if (*v97 != v88)
        {
          objc_enumerationMutation(allObjects5);
        }

        [*(*(&v96 + 1) + 8 * n) updateContentAnimated:animatedCopy];
      }

      v87 = [allObjects5 countByEnumeratingWithState:&v96 objects:v117 count:16];
    }

    while (v87);
  }

  if ([(ICAttributionView *)self ic_isRTL])
  {
    v90 = 0;
  }

  else
  {
    v90 = 2;
  }

  attributionLabel4 = [(ICAttributionView *)self attributionLabel];
  [attributionLabel4 setTextAlignment:v90];

  timestampLabel2 = [(ICAttributionView *)self timestampLabel];
  [timestampLabel2 setTextAlignment:v90];
}

- (void)updatePositionAndVisibility
{
  v41 = *MEMORY[0x277D85DE8];
  configuration = [(ICAttributionView *)self configuration];
  [configuration adjustedFrame];
  [(ICAttributionView *)self setFrame:?];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  configuration2 = [(ICAttributionView *)self configuration];
  childConfigurations = [configuration2 childConfigurations];

  v6 = [childConfigurations countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(childConfigurations);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        childAttributionViews = [(ICAttributionView *)self childAttributionViews];
        v12 = [childAttributionViews objectForKey:v10];

        [v10 adjustedFrame];
        [v12 setFrame:?];
        [v10 adjustedFormattedTimestampFrame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        timestampLabel = [v12 timestampLabel];
        [timestampLabel setFrame:{v14, v16, v18, v20}];

        ++v9;
      }

      while (v7 != v9);
      v7 = [childConfigurations countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  configuration3 = [(ICAttributionView *)self configuration];
  highlightConfigurations = [configuration3 highlightConfigurations];

  v24 = [highlightConfigurations countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(highlightConfigurations);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        highlightViews = [(ICAttributionView *)self highlightViews];
        v30 = [highlightViews objectForKey:v28];

        [v28 adjustedFrame];
        [v30 setFrame:?];

        ++v27;
      }

      while (v25 != v27);
      v25 = [highlightConfigurations countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  [(ICAttributionView *)self updateVisibility];
}

- (void)updateVisibility
{
  v34 = *MEMORY[0x277D85DE8];
  configuration = [(ICAttributionView *)self configuration];
  v4 = ([configuration isAttributionHidden] ^ 1);
  attributionLabel = [(ICAttributionView *)self attributionLabel];
  [attributionLabel setAlpha:v4];

  configuration2 = [(ICAttributionView *)self configuration];
  v7 = ([configuration2 isAttributionHidden] ^ 1);
  attributionClippingView = [(ICAttributionView *)self attributionClippingView];
  [attributionClippingView setAlpha:v7];

  configuration3 = [(ICAttributionView *)self configuration];
  v10 = ([configuration3 isTimestampHidden] ^ 1);
  timestampLabel = [(ICAttributionView *)self timestampLabel];
  [timestampLabel setAlpha:v10];

  configuration4 = [(ICAttributionView *)self configuration];
  v13 = ([configuration4 isStatusImageHidden] ^ 1);
  statusImageView = [(ICAttributionView *)self statusImageView];
  [statusImageView setAlpha:v13];

  configuration5 = [(ICAttributionView *)self configuration];
  v16 = ([configuration5 isDisclosureImageHidden] ^ 1);
  disclosureImageView = [(ICAttributionView *)self disclosureImageView];
  [disclosureImageView setAlpha:v16];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  configuration6 = [(ICAttributionView *)self configuration];
  highlightConfigurations = [configuration6 highlightConfigurations];

  v20 = [highlightConfigurations countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(highlightConfigurations);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        [v24 alpha];
        v26 = v25;
        highlightViews = [(ICAttributionView *)self highlightViews];
        v28 = [highlightViews objectForKey:v24];
        [v28 setAlpha:v26];
      }

      v21 = [highlightConfigurations countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }
}

@end