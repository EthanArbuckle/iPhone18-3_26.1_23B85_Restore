@interface HULegibilityLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (HULegibilityLabel)initWithCoder:(id)a3;
- (HULegibilityLabel)initWithFrame:(CGRect)a3;
- (HULegibilityLabel)initWithSettings:(id)a3 strength:(double)a4;
- (HULegibilityLabel)initWithSettings:(id)a3 strength:(double)a4 text:(id)a5 font:(id)a6 options:(int64_t)a7;
- (UIColor)textColor;
- (UIEdgeInsets)characterOverflowInsets;
- (double)firstBaselineOffsetFromBottom;
- (void)_updateLabelForLegibilitySettings;
- (void)_updateLegibilityView;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setMinimumScaleFactor:(double)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setOptions:(int64_t)a3;
- (void)setStrength:(double)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation HULegibilityLabel

- (HULegibilityLabel)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:{0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v5 = [(HULegibilityLabel *)self initWithSettings:v4 strength:*MEMORY[0x277D774E0]];

  return v5;
}

- (HULegibilityLabel)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HULegibilityLabel.m" lineNumber:52 description:@"Not supported"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(HULegibilityLabel *)self initWithFrame:v6, v7, v8, v9];
}

- (HULegibilityLabel)initWithSettings:(id)a3 strength:(double)a4
{
  v6 = MEMORY[0x277D74300];
  v7 = a3;
  [v6 systemFontSize];
  v8 = [v6 systemFontOfSize:?];
  v9 = [(HULegibilityLabel *)self initWithSettings:v7 strength:0 text:v8 font:a4];

  return v9;
}

- (HULegibilityLabel)initWithSettings:(id)a3 strength:(double)a4 text:(id)a5 font:(id)a6 options:(int64_t)a7
{
  v74[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v72.receiver = self;
  v72.super_class = HULegibilityLabel;
  v16 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [(HULegibilityLabel *)&v72 initWithFrame:*MEMORY[0x277CBF3A0], v17, v18, v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_legibilitySettings, a3);
    v21->_strength = a4;
    v22 = [v14 copy];
    text = v21->_text;
    v21->_text = v22;

    objc_storeStrong(&v21->_font, a6);
    v21->_options = a7;
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v16, v17, v18, v19}];
    v71 = v13;
    lookasideLabel = v21->_lookasideLabel;
    v21->_lookasideLabel = v24;

    [(UILabel *)v21->_lookasideLabel setTextAlignment:1];
    [(UILabel *)v21->_lookasideLabel setLineBreakMode:5];
    [(UILabel *)v21->_lookasideLabel setClipsToBounds:0];
    [(UILabel *)v21->_lookasideLabel setHidden:1];
    [(UILabel *)v21->_lookasideLabel setText:v21->_text];
    [(UILabel *)v21->_lookasideLabel setFont:v21->_font];
    [(UILabel *)v21->_lookasideLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HULegibilityLabel *)v21 addSubview:v21->_lookasideLabel];
    v57 = MEMORY[0x277CCAAD0];
    v67 = [(UILabel *)v21->_lookasideLabel topAnchor];
    v65 = [(HULegibilityLabel *)v21 topAnchor];
    v63 = [v67 constraintEqualToAnchor:v65];
    v74[0] = v63;
    v61 = [(UILabel *)v21->_lookasideLabel leadingAnchor];
    v59 = [(HULegibilityLabel *)v21 leadingAnchor];
    [v61 constraintEqualToAnchor:v59];
    v26 = v69 = v15;
    v74[1] = v26;
    v27 = [(UILabel *)v21->_lookasideLabel trailingAnchor];
    v28 = [(HULegibilityLabel *)v21 trailingAnchor];
    [v27 constraintEqualToAnchor:v28];
    v29 = v70 = v14;
    v74[2] = v29;
    v30 = [(UILabel *)v21->_lookasideLabel heightAnchor];
    v31 = [(HULegibilityLabel *)v21 heightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v74[3] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v57 activateConstraints:v33];

    v34 = objc_alloc_init(MEMORY[0x277D756D0]);
    firstBaselineLayoutGuide = v21->_firstBaselineLayoutGuide;
    v21->_firstBaselineLayoutGuide = v34;

    [(HULegibilityLabel *)v21 addLayoutGuide:v21->_firstBaselineLayoutGuide];
    v36 = objc_alloc_init(MEMORY[0x277D756D0]);
    lastBaselineLayoutGuide = v21->_lastBaselineLayoutGuide;
    v21->_lastBaselineLayoutGuide = v36;

    [(HULegibilityLabel *)v21 addLayoutGuide:v21->_lastBaselineLayoutGuide];
    v54 = MEMORY[0x277CCAAD0];
    v68 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide topAnchor];
    v66 = [(UILabel *)v21->_lookasideLabel firstBaselineAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v73[0] = v64;
    v62 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide heightAnchor];
    v60 = [v62 constraintEqualToConstant:0.0];
    v73[1] = v60;
    v58 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide leadingAnchor];
    v56 = [(HULegibilityLabel *)v21 leadingAnchor];
    v55 = [v58 constraintEqualToAnchor:v56];
    v73[2] = v55;
    v53 = [(UILayoutGuide *)v21->_firstBaselineLayoutGuide trailingAnchor];
    v52 = [(HULegibilityLabel *)v21 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v73[3] = v51;
    v50 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide topAnchor];
    v49 = [(UILabel *)v21->_lookasideLabel lastBaselineAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v73[4] = v48;
    v38 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide heightAnchor];
    v39 = [v38 constraintEqualToConstant:0.0];
    v73[5] = v39;
    v40 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide leadingAnchor];
    v41 = [(HULegibilityLabel *)v21 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v73[6] = v42;
    v43 = [(UILayoutGuide *)v21->_lastBaselineLayoutGuide trailingAnchor];
    v44 = [(HULegibilityLabel *)v21 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    v73[7] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:8];
    [v54 activateConstraints:v46];

    v15 = v69;
    v14 = v70;

    v13 = v71;
    [(HULegibilityLabel *)v21 _markOurselfDirty];
  }

  return v21;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  attributedText = self->_attributedText;
  if (attributedText != v4)
  {
    v9 = v4;
    v6 = [(NSAttributedString *)attributedText isEqualToAttributedString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedText;
      self->_attributedText = v7;

      [(UILabel *)self->_lookasideLabel setAttributedText:self->_attributedText];
      [(HULegibilityLabel *)self _markOurselfDirty];
      v4 = v9;
    }
  }
}

- (void)setText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [v6 copy];
    text = self->_text;
    self->_text = v4;

    [(UILabel *)self->_lookasideLabel setText:self->_text];
    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (UIColor)textColor
{
  textColorOverride = self->_textColorOverride;
  if (textColorOverride)
  {
    v3 = textColorOverride;
  }

  else
  {
    v3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  }

  return v3;
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_textColorOverride isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_textColorOverride, a3);
    [(UILabel *)self->_lookasideLabel setTextColor:self->_textColorOverride];
    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (self->_font != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_font, a3);
    [(UILabel *)self->_lookasideLabel setFont:v6];
    [(HULegibilityLabel *)self _markOurselfDirty];
    v5 = v6;
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if ([(UILabel *)self->_lookasideLabel textAlignment]!= a3)
  {
    [(UILabel *)self->_lookasideLabel setTextAlignment:a3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setLineBreakMode:(int64_t)a3
{
  if ([(UILabel *)self->_lookasideLabel lineBreakMode]!= a3)
  {
    [(UILabel *)self->_lookasideLabel setLineBreakMode:a3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  if ([(UILabel *)self->_lookasideLabel adjustsFontForContentSizeCategory]!= a3)
  {
    [(UILabel *)self->_lookasideLabel setAdjustsFontForContentSizeCategory:v3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setNumberOfLines:(int64_t)a3
{
  if ([(UILabel *)self->_lookasideLabel numberOfLines]!= a3)
  {
    [(UILabel *)self->_lookasideLabel setNumberOfLines:a3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v3 = a3;
  if ([(UILabel *)self->_lookasideLabel adjustsFontSizeToFitWidth]!= a3)
  {
    [(UILabel *)self->_lookasideLabel setAdjustsFontSizeToFitWidth:v3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setMinimumScaleFactor:(double)a3
{
  [(UILabel *)self->_lookasideLabel minimumScaleFactor];
  if (v5 != a3)
  {
    [(UILabel *)self->_lookasideLabel setMinimumScaleFactor:a3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setOptions:(int64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
    [(_UILegibilityView *)self->_legibilityView setOptions:?];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (double)firstBaselineOffsetFromBottom
{
  [(HULegibilityLabel *)self bounds];
  Height = CGRectGetHeight(v6);
  [(UILabel *)self->_lookasideLabel effectiveFirstBaselineOffsetFromTop];
  return Height - v4;
}

- (UIEdgeInsets)characterOverflowInsets
{
  [(UILabel *)self->_lookasideLabel _contentInsetsFromFonts];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(HULegibilityLabel *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = HULegibilityLabel;
  [(HULegibilityLabel *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(HULegibilityLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = HULegibilityLabel;
  [(HULegibilityLabel *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_lookasideLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HULegibilityLabel;
  [(HULegibilityLabel *)&v3 layoutSubviews];
  if (self->_isDirty)
  {
    [(HULegibilityLabel *)self _updateLegibilityView];
    self->_isDirty = 0;
  }
}

- (void)setStrength:(double)a3
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_strength = a3;
    [(_UILegibilityView *)self->_legibilityView setStrength:a3];

    [(HULegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);
  v5 = a3;
  [(_UILegibilityView *)self->_legibilityView updateForChangedSettings:self->_legibilitySettings];
}

- (void)_updateLabelForLegibilitySettings
{
  v3 = [(UILabel *)self->_lookasideLabel attributedText];
  v7 = [v3 mutableCopy];

  v4 = [v7 length];
  v5 = [(HULegibilityLabel *)self textColor];
  v6 = *MEMORY[0x277D740C0];
  if (v5)
  {
    [v7 addAttribute:v6 value:v5 range:{0, v4}];
  }

  else
  {
    [v7 removeAttribute:v6 range:{0, v4}];
  }

  [(UILabel *)self->_lookasideLabel setAttributedText:v7];
}

- (void)_updateLegibilityView
{
  [(HULegibilityLabel *)self _updateLabelForLegibilitySettings];
  [(HULegibilityLabel *)self bounds];
  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;
  CGRectGetWidth(v68);
  if ((NACGFloatIsZero() & 1) == 0)
  {
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    CGRectGetHeight(v69);
    if ((NACGFloatIsZero() & 1) == 0)
    {
      v55 = width;
      v62 = y;
      v64 = x;
      v7 = [(HULegibilityLabel *)self traitCollection];
      [v7 displayScale];
      v61 = v8;

      [(HULegibilityLabel *)self characterOverflowInsets];
      v57 = v9;
      v59 = v10;
      v63 = v11;
      v65 = v12;
      [(UILabel *)self->_lookasideLabel bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [(UILabel *)self->_lookasideLabel textRectForBounds:[(UILabel *)self->_lookasideLabel numberOfLines] limitedToNumberOfLines:v13, v15, v17, v19];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v70.origin.x = v14;
      v70.origin.y = v16;
      v70.size.width = v18;
      v29 = v22;
      v70.size.height = v20;
      v30 = CGRectGetHeight(v70);
      v71.origin.x = v29;
      v71.origin.y = v24;
      v71.size.width = v26;
      v71.size.height = v28;
      v31 = (v30 - CGRectGetHeight(v71)) * 0.5;
      if ([(UILabel *)self->_lookasideLabel adjustsFontSizeToFitWidth])
      {
        v32 = v55;
      }

      else
      {
        v72.origin.x = v29;
        v72.origin.y = v31;
        v72.size.width = v26;
        v72.size.height = v28;
        v54 = v26;
        MinX = CGRectGetMinX(v72);
        v73.origin.x = v64;
        v73.origin.y = v62;
        v32 = v55;
        v73.size.width = v55;
        v73.size.height = height;
        v63 = v63 + MinX - CGRectGetMinX(v73);
        v74.origin.x = v29;
        v74.size.width = v54;
        v74.origin.y = v31;
        v74.size.height = v28;
        MaxX = CGRectGetMaxX(v74);
        v75.origin.x = v64;
        v75.origin.y = v62;
        v75.size.width = v55;
        v75.size.height = height;
        v35 = MaxX - CGRectGetMaxX(v75);
        v26 = v54;
        v65 = v65 - v35;
      }

      v76.origin.x = v29;
      v76.origin.y = v31;
      v76.size.width = v26;
      v76.size.height = v28;
      v56 = v28;
      v36 = v26;
      MinY = CGRectGetMinY(v76);
      v77.origin.x = v64;
      v77.origin.y = v62;
      v77.size.width = v32;
      v77.size.height = height;
      v38 = CGRectGetMinY(v77);
      v78.size.height = v56;
      v39 = v57 + MinY - v38;
      v78.origin.x = v29;
      v78.origin.y = v31;
      v78.size.width = v36;
      v40 = v39;
      MaxY = CGRectGetMaxY(v78);
      v79.origin.x = v64;
      v79.origin.y = v62;
      v79.size.width = v32;
      v79.size.height = height;
      v42 = v59 - (MaxY - CGRectGetMaxY(v79));
      v58 = height - (v40 + v42);
      v60 = v32 - (v65 + v63);
      HUSizeRoundForScale(v60, v58, v61);
      objc_initWeak(&location, self);
      v43 = [MEMORY[0x277D759A0] mainScreen];
      [v43 scale];
      objc_copyWeak(v66, &location);
      v66[1] = *&v40;
      v66[2] = *&v63;
      v66[3] = *&v42;
      v66[4] = *&v65;
      v66[5] = *&v64;
      v66[6] = *&v62;
      v66[7] = *&v32;
      v66[8] = *&height;
      v44 = _UIGraphicsDrawIntoImageContextWithOptions();
      v45 = v40;

      v46 = _os_feature_enabled_impl();
      v47 = v64 + v63;
      legibilityView = self->_legibilityView;
      if (v46)
      {
        if (legibilityView)
        {
          [(_UILegibilityView *)legibilityView setImage:v44 shadowImage:0];
        }

        else
        {
          v52 = [objc_alloc(MEMORY[0x277D760B8]) initWithSettings:self->_legibilitySettings strength:v44 image:0 shadowImage:self->_options options:self->_strength];
          v53 = self->_legibilityView;
          self->_legibilityView = v52;

          [(HULegibilityLabel *)self addSubview:self->_legibilityView];
        }

        [(_UILegibilityView *)self->_legibilityView setFrame:v47, v62 + v45, v60, v58];
      }

      else
      {
        [(_UILegibilityView *)legibilityView removeFromSuperview];
        v49 = self->_legibilityView;
        self->_legibilityView = 0;

        v50 = [objc_alloc(MEMORY[0x277D760B8]) initWithSettings:self->_legibilitySettings strength:v44 image:0 shadowImage:self->_options options:self->_strength];
        v51 = self->_legibilityView;
        self->_legibilityView = v50;

        [(_UILegibilityView *)self->_legibilityView setFrame:v47, v62 + v45, v60, v58];
        [(HULegibilityLabel *)self addSubview:self->_legibilityView];
      }

      objc_destroyWeak(v66);
      objc_destroyWeak(&location);
    }
  }
}

void __42__HULegibilityLabel__updateLegibilityView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, -*(a1 + 48), -*(a1 + 40));
  CGContextGetCTM(&v4, CurrentContext);
  CGContextSetBaseCTM();
  [WeakRetained[51] drawRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
}

@end