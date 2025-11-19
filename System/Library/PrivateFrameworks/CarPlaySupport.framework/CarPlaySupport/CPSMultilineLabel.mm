@interface CPSMultilineLabel
+ (_NSRange)_rangeOfTrailingWhiteSpace:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_statsForString:(id)a3 inRect:(CGRect)a4;
- (BOOL)_fitsInHeight:(double)a3 numberOfLines:(unint64_t)a4 rect:(CGRect)a5;
- (CGSize)intrinsicContentSize;
- (CPSMultilineLabel)initWithFrame:(CGRect)a3;
- (CPSMultilineLabelDelegate)delegate;
- (__CTFrame)_textFrame:(id)a3 rect:(CGRect)a4;
- (double)_heightForAttributedString:(id)a3 inRect:(CGRect)a4;
- (id)_attributedStringWithSize:(double)a3;
- (id)_attributedTextForRect:(CGRect)a3;
- (id)_ellipsedString:(id)a3 inRect:(CGRect)a4;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (unint64_t)effectiveNumberOfLines;
- (void)_updateBaselines;
- (void)_updateLayout;
- (void)_updateLayoutGuideConstraints;
- (void)drawRect:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)setDebug:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSMultilineLabel

- (void)_updateLayout
{
  v2 = [(CPSMultilineLabel *)self currentConfiguration];
  [(CPSMultilineLabelConfig *)v2 setAttributedText:0];
  MEMORY[0x277D82BD8](v2);
  [(CPSMultilineLabel *)self setNeedsDisplay];
  [(CPSMultilineLabel *)self invalidateIntrinsicContentSize];
  v3 = [(CPSMultilineLabel *)self baselineViewTopAnchor];
  [(NSLayoutConstraint *)v3 setActive:0];
  MEMORY[0x277D82BD8](v3);
  v4 = [(CPSMultilineLabel *)self baselineViewBottomAnchor];
  [(NSLayoutConstraint *)v4 setActive:0];
  MEMORY[0x277D82BD8](v4);
}

- (CGSize)intrinsicContentSize
{
  v25 = self;
  v24 = a2;
  v23 = *MEMORY[0x277D77260];
  v18 = [(CPSMultilineLabel *)self text];
  v19 = [(NSString *)v18 length];
  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    v16 = [(CPSMultilineLabel *)v25 currentConfiguration];
    v17 = [(CPSMultilineLabelConfig *)v16 attributedText];
    v20 = 0;
    if (v17)
    {
      v2 = MEMORY[0x277D82BE0](v17);
    }

    else
    {
      [(CPSMultilineLabel *)v25 bounds];
      CGRectMake();
      v21 = [(CPSMultilineLabel *)v25 _attributedTextForRect:v3, v4, v5, v6];
      v20 = 1;
      v2 = MEMORY[0x277D82BE0](v21);
    }

    v22 = v2;
    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v16);
    v14 = v25;
    v15 = v22;
    [(CPSMultilineLabel *)v25 bounds];
    [(CPSMultilineLabel *)v14 _heightForAttributedString:v15 inRect:v7, v8, v9, v10];
    v23 = v11;
    objc_storeStrong(&v22, 0);
  }

  CGSizeMake_1();
  result.height = v13;
  result.width = v12;
  return result;
}

- (unint64_t)effectiveNumberOfLines
{
  if ([(CPSMultilineLabel *)self numberOfLines])
  {
    return [(CPSMultilineLabel *)self numberOfLines];
  }

  else
  {
    return -1;
  }
}

- (void)_updateBaselines
{
  v15 = [(CPSMultilineLabel *)self baselineViewTopAnchor];
  [(NSLayoutConstraint *)v15 setActive:1];
  MEMORY[0x277D82BD8](v15);
  v16 = [(CPSMultilineLabel *)self baselineViewBottomAnchor];
  [(NSLayoutConstraint *)v16 setActive:1];
  MEMORY[0x277D82BD8](v16);
  v17 = [(CPSMultilineLabel *)self baselineOffsets];
  v18 = [(NSArray *)v17 count];
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    [(CPSMultilineLabel *)self bounds];
    v10 = v2;
    v14 = [(CPSMultilineLabel *)self baselineOffsets];
    v13 = [(NSArray *)v14 firstObject];
    [v13 doubleValue];
    v11 = v10 - v3;
    v12 = [(CPSMultilineLabel *)self baselineViewTopAnchor];
    [(NSLayoutConstraint *)v12 setConstant:v11];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v9 = [(CPSMultilineLabel *)self baselineViewTopAnchor];
    [(NSLayoutConstraint *)v9 setConstant:0.0];
    MEMORY[0x277D82BD8](v9);
  }

  v8 = [(CPSMultilineLabel *)self baselineOffsets];
  v7 = [(NSArray *)v8 lastObject];
  [v7 doubleValue];
  v5 = -v4;
  v6 = [(CPSMultilineLabel *)self baselineViewBottomAnchor];
  [(NSLayoutConstraint *)v6 setConstant:v5];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
}

- (void)_updateLayoutGuideConstraints
{
  v14 = self;
  v13 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 0x7FEFFFFFFFFFFFFFLL;
  v7 = [(CPSMultilineLabel *)self leadingOffsets];
  [(NSArray *)v7 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v7);
  v6 = v9[3];
  [(CPSMultilineLabel *)v14 bounds];
  if (v6 > CGRectGetWidth(v15))
  {
    v9[3] = 0.0;
  }

  v5 = v9[3];
  v4 = [(CPSMultilineLabel *)v14 textLayoutGuideLeadingConstraint];
  [(NSLayoutConstraint *)v4 setConstant:v5];
  MEMORY[0x277D82BD8](v4);
  v3 = -v9[3];
  v2 = [(CPSMultilineLabel *)v14 textLayoutGuideTrailingConstraint];
  [(NSLayoutConstraint *)v2 setConstant:v3];
  MEMORY[0x277D82BD8](v2);
  _Block_object_dispose(&v8, 8);
}

void __50__CPSMultilineLabel__updateLayoutGuideConstraints__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = *(*(a1[4] + 8) + 24);
  [location[0] doubleValue];
  *(*(a1[4] + 8) + 24) = fmin(v4, v2);
  objc_storeStrong(location, 0);
}

- (CPSMultilineLabel)initWithFrame:(CGRect)a3
{
  v56[8] = *MEMORY[0x277D85DE8];
  v55 = a3;
  v53 = a2;
  v54 = 0;
  v52.receiver = self;
  v52.super_class = CPSMultilineLabel;
  v54 = [(CPSMultilineLabel *)&v52 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v54, v54);
  if (v54)
  {
    v3 = objc_opt_new();
    currentConfiguration = v54->_currentConfiguration;
    v54->_currentConfiguration = v3;
    v29 = [MEMORY[0x277D75348] clearColor];
    [(CPSMultilineLabel *)v54 setBackgroundColor:?];
    v5 = [MEMORY[0x277D75348] labelColor];
    textColor = v54->_textColor;
    v54->_textColor = v5;
    MEMORY[0x277D82BD8](textColor);
    v54->_minimumScaleFactor = 1.0;
    v54->_minimumFontSize = -1.79769313e308;
    v54->_lineSpacing = -1.79769313e308;
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    baselineView = v54->_baselineView;
    v54->_baselineView = v8;
    *&v10 = MEMORY[0x277D82BD8](baselineView).n128_u64[0];
    [(UIView *)v54->_baselineView setTranslatesAutoresizingMaskIntoConstraints:0, v10];
    [(CPSMultilineLabel *)v54 addSubview:v54->_baselineView];
    v30 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v54->_baselineView setBackgroundColor:?];
    MEMORY[0x277D82BD8](v30);
    v11 = objc_alloc_init(MEMORY[0x277D756D0]);
    textLayoutGuide = v54->_textLayoutGuide;
    v54->_textLayoutGuide = v11;
    *&v13 = MEMORY[0x277D82BD8](textLayoutGuide).n128_u64[0];
    [(CPSMultilineLabel *)v54 addLayoutGuide:v54->_textLayoutGuide, v13];
    v32 = [(UIView *)v54->_baselineView topAnchor];
    v31 = [(CPSMultilineLabel *)v54 topAnchor];
    v14 = [(NSLayoutYAxisAnchor *)v32 constraintEqualToAnchor:?];
    baselineViewTopAnchor = v54->_baselineViewTopAnchor;
    v54->_baselineViewTopAnchor = v14;
    MEMORY[0x277D82BD8](baselineViewTopAnchor);
    MEMORY[0x277D82BD8](v31);
    *&v16 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v34 = [(UIView *)v54->_baselineView bottomAnchor];
    v33 = [(CPSMultilineLabel *)v54 bottomAnchor];
    v17 = [(NSLayoutYAxisAnchor *)v34 constraintEqualToAnchor:?];
    baselineViewBottomAnchor = v54->_baselineViewBottomAnchor;
    v54->_baselineViewBottomAnchor = v17;
    MEMORY[0x277D82BD8](baselineViewBottomAnchor);
    MEMORY[0x277D82BD8](v33);
    *&v19 = MEMORY[0x277D82BD8](v34).n128_u64[0];
    v36 = [(UILayoutGuide *)v54->_textLayoutGuide leadingAnchor];
    v35 = [(CPSMultilineLabel *)v54 leadingAnchor];
    v20 = [(NSLayoutXAxisAnchor *)v36 constraintEqualToAnchor:?];
    textLayoutGuideLeadingConstraint = v54->_textLayoutGuideLeadingConstraint;
    v54->_textLayoutGuideLeadingConstraint = v20;
    MEMORY[0x277D82BD8](textLayoutGuideLeadingConstraint);
    MEMORY[0x277D82BD8](v35);
    *&v22 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    v38 = [(UILayoutGuide *)v54->_textLayoutGuide trailingAnchor];
    v37 = [(CPSMultilineLabel *)v54 trailingAnchor];
    v23 = [(NSLayoutXAxisAnchor *)v38 constraintEqualToAnchor:?];
    textLayoutGuideTrailingConstraint = v54->_textLayoutGuideTrailingConstraint;
    v54->_textLayoutGuideTrailingConstraint = v23;
    MEMORY[0x277D82BD8](textLayoutGuideTrailingConstraint);
    MEMORY[0x277D82BD8](v37);
    *&v25 = MEMORY[0x277D82BD8](v38).n128_u64[0];
    v39 = MEMORY[0x277CCAAD0];
    v56[0] = v54->_baselineViewTopAnchor;
    v56[1] = v54->_baselineViewBottomAnchor;
    v51 = [(UIView *)v54->_baselineView widthAnchor];
    v50 = [(NSLayoutDimension *)v51 constraintEqualToConstant:0.0];
    v56[2] = v50;
    v49 = [(UIView *)v54->_baselineView leadingAnchor];
    v48 = [(CPSMultilineLabel *)v54 leadingAnchor];
    v47 = [(NSLayoutXAxisAnchor *)v49 constraintEqualToAnchor:?];
    v56[3] = v47;
    v56[4] = v54->_textLayoutGuideLeadingConstraint;
    v56[5] = v54->_textLayoutGuideTrailingConstraint;
    v46 = [(UILayoutGuide *)v54->_textLayoutGuide topAnchor];
    v45 = [(CPSMultilineLabel *)v54 topAnchor];
    v44 = [(NSLayoutYAxisAnchor *)v46 constraintEqualToAnchor:?];
    v56[6] = v44;
    v43 = [(UILayoutGuide *)v54->_textLayoutGuide bottomAnchor];
    v42 = [(CPSMultilineLabel *)v54 bottomAnchor];
    v41 = [(NSLayoutYAxisAnchor *)v43 constraintEqualToAnchor:?];
    v56[7] = v41;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
    [v39 activateConstraints:?];
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    [(CPSMultilineLabel *)v54 setContentHuggingPriority:1 forAxis:?];
    LODWORD(v26) = 1148846080;
    [(CPSMultilineLabel *)v54 setContentHuggingPriority:0 forAxis:v26];
  }

  v28 = MEMORY[0x277D82BE0](v54);
  objc_storeStrong(&v54, 0);
  return v28;
}

- (void)setBounds:(CGRect)a3
{
  v6 = a3;
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSMultilineLabel;
  [(CPSMultilineLabel *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CPSMultilineLabel *)v5 _updateLayout];
}

- (void)drawRect:(CGRect)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v55 = self;
  v54 = a2;
  v38 = [(CPSMultilineLabel *)self text];

  if (v38)
  {
    v52 = [(CPSMultilineLabel *)v55 attributedText];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextClearRect(CurrentContext, v56);
    CGContextSaveGState(CurrentContext);
    if ([(CPSMultilineLabel *)v55 debug])
    {
      v36 = CurrentContext;
      v37 = [MEMORY[0x277D75348] yellowColor];
      v3 = v37;
      CGContextSetFillColorWithColor(CurrentContext, [v37 CGColor]);

      CGContextFillRect(CurrentContext, v56);
    }

    v32 = CurrentContext;
    [(CPSMultilineLabel *)v55 bounds];
    v48 = v4;
    v47 = v5;
    v50 = v6;
    v49 = v7;
    CGContextTranslateCTM(CurrentContext, 0.0, v6);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v46 = [(CPSMultilineLabel *)v55 _textFrame:v52 rect:v56.origin.x, v56.origin.y, v56.size.width, v56.size.height];
    Lines = CTFrameGetLines(v46);
    Count = CFArrayGetCount(Lines);
    v43[4] = &v9;
    v33 = 16 * Count;
    MEMORY[0x28223BE20]();
    v34 = &v9 - v33;
    v43[3] = v8;
    v58 = 0;
    v57 = 0;
    v59 = 0;
    v60 = 0;
    v43[2] = 0;
    v43[1] = 0;
    v62.length = 0;
    v62.location = 0;
    CTFrameGetLineOrigins(v46, v62, (&v9 - v33));
    v35 = 0x277CBE000uLL;
    v43[0] = objc_opt_new();
    v42 = objc_opt_new();
    for (i = 0; i < Count; ++i)
    {
      v27 = v43[0];
      v29 = 0x277CCA000uLL;
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:*&v34[16 * i]];
      [v27 addObject:?];

      v30 = v42;
      v31 = [*(v29 + 2992) numberWithDouble:*&v34[16 * i + 8]];
      [v30 addObject:?];
    }

    [(CPSMultilineLabel *)v55 setBaselineOffsets:v42];
    [(CPSMultilineLabel *)v55 setLeadingOffsets:v43[0]];
    CTFrameDraw(v46, CurrentContext);
    CFRelease(v46);
    CGContextRestoreGState(CurrentContext);
    [(CPSMultilineLabel *)v55 _updateBaselines];
    [(CPSMultilineLabel *)v55 _updateLayoutGuideConstraints];
    v14 = [(CPSMultilineLabel *)v55 currentConfiguration];
    v40 = [(CPSMultilineLabelConfig *)v14 copy];

    v15 = Count;
    v16 = [(CPSMultilineLabel *)v55 currentConfiguration];
    [(CPSMultilineLabelConfig *)v16 setLineCount:v15];

    location = [v52 attributesAtIndex:0 effectiveRange:?];
    v18 = [location objectForKeyedSubscript:*MEMORY[0x277CC4838]];
    v17 = [(CPSMultilineLabel *)v55 currentConfiguration];
    [(CPSMultilineLabelConfig *)v17 setFont:v18];

    v20 = [v52 string];
    v19 = [(CPSMultilineLabel *)v55 currentConfiguration];
    [(CPSMultilineLabelConfig *)v19 setText:v20];

    v21 = v52;
    v22 = [(CPSMultilineLabel *)v55 currentConfiguration];
    [(CPSMultilineLabelConfig *)v22 setAttributedText:v21];

    v25 = [(CPSMultilineLabel *)v55 currentConfiguration];
    v24 = [(CPSMultilineLabelConfig *)v25 attributedText];
    v23 = [v40 attributedText];
    v26 = [(NSAttributedString *)v24 isEqualToAttributedString:?];

    if (!v26)
    {
      [(CPSMultilineLabel *)v55 invalidateIntrinsicContentSize];
      [(CPSMultilineLabel *)v55 setNeedsLayout];
    }

    v11 = v40;
    v12 = [(CPSMultilineLabel *)v55 currentConfiguration];
    v13 = [v11 isEqualToLabelConfig:?];

    if ((v13 & 1) == 0)
    {
      v10 = [(CPSMultilineLabel *)v55 delegate];
      [(CPSMultilineLabelDelegate *)v10 labelDidUpdateCurrentConfig:v55];
    }

    v9 = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v40, v9);
    objc_storeStrong(&v42, v9);
    objc_storeStrong(v43, v9);
    objc_storeStrong(&v52, v9);
  }

  else
  {
    v53 = UIGraphicsGetCurrentContext();
    CGContextClearRect(v53, v56);
    CGContextRestoreGState(v53);
  }
}

- (void)setText:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(NSString *)v7->_text isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    text = v7->_text;
    v7->_text = v3;
    *&v5 = MEMORY[0x277D82BD8](text).n128_u64[0];
    [(CPSMultilineLabel *)v7 _updateLayout];
  }

  objc_storeStrong(location, 0);
}

- (void)setTextColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(UIColor *)v4->_textColor isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&v4->_textColor, location[0]);
    [(CPSMultilineLabel *)v4 _updateLayout];
  }

  objc_storeStrong(location, 0);
}

- (void)setDebug:(BOOL)a3
{
  v50[8] = *MEMORY[0x277D85DE8];
  if (self->_debug != a3)
  {
    self->_debug = a3;
    if (a3)
    {
      v3 = objc_alloc(MEMORY[0x277D75D18]);
      v11 = MEMORY[0x277CBF3A0];
      v6 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(CPSMultilineLabel *)self setDebugFirstBaselineView:?];
      v7 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(CPSMultilineLabel *)self addSubview:?];
      v10 = [MEMORY[0x277D75348] greenColor];
      v9 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(UIView *)v9 setBackgroundColor:v10];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v11, v11[1], v11[2], v11[3]}];
      [(CPSMultilineLabel *)self setDebugLastBaselineView:?];
      v13 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(UIView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(CPSMultilineLabel *)self addSubview:?];
      v16 = [MEMORY[0x277D75348] redColor];
      v15 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(UIView *)v15 setBackgroundColor:v16];
      MEMORY[0x277D82BD8](v15);
      [(CPSMultilineLabel *)self setNeedsDisplay];
      v17 = MEMORY[0x277CCAAD0];
      v48 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      v47 = [(UIView *)v48 leadingAnchor];
      v46 = [(CPSMultilineLabel *)self leadingAnchor];
      v45 = [NSLayoutXAxisAnchor constraintEqualToAnchor:v47 constant:"constraintEqualToAnchor:constant:"];
      v50[0] = v45;
      v44 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      v43 = [(UIView *)v44 trailingAnchor];
      v42 = [(CPSMultilineLabel *)self centerXAnchor];
      v41 = [NSLayoutXAxisAnchor constraintEqualToAnchor:v43 constant:"constraintEqualToAnchor:constant:"];
      v50[1] = v41;
      v40 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      v39 = [(UIView *)v40 heightAnchor];
      v38 = [(NSLayoutDimension *)v39 constraintEqualToConstant:?];
      v50[2] = v38;
      v37 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      v36 = [(UIView *)v37 topAnchor];
      v35 = [(CPSMultilineLabel *)self firstBaselineAnchor];
      v34 = [(NSLayoutYAxisAnchor *)v36 constraintEqualToAnchor:?];
      v50[3] = v34;
      v33 = [(CPSMultilineLabel *)self debugLastBaselineView];
      v32 = [(UIView *)v33 leadingAnchor];
      v31 = [(CPSMultilineLabel *)self centerXAnchor];
      v30 = [(NSLayoutXAxisAnchor *)v32 constraintEqualToAnchor:-5.0 constant:?];
      v50[4] = v30;
      v29 = [(CPSMultilineLabel *)self debugLastBaselineView];
      v28 = [(UIView *)v29 trailingAnchor];
      v27 = [(CPSMultilineLabel *)self trailingAnchor];
      v26 = [(NSLayoutXAxisAnchor *)v28 constraintEqualToAnchor:5.0 constant:?];
      v50[5] = v26;
      v25 = [(CPSMultilineLabel *)self debugLastBaselineView];
      v24 = [(UIView *)v25 heightAnchor];
      v23 = [(NSLayoutDimension *)v24 constraintEqualToConstant:1.0];
      v50[6] = v23;
      v22 = [(CPSMultilineLabel *)self debugLastBaselineView];
      v21 = [(UIView *)v22 topAnchor];
      v20 = [(CPSMultilineLabel *)self lastBaselineAnchor];
      v19 = [(NSLayoutYAxisAnchor *)v21 constraintEqualToAnchor:?];
      v50[7] = v19;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
      [v17 activateConstraints:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
    }

    else
    {
      v4 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(UIView *)v4 removeFromSuperview];
      v5 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(UIView *)v5 removeFromSuperview];
      [(CPSMultilineLabel *)self setDebugFirstBaselineView:MEMORY[0x277D82BD8](v5).n128_f64[0]];
      [(CPSMultilineLabel *)self setDebugLastBaselineView:0];
    }
  }
}

- (id)firstBaselineAnchor
{
  v3 = [(CPSMultilineLabel *)self baselineView];
  v4 = [(UIView *)v3 topAnchor];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)lastBaselineAnchor
{
  v3 = [(CPSMultilineLabel *)self baselineView];
  v4 = [(UIView *)v3 bottomAnchor];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSMultilineLabel;
  [(CPSMultilineLabel *)&v3 traitCollectionDidChange:location[0]];
  [(CPSMultilineLabel *)v5 setNeedsDisplay];
  [(CPSMultilineLabel *)v5 setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (id)_attributedTextForRect:(CGRect)a3
{
  v26 = a3;
  v25 = self;
  v24[1] = a2;
  v24[0] = [(CPSMultilineLabel *)self _attributedStringWithSize:0.0];
  [(CPSMultilineLabel *)v25 _heightForAttributedString:v24[0] inRect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  v23 = v3;
  [(CPSMultilineLabel *)v25 _statsForString:v24[0] inRect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  v22 = v4;
  [(CPSMultilineLabel *)v25 minimumScaleFactor];
  if (v5 >= 1.0)
  {
    [(CPSMultilineLabel *)v25 minimumFontSize];
    if (v12 > -1.79769313e308 && ![(CPSMultilineLabel *)v25 _fitsInHeight:v22 numberOfLines:v23 rect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height])
    {
      [(CPSMultilineLabel *)v25 minimumFontSize];
      v13 = [(CPSMultilineLabel *)v25 _attributedStringWithSize:?];
      v14 = v24[0];
      v24[0] = v13;
      MEMORY[0x277D82BD8](v14);
    }
  }

  else
  {
    v18 = [(CPSMultilineLabel *)v25 font];
    [(UIFont *)v18 pointSize];
    v19 = v6;
    MEMORY[0x277D82BD8](v18);
    v21 = v19;
    [(CPSMultilineLabel *)v25 minimumScaleFactor];
    v20 = v19 * v7;
    while (1)
    {
      v17 = 0;
      if (![(CPSMultilineLabel *)v25 _fitsInHeight:v22 numberOfLines:v23 rect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height])
      {
        v17 = v21 >= v20;
      }

      if (!v17)
      {
        break;
      }

      v21 = v21 - 0.100000001;
      v8 = [(CPSMultilineLabel *)v25 _attributedStringWithSize:v21];
      v9 = v24[0];
      v24[0] = v8;
      MEMORY[0x277D82BD8](v9);
      [(CPSMultilineLabel *)v25 _heightForAttributedString:v24[0] inRect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
      v23 = v10;
      [(CPSMultilineLabel *)v25 _statsForString:v24[0] inRect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
      v22 = v11;
    }
  }

  v16 = [(CPSMultilineLabel *)v25 _ellipsedString:v24[0] inRect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  objc_storeStrong(v24, 0);

  return v16;
}

- (id)_attributedStringWithSize:(double)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v60 = self;
  v59 = a2;
  v58 = a3;
  v57 = objc_opt_new();
  v35 = [(CPSMultilineLabel *)v60 font];
  v40 = 0;
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v35, v58, 0, 0, 0);

  v56[1] = CopyWithSymbolicTraits;
  v62 = CopyWithSymbolicTraits;
  v37 = CopyWithSymbolicTraits;
  v3 = CopyWithSymbolicTraits;
  v38 = CopyWithSymbolicTraits;
  [v57 setObject:? forKeyedSubscript:?];

  v39 = [(CPSMultilineLabel *)v60 textColor];
  [v57 setObject:? forKeyedSubscript:?];

  v56[0] = objc_opt_new();
  v55 = NSTextAlignmentToCTTextAlignment([(CPSMultilineLabel *)v60 textAlignment]);
  v53 = 0;
  v41 = 0;
  if (v55 == kCTTextAlignmentNatural)
  {
    v54 = [(CPSMultilineLabel *)v60 traitCollection];
    v53 = 1;
    v41 = [v54 layoutDirection] == 1;
  }

  v34 = v41;
  if (v53 == 1)
  {
  }

  if (v34)
  {
    v55 = kCTTextAlignmentRight;
  }

  v52[0] = 0;
  v52[1] = 1;
  v52[2] = &v55;
  v32 = v56[0];
  v33 = [MEMORY[0x277CCAE60] valueWithBytes:v52 objCType:"{CTParagraphStyleSetting=IQ^v}"];
  [v32 addObject:?];

  [(CPSMultilineLabel *)v60 lineSpacing];
  if (v4 > -1.79769313e308)
  {
    [(CPSMultilineLabel *)v60 lineSpacing];
    v51 = v5;
    v50[0] = 14;
    v50[1] = 8;
    v50[2] = &v51;
    v49[0] = 15;
    v49[1] = 8;
    v49[2] = &v51;
    v26 = v56[0];
    v28 = 0x277CCA000uLL;
    v29 = "{CTParagraphStyleSetting=IQ^v}";
    v27 = [MEMORY[0x277CCAE60] valueWithBytes:v50 objCType:?];
    [v26 addObject:?];

    v30 = v56[0];
    v31 = [MEMORY[0x277CCAE60] valueWithBytes:v49 objCType:"{CTParagraphStyleSetting=IQ^v}"];
    [v30 addObject:?];
  }

  if ([v56[0] count])
  {
    v48 = &v15;
    v24 = (24 * [v56[0] count] + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = MEMORY[0x28223BE20]();
    v25 = (&v15 - v24);
    v47 = v6;
    for (i = 0; ; ++i)
    {
      v23 = i;
      v7 = [v56[0] count];
      if (v23 >= v7)
      {
        break;
      }

      location = [v56[0] objectAtIndexedSubscript:i];
      v22 = 0;
      v44 = 0;
      v43 = 0uLL;
      [location getValue:&v43];
      v8 = v22;
      v9 = &v25[i];
      v10 = v43;
      v9->value = v44;
      *&v9->spec = v10;
      objc_storeStrong(&location, v8);
    }

    v11 = [v56[0] count];
    v42 = CTParagraphStyleCreate(v25, v11);
    v61 = v42;
    v20 = v42;
    v12 = v42;
    v21 = v20;
    [v57 setObject:? forKeyedSubscript:?];
  }

  v16 = objc_alloc(MEMORY[0x277CCAB48]);
  v17 = [(CPSMultilineLabel *)v60 text];
  v18 = [v16 initWithString:? attributes:?];

  v19 = 0;
  objc_storeStrong(v56, 0);
  objc_storeStrong(&v57, v19);
  v13 = v18;

  return v13;
}

- (id)_ellipsedString:(id)a3 inRect:(CGRect)a4
{
  v34 = a4;
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  *&v31 = [(CPSMultilineLabel *)v33 _statsForString:location[0] inRect:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
  *(&v31 + 1) = v4;
  if (v31 < [location[0] length] || *(&v31 + 1) > -[CPSMultilineLabel effectiveNumberOfLines](v33, "effectiveNumberOfLines"))
  {
    v29 = ([location[0] length] - v31);
    v21 = [location[0] string];
    v20 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [location[0] length];
    v41 = v5 - v29;
    v40 = v29;
    v42 = v5 - v29;
    v43 = v29;
    v26[1] = (v5 - v29);
    v26[2] = v29;
    v27 = [v21 rangeOfCharacterFromSet:v20 options:0 range:{v5 - v29, v29}];
    v28 = v6;
    MEMORY[0x277D82BD8](v20);
    *&v7 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0;
    }

    else
    {
      v29 = ([location[0] length] - v27);
    }

    v26[0] = 0;
    v25 = [location[0] length];
    while (1)
    {
      v19 = 1;
      if (v31 >= v25)
      {
        v19 = *(&v31 + 1) > [(CPSMultilineLabel *)v33 effectiveNumberOfLines];
      }

      if (!v19)
      {
        break;
      }

      v8 = [location[0] mutableCopy];
      v9 = v26[0];
      v26[0] = v8;
      if ([v8 length] <= v29)
      {
        v35 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2855A5FC8];
        v30 = 1;
        goto LABEL_17;
      }

      v10 = [v26[0] length];
      v37 = v10 - v29;
      v36 = v29;
      v38 = v10 - v29;
      v39 = v29;
      [v26[0] replaceCharactersInRange:v10 - v29 withString:v29];
      v16 = objc_opt_class();
      v18 = [v26[0] string];
      v17 = [v18 stringByReplacingOccurrencesOfString:@"…" withString:&stru_2855A5FC8];
      v23 = [v16 _rangeOfTrailingWhiteSpace:?];
      v24 = v11;
      MEMORY[0x277D82BD8](v17);
      *&v12 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v26[0] replaceCharactersInRange:v23 withString:{v24, &stru_2855A5FC8, v12}];
      }

      *&v22 = [(CPSMultilineLabel *)v33 _statsForString:v26[0] inRect:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
      *(&v22 + 1) = v13;
      v31 = v22;
      v25 = [v26[0] length];
      ++v29;
    }

    v35 = MEMORY[0x277D82BE0](v26[0]);
    v30 = 1;
LABEL_17:
    objc_storeStrong(v26, 0);
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](location[0]);
    v30 = 1;
  }

  objc_storeStrong(location, 0);
  v14 = v35;

  return v14;
}

- (__CTFrame)_textFrame:(id)a3 rect:(CGRect)a4
{
  v9 = a4;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  framesetter = CTFramesetterCreateWithAttributedString(location[0]);
  path = CGPathCreateMutable();
  CGPathAddRect(path, 0, v9);
  v11 = 0;
  v10 = 0;
  v12 = 0;
  v13 = 0;
  v14.location = 0;
  v14.length = 0;
  Frame = CTFramesetterCreateFrame(framesetter, v14, path, 0);
  CFRelease(framesetter);
  CFRelease(path);
  objc_storeStrong(location, 0);
  return Frame;
}

- (BOOL)_fitsInHeight:(double)a3 numberOfLines:(unint64_t)a4 rect:(CGRect)a5
{
  v9 = a3 <= a5.size.height;
  v8 = a4 <= [(CPSMultilineLabel *)self effectiveNumberOfLines];
  v7 = 0;
  if ([(CPSMultilineLabel *)self prefersFewerLines])
  {
    v7 = a4 > 1;
  }

  v6 = 0;
  if (v9)
  {
    v6 = 0;
    if (v8)
    {
      return !v7;
    }
  }

  return v6;
}

- (double)_heightForAttributedString:(id)a3 inRect:(CGRect)a4
{
  v10 = a4;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    framesetter = CTFramesetterCreateWithAttributedString(location[0]);
    CGSizeMake_1();
    v7 = *MEMORY[0x277CBF3A8];
    if (framesetter)
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16.location = 0;
      v16.length = 0;
      *(&v7 + 1) = *&CTFramesetterSuggestFrameSizeWithConstraints(framesetter, v16, 0, *&v4, 0).height;
      CFRelease(framesetter);
    }

    v11 = *(&v7 + 1);
  }

  else
  {
    v11 = 0.0;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_statsForString:(id)a3 inRect:(CGRect)a4
{
  v12 = a4;
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  frame = [(CPSMultilineLabel *)v11 _textFrame:location[0] rect:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  length = CTFrameGetVisibleStringRange(frame).length;
  theArray = CTFrameGetLines(frame);
  Count = CFArrayGetCount(theArray);
  CFRelease(frame);
  v13 = length;
  v14 = Count;
  objc_storeStrong(location, 0);
  v4 = v13;
  v5 = v14;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

+ (_NSRange)_rangeOfTrailingWhiteSpace:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v11 = 0x7FFFFFFFFFFFFFFFuLL;
  size = [location[0] length];
  if (size)
  {
    v7 = malloc_type_calloc(2uLL, size, 0x752F8ED5uLL);
    if (v7)
    {
      v13 = 0;
      v12 = size;
      v14 = 0;
      v15 = size;
      v6[1] = 0;
      v6[2] = size;
      [location[0] getCharacters:v7 range:{0, size}];
      v6[0] = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      for (i = size - 1; ([v6[0] characterIsMember:*(v7 + i)] & 1) != 0; --i)
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = size;
        }

        *&v11 = v11 - 1;
        ++*(&v11 + 1);
      }

      free(v7);
      v8 = 1;
      objc_storeStrong(v6, 0);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = *(&v11 + 1);
  v3 = v11;
  result.length = v4;
  result.location = v3;
  return result;
}

- (CPSMultilineLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end