@interface MUAmenityListSectionView
- (MUAmenityListSectionView)initWithAmenityListConfiguration:(id)a3;
- (void)_moreButtonTapped;
- (void)_performCompression;
- (void)_performExpansion;
- (void)_setupSubviews;
@end

@implementation MUAmenityListSectionView

- (void)_performCompression
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__MUAmenityListSectionView__performCompression__block_invoke;
  v3[3] = &unk_1E821BAC8;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.200000003];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __47__MUAmenityListSectionView__performCompression__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v20 = WeakRetained;
    v2 = [WeakRetained[57] applePayConfiguration];
    v3 = [v2 showApplePayIcons];

    v4 = [v20[57] applePayConfiguration];
    v5 = [v4 applePayRowAmenity];

    v6 = 1;
    if (v3)
    {
      v6 = 2;
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    v8 = [v20 arrangedSubviews];
    v9 = [v8 count];

    if (v9 != v7 + 1)
    {
      v10 = 0;
      v11 = ~v7;
      do
      {
        v12 = v10 >= [v20[57] numberInlineAmenities];
        v13 = [v20 arrangedSubviews];
        v14 = [v13 objectAtIndex:v10];
        [v14 setHidden:v12];

        ++v10;
        v15 = [v20 arrangedSubviews];
        v16 = [v15 count] + v11;
      }

      while (v10 < v16);
    }

    v17 = v20[58];
    v18 = _MULocalizedStringFromThisBundle(@"More [Amenities]");
    v19 = [v18 localizedUppercaseString];
    [v17 setTitle:v19 forState:0];

    WeakRetained = v20;
  }
}

- (void)_performExpansion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__MUAmenityListSectionView__performExpansion__block_invoke;
  v3[3] = &unk_1E821BAC8;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.200000003];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __45__MUAmenityListSectionView__performExpansion__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [WeakRetained arrangedSubviews];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v12 + 1) + 8 * v7++) setHidden:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v8 = v2[58];
    v9 = _MULocalizedStringFromThisBundle(@"Less [Amenities]");
    v10 = [v9 localizedUppercaseString];
    [v8 setTitle:v10 forState:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_moreButtonTapped
{
  if ([(MUAmenityListSectionView *)self isExpanded])
  {
    [(MUAmenityListSectionView *)self _performCompression];
  }

  else
  {
    [(MUAmenityListSectionView *)self _performExpansion];
  }

  v3 = [(MUAmenityListSectionView *)self isExpanded]^ 1;

  [(MUAmenityListSectionView *)self setExpanded:v3];
}

- (void)_setupSubviews
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  val = self;
  v4 = [(MUAmenityListSectionConfiguration *)self->_configuration viewModels];
  v5 = [v4 countByEnumeratingWithState:&v60 objects:v65 count:16];
  v6 = 0;
  if (v5)
  {
    v7 = *v61;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v12 = 0;
      do
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v60 + 1) + 8 * v12);
        v14 = [[MUAmenityItemView alloc] initWithFrame:v8, v9, v10, v11];
        [(MUAmenityItemView *)v14 setViewModel:v13];
        [v3 addObject:v14];
        v15 = [v3 count];
        if (v15 > [(MUAmenityListSectionConfiguration *)val->_configuration numberInlineAmenities])
        {
          [(MUAmenityItemView *)v14 setHidden:1];
          v6 = 1;
        }

        ++v12;
      }

      while (v5 != v12);
      v5 = [v4 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v5);
  }

  v16 = [(MUAmenityListSectionConfiguration *)val->_configuration applePayConfiguration];
  v17 = [v16 applePayRowAmenity];
  v18 = v17 == 0;

  if (!v18)
  {
    v19 = [MUAmenityItemView alloc];
    v20 = [(MUAmenityItemView *)v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v21 = [(MUAmenityListSectionConfiguration *)val->_configuration applePayConfiguration];
    v22 = [v21 applePayRowAmenity];
    [(MUAmenityItemView *)v20 setViewModel:v22];

    applePayAmenityRowView = val->_applePayAmenityRowView;
    val->_applePayAmenityRowView = &v20->super.super;
    v24 = v20;

    [(UIView *)val->_applePayAmenityRowView setAccessibilityIdentifier:@"ApplePayAmenityRow"];
    [v3 addObject:v24];
  }

  v25 = [(MUAmenityListSectionConfiguration *)val->_configuration applePayConfiguration];
  v26 = [v25 showApplePayIcons];

  if (v26)
  {
    v27 = [MUAmenityItemView alloc];
    v28 = [(MUAmenityItemView *)v27 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v29 = objc_opt_new();
    [(MUAmenityItemView *)v28 setViewModel:v29];

    [v3 addObject:v28];
  }

  if (v6)
  {
    v55 = [MEMORY[0x1E69DC740] _mapsui_textButtonConfiguration];
    v30 = _MULocalizedStringFromThisBundle(@"More [Amenities]");
    [v55 setTitle:v30];

    v31 = [v55 title];
    v32 = [v31 localizedUppercaseString];
    [v55 setTitle:v32];

    objc_initWeak(&location, val);
    v33 = MEMORY[0x1E69DC738];
    v34 = MEMORY[0x1E69DC628];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __42__MUAmenityListSectionView__setupSubviews__block_invoke;
    v57[3] = &unk_1E82196D0;
    objc_copyWeak(&v58, &location);
    v35 = [v34 actionWithHandler:v57];
    v36 = [v33 buttonWithConfiguration:v55 primaryAction:v35];
    moreButton = val->_moreButton;
    val->_moreButton = v36;

    [(UIButton *)val->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)val->_moreButton setPreferredBehavioralStyle:1];
    v38 = objc_alloc(MEMORY[0x1E696F438]);
    v39 = [v38 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v39 setAccessibilityIdentifier:@"AmenityListMoreButtonButtonContainer"];
    [(UIButton *)val->_moreButton setAccessibilityIdentifier:@"AmenityListMoreButton"];
    [v39 addSubview:val->_moreButton];
    v48 = MEMORY[0x1E696ACD8];
    v54 = [(UIButton *)val->_moreButton leadingAnchor];
    v53 = [v39 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v64[0] = v52;
    v51 = [(UIButton *)val->_moreButton topAnchor];
    v50 = [v39 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:3.0];
    v64[1] = v49;
    v40 = [(UIButton *)val->_moreButton bottomAnchor];
    v41 = [v39 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v64[2] = v42;
    v43 = [(UIButton *)val->_moreButton trailingAnchor];
    v44 = [v39 trailingAnchor];
    v45 = [v43 constraintLessThanOrEqualToAnchor:v44];
    v64[3] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v48 activateConstraints:v46];

    [v3 addObject:v39];
    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  [(MUPlaceVerticalCardContainerView *)val setRowViews:v3];

  v47 = *MEMORY[0x1E69E9840];
}

void __42__MUAmenityListSectionView__setupSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _moreButtonTapped];
    WeakRetained = v2;
  }
}

- (MUAmenityListSectionView)initWithAmenityListConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUAmenityListSectionView;
  v6 = [(MUPlaceVerticalCardContainerView *)&v9 initWithShowsSeparators:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [(MUAmenityListSectionView *)v7 setAccessibilityIdentifier:@"AmenityList"];
    [(MUAmenityListSectionView *)v7 _setupSubviews];
  }

  return v7;
}

@end