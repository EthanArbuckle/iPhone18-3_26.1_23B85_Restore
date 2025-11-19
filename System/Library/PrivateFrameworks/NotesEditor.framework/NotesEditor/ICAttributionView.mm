@interface ICAttributionView
- (ICAttributionView)initWithConfiguration:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)updateContentAnimated:(BOOL)a3;
- (void)updatePositionAndVisibility;
- (void)updateVisibility;
@end

@implementation ICAttributionView

- (ICAttributionView)initWithConfiguration:(id)a3
{
  v5 = a3;
  [v5 adjustedFrame];
  v30.receiver = self;
  v30.super_class = ICAttributionView;
  v6 = [(ICAttributionView *)&v30 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [v5 attributionFrame];
    [v5 attributionFrame];
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICAttributionView *)v7 frame];
    v9 = [v8 initWithFrame:{0.0, 0.0}];
    attributionClippingView = v7->_attributionClippingView;
    v7->_attributionClippingView = v9;

    v11 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
    [(UIView *)v7->_attributionClippingView setBackgroundColor:v11];

    [(ICAttributionView *)v7 insertSubview:v7->_attributionClippingView atIndex:0];
    v12 = objc_alloc(MEMORY[0x277D756B8]);
    [v5 attributionFrame];
    v13 = [v12 initWithFrame:?];
    attributionLabel = v7->_attributionLabel;
    v7->_attributionLabel = v13;

    [(UILabel *)v7->_attributionLabel setTextAlignment:2];
    [(UILabel *)v7->_attributionLabel setLineBreakMode:5];
    [(ICAttributionView *)v7 addSubview:v7->_attributionLabel];
    v15 = objc_alloc(MEMORY[0x277D756B8]);
    [v5 adjustedFormattedTimestampFrame];
    v16 = [v15 initWithFrame:?];
    timestampLabel = v7->_timestampLabel;
    v7->_timestampLabel = v16;

    [(UILabel *)v7->_timestampLabel setTextAlignment:2];
    [(ICAttributionView *)v7 insertSubview:v7->_timestampLabel atIndex:0];
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    [v5 disclosureImageFrame];
    v19 = [v18 initWithFrame:?];
    disclosureImageView = v7->_disclosureImageView;
    v7->_disclosureImageView = v19;

    [(UIImageView *)v7->_disclosureImageView setContentMode:4];
    v21 = [MEMORY[0x277D75348] placeholderTextColor];
    [(UIImageView *)v7->_disclosureImageView setTintColor:v21];

    [(ICAttributionView *)v7 addSubview:v7->_disclosureImageView];
    v22 = objc_alloc(MEMORY[0x277D755E8]);
    [v5 statusImageFrame];
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

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);
  [(ICAttributionView *)self updateContentAnimated:0];

  [(ICAttributionView *)self updatePositionAndVisibility];
}

- (void)updateContentAnimated:(BOOL)a3
{
  v3 = a3;
  v122 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [(ICAttributionView *)self configuration];
    v6 = [v5 attribution];
    v7 = [(ICAttributionView *)self attributionLabel];
    v8 = [v7 attributedText];
    v9 = [v6 isEqualToAttributedString:v8];

    v10 = MEMORY[0x277D36490];
    if (v9)
    {
      v11 = *MEMORY[0x277D36490];
    }

    else
    {
      v12 = [MEMORY[0x277CDA000] animation];
      v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v12 setTimingFunction:v13];

      [v12 setType:*MEMORY[0x277CDA928]];
      v11 = *v10;
      [v12 setDuration:*v10];
      v14 = [(ICAttributionView *)self attributionLabel];
      v15 = [v14 layer];
      [v15 addAnimation:v12 forKey:@"kCATransitionFade"];
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

  v16 = [(ICAttributionView *)self configuration];
  -[ICAttributionView setUserInteractionEnabled:](self, "setUserInteractionEnabled:", [v16 isBlurred] ^ 1);

  v17 = [(ICAttributionView *)self configuration];
  v18 = [v17 attribution];
  v19 = [(ICAttributionView *)self attributionLabel];
  [v19 setAttributedText:v18];

  v20 = [(ICAttributionView *)self configuration];
  v21 = [v20 formattedTimestamp];

  v22 = [(ICAttributionView *)self timestampLabel];
  v95 = v21;
  [v22 setAttributedText:v21];

  v23 = [(ICAttributionView *)self configuration];
  v24 = [v23 disclosureImage];
  v25 = [(ICAttributionView *)self disclosureImageView];
  [v25 setImage:v24];

  v26 = [(ICAttributionView *)self configuration];
  v27 = [v26 statusImage];
  v28 = [(ICAttributionView *)self statusImageView];
  [v28 setImage:v27];

  v29 = [(ICAttributionView *)self childAttributionViews];
  v30 = [v29 objectEnumerator];
  v31 = [v30 allObjects];
  v32 = [v31 ic_map:&__block_literal_global_11];

  v94 = v32;
  v33 = [MEMORY[0x277CBEB98] setWithArray:v32];
  v34 = MEMORY[0x277CBEB98];
  v35 = [(ICAttributionView *)self configuration];
  v36 = [v35 childConfigurations];
  v37 = [v34 setWithArray:v36];
  v38 = [v33 isEqualToSet:v37];

  if ((v38 & 1) == 0)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v39 = [(ICAttributionView *)self childAttributionViews];
    v40 = [v39 objectEnumerator];
    v41 = [v40 allObjects];

    v42 = [v41 countByEnumeratingWithState:&v112 objects:v121 count:16];
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
            objc_enumerationMutation(v41);
          }

          [*(*(&v112 + 1) + 8 * i) removeFromSuperview];
        }

        v43 = [v41 countByEnumeratingWithState:&v112 objects:v121 count:16];
      }

      while (v43);
    }

    v46 = [(ICAttributionView *)self childAttributionViews];
    [v46 removeAllObjects];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v47 = [(ICAttributionView *)self configuration];
    v48 = [v47 childConfigurations];

    v49 = [v48 countByEnumeratingWithState:&v108 objects:v120 count:16];
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
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v108 + 1) + 8 * j);
          v54 = [[ICAttributionView alloc] initWithConfiguration:v53];
          [(ICAttributionView *)self insertSubview:v54 atIndex:0];
          v55 = [(ICAttributionView *)self childAttributionViews];
          [v55 setObject:v54 forKey:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v108 objects:v120 count:16];
      }

      while (v50);
    }
  }

  v56 = [(ICAttributionView *)self highlightViews];
  v57 = [v56 objectEnumerator];
  v58 = [v57 allObjects];
  v59 = [v58 ic_map:&__block_literal_global_25];

  v60 = [MEMORY[0x277CBEB98] setWithArray:v59];
  v61 = MEMORY[0x277CBEB98];
  v62 = [(ICAttributionView *)self configuration];
  v63 = [v62 highlightConfigurations];
  v64 = [v61 setWithArray:v63];
  v65 = [v60 isEqualToSet:v64];

  if ((v65 & 1) == 0)
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v66 = [(ICAttributionView *)self highlightViews];
    v67 = [v66 objectEnumerator];
    v68 = [v67 allObjects];

    v69 = [v68 countByEnumeratingWithState:&v104 objects:v119 count:16];
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
            objc_enumerationMutation(v68);
          }

          [*(*(&v104 + 1) + 8 * k) removeFromSuperview];
        }

        v70 = [v68 countByEnumeratingWithState:&v104 objects:v119 count:16];
      }

      while (v70);
    }

    v93 = v59;

    v73 = [(ICAttributionView *)self highlightViews];
    [v73 removeAllObjects];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v74 = [(ICAttributionView *)self configuration];
    v75 = [v74 highlightConfigurations];

    v76 = [v75 countByEnumeratingWithState:&v100 objects:v118 count:16];
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
            objc_enumerationMutation(v75);
          }

          v80 = *(*(&v100 + 1) + 8 * m);
          v81 = [[ICAttributionHighlightView alloc] initWithConfiguration:v80];
          [v80 alpha];
          [(ICAttributionHighlightView *)v81 setAlpha:?];
          [(ICAttributionView *)self addSubview:v81];
          v82 = [(ICAttributionView *)self highlightViews];
          [v82 setObject:v81 forKey:v80];
        }

        v77 = [v75 countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v77);
    }

    v59 = v93;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v83 = [(ICAttributionView *)self childAttributionViews];
  v84 = [v83 objectEnumerator];
  v85 = [v84 allObjects];

  v86 = [v85 countByEnumeratingWithState:&v96 objects:v117 count:16];
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
          objc_enumerationMutation(v85);
        }

        [*(*(&v96 + 1) + 8 * n) updateContentAnimated:v3];
      }

      v87 = [v85 countByEnumeratingWithState:&v96 objects:v117 count:16];
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

  v91 = [(ICAttributionView *)self attributionLabel];
  [v91 setTextAlignment:v90];

  v92 = [(ICAttributionView *)self timestampLabel];
  [v92 setTextAlignment:v90];
}

- (void)updatePositionAndVisibility
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(ICAttributionView *)self configuration];
  [v3 adjustedFrame];
  [(ICAttributionView *)self setFrame:?];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [(ICAttributionView *)self configuration];
  v5 = [v4 childConfigurations];

  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = [(ICAttributionView *)self childAttributionViews];
        v12 = [v11 objectForKey:v10];

        [v10 adjustedFrame];
        [v12 setFrame:?];
        [v10 adjustedFormattedTimestampFrame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v12 timestampLabel];
        [v21 setFrame:{v14, v16, v18, v20}];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [(ICAttributionView *)self configuration];
  v23 = [v22 highlightConfigurations];

  v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        v29 = [(ICAttributionView *)self highlightViews];
        v30 = [v29 objectForKey:v28];

        [v28 adjustedFrame];
        [v30 setFrame:?];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  [(ICAttributionView *)self updateVisibility];
}

- (void)updateVisibility
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(ICAttributionView *)self configuration];
  v4 = ([v3 isAttributionHidden] ^ 1);
  v5 = [(ICAttributionView *)self attributionLabel];
  [v5 setAlpha:v4];

  v6 = [(ICAttributionView *)self configuration];
  v7 = ([v6 isAttributionHidden] ^ 1);
  v8 = [(ICAttributionView *)self attributionClippingView];
  [v8 setAlpha:v7];

  v9 = [(ICAttributionView *)self configuration];
  v10 = ([v9 isTimestampHidden] ^ 1);
  v11 = [(ICAttributionView *)self timestampLabel];
  [v11 setAlpha:v10];

  v12 = [(ICAttributionView *)self configuration];
  v13 = ([v12 isStatusImageHidden] ^ 1);
  v14 = [(ICAttributionView *)self statusImageView];
  [v14 setAlpha:v13];

  v15 = [(ICAttributionView *)self configuration];
  v16 = ([v15 isDisclosureImageHidden] ^ 1);
  v17 = [(ICAttributionView *)self disclosureImageView];
  [v17 setAlpha:v16];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [(ICAttributionView *)self configuration];
  v19 = [v18 highlightConfigurations];

  v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        [v24 alpha];
        v26 = v25;
        v27 = [(ICAttributionView *)self highlightViews];
        v28 = [v27 objectForKey:v24];
        [v28 setAlpha:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }
}

@end