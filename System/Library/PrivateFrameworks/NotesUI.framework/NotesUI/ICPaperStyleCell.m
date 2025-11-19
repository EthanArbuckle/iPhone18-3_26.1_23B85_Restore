@interface ICPaperStyleCell
- (ICPaperStyleCell)initWithFrame:(CGRect)a3;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
- (void)setupCell;
- (void)updateColors;
@end

@implementation ICPaperStyleCell

- (ICPaperStyleCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICPaperStyleCell;
  v3 = [(ICPaperStyleCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICPaperStyleCell *)v3 setupCell];
  }

  return v4;
}

- (void)setupCell
{
  v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  [(ICPaperStyleCell *)self setClipsToBounds:0];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(ICPaperStyleCell *)self setBackgroundColor:v3];

  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(ICPaperStyleCell *)self setSelectionView:v4];

  v5 = [(ICPaperStyleCell *)self selectionView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ICPaperStyleCell *)self selectionView];
  [(ICPaperStyleCell *)self addSubview:v6];

  v7 = [(ICPaperStyleCell *)self selectionView];
  [v7 setHidden:1];

  v8 = [MEMORY[0x1E69DC938] ic_isVision];
  v9 = [(ICPaperStyleCell *)self selectionView];
  v10 = [v9 layer];
  v11 = v10;
  v12 = MEMORY[0x1E69796E8];
  if (v8)
  {
    [v10 setCornerRadius:23.0];

    v13 = *v12;
    v14 = [(ICPaperStyleCell *)self selectionView];
    v15 = [v14 layer];
    [v15 setCornerCurve:v13];

    v9 = [(ICPaperStyleCell *)self selectionView];
    v11 = [v9 layer];
    [v11 setBorderWidth:4.0];
  }

  else
  {
    [v10 setCornerRadius:6.0];
  }

  v16 = [(ICPaperStyleCell *)self leadingAnchor];
  v17 = [(ICPaperStyleCell *)self selectionView];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v82 addObject:v19];

  v20 = [(ICPaperStyleCell *)self trailingAnchor];
  v21 = [(ICPaperStyleCell *)self selectionView];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v82 addObject:v23];

  v24 = [(ICPaperStyleCell *)self topAnchor];
  v25 = [(ICPaperStyleCell *)self selectionView];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v82 addObject:v27];

  v28 = [(ICPaperStyleCell *)self bottomAnchor];
  v29 = [(ICPaperStyleCell *)self selectionView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v82 addObject:v31];

  v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(ICPaperStyleCell *)self setImageView:v32];

  v33 = [(ICPaperStyleCell *)self imageView];
  [v33 setContentMode:0];

  v34 = [(ICPaperStyleCell *)self imageView];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] ic_noteEditorPreviewColorForceLightContent:1];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v35 = ;
  v36 = [(ICPaperStyleCell *)self imageView];
  [v36 setBackgroundColor:v35];

  v37 = [MEMORY[0x1E69DC888] lightGrayColor];
  v38 = [(ICPaperStyleCell *)self imageView];
  [v38 setTintColor:v37];

  v39 = [(ICPaperStyleCell *)self imageView];
  [(ICPaperStyleCell *)self addSubview:v39];

  v40 = [(ICPaperStyleCell *)self leadingAnchor];
  v41 = [(ICPaperStyleCell *)self imageView];
  v42 = [v41 leadingAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v43 = -7.0;
  }

  else
  {
    v43 = -2.0;
  }

  v44 = [v40 constraintEqualToAnchor:v42 constant:v43];
  [v82 addObject:v44];

  v45 = [(ICPaperStyleCell *)self topAnchor];
  v46 = [(ICPaperStyleCell *)self imageView];
  v47 = [v46 topAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v48 = -7.0;
  }

  else
  {
    v48 = -2.0;
  }

  v49 = [v45 constraintEqualToAnchor:v47 constant:v48];
  [v82 addObject:v49];

  v50 = [(ICPaperStyleCell *)self trailingAnchor];
  v51 = [(ICPaperStyleCell *)self imageView];
  v52 = [v51 trailingAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v53 = 7.0;
  }

  else
  {
    v53 = 2.0;
  }

  v54 = [v50 constraintEqualToAnchor:v52 constant:v53];
  [v82 addObject:v54];

  v55 = [(ICPaperStyleCell *)self bottomAnchor];
  v56 = [(ICPaperStyleCell *)self imageView];
  v57 = [v56 bottomAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v58 = 7.0;
  }

  else
  {
    v58 = 2.0;
  }

  v59 = [v55 constraintEqualToAnchor:v57 constant:v58];
  [v82 addObject:v59];

  [MEMORY[0x1E696ACD8] activateConstraints:v82];
  v60 = [(ICPaperStyleCell *)self imageView];
  v61 = [v60 layer];
  [v61 setMasksToBounds:0];

  v62 = [MEMORY[0x1E69DC938] ic_isVision];
  v63 = [(ICPaperStyleCell *)self imageView];
  v64 = [v63 layer];
  v65 = v64;
  if (v62)
  {
    [v64 setCornerRadius:16.0];

    v66 = *v12;
    v67 = [(ICPaperStyleCell *)self imageView];
    v68 = [v67 layer];
    [v68 setCornerCurve:v66];
  }

  else
  {
    [v64 setCornerRadius:4.0];

    v69 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    v70 = [v69 CGColor];
    v71 = [(ICPaperStyleCell *)self imageView];
    v72 = [v71 layer];
    [v72 setShadowColor:v70];

    v73 = [(ICPaperStyleCell *)self imageView];
    v74 = [v73 layer];
    [v74 setShadowOffset:{0.0, 1.0}];

    v75 = [(ICPaperStyleCell *)self imageView];
    v76 = [v75 layer];
    [v76 setShadowRadius:6.0];

    v67 = [(ICPaperStyleCell *)self imageView];
    v68 = [v67 layer];
    LODWORD(v77) = 1022739087;
    [v68 setShadowOpacity:v77];
  }

  v78 = [(ICPaperStyleCell *)self layer];
  [v78 setBorderWidth:0.0];

  v79 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  v80 = [(ICPaperStyleCell *)self selectionView];
  v81 = [v80 layer];
  [v81 cornerRadius];
  [v79 setCornerRadius:?];

  [(ICPaperStyleCell *)self setBackgroundConfiguration:v79];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = ICPaperStyleCell;
  [(ICPaperStyleCell *)&v5 prepareForReuse];
  v3 = [(ICPaperStyleCell *)self selectionView];
  [v3 setHidden:1];

  v4 = [(ICPaperStyleCell *)self imageView];
  [v4 setImage:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICPaperStyleCell;
  [(ICPaperStyleCell *)&v3 layoutSubviews];
  [(ICPaperStyleCell *)self updateColors];
}

- (void)updateColors
{
  v3 = [MEMORY[0x1E69DC938] ic_isVision];
  v7 = [(ICPaperStyleCell *)self tintColor];
  if (v3)
  {
    v4 = [v7 CGColor];
    v5 = [(ICPaperStyleCell *)self selectionView];
    v6 = [v5 layer];
    [v6 setBorderColor:v4];
  }

  else
  {
    v5 = [(ICPaperStyleCell *)self selectionView];
    [v5 setBackgroundColor:v7];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICPaperStyleCell *)self selectionView];
  [v4 setHidden:!v3];
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ICPaperStyleCell;
  v3 = [(ICPaperStyleCell *)&v8 accessibilityTraits];
  v4 = [(ICPaperStyleCell *)self selectionView];
  v5 = [v4 isHidden];

  v6 = *MEMORY[0x1E69DDA08];
  if (v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

@end