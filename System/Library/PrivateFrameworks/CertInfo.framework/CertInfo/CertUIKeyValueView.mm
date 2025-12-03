@interface CertUIKeyValueView
+ (double)defaultPreferredValueLabelOriginX;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CertUIKeyValueView)initWithFrame:(CGRect)frame;
- (id)detailFont;
- (id)titleFont;
- (id)verifiedFont;
- (void)_createVerifiedComponentsIfNeeded;
- (void)layoutSubviews;
- (void)setCheckmarkLabelText:(id)text checkmarkLabelColor:(id)color showCheckmark:(BOOL)checkmark;
- (void)setHighlightTextColor:(id)color;
- (void)setItemDetail:(id)detail;
- (void)setKey:(id)key value:(id)value;
- (void)setPreferredValueLabelOriginX:(double)x;
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

- (CertUIKeyValueView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = CertUIKeyValueView;
  v3 = [(CertUIKeyValueView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v3->_keyLabel setTextColor:systemGrayColor];

    [(UILabel *)v3->_keyLabel setTextAlignment:2];
    titleFont = [(CertUIKeyValueView *)v3 titleFont];
    [(UILabel *)v3->_keyLabel setFont:titleFont];

    [(UILabel *)v3->_keyLabel setNumberOfLines:0];
    [(CertUIKeyValueView *)v3 addSubview:v3->_keyLabel];
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v13;

    [(UILabel *)v3->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    detailFont = [(CertUIKeyValueView *)v3 detailFont];
    [(UILabel *)v3->_valueLabel setFont:detailFont];

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
  keyLabel = [(CertUIKeyValueView *)self keyLabel];
  [keyLabel sizeThatFits:{v8, 3.40282347e38}];
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
  keyLabel2 = [(CertUIKeyValueView *)self keyLabel];
  [keyLabel2 setFrame:{x, y, width, height}];

  valueLabel = [(CertUIKeyValueView *)self valueLabel];
  v89 = v6;
  [valueLabel sizeThatFits:{v6, 3.40282347e38}];
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
  valueLabel2 = [(CertUIKeyValueView *)self valueLabel];
  [valueLabel2 setFrame:{v25, v26, v27, v28}];

  keyLabel3 = [(CertUIKeyValueView *)self keyLabel];
  [keyLabel3 _firstLineBaselineFrameOriginY];
  v32 = v31;
  valueLabel3 = [(CertUIKeyValueView *)self valueLabel];
  [valueLabel3 _firstLineBaselineOffsetFromBoundsTop];
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
  valueLabel4 = [(CertUIKeyValueView *)self valueLabel];
  [valueLabel4 setFrame:{v36, v37, v38, v39}];

  keyLabel4 = [(CertUIKeyValueView *)self keyLabel];
  text = [keyLabel4 text];
  v43 = [text length];

  valueLabel5 = [(CertUIKeyValueView *)self valueLabel];
  text2 = [valueLabel5 text];
  v46 = [text2 length];

  v97.origin.x = v24;
  v97.origin.y = v35;
  v97.size.width = v21;
  v97.size.height = v23;
  MaxY = CGRectGetMaxY(v97);
  verifiedLabel = [(CertUIKeyValueView *)self verifiedLabel];

  if (verifiedLabel)
  {
    v49 = v46 ? MaxY + 5.0 : MaxY;
    verifiedLabel2 = [(CertUIKeyValueView *)self verifiedLabel];
    [verifiedLabel2 sizeThatFits:{v89, 3.40282347e38}];
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
    verifiedLabel3 = [(CertUIKeyValueView *)self verifiedLabel];
    [verifiedLabel3 setFrame:{v56, v57, v58, v59}];

    if (!v46)
    {
      if (v43)
      {
        keyLabel5 = [(CertUIKeyValueView *)self keyLabel];
        [keyLabel5 _firstLineBaselineFrameOriginY];
        v63 = v62;
        verifiedLabel4 = [(CertUIKeyValueView *)self verifiedLabel];
        [verifiedLabel4 _firstLineBaselineOffsetFromBoundsTop];
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
        verifiedLabel5 = [(CertUIKeyValueView *)self verifiedLabel];
        [verifiedLabel5 setFrame:{v67, v68, v69, v70}];
      }
    }
  }

  verifiedImageView = [(CertUIKeyValueView *)self verifiedImageView];

  if (verifiedImageView)
  {
    verifiedImageView2 = [(CertUIKeyValueView *)self verifiedImageView];
    image = [verifiedImageView2 image];
    [image size];
    v76 = v75;
    v78 = v77;

    verifiedLabel6 = [(CertUIKeyValueView *)self verifiedLabel];
    [verifiedLabel6 frame];
    v80 = CGRectGetMaxX(v102) + 8.0;

    verifiedLabel7 = [(CertUIKeyValueView *)self verifiedLabel];
    [verifiedLabel7 _firstLineBaselineFrameOriginY];
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
    verifiedImageView3 = [(CertUIKeyValueView *)self verifiedImageView];
    [verifiedImageView3 setFrame:{v84, v85, v86, v87}];
  }
}

- (void)_createVerifiedComponentsIfNeeded
{
  verifiedImageView = [(CertUIKeyValueView *)self verifiedImageView];

  if (!verifiedImageView)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    verifiedImageView = self->_verifiedImageView;
    self->_verifiedImageView = v4;

    [(UIImageView *)self->_verifiedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    verifiedColor = [(CertUIKeyValueView *)self verifiedColor];
    [(UIImageView *)self->_verifiedImageView setTintColor:verifiedColor];

    [(CertUIKeyValueView *)self addSubview:self->_verifiedImageView];
  }

  verifiedLabel = [(CertUIKeyValueView *)self verifiedLabel];

  if (!verifiedLabel)
  {
    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    verifiedLabel = self->_verifiedLabel;
    self->_verifiedLabel = v9;

    [(UILabel *)self->_verifiedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)self->_verifiedLabel setTextColor:systemRedColor];

    verifiedFont = [(CertUIKeyValueView *)self verifiedFont];
    [(UILabel *)self->_verifiedLabel setFont:verifiedFont];

    v13 = self->_verifiedLabel;

    [(CertUIKeyValueView *)self addSubview:v13];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CertUIKeyValueView *)self preferredValueLabelOriginX:fits.width];
  v6 = width - v5;
  v7 = width - (width - v5) + -10.0;
  keyLabel = [(CertUIKeyValueView *)self keyLabel];
  [keyLabel sizeThatFits:{v7, 3.40282347e38}];
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

  valueLabel = [(CertUIKeyValueView *)self valueLabel];
  [valueLabel sizeThatFits:{v6, 3.40282347e38}];
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
  valueLabel2 = [(CertUIKeyValueView *)self valueLabel];
  text = [valueLabel2 text];
  v30 = [text length];

  verifiedLabel = [(CertUIKeyValueView *)self verifiedLabel];

  if (verifiedLabel)
  {
    if (v30)
    {
      v27 = v27 + 5.0;
    }

    verifiedLabel2 = [(CertUIKeyValueView *)self verifiedLabel];
    [verifiedLabel2 sizeThatFits:{v6, 3.40282347e38}];
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

- (void)setItemDetail:(id)detail
{
  detailCopy = detail;
  detailTitle = [detailCopy detailTitle];
  detail = [detailCopy detail];
  [(CertUIKeyValueView *)self setKey:detailTitle value:detail];

  detailHighlightColor = [detailCopy detailHighlightColor];
  [(CertUIKeyValueView *)self setHighlightTextColor:detailHighlightColor];

  if ([detailCopy showCheckmarkView])
  {
    checkmarkText = [detailCopy checkmarkText];
    checkmarkHighlightColor = [detailCopy checkmarkHighlightColor];
    -[CertUIKeyValueView setCheckmarkLabelText:checkmarkLabelColor:showCheckmark:](self, "setCheckmarkLabelText:checkmarkLabelColor:showCheckmark:", checkmarkText, checkmarkHighlightColor, [detailCopy showCheckmark]);
  }

  else
  {
    verifiedLabel = [(CertUIKeyValueView *)self verifiedLabel];
    [verifiedLabel setText:0];

    checkmarkText = [(CertUIKeyValueView *)self verifiedImageView];
    [checkmarkText setImage:0];
  }

  [(CertUIKeyValueView *)self setNeedsLayout];
}

- (void)setKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  keyLabel = [(CertUIKeyValueView *)self keyLabel];
  [keyLabel setText:keyCopy];

  valueLabel = [(CertUIKeyValueView *)self valueLabel];
  [valueLabel setText:valueCopy];

  [(CertUIKeyValueView *)self setNeedsLayout];
}

- (void)setHighlightTextColor:(id)color
{
  if (color)
  {
    colorCopy = color;
    keyLabel = [(CertUIKeyValueView *)self keyLabel];
    [keyLabel setTextColor:colorCopy];

    valueLabel = [(CertUIKeyValueView *)self valueLabel];
    [valueLabel setTextColor:colorCopy];
  }
}

- (void)setCheckmarkLabelText:(id)text checkmarkLabelColor:(id)color showCheckmark:(BOOL)checkmark
{
  checkmarkCopy = checkmark;
  colorCopy = color;
  textCopy = text;
  [(CertUIKeyValueView *)self _createVerifiedComponentsIfNeeded];
  if (checkmarkCopy)
  {
    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 imageNamed:@"VerifiedCheckmark" inBundle:v11];
  }

  else
  {
    v12 = 0;
  }

  verifiedLabel = [(CertUIKeyValueView *)self verifiedLabel];
  [verifiedLabel setText:textCopy];

  verifiedLabel2 = [(CertUIKeyValueView *)self verifiedLabel];
  [verifiedLabel2 setTextColor:colorCopy];

  v16 = [v12 imageWithRenderingMode:2];

  verifiedImageView = [(CertUIKeyValueView *)self verifiedImageView];
  [verifiedImageView setImage:v16];

  [(CertUIKeyValueView *)self setNeedsLayout];
}

- (void)setPreferredValueLabelOriginX:(double)x
{
  if (x >= 0.0 && self->_preferredValueLabelOriginX != x)
  {
    self->_preferredValueLabelOriginX = x;
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
  detailFont = [(CertUIKeyValueView *)self detailFont];
  fontDescriptor = [detailFont fontDescriptor];

  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

@end