@interface DMCProfileKeyValueView
+ (double)defaultPreferredValueLabelOriginX;
- (CGSize)sizeThatFits:(CGSize)fits;
- (DMCProfileKeyValueView)initWithFrame:(CGRect)frame;
- (UILabel)verifiedLabel;
- (double)desiredValueLabelOriginXForSize:(CGSize)size;
- (id)_captionFontBold:(BOOL)bold;
- (void)layoutSubviews;
- (void)setItemDetail:(id)detail;
- (void)setKey:(id)key value:(id)value;
- (void)setPreferredValueLabelOriginX:(double)x;
@end

@implementation DMCProfileKeyValueView

+ (double)defaultPreferredValueLabelOriginX
{
  result = *&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX;
  if (*&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX < 0.0)
  {
    v3 = +[DMCIconFactory gearIcon];
    [v3 size];
    if (v4 > 0.0)
    {
      [v3 size];
      *&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX = v5 + 24.0;
    }

    return *&defaultPreferredValueLabelOriginX_defaultPreferredValueLabelOriginX;
  }

  return result;
}

- (DMCProfileKeyValueView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = DMCProfileKeyValueView;
  v3 = [(DMCProfileKeyValueView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    dMCProfileSecondaryLabelColor = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
    [(UILabel *)v3->_keyLabel setTextColor:dMCProfileSecondaryLabelColor];

    [(UILabel *)v3->_keyLabel setTextAlignment:2];
    v12 = [(DMCProfileKeyValueView *)v3 _captionFontBold:0];
    [(UILabel *)v3->_keyLabel setFont:v12];

    [(UILabel *)v3->_keyLabel setNumberOfLines:0];
    [(DMCProfileKeyValueView *)v3 addSubview:v3->_keyLabel];
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v13;

    [(UILabel *)v3->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(DMCProfileKeyValueView *)v3 _captionFontBold:0];
    [(UILabel *)v3->_valueLabel setFont:v15];

    [(UILabel *)v3->_valueLabel setNumberOfLines:0];
    [(DMCProfileKeyValueView *)v3 addSubview:v3->_valueLabel];
    +[DMCProfileKeyValueView defaultPreferredValueLabelOriginX];
    v3->_preferredValueLabelOriginX = v16;
  }

  return v3;
}

- (void)layoutSubviews
{
  v89.receiver = self;
  v89.super_class = DMCProfileKeyValueView;
  [(DMCProfileKeyValueView *)&v89 layoutSubviews];
  [(DMCProfileKeyValueView *)self frame];
  v4 = v3;
  [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
  v6 = v4 - v5;
  [(DMCProfileKeyValueView *)self frame];
  v8 = v7 - v6 + -10.0;
  keyLabel = [(DMCProfileKeyValueView *)self keyLabel];
  [keyLabel sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection])
  {
    [(DMCProfileKeyValueView *)self frame];
    v16 = v15 - v11 + -10.0;
  }

  else
  {
    v16 = v8 - v11;
  }

  v17 = 0;
  v18 = v11;
  v19 = v13;
  v90 = CGRectIntegral(*&v16);
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  keyLabel2 = [(DMCProfileKeyValueView *)self keyLabel];
  [keyLabel2 setFrame:{x, y, width, height}];

  valueLabel = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel sizeThatFits:{v6, 3.40282347e38}];
  v27 = v26;
  v29 = v28;

  v87 = v6;
  if ([*v14 userInterfaceLayoutDirection])
  {
    [(DMCProfileKeyValueView *)self frame];
    v31 = v30;
    [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
    v33 = v31 - v32 - v27;
  }

  else
  {
    [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
    v33 = v34;
  }

  v91.origin.y = 0.0;
  v91.origin.x = v33;
  v91.size.width = v27;
  v91.size.height = v29;
  v92 = CGRectIntegral(v91);
  v35 = v92.origin.x;
  v36 = v92.origin.y;
  v37 = v92.size.width;
  v38 = v92.size.height;
  valueLabel2 = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel2 setFrame:{v35, v36, v37, v38}];

  keyLabel3 = [(DMCProfileKeyValueView *)self keyLabel];
  [keyLabel3 _firstLineBaselineFrameOriginY];
  v42 = v41;
  valueLabel3 = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel3 _firstLineBaselineOffsetFromBoundsTop];
  v45 = v42 - v44;

  v93.origin.x = v33;
  v93.origin.y = v45;
  v93.size.width = v27;
  v93.size.height = v29;
  v94 = CGRectIntegral(v93);
  v46 = v94.origin.x;
  v47 = v94.origin.y;
  v48 = v94.size.width;
  v49 = v94.size.height;
  valueLabel4 = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel4 setFrame:{v46, v47, v48, v49}];

  keyLabel4 = [(DMCProfileKeyValueView *)self keyLabel];
  text = [keyLabel4 text];
  v53 = [text length];

  valueLabel5 = [(DMCProfileKeyValueView *)self valueLabel];
  text2 = [valueLabel5 text];
  v56 = [text2 length];

  v95.origin.x = v33;
  v95.origin.y = v45;
  v95.size.width = v27;
  v95.size.height = v29;
  MaxY = CGRectGetMaxY(v95);
  if (v56)
  {
    v58 = MaxY + 5.0;
  }

  else
  {
    v58 = MaxY;
  }

  v59 = [(DMCProfileKeyValueView *)self verifiedLabel:0x47EFFFFFE0000000];

  if (v59)
  {
    verifiedLabel = [(DMCProfileKeyValueView *)self verifiedLabel];
    [verifiedLabel sizeThatFits:{v88, v86}];
    v62 = v61;
    v64 = v63;

    if ([*v14 userInterfaceLayoutDirection])
    {
      [(DMCProfileKeyValueView *)self frame];
      v66 = v65;
      [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
      v68 = v66 - v67 - v62;
    }

    else
    {
      [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
      v68 = v69;
    }

    v96.origin.x = v68;
    v96.origin.y = v58;
    v96.size.width = v62;
    v96.size.height = v64;
    v97 = CGRectIntegral(v96);
    v70 = v97.origin.x;
    v71 = v97.origin.y;
    v72 = v97.size.width;
    v73 = v97.size.height;
    verifiedLabel2 = [(DMCProfileKeyValueView *)self verifiedLabel];
    [verifiedLabel2 setFrame:{v70, v71, v72, v73}];

    if (!v56)
    {
      if (v53)
      {
        keyLabel5 = [(DMCProfileKeyValueView *)self keyLabel];
        [keyLabel5 _firstLineBaselineFrameOriginY];
        v77 = v76;
        verifiedLabel3 = [(DMCProfileKeyValueView *)self verifiedLabel];
        [verifiedLabel3 _firstLineBaselineOffsetFromBoundsTop];
        v80 = v77 - v79;

        v98.origin.x = v68;
        v98.origin.y = v80;
        v98.size.width = v62;
        v98.size.height = v64;
        v99 = CGRectIntegral(v98);
        v81 = v99.origin.x;
        v82 = v99.origin.y;
        v83 = v99.size.width;
        v84 = v99.size.height;
        verifiedLabel4 = [(DMCProfileKeyValueView *)self verifiedLabel];
        [verifiedLabel4 setFrame:{v81, v82, v83, v84}];
      }
    }
  }
}

- (UILabel)verifiedLabel
{
  verifiedLabel = self->_verifiedLabel;
  if (!verifiedLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_verifiedLabel;
    self->_verifiedLabel = v5;

    [(UILabel *)self->_verifiedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(DMCProfileKeyValueView *)self _captionFontBold:0];
    [(UILabel *)self->_verifiedLabel setFont:v7];

    [(DMCProfileKeyValueView *)self addSubview:self->_verifiedLabel];
    verifiedLabel = self->_verifiedLabel;
  }

  return verifiedLabel;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(DMCProfileKeyValueView *)self preferredValueLabelOriginX:fits.width];
  v6 = width - v5;
  v7 = width - (width - v5) + -10.0;
  keyLabel = [(DMCProfileKeyValueView *)self keyLabel];
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

  valueLabel = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel sizeThatFits:{v6, 3.40282347e38}];
  v20 = v19;
  v22 = v21;

  [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
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
  valueLabel2 = [(DMCProfileKeyValueView *)self valueLabel];
  text = [valueLabel2 text];
  v30 = [text length];

  verifiedLabel = [(DMCProfileKeyValueView *)self verifiedLabel];

  if (verifiedLabel)
  {
    if (v30)
    {
      v27 = v27 + 5.0;
    }

    verifiedLabel2 = [(DMCProfileKeyValueView *)self verifiedLabel];
    [verifiedLabel2 sizeThatFits:{v6, 3.40282347e38}];
    v34 = v33;
    v36 = v35;

    [(DMCProfileKeyValueView *)self preferredValueLabelOriginX];
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

- (double)desiredValueLabelOriginXForSize:(CGSize)size
{
  v3 = (size.width + -10.0) * 0.65;
  v4 = size.width - roundf(v3) + -10.0;
  keyLabel = [(DMCProfileKeyValueView *)self keyLabel];
  [keyLabel sizeThatFits:{v4, 3.40282347e38}];
  v7 = v6;

  return v7 + 10.0;
}

- (void)setKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  keyLabel = [(DMCProfileKeyValueView *)self keyLabel];
  [keyLabel setText:keyCopy];

  valueLabel = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel setText:valueCopy];

  [(DMCProfileKeyValueView *)self setNeedsLayout];
}

- (void)setItemDetail:(id)detail
{
  detailCopy = detail;
  title = [detailCopy title];
  keyLabel = [(DMCProfileKeyValueView *)self keyLabel];
  [keyLabel setText:title];

  detail = [detailCopy detail];
  valueLabel = [(DMCProfileKeyValueView *)self valueLabel];
  [valueLabel setText:detail];

  trustText = [detailCopy trustText];

  verifiedLabel = [(DMCProfileKeyValueView *)self verifiedLabel];
  [verifiedLabel setAttributedText:trustText];

  [(DMCProfileKeyValueView *)self setNeedsLayout];
}

- (void)setPreferredValueLabelOriginX:(double)x
{
  if (x >= 0.0 && self->_preferredValueLabelOriginX != x)
  {
    self->_preferredValueLabelOriginX = x;
    [(DMCProfileKeyValueView *)self setNeedsLayout];
  }
}

- (id)_captionFontBold:(BOOL)bold
{
  boldCopy = bold;
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v5 = v4;
  if (boldCopy)
  {
    v6 = [v4 fontDescriptorWithSymbolicTraits:2];

    v5 = v6;
  }

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];

  return v7;
}

@end