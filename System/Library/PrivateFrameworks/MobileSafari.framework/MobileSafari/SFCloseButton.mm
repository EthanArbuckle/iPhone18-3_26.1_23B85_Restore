@interface SFCloseButton
- (SFCloseButton)initWithStyle:(int64_t)a3 primaryAction:(id)a4;
- (UIImageView)imageView;
- (id)_makeXmarkImageView;
- (void)layoutSubviews;
- (void)setOpaqueBackgroundVisibility:(double)a3;
@end

@implementation SFCloseButton

- (SFCloseButton)initWithStyle:(int64_t)a3 primaryAction:(id)a4
{
  v107[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v104.receiver = self;
  v104.super_class = SFCloseButton;
  v7 = [(SFCloseButton *)&v104 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  if ((a3 - 1) < 2)
  {
    v102 = v6;
    [(SFCloseButton *)v7 _setContinuousCornerRadius:1.79769313e308];
    if (a3 == 1)
    {
      v9 = 10;
    }

    else
    {
      v9 = 8;
    }

    v10 = [MEMORY[0x1E69DC730] effectWithStyle:v9];
    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
    blurEffectView = v8->_blurEffectView;
    v8->_blurEffectView = v11;

    [(UIVisualEffectView *)v8->_blurEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v8->_blurEffectView setUserInteractionEnabled:0];
    [(SFCloseButton *)v8 addSubview:v8->_blurEffectView];
    v100 = v10;
    v99 = [MEMORY[0x1E69DD248] effectForBlurEffect:v10 style:1];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v99];
    vibrantEffectView = v8->_vibrantEffectView;
    v8->_vibrantEffectView = v13;

    [(UIVisualEffectView *)v8->_vibrantEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v8->_vibrantEffectView setUserInteractionEnabled:0];
    [(SFCloseButton *)v8 addSubview:v8->_vibrantEffectView];
    v15 = [(UIVisualEffectView *)v8->_vibrantEffectView contentView];
    v16 = [(SFCloseButton *)v8 _makeXmarkImageView];
    imageView = v8->_imageView;
    v8->_imageView = v16;

    v18 = 0x1E696A000;
    v101 = a3;
    if (a3 == 1)
    {
      v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] compatibleWithTraitCollection:v19];
      v21 = MEMORY[0x1E69DCAD8];
      [v20 pointSize];
      v22 = [v21 configurationWithPointSize:7 weight:2 scale:?];

      [(UIImageView *)v8->_imageView setPreferredSymbolConfiguration:v22];
      v23 = 22.0;
    }

    else
    {
      v33 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:15.0];
      [(UIImageView *)v8->_imageView setPreferredSymbolConfiguration:v33];

      v34 = [(SFCloseButton *)v8 _makeXmarkImageView];
      opaqueImageView = v8->_opaqueImageView;
      v8->_opaqueImageView = v34;

      v36 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:15.0];
      [(UIImageView *)v8->_opaqueImageView setPreferredSymbolConfiguration:v36];

      v37 = objc_alloc_init(MEMORY[0x1E69DD250]);
      opaqueBackgroundView = v8->_opaqueBackgroundView;
      v8->_opaqueBackgroundView = v37;

      [(UIView *)v8->_opaqueBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
      v39 = [MEMORY[0x1E69DC888] systemFillColor];
      [(UIView *)v8->_opaqueBackgroundView setBackgroundColor:v39];

      [(UIView *)v8->_opaqueBackgroundView setUserInteractionEnabled:0];
      [(UIView *)v8->_opaqueBackgroundView setAlpha:0.0];
      [(UIView *)v8->_opaqueBackgroundView addSubview:v8->_opaqueImageView];
      [(SFCloseButton *)v8 addSubview:v8->_opaqueBackgroundView];
      v82 = MEMORY[0x1E696ACD8];
      v78 = [(UIView *)v8->_opaqueBackgroundView centerXAnchor];
      v94 = [(SFCloseButton *)v8 centerXAnchor];
      v92 = [v78 constraintEqualToAnchor:v94];
      v106[0] = v92;
      v90 = [(UIView *)v8->_opaqueBackgroundView centerYAnchor];
      v88 = [(SFCloseButton *)v8 centerYAnchor];
      v86 = [v90 constraintEqualToAnchor:v88];
      v106[1] = v86;
      v84 = [(UIView *)v8->_opaqueBackgroundView widthAnchor];
      v80 = [(SFCloseButton *)v8 widthAnchor];
      v76 = [v84 constraintEqualToAnchor:v80];
      v106[2] = v76;
      v74 = [(UIView *)v8->_opaqueBackgroundView heightAnchor];
      v72 = [(SFCloseButton *)v8 heightAnchor];
      v70 = [v74 constraintEqualToAnchor:v72];
      v106[3] = v70;
      v40 = [(UIImageView *)v8->_opaqueImageView centerXAnchor];
      [(UIView *)v8->_opaqueBackgroundView centerXAnchor];
      v41 = v97 = v15;
      v42 = [v40 constraintEqualToAnchor:v41];
      v106[4] = v42;
      v43 = [(UIImageView *)v8->_opaqueImageView centerYAnchor];
      v44 = [(UIView *)v8->_opaqueBackgroundView centerYAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];
      v106[5] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:6];
      [v82 activateConstraints:v46];

      v22 = v78;
      v18 = 0x1E696A000uLL;

      v15 = v97;
      v23 = 30.0;
    }

    [v15 addSubview:v8->_imageView];
    v71 = *(v18 + 3288);
    v98 = [(UIVisualEffectView *)v8->_blurEffectView centerXAnchor];
    v96 = [(SFCloseButton *)v8 centerXAnchor];
    v95 = [v98 constraintEqualToAnchor:v96];
    v105[0] = v95;
    v93 = [(UIVisualEffectView *)v8->_blurEffectView centerYAnchor];
    v91 = [(SFCloseButton *)v8 centerYAnchor];
    v89 = [v93 constraintEqualToAnchor:v91];
    v105[1] = v89;
    v87 = [(UIVisualEffectView *)v8->_blurEffectView widthAnchor];
    v85 = [(SFCloseButton *)v8 widthAnchor];
    v83 = [v87 constraintEqualToAnchor:v85];
    v105[2] = v83;
    v81 = [(UIVisualEffectView *)v8->_blurEffectView heightAnchor];
    v79 = [(SFCloseButton *)v8 heightAnchor];
    v77 = [v81 constraintEqualToAnchor:v79];
    v105[3] = v77;
    v75 = [(UIVisualEffectView *)v8->_vibrantEffectView centerXAnchor];
    v73 = [(SFCloseButton *)v8 centerXAnchor];
    v69 = [v75 constraintEqualToAnchor:v73];
    v105[4] = v69;
    v68 = [(UIVisualEffectView *)v8->_vibrantEffectView centerYAnchor];
    v67 = [(SFCloseButton *)v8 centerYAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v105[5] = v66;
    v65 = [(UIVisualEffectView *)v8->_vibrantEffectView widthAnchor];
    v64 = [(SFCloseButton *)v8 widthAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v105[6] = v63;
    v62 = [(UIVisualEffectView *)v8->_vibrantEffectView heightAnchor];
    v61 = [(SFCloseButton *)v8 heightAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v105[7] = v60;
    v59 = [(UIImageView *)v8->_imageView centerXAnchor];
    v58 = [v15 centerXAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v105[8] = v57;
    v47 = [(UIImageView *)v8->_imageView centerYAnchor];
    v48 = [v15 centerYAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    v105[9] = v49;
    v50 = [(SFCloseButton *)v8 widthAnchor];
    v51 = [v50 constraintEqualToConstant:v23];
    v105[10] = v51;
    v52 = [(SFCloseButton *)v8 heightAnchor];
    v53 = [v52 constraintEqualToConstant:v23];
    v105[11] = v53;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:12];
    v54 = v31 = v15;
    [v71 activateConstraints:v54];

    a3 = v101;
    v6 = v102;
    v25 = v99;
    v24 = v100;
    goto LABEL_12;
  }

  if (!a3)
  {
    v24 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    v26 = MEMORY[0x1E69DCAD8];
    v103 = [MEMORY[0x1E69DC888] tintColor];
    v107[0] = v103;
    v27 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v107[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
    v29 = [v26 configurationWithPaletteColors:v28];
    v30 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:2 scale:30.0];
    v31 = [v29 configurationByApplyingConfiguration:v30];

    v32 = [v25 imageWithSymbolConfiguration:v31];
    [v24 setImage:v32];

    [v24 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [(SFCloseButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFCloseButton *)v8 setConfiguration:v24];
LABEL_12:
  }

  v8->_style = a3;
  if (v6)
  {
    [(SFCloseButton *)v8 addAction:v6 forControlEvents:0x2000];
  }

  v55 = v8;
LABEL_16:

  return v8;
}

- (id)_makeXmarkImageView
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v4 = [v2 initWithImage:v3];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v4 setTintColor:v5];

  [v4 _sf_setMatchesIntrinsicContentSize];

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCloseButton;
  [(SFCloseButton *)&v3 layoutSubviews];
  [(SFCloseButton *)self bounds];
  [(UIVisualEffectView *)self->_blurEffectView _setContinuousCornerRadius:CGRectGetWidth(v4) * 0.5];
  [(SFCloseButton *)self bounds];
  [(UIView *)self->_opaqueBackgroundView _setContinuousCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (UIImageView)imageView
{
  p_opaqueImageView = &self->_opaqueImageView;
  [(UIImageView *)self->_opaqueImageView alpha];
  if (v4 == 0.0)
  {
    p_opaqueImageView = &self->_imageView;
  }

  v5 = *p_opaqueImageView;

  return v5;
}

- (void)setOpaqueBackgroundVisibility:(double)a3
{
  if (self->_style == 2 && self->_opaqueBackgroundVisibility != a3)
  {
    self->_opaqueBackgroundVisibility = a3;
    [(UIView *)self->_opaqueBackgroundView setAlpha:a3];
    v5 = 1.0 - a3;
    [(UIVisualEffectView *)self->_vibrantEffectView setAlpha:v5];
    blurEffectView = self->_blurEffectView;

    [(UIVisualEffectView *)blurEffectView setAlpha:v5];
  }
}

@end