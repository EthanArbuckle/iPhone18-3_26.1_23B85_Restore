@interface OBBulletedListItem
- (NSArray)imageContainerSizeConstraints;
- (OBBulletedListItem)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6 linkButton:(id)a7;
- (OBBulletedListItem)initWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6;
- (OBBulletedListItem)initWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6 linkButton:(id)a7;
- (double)_combinedLabelHeight;
- (double)_horizontalMargins;
- (id)_descriptionFont;
- (id)_titleFont;
- (void)_updateImageViewLayout;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation OBBulletedListItem

- (OBBulletedListItem)initWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6
{
  v10 = MEMORY[0x1E69DCAB8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 _systemImageNamed:a5];
  v15 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v16 = [v14 imageWithConfiguration:v15];

  v17 = [(OBBulletedListItem *)self initWithTitle:v13 description:v12 image:v16 tintColor:v11];
  return v17;
}

- (OBBulletedListItem)initWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6 linkButton:(id)a7
{
  v12 = MEMORY[0x1E69DCAB8];
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v12 _systemImageNamed:a5];
  v18 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v19 = [v17 imageWithConfiguration:v18];

  v20 = [(OBBulletedListItem *)self initWithTitle:v16 description:v15 image:v19 tintColor:v14 linkButton:v13];
  return v20;
}

- (OBBulletedListItem)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6 linkButton:(id)a7
{
  v143[9] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12 | v13)
  {
    v142.receiver = self;
    v142.super_class = OBBulletedListItem;
    v18 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
    v22 = [(OBBulletedListItem *)&v142 initWithFrame:*MEMORY[0x1E695F058], v19, v20, v21];
    if (!v22)
    {
LABEL_25:
      self = v22;
      v17 = self;
      goto LABEL_26;
    }

    v139 = v14;
    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
    [(OBBulletedListItem *)v22 setImageView:v23];

    v24 = [(OBBulletedListItem *)v22 imageView];
    [v24 setTintColor:v15];

    v25 = [(OBBulletedListItem *)v22 imageView];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = [(OBBulletedListItem *)v22 imageView];
    [v26 setContentMode:1];

    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v19, v20, v21}];
    imageContainer = v22->_imageContainer;
    v22->_imageContainer = v27;

    [(UIView *)v22->_imageContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v22->_imageContainer addSubview:v22->_imageView];
    if ([v12 length])
    {
      v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
      [(OBBulletedListItem *)v22 setTitleLabel:v29];

      v30 = [(OBBulletedListItem *)v22 titleLabel];
      [v30 setNumberOfLines:0];

      v31 = [(OBBulletedListItem *)v22 titleLabel];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

      v32 = [(OBBulletedListItem *)v22 titleLabel];
      [v32 setText:v12];

      v33 = [(OBBulletedListItem *)v22 titleLabel];
      LODWORD(v34) = 1148846080;
      [v33 setContentHuggingPriority:1 forAxis:v34];
    }

    v141 = v12;
    if ([v13 length])
    {
      v35 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
      [(OBBulletedListItem *)v22 setDescriptionLabel:v35];

      v36 = [(OBBulletedListItem *)v22 descriptionLabel];
      [v36 setNumberOfLines:0];

      v37 = [(OBBulletedListItem *)v22 descriptionLabel];
      [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

      v38 = [(OBBulletedListItem *)v22 descriptionLabel];
      [v38 setText:v13];

      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] colorWithRed:0.56 green:0.56 blue:0.58 alpha:1.0];
      }
      v39 = ;
      v40 = [(OBBulletedListItem *)v22 descriptionLabel];
      [v40 setTextColor:v39];

      v41 = [(OBBulletedListItem *)v22 descriptionLabel];
      LODWORD(v42) = 1148846080;
      [v41 setContentHuggingPriority:1 forAxis:v42];
    }

    v43 = [(OBBulletedListItem *)v22 _titleFont];
    v44 = [(OBBulletedListItem *)v22 titleLabel];
    [v44 setFont:v43];

    v45 = [(OBBulletedListItem *)v22 _descriptionFont];
    v46 = [(OBBulletedListItem *)v22 descriptionLabel];
    [v46 setFont:v45];

    v47 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v18, v19, v20, v21}];
    [(OBBulletedListItem *)v22 setStackView:v47];

    v48 = [(OBBulletedListItem *)v22 stackView];
    [v48 setAxis:1];

    v49 = [(OBBulletedListItem *)v22 stackView];
    [v49 setAlignment:0];

    v50 = [(OBBulletedListItem *)v22 stackView];
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

    v51 = [(OBBulletedListItem *)v22 stackView];
    v52 = [(OBBulletedListItem *)v22 titleLabel];
    [v51 addArrangedSubview:v52];

    v53 = [(OBBulletedListItem *)v22 stackView];
    v54 = [(OBBulletedListItem *)v22 descriptionLabel];
    [v53 addArrangedSubview:v54];

    if (v16)
    {
      objc_storeStrong(&v22->_accessoryButton, a7);
      [(UIButton *)v22->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        [(UIButton *)v22->_accessoryButton setContentHorizontalAlignment:4];
      }

      v55 = [(OBBulletedListItem *)v22 stackView];
      v56 = [(OBBulletedListItem *)v22 accessoryButton];
      [v55 addArrangedSubview:v56];
    }

    v138 = v15;
    v140 = v13;
    [(OBBulletedListItem *)v22 addSubview:v22->_imageContainer];
    v57 = [(OBBulletedListItem *)v22 stackView];
    [(OBBulletedListItem *)v22 addSubview:v57];

    v58 = [(OBBulletedListItem *)v22 stackView];
    v59 = [(OBBulletedListItem *)v22 _titleFont];
    [v59 leading];
    [v58 setSpacing:?];

    v60 = [(OBBulletedListItem *)v22 imageContainer];
    v61 = [v60 topAnchor];
    v62 = [(OBBulletedListItem *)v22 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    [(OBBulletedListItem *)v22 setTopConstraintToImageContainer:v63];

    v64 = [(OBBulletedListItem *)v22 bottomAnchor];
    v65 = [(OBBulletedListItem *)v22 imageContainer];
    v66 = [v65 bottomAnchor];
    v67 = [v64 constraintEqualToAnchor:v66];
    [(OBBulletedListItem *)v22 setBottomConstraintToImageContainer:v67];

    v68 = [(OBBulletedListItem *)v22 stackView];
    v69 = [v68 topAnchor];
    v70 = [(OBBulletedListItem *)v22 topAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    [(OBBulletedListItem *)v22 setTopConstraintToStackView:v71];

    v72 = [(OBBulletedListItem *)v22 bottomAnchor];
    v73 = [(OBBulletedListItem *)v22 stackView];
    v74 = [v73 bottomAnchor];
    v75 = [v72 constraintEqualToAnchor:v74];
    [(OBBulletedListItem *)v22 setBottomConstraintToStackView:v75];

    v76 = [(OBBulletedListItem *)v22 imageView];
    v77 = [v76 image];
    [(OBBulletedListItem *)v22 imageSizeForImage:v77];
    v79 = v78;

    v80 = 1.0;
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      v81 = [(OBBulletedListItem *)v22 imageView];
      v82 = [v81 image];
      if (v82)
      {
        v83 = v82;
        v84 = [(OBBulletedListItem *)v22 imageView];
        v85 = [v84 image];
        [v85 size];
        v87 = v86;

        if (v87 <= 0.0)
        {
          goto LABEL_20;
        }

        v81 = [(OBBulletedListItem *)v22 imageView];
        v88 = [v81 image];
        [v88 size];
        v90 = v89;
        v91 = [(OBBulletedListItem *)v22 imageView];
        v92 = [v91 image];
        [v92 size];
        v80 = v90 / v93;
      }
    }

LABEL_20:
    v122 = MEMORY[0x1E696ACD8];
    v136 = [(OBBulletedListItem *)v22 imageView];
    v135 = [v136 widthAnchor];
    v134 = [v135 constraintEqualToConstant:v79];
    v143[0] = v134;
    v133 = [(OBBulletedListItem *)v22 imageView];
    v131 = [v133 heightAnchor];
    v132 = [(OBBulletedListItem *)v22 imageView];
    v130 = [v132 widthAnchor];
    v129 = [v131 constraintEqualToAnchor:v130 multiplier:v80];
    v143[1] = v129;
    v128 = [(OBBulletedListItem *)v22 imageView];
    v126 = [v128 centerXAnchor];
    v127 = [(OBBulletedListItem *)v22 imageContainer];
    v125 = [v127 centerXAnchor];
    v124 = [v126 constraintEqualToAnchor:v125];
    v143[2] = v124;
    v123 = [(OBBulletedListItem *)v22 imageView];
    v120 = [v123 centerYAnchor];
    v121 = [(OBBulletedListItem *)v22 imageContainer];
    v119 = [v121 centerYAnchor];
    v118 = [v120 constraintEqualToAnchor:v119];
    v143[3] = v118;
    v117 = [(OBBulletedListItem *)v22 imageView];
    v115 = [v117 topAnchor];
    v116 = [(OBBulletedListItem *)v22 imageContainer];
    v114 = [v116 topAnchor];
    v113 = [v115 constraintLessThanOrEqualToAnchor:v114];
    v143[4] = v113;
    v112 = [(OBBulletedListItem *)v22 imageView];
    v110 = [v112 bottomAnchor];
    v111 = [(OBBulletedListItem *)v22 imageContainer];
    v94 = [v111 bottomAnchor];
    v95 = [v110 constraintLessThanOrEqualToAnchor:v94];
    v143[5] = v95;
    v96 = [(OBBulletedListItem *)v22 stackView];
    [v96 trailingAnchor];
    v97 = v137 = v16;
    v98 = [(OBBulletedListItem *)v22 trailingAnchor];
    [(OBBulletedListItem *)v22 trailingMargin];
    v100 = [v97 constraintEqualToAnchor:v98 constant:-v99];
    v143[6] = v100;
    v101 = [(OBBulletedListItem *)v22 topConstraintToStackView];
    v143[7] = v101;
    v102 = [(OBBulletedListItem *)v22 bottomConstraintToStackView];
    v143[8] = v102;
    v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:9];
    [v122 activateConstraints:v103];

    v16 = v137;
    [(OBBulletedListItem *)v22 _updateImageViewLayout];
    v104 = [(OBBulletedListItem *)v22 accessoryButton];

    v13 = v140;
    v12 = v141;
    v15 = v138;
    v14 = v139;
    if (v104)
    {
      v105 = [(OBBulletedListItem *)v22 descriptionLabel];

      if (v105)
      {
        [(OBBulletedListItem *)v22 descriptionLabel];
      }

      else
      {
        [(OBBulletedListItem *)v22 titleLabel];
      }
      v106 = ;
      v107 = [(OBBulletedListItem *)v22 stackView];
      [v107 setCustomSpacing:v106 afterView:0.0];
    }

    goto LABEL_25;
  }

  v17 = 0;
LABEL_26:

  v108 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBBulletedListItem;
  [(OBBulletedListItem *)&v8 traitCollectionDidChange:a3];
  [(OBBulletedListItem *)self _updateImageViewLayout];
  v4 = [(OBBulletedListItem *)self _titleFont];
  v5 = [(OBBulletedListItem *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(OBBulletedListItem *)self _descriptionFont];
  v7 = [(OBBulletedListItem *)self descriptionLabel];
  [v7 setFont:v6];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = OBBulletedListItem;
  [(OBBulletedListItem *)&v18 layoutSubviews];
  v3 = [(OBBulletedListItem *)self imageView];
  v4 = [v3 image];
  [(OBBulletedListItem *)self imageSizeForImage:v4];
  v6 = v5;

  [(OBBulletedListItem *)self _combinedLabelHeight];
  if (v6 <= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    if ([v8 isActive])
    {
      v9 = 0;
    }

    else
    {
      v10 = [(OBBulletedListItem *)self topConstraintToImageContainer];
      v9 = [v10 isActive] ^ 1;
    }
  }

  [(OBBulletedListItem *)self _combinedLabelHeight];
  if (v6 <= v11)
  {
    v13 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    if ([v13 isActive])
    {
      v12 = 0;
    }

    else
    {
      v14 = [(OBBulletedListItem *)self topConstraintToStackView];
      v12 = [v14 isActive] ^ 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
  if ([v15 isActive])
  {
    v16 = [(OBBulletedListItem *)self topConstraintToStackView];
    v17 = [v16 isActive] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  if (((v9 | v12) & 1) != 0 || v17)
  {
    [(OBBulletedListItem *)self setNeedsUpdateConstraints];
  }
}

- (NSArray)imageContainerSizeConstraints
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (!self->_imageContainerSizeConstraints)
  {
    if (!+[OBFeatureFlags isNaturalUIEnabled](OBFeatureFlags, "isNaturalUIEnabled") || +[OBViewUtilities shouldUseAccessibilityLayout])
    {
      v3 = [(OBBulletedListItem *)self imageContainer];
      v4 = [v3 widthAnchor];
      v5 = [v4 constraintEqualToConstant:40.0];
      v35[0] = v5;
      v6 = [(OBBulletedListItem *)self imageContainer];
      v7 = [v6 heightAnchor];
      v8 = [v7 constraintEqualToConstant:40.0];
      v35[1] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      imageContainerSizeConstraints = self->_imageContainerSizeConstraints;
      self->_imageContainerSizeConstraints = v9;
LABEL_11:

      goto LABEL_12;
    }

    v11 = [(OBBulletedListItem *)self imageView];
    v12 = [v11 image];
    [(OBBulletedListItem *)self imageSizeForImage:v12];
    v14 = v13;

    v15 = 1.0;
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      v16 = [(OBBulletedListItem *)self imageView];
      v17 = [v16 image];
      if (!v17)
      {
LABEL_9:

        goto LABEL_10;
      }

      v18 = v17;
      v19 = [(OBBulletedListItem *)self imageView];
      v20 = [v19 image];
      [v20 size];
      v22 = v21;

      if (v22 > 0.0)
      {
        v16 = [(OBBulletedListItem *)self imageView];
        v23 = [v16 image];
        [v23 size];
        v25 = v24;
        v26 = [(OBBulletedListItem *)self imageView];
        v27 = [v26 image];
        [v27 size];
        v15 = v25 / v28;

        goto LABEL_9;
      }
    }

LABEL_10:
    v3 = [(OBBulletedListItem *)self imageContainer];
    v4 = [v3 widthAnchor];
    v5 = [v4 constraintEqualToConstant:v14];
    v36[0] = v5;
    v6 = [(OBBulletedListItem *)self imageContainer];
    v7 = [v6 heightAnchor];
    v8 = [(OBBulletedListItem *)self imageContainer];
    imageContainerSizeConstraints = [v8 widthAnchor];
    v29 = [v7 constraintEqualToAnchor:imageContainerSizeConstraints multiplier:v15];
    v36[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v31 = self->_imageContainerSizeConstraints;
    self->_imageContainerSizeConstraints = v30;

    goto LABEL_11;
  }

LABEL_12:
  v32 = self->_imageContainerSizeConstraints;
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)_updateImageViewLayout
{
  v68[5] = *MEMORY[0x1E69E9840];
  v3 = [(OBBulletedListItem *)self imageContainer];
  [v3 removeFromSuperview];

  v4 = [(OBBulletedListItem *)self imageView];
  v5 = [v4 image];
  [(OBBulletedListItem *)self imageSizeForImage:v5];
  v7 = v6;

  if ([(OBBulletedListItem *)self shouldLayoutVertically])
  {
    v8 = [(OBBulletedListItem *)self stackView];
    v9 = [(OBBulletedListItem *)self imageContainer];
    [v8 insertArrangedSubview:v9 atIndex:0];

    v10 = [(OBBulletedListItem *)self stackView];
    [(OBBulletedListItem *)self _imageTextPadding];
    v12 = v11;
    v13 = [(OBBulletedListItem *)self imageContainer];
    [v10 setCustomSpacing:v13 afterView:v12];

    v14 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];

    if (!v14)
    {
      v15 = [(OBBulletedListItem *)self stackView];
      v16 = [v15 leadingAnchor];
      v17 = [(OBBulletedListItem *)self leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [(OBBulletedListItem *)self setStackViewLeadingConstraintVertical:v18];
    }

    v19 = [(OBBulletedListItem *)self stackViewLeadingConstraintHorizontal];
    [v19 setActive:0];

    v20 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    [v20 setActive:1];

    v21 = MEMORY[0x1E696ACD8];
    v64 = [(OBBulletedListItem *)self imageContainerSizeConstraints];
    [v21 activateConstraints:?];
    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v23 = [(OBBulletedListItem *)self imageContainer];
    [(OBBulletedListItem *)self addSubview:v23];

    v24 = [(OBBulletedListItem *)self stackViewLeadingConstraintHorizontal];

    if (!v24)
    {
      v25 = [(OBBulletedListItem *)self stackView];
      v26 = [v25 leadingAnchor];
      v27 = [(OBBulletedListItem *)self imageContainer];
      v28 = [v27 trailingAnchor];
      [(OBBulletedListItem *)self _imageTextPadding];
      v29 = [v26 constraintEqualToAnchor:v28 constant:?];
      [(OBBulletedListItem *)self setStackViewLeadingConstraintHorizontal:v29];
    }

    v30 = MEMORY[0x1E696ACD8];
    v31 = [(OBBulletedListItem *)self imageContainerSizeConstraints];
    [v30 deactivateConstraints:v31];

    v32 = [(OBBulletedListItem *)self stackViewLeadingConstraintHorizontal];
    [v32 setActive:1];

    v33 = [(OBBulletedListItem *)self stackViewLeadingConstraintVertical];
    [v33 setActive:0];

    v59 = MEMORY[0x1E696ACD8];
    v65 = [(OBBulletedListItem *)self topConstraintToImageContainer];
    v68[0] = v65;
    v63 = [(OBBulletedListItem *)self bottomConstraintToImageContainer];
    v68[1] = v63;
    v62 = [(OBBulletedListItem *)self imageContainer];
    v61 = [v62 widthAnchor];
    v60 = [v61 constraintEqualToConstant:v7];
    v68[2] = v60;
    v58 = [(OBBulletedListItem *)self leadingAnchor];
    v34 = [(OBBulletedListItem *)self imageContainer];
    v35 = [v34 leadingAnchor];
    [(OBBulletedListItem *)self leadingMargin];
    v37 = [v58 constraintEqualToAnchor:v35 constant:-v36];
    v68[3] = v37;
    v38 = [(OBBulletedListItem *)self imageContainer];
    v39 = [v38 trailingAnchor];
    v40 = [(OBBulletedListItem *)self stackView];
    v41 = [v40 leadingAnchor];
    [(OBBulletedListItem *)self _imageTextPadding];
    v43 = [v39 constraintEqualToAnchor:v41 constant:-v42];
    v68[4] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:5];
    [v59 activateConstraints:v44];

    v45 = +[OBFeatureFlags isNaturalUIEnabled];
    v46 = MEMORY[0x1E696ACD8];
    if (v45)
    {
      v47 = [(OBBulletedListItem *)self imageContainer];
      v48 = [v47 topAnchor];
      v49 = [(OBBulletedListItem *)self stackView];
      v50 = [v49 topAnchor];
      [(OBBulletedListItem *)self topMargin];
      v51 = [v48 constraintEqualToAnchor:v50 constant:?];
      v67 = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
      [v46 activateConstraints:v52];
    }

    else
    {
      v47 = [(OBBulletedListItem *)self stackView];
      v48 = [v47 centerYAnchor];
      v53 = [(OBBulletedListItem *)self imageContainer];
      v54 = [v53 centerYAnchor];
      v55 = [v48 constraintEqualToAnchor:v54];
      v66 = v55;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      [v46 activateConstraints:v56];
    }

    v57 = *MEMORY[0x1E69E9840];
  }
}

- (double)_horizontalMargins
{
  v2 = [(OBBulletedListItem *)self shouldLayoutVertically];
  result = 0.0;
  if (!v2)
  {
    v4 = +[OBFeatureFlags isNaturalUIEnabled];
    result = 4.0;
    if (!v4)
    {
      v5 = +[OBDevice currentDevice];
      v6 = [v5 templateType];

      result = 10.0;
      if (v6 <= 0xA)
      {
        return dbl_1B4FFC370[v6];
      }
    }
  }

  return result;
}

- (id)_descriptionFont
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  v3 = MEMORY[0x1E69DDCF8];
  if (!v2)
  {
    v3 = MEMORY[0x1E69DDD80];
  }

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v3];

  return v4;
}

- (id)_titleFont
{
  v3 = [(OBBulletedListItem *)self descriptionLabel];

  if (v3)
  {
    v4 = +[OBFeatureFlags isNaturalUIEnabled];
    v5 = MEMORY[0x1E69DDCF8];
    if (!v4)
    {
      v5 = MEMORY[0x1E69DDD80];
    }

    v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*v5];
    v7 = [v6 fontDescriptorWithSymbolicTraits:2];

    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];
  }

  else
  {
    v8 = [(OBBulletedListItem *)self _descriptionFont];
  }

  return v8;
}

- (void)updateConstraints
{
  v23.receiver = self;
  v23.super_class = OBBulletedListItem;
  [(OBBulletedListItem *)&v23 updateConstraints];
  v3 = [(OBBulletedListItem *)self topConstraintToStackView];
  [v3 setActive:0];

  v4 = [(OBBulletedListItem *)self bottomConstraintToStackView];
  [v4 setActive:0];

  v5 = [(OBBulletedListItem *)self imageView];
  v6 = [v5 image];
  [(OBBulletedListItem *)self imageSizeForImage:v6];
  v8 = v7;

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  [(OBBulletedListItem *)self _combinedLabelHeight];
  if (v8 <= v11 || (-[OBBulletedListItem stackViewLeadingConstraintVertical](self, "stackViewLeadingConstraintVertical"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isActive], v12, (v13 & 1) != 0))
  {
    v14 = [(OBBulletedListItem *)self topConstraintToImageContainer];
    [v9 addObject:v14];

    v15 = [(OBBulletedListItem *)self bottomConstraintToImageContainer];
    [v9 addObject:v15];

    v16 = [(OBBulletedListItem *)self topConstraintToStackView];
    [v10 addObject:v16];

    v17 = [(OBBulletedListItem *)self bottomConstraintToStackView];
  }

  else
  {
    v18 = [(OBBulletedListItem *)self topConstraintToStackView];
    [v9 addObject:v18];

    v19 = [(OBBulletedListItem *)self bottomConstraintToStackView];
    [v9 addObject:v19];

    v20 = [(OBBulletedListItem *)self imageContainerSizeConstraints];
    [v10 addObjectsFromArray:v20];

    v21 = [(OBBulletedListItem *)self topConstraintToImageContainer];
    [v10 addObject:v21];

    v17 = [(OBBulletedListItem *)self bottomConstraintToImageContainer];
  }

  v22 = v17;
  [v10 addObject:v17];

  [MEMORY[0x1E696ACD8] deactivateConstraints:v9];
  [MEMORY[0x1E696ACD8] activateConstraints:v10];
}

- (double)_combinedLabelHeight
{
  v3 = [(OBBulletedListItem *)self titleLabel];
  [(OBBulletedListItem *)self bounds];
  [v3 systemLayoutSizeFittingSize:{v4, 0.0}];
  v6 = v5;
  v7 = [(OBBulletedListItem *)self descriptionLabel];
  [(OBBulletedListItem *)self bounds];
  [v7 systemLayoutSizeFittingSize:{v8, 0.0}];
  v10 = v6 + v9;

  return v10;
}

@end