@interface CertUIKeyValueView
+ (double)defaultPreferredValueLabelOriginX;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CertUIKeyValueView)initWithFrame:(CGRect)a3;
- (id)detailFont;
- (id)titleFont;
- (id)verifiedFont;
- (void)_createVerifiedComponentsIfNeeded;
- (void)layoutSubviews;
- (void)setCheckmarkLabelText:(id)a3 checkmarkLabelColor:(id)a4 showCheckmark:(BOOL)a5;
- (void)setHighlightTextColor:(id)a3;
- (void)setItemDetail:(id)a3;
- (void)setKey:(id)a3 value:(id)a4;
- (void)setPreferredValueLabelOriginX:(double)a3;
@end

@implementation CertUIKeyValueView

+ (double)defaultPreferredValueLabelOriginX
{
  result = *&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX;
  if (*&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX < 0.0)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 imageNamed:@"profile-icon" inBundle:v4];

    [v5 size];
    if (v6 > 0.0)
    {
      [v5 size];
      *&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX = v7 + 24.0;
    }

    return *&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX;
  }

  return result;
}

- (CertUIKeyValueView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = CertUIKeyValueView;
  v3 = [(CertUIKeyValueView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    keyLabel = v3->_keyLabel;
    v3->_keyLabel = v9;

    [(UILabel *)v3->_keyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v3->_keyLabel setTextColor:v11];

    [(UILabel *)v3->_keyLabel setTextAlignment:2];
    v12 = [(CertUIKeyValueView *)v3 titleFont];
    [(UILabel *)v3->_keyLabel setFont:v12];

    [(UILabel *)v3->_keyLabel setNumberOfLines:0];
    [(CertUIKeyValueView *)v3 addSubview:v3->_keyLabel];
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v13;

    [(UILabel *)v3->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(CertUIKeyValueView *)v3 detailFont];
    [(UILabel *)v3->_valueLabel setFont:v15];

    [(UILabel *)v3->_valueLabel setNumberOfLines:0];
    [(CertUIKeyValueView *)v3 addSubview:v3->_valueLabel];
    +[CertUIKeyValueView defaultPreferredValueLabelOriginX];
    v3->_preferredValueLabelOriginX = v16;
  }

  return v3;
}

- (void)layoutSubviews
{
  v90.receiver = self;
  v90.super_class = CertUIKeyValueView;
  [(CertUIKeyValueView *)&v90 layoutSubviews];
  [(CertUIKeyValueView *)self frame];
  v4 = v3;
  [(CertUIKeyValueView *)self preferredValueLabelOriginX];
  v6 = v4 - v5;
  [(CertUIKeyValueView *)self frame];
  v8 = v7 - v6 + -10.0;
  v9 = [(CertUIKeyValueView *)self keyLabel];
  [v9 sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;
  v13 = v12;

  v91.origin.x = v8 - v11;
  v91.origin.y = 0.0;
  v91.size.width = v11;
  v91.size.height = v13;
  v92 = CGRectIntegral(v91);
  x = v92.origin.x;
  y = v92.origin.y;
  width = v92.size.width;
  height = v92.size.height;
  v18 = [(CertUIKeyValueView *)self keyLabel];
  [v18 setFrame:{x, y, width, height}];

  v19 = [(CertUIKeyValueView *)self valueLabel];
  v89 = v6;
  [v19 sizeThatFits:{v6, 3.40282347e38}];
  v21 = v20;
  v23 = v22;

  [(CertUIKeyValueView *)self preferredValueLabelOriginX];
  v24 = v93.origin.x;
  v93.origin.y = 0.0;
  v93.size.width = v21;
  v93.size.height = v23;
  v94 = CGRectIntegral(v93);
  v25 = v94.origin.x;
  v26 = v94.origin.y;
  v27 = v94.size.width;
  v28 = v94.size.height;
  v29 = [(CertUIKeyValueView *)self valueLabel];
  [v29 setFrame:{v25, v26, v27, v28}];

  v30 = [(CertUIKeyValueView *)self keyLabel];
  [v30 _firstLineBaselineFrameOriginY];
  v32 = v31;
  v33 = [(CertUIKeyValueView *)self valueLabel];
  [v33 _firstLineBaselineOffsetFromBoundsTop];
  v35 = v32 - v34;

  v95.origin.x = v24;
  v95.origin.y = v35;
  v95.size.width = v21;
  v95.size.height = v23;
  v96 = CGRectIntegral(v95);
  v36 = v96.origin.x;
  v37 = v96.origin.y;
  v38 = v96.size.width;
  v39 = v96.size.height;
  v40 = [(CertUIKeyValueView *)self valueLabel];
  [v40 setFrame:{v36, v37, v38, v39}];

  v41 = [(CertUIKeyValueView *)self keyLabel];
  v42 = [v41 text];
  v43 = [v42 length];

  v44 = [(CertUIKeyValueView *)self valueLabel];
  v45 = [v44 text];
  v46 = [v45 length];

  v97.origin.x = v24;
  v97.origin.y = v35;
  v97.size.width = v21;
  v97.size.height = v23;
  MaxY = CGRectGetMaxY(v97);
  v48 = [(CertUIKeyValueView *)self verifiedLabel];

  if (v48)
  {
    v49 = v46 ? MaxY + 5.0 : MaxY;
    v50 = [(CertUIKeyValueView *)self verifiedLabel];
    [v50 sizeThatFits:{v89, 3.40282347e38}];
    v52 = v51;
    v54 = v53;

    [(CertUIKeyValueView *)self preferredValueLabelOriginX];
    v55 = v98.origin.x;
    v98.origin.y = v49;
    v98.size.width = v52;
    v98.size.height = v54;
    v99 = CGRectIntegral(v98);
    v56 = v99.origin.x;
    v57 = v99.origin.y;
    v58 = v99.size.width;
    v59 = v99.size.height;
    v60 = [(CertUIKeyValueView *)self verifiedLabel];
    [v60 setFrame:{v56, v57, v58, v59}];

    if (!v46)
    {
      if (v43)
      {
        v61 = [(CertUIKeyValueView *)self keyLabel];
        [v61 _firstLineBaselineFrameOriginY];
        v63 = v62;
        v64 = [(CertUIKeyValueView *)self verifiedLabel];
        [v64 _firstLineBaselineOffsetFromBoundsTop];
        v66 = v63 - v65;

        v100.origin.x = v55;
        v100.origin.y = v66;
        v100.size.width = v52;
        v100.size.height = v54;
        v101 = CGRectIntegral(v100);
        v67 = v101.origin.x;
        v68 = v101.origin.y;
        v69 = v101.size.width;
        v70 = v101.size.height;
        v71 = [(CertUIKeyValueView *)self verifiedLabel];
        [v71 setFrame:{v67, v68, v69, v70}];
      }
    }
  }

  v72 = [(CertUIKeyValueView *)self verifiedImageView];

  if (v72)
  {
    v73 = [(CertUIKeyValueView *)self verifiedImageView];
    v74 = [v73 image];
    [v74 size];
    v76 = v75;
    v78 = v77;

    v79 = [(CertUIKeyValueView *)self verifiedLabel];
    [v79 frame];
    v80 = CGRectGetMaxX(v102) + 8.0;

    v81 = [(CertUIKeyValueView *)self verifiedLabel];
    [v81 _firstLineBaselineFrameOriginY];
    v83 = v82 - v78;

    v103.origin.x = v80;
    v103.origin.y = v83;
    v103.size.width = v76;
    v103.size.height = v78;
    v104 = CGRectIntegral(v103);
    v84 = v104.origin.x;
    v85 = v104.origin.y;
    v86 = v104.size.width;
    v87 = v104.size.height;
    v88 = [(CertUIKeyValueView *)self verifiedImageView];
    [v88 setFrame:{v84, v85, v86, v87}];
  }
}

- (void)_createVerifiedComponentsIfNeeded
{
  v3 = [(CertUIKeyValueView *)self verifiedImageView];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    verifiedImageView = self->_verifiedImageView;
    self->_verifiedImageView = v4;

    [(UIImageView *)self->_verifiedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(CertUIKeyValueView *)self verifiedColor];
    [(UIImageView *)self->_verifiedImageView setTintColor:v6];

    [(CertUIKeyValueView *)self addSubview:self->_verifiedImageView];
  }

  v7 = [(CertUIKeyValueView *)self verifiedLabel];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    verifiedLabel = self->_verifiedLabel;
    self->_verifiedLabel = v9;

    [(UILabel *)self->_verifiedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)self->_verifiedLabel setTextColor:v11];

    v12 = [(CertUIKeyValueView *)self verifiedFont];
    [(UILabel *)self->_verifiedLabel setFont:v12];

    v13 = self->_verifiedLabel;

    [(CertUIKeyValueView *)self addSubview:v13];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(CertUIKeyValueView *)self preferredValueLabelOriginX:a3.width];
  v6 = width - v5;
  v7 = width - (width - v5) + -10.0;
  v8 = [(CertUIKeyValueView *)self keyLabel];
  [v8 sizeThatFits:{v7, 3.40282347e38}];
  v10 = v9;
  v12 = v11;

  v44.origin.x = v7 - v10;
  MaxY = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = v10;
  v44.size.height = v12;
  v45 = CGRectIntegral(v44);
  x = v45.origin.x;
  y = v45.origin.y;
  v16 = v45.size.width;
  height = v45.size.height;
  if (CGRectGetMaxY(v45) > 0.0)
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = v16;
    v46.size.height = height;
    MaxY = CGRectGetMaxY(v46);
  }

  v18 = [(CertUIKeyValueView *)self valueLabel];
  [v18 sizeThatFits:{v6, 3.40282347e38}];
  v20 = v19;
  v22 = v21;

  [(CertUIKeyValueView *)self preferredValueLabelOriginX];
  v47.origin.y = 0.0;
  v47.size.width = v20;
  v47.size.height = v22;
  v48 = CGRectIntegral(v47);
  v23 = v48.origin.x;
  v24 = v48.origin.y;
  v25 = v48.size.width;
  v26 = v48.size.height;
  if (CGRectGetMaxY(v48) > MaxY)
  {
    v49.origin.x = v23;
    v49.origin.y = v24;
    v49.size.width = v25;
    v49.size.height = v26;
    MaxY = CGRectGetMaxY(v49);
  }

  v50.origin.x = v23;
  v50.origin.y = v24;
  v50.size.width = v25;
  v50.size.height = v26;
  v27 = CGRectGetMaxY(v50);
  v28 = [(CertUIKeyValueView *)self valueLabel];
  v29 = [v28 text];
  v30 = [v29 length];

  v31 = [(CertUIKeyValueView *)self verifiedLabel];

  if (v31)
  {
    if (v30)
    {
      v27 = v27 + 5.0;
    }

    v32 = [(CertUIKeyValueView *)self verifiedLabel];
    [v32 sizeThatFits:{v6, 3.40282347e38}];
    v34 = v33;
    v36 = v35;

    [(CertUIKeyValueView *)self preferredValueLabelOriginX];
    v51.origin.y = v27;
    v51.size.width = v34;
    v51.size.height = v36;
    v52 = CGRectIntegral(v51);
    v37 = v52.origin.x;
    v38 = v52.origin.y;
    v39 = v52.size.width;
    v40 = v52.size.height;
    if (CGRectGetMaxY(v52) > MaxY)
    {
      v53.origin.x = v37;
      v53.origin.y = v38;
      v53.size.width = v39;
      v53.size.height = v40;
      MaxY = CGRectGetMaxY(v53);
    }
  }

  v41 = width;
  v42 = MaxY;
  result.height = v42;
  result.width = v41;
  return result;
}

- (void)setItemDetail:(id)a3
{
  v10 = a3;
  v4 = [v10 detailTitle];
  v5 = [v10 detail];
  [(CertUIKeyValueView *)self setKey:v4 value:v5];

  v6 = [v10 detailHighlightColor];
  [(CertUIKeyValueView *)self setHighlightTextColor:v6];

  if ([v10 showCheckmarkView])
  {
    v7 = [v10 checkmarkText];
    v8 = [v10 checkmarkHighlightColor];
    -[CertUIKeyValueView setCheckmarkLabelText:checkmarkLabelColor:showCheckmark:](self, "setCheckmarkLabelText:checkmarkLabelColor:showCheckmark:", v7, v8, [v10 showCheckmark]);
  }

  else
  {
    v9 = [(CertUIKeyValueView *)self verifiedLabel];
    [v9 setText:0];

    v7 = [(CertUIKeyValueView *)self verifiedImageView];
    [v7 setImage:0];
  }

  [(CertUIKeyValueView *)self setNeedsLayout];
}

- (void)setKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CertUIKeyValueView *)self keyLabel];
  [v8 setText:v7];

  v9 = [(CertUIKeyValueView *)self valueLabel];
  [v9 setText:v6];

  [(CertUIKeyValueView *)self setNeedsLayout];
}

- (void)setHighlightTextColor:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CertUIKeyValueView *)self keyLabel];
    [v5 setTextColor:v4];

    v6 = [(CertUIKeyValueView *)self valueLabel];
    [v6 setTextColor:v4];
  }
}

- (void)setCheckmarkLabelText:(id)a3 checkmarkLabelColor:(id)a4 showCheckmark:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(CertUIKeyValueView *)self _createVerifiedComponentsIfNeeded];
  if (v5)
  {
    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 imageNamed:@"VerifiedCheckmark" inBundle:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CertUIKeyValueView *)self verifiedLabel];
  [v13 setText:v9];

  v14 = [(CertUIKeyValueView *)self verifiedLabel];
  [v14 setTextColor:v8];

  v16 = [v12 imageWithRenderingMode:2];

  v15 = [(CertUIKeyValueView *)self verifiedImageView];
  [v15 setImage:v16];

  [(CertUIKeyValueView *)self setNeedsLayout];
}

- (void)setPreferredValueLabelOriginX:(double)a3
{
  if (a3 >= 0.0 && self->_preferredValueLabelOriginX != a3)
  {
    self->_preferredValueLabelOriginX = a3;
    [(CertUIKeyValueView *)self setNeedsLayout];
  }
}

- (id)titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)detailFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)verifiedFont
{
  v2 = [(CertUIKeyValueView *)self detailFont];
  v3 = [v2 fontDescriptor];

  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

@end