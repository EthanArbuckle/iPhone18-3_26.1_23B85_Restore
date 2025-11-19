@interface CKEffectSelectionCollectionViewCell
- (CKEffectSelectionCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)configureForEffectIsDark:(BOOL)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation CKEffectSelectionCollectionViewCell

- (CKEffectSelectionCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKEffectSelectionCollectionViewCell;
  v3 = [(CKEffectSelectionCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKEffectSelectionCollectionViewCell *)v3 _setupSubviews];
    [(CKEffectSelectionCollectionViewCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CKEffectSelectionCollectionViewCell *)self setShadowView:v3];

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [v5 setBackgroundColor:v4];

  v6 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v7 = [v6 layer];
  [v7 setCornerRadius:12.0];

  v8 = *MEMORY[0x1E69796E8];
  v9 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v10 = [v9 layer];
  [v10 setCornerCurve:v8];

  v11 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v12 = [v11 layer];
  [v12 setShadowRadius:2.0];

  v13 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v14 = [v13 layer];
  LODWORD(v15) = 1036831949;
  [v14 setShadowOpacity:v15];

  v16 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v17 = [v16 layer];
  [v17 setShadowOffset:{0.0, 1.0}];

  v18 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(CKEffectSelectionCollectionViewCell *)self setImageView:v18];

  v19 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v20 = [v19 layer];
  [v20 setCornerRadius:12.0];

  v21 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v22 = [v21 layer];
  [v22 setCornerCurve:v8];

  v23 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v24 = [v23 layer];
  [v24 setMasksToBounds:1];

  v25 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [(CKEffectSelectionCollectionViewCell *)self setSelectionLayer:v25];

  v26 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [v26 setLineWidth:4.0];

  v27 = [MEMORY[0x1E69DC888] clearColor];
  v28 = [v27 CGColor];
  v29 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [v29 setFillColor:v28];

  v30 = +[CKUIBehavior sharedBehaviors];
  v31 = [v30 theme];
  v32 = [v31 appTintColor];
  v33 = [v32 CGColor];
  v34 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [v34 setStrokeColor:v33];

  v35 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(CKEffectSelectionCollectionViewCell *)self setLabel:v35];

  v36 = [(CKEffectSelectionCollectionViewCell *)self label];
  v37 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*MEMORY[0x1E69DDCF8]];
  [v36 setFont:v37];

  v38 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v38 setTextAlignment:1];

  v39 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v40 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v40 setTextColor:v39];

  v41 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v41 setNumberOfLines:0];

  v42 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v42 setLineBreakMode:0];

  v45 = [MEMORY[0x1E69DC730] effectWithStyle:18];
  v43 = [MEMORY[0x1E69DD248] effectForBlurEffect:v45];
  [(CKEffectSelectionCollectionViewCell *)self setTitleVibrancyEffect:v43];
  v44 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v43];
  [(CKEffectSelectionCollectionViewCell *)self setTitleContainerView:v44];
}

- (void)_setupConstraints
{
  v90[16] = *MEMORY[0x1E69E9840];
  v3 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v8 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [v7 addSubview:v8];

  v9 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v10 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  [v9 addSubview:v10];

  v11 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v12 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  [v11 addSubview:v12];

  v13 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v14 = [v13 contentView];
  v15 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v14 addSubview:v15];

  v59 = MEMORY[0x1E696ACD8];
  v89 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v87 = [v89 topAnchor];
  v88 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v86 = [v88 topAnchor];
  v85 = [v87 constraintEqualToAnchor:v86 constant:8.0];
  v90[0] = v85;
  v84 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v82 = [v84 centerXAnchor];
  v83 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v81 = [v83 centerXAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v90[1] = v80;
  v79 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v78 = [v79 widthAnchor];
  v77 = [v78 constraintEqualToConstant:72.0];
  v90[2] = v77;
  v76 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v75 = [v76 heightAnchor];
  v74 = [v75 constraintEqualToConstant:72.0];
  v90[3] = v74;
  v73 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v71 = [v73 topAnchor];
  v72 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v70 = [v72 topAnchor];
  v69 = [v71 constraintEqualToAnchor:v70 constant:8.0];
  v90[4] = v69;
  v68 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v66 = [v68 centerXAnchor];
  v67 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v65 = [v67 centerXAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v90[5] = v64;
  v63 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v62 = [v63 widthAnchor];
  v61 = [v62 constraintEqualToConstant:72.0];
  v90[6] = v61;
  v60 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v58 = [v60 heightAnchor];
  v57 = [v58 constraintEqualToConstant:72.0];
  v90[7] = v57;
  v56 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v54 = [v56 topAnchor];
  v55 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v53 = [v55 bottomAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:8.0];
  v90[8] = v52;
  v51 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v49 = [v51 bottomAnchor];
  v50 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v48 = [v50 bottomAnchor];
  v47 = [v49 constraintLessThanOrEqualToAnchor:v48];
  v90[9] = v47;
  v46 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v44 = [v46 widthAnchor];
  v45 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  v43 = [v45 widthAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v90[10] = v42;
  v41 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v39 = [v41 centerXAnchor];
  v40 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  v38 = [v40 centerXAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v90[11] = v37;
  v36 = [(CKEffectSelectionCollectionViewCell *)self label];
  v34 = [v36 topAnchor];
  v35 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v90[12] = v32;
  v31 = [(CKEffectSelectionCollectionViewCell *)self label];
  v29 = [v31 bottomAnchor];
  v30 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v28 = [v30 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v90[13] = v27;
  v26 = [(CKEffectSelectionCollectionViewCell *)self label];
  v16 = [v26 leadingAnchor];
  v17 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v90[14] = v19;
  v20 = [(CKEffectSelectionCollectionViewCell *)self label];
  v21 = [v20 trailingAnchor];
  v22 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v90[15] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:16];
  [v59 activateConstraints:v25];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CKEffectSelectionCollectionViewCell;
  [(CKEffectSelectionCollectionViewCell *)&v9 setSelected:?];
  if (v3)
  {
    v5 = [(CKEffectSelectionCollectionViewCell *)self contentView];
    v6 = [v5 layer];
    v7 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
    [v6 addSublayer:v7];

    [(CKEffectSelectionCollectionViewCell *)self setNeedsLayout];
    [(CKEffectSelectionCollectionViewCell *)self layoutIfNeeded];
  }

  else
  {
    v8 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
    [v8 removeFromSuperlayer];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKEffectSelectionCollectionViewCell;
  [(CKEffectSelectionCollectionViewCell *)&v17 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  v4 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [v4 bounds];
  v5 = [v3 _bezierPathWithPillRect:? cornerRadius:?];
  v6 = [v5 CGPath];
  v7 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  v8 = [v7 layer];
  [v8 setShadowPath:v6];

  v9 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [v9 frame];
  v19 = CGRectInset(v18, -2.0, -2.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v14 = [MEMORY[0x1E69DC728] _bezierPathWithPillRect:x cornerRadius:{y, width, height, 15.2}];
  v15 = [v14 CGPath];
  v16 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [v16 setPath:v15];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  [v5 setImage:v4];
}

- (void)setTitle:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  v5 = a3;
  v6 = [v4 defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  LODWORD(v8) = 1045220557;
  [v7 setHyphenationFactor:v8];
  [v7 setAlignment:1];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = *MEMORY[0x1E69DB688];
  v14[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v9 initWithString:v5 attributes:v10];

  v12 = [(CKEffectSelectionCollectionViewCell *)self label];
  [v12 setAttributedText:v11];
}

- (void)configureForEffectIsDark:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v6 = [(CKEffectSelectionCollectionViewCell *)self titleVibrancyEffect];
  }

  else
  {
    v6 = 0;
  }

  v5 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  [v5 setEffect:v6];

  if (v3)
  {
  }
}

@end