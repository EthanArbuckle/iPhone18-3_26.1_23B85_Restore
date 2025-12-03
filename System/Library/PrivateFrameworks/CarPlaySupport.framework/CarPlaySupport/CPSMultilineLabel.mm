@interface CPSMultilineLabel
+ (_NSRange)_rangeOfTrailingWhiteSpace:(id)space;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_statsForString:(id)string inRect:(CGRect)rect;
- (BOOL)_fitsInHeight:(double)height numberOfLines:(unint64_t)lines rect:(CGRect)rect;
- (CGSize)intrinsicContentSize;
- (CPSMultilineLabel)initWithFrame:(CGRect)frame;
- (CPSMultilineLabelDelegate)delegate;
- (__CTFrame)_textFrame:(id)frame rect:(CGRect)rect;
- (double)_heightForAttributedString:(id)string inRect:(CGRect)rect;
- (id)_attributedStringWithSize:(double)size;
- (id)_attributedTextForRect:(CGRect)rect;
- (id)_ellipsedString:(id)string inRect:(CGRect)rect;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (unint64_t)effectiveNumberOfLines;
- (void)_updateBaselines;
- (void)_updateLayout;
- (void)_updateLayoutGuideConstraints;
- (void)drawRect:(CGRect)rect;
- (void)setBounds:(CGRect)bounds;
- (void)setDebug:(BOOL)debug;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSMultilineLabel

- (void)_updateLayout
{
  currentConfiguration = [(CPSMultilineLabel *)self currentConfiguration];
  [(CPSMultilineLabelConfig *)currentConfiguration setAttributedText:0];
  MEMORY[0x277D82BD8](currentConfiguration);
  [(CPSMultilineLabel *)self setNeedsDisplay];
  [(CPSMultilineLabel *)self invalidateIntrinsicContentSize];
  baselineViewTopAnchor = [(CPSMultilineLabel *)self baselineViewTopAnchor];
  [(NSLayoutConstraint *)baselineViewTopAnchor setActive:0];
  MEMORY[0x277D82BD8](baselineViewTopAnchor);
  baselineViewBottomAnchor = [(CPSMultilineLabel *)self baselineViewBottomAnchor];
  [(NSLayoutConstraint *)baselineViewBottomAnchor setActive:0];
  MEMORY[0x277D82BD8](baselineViewBottomAnchor);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v24 = a2;
  v23 = *MEMORY[0x277D77260];
  text = [(CPSMultilineLabel *)self text];
  v19 = [(NSString *)text length];
  MEMORY[0x277D82BD8](text);
  if (v19)
  {
    currentConfiguration = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    attributedText = [(CPSMultilineLabelConfig *)currentConfiguration attributedText];
    v20 = 0;
    if (attributedText)
    {
      v2 = MEMORY[0x277D82BE0](attributedText);
    }

    else
    {
      [(CPSMultilineLabel *)selfCopy bounds];
      CGRectMake();
      v21 = [(CPSMultilineLabel *)selfCopy _attributedTextForRect:v3, v4, v5, v6];
      v20 = 1;
      v2 = MEMORY[0x277D82BE0](v21);
    }

    v22 = v2;
    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    MEMORY[0x277D82BD8](attributedText);
    MEMORY[0x277D82BD8](currentConfiguration);
    v14 = selfCopy;
    v15 = v22;
    [(CPSMultilineLabel *)selfCopy bounds];
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
  baselineViewTopAnchor = [(CPSMultilineLabel *)self baselineViewTopAnchor];
  [(NSLayoutConstraint *)baselineViewTopAnchor setActive:1];
  MEMORY[0x277D82BD8](baselineViewTopAnchor);
  baselineViewBottomAnchor = [(CPSMultilineLabel *)self baselineViewBottomAnchor];
  [(NSLayoutConstraint *)baselineViewBottomAnchor setActive:1];
  MEMORY[0x277D82BD8](baselineViewBottomAnchor);
  baselineOffsets = [(CPSMultilineLabel *)self baselineOffsets];
  v18 = [(NSArray *)baselineOffsets count];
  MEMORY[0x277D82BD8](baselineOffsets);
  if (v18)
  {
    [(CPSMultilineLabel *)self bounds];
    v10 = v2;
    baselineOffsets2 = [(CPSMultilineLabel *)self baselineOffsets];
    firstObject = [(NSArray *)baselineOffsets2 firstObject];
    [firstObject doubleValue];
    v11 = v10 - v3;
    baselineViewTopAnchor2 = [(CPSMultilineLabel *)self baselineViewTopAnchor];
    [(NSLayoutConstraint *)baselineViewTopAnchor2 setConstant:v11];
    MEMORY[0x277D82BD8](baselineViewTopAnchor2);
    MEMORY[0x277D82BD8](firstObject);
    MEMORY[0x277D82BD8](baselineOffsets2);
  }

  else
  {
    baselineViewTopAnchor3 = [(CPSMultilineLabel *)self baselineViewTopAnchor];
    [(NSLayoutConstraint *)baselineViewTopAnchor3 setConstant:0.0];
    MEMORY[0x277D82BD8](baselineViewTopAnchor3);
  }

  baselineOffsets3 = [(CPSMultilineLabel *)self baselineOffsets];
  lastObject = [(NSArray *)baselineOffsets3 lastObject];
  [lastObject doubleValue];
  v5 = -v4;
  baselineViewBottomAnchor2 = [(CPSMultilineLabel *)self baselineViewBottomAnchor];
  [(NSLayoutConstraint *)baselineViewBottomAnchor2 setConstant:v5];
  MEMORY[0x277D82BD8](baselineViewBottomAnchor2);
  MEMORY[0x277D82BD8](lastObject);
  MEMORY[0x277D82BD8](baselineOffsets3);
}

- (void)_updateLayoutGuideConstraints
{
  selfCopy = self;
  v13 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 0x7FEFFFFFFFFFFFFFLL;
  leadingOffsets = [(CPSMultilineLabel *)self leadingOffsets];
  [(NSArray *)leadingOffsets enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](leadingOffsets);
  v6 = v9[3];
  [(CPSMultilineLabel *)selfCopy bounds];
  if (v6 > CGRectGetWidth(v15))
  {
    v9[3] = 0.0;
  }

  v5 = v9[3];
  textLayoutGuideLeadingConstraint = [(CPSMultilineLabel *)selfCopy textLayoutGuideLeadingConstraint];
  [(NSLayoutConstraint *)textLayoutGuideLeadingConstraint setConstant:v5];
  MEMORY[0x277D82BD8](textLayoutGuideLeadingConstraint);
  v3 = -v9[3];
  textLayoutGuideTrailingConstraint = [(CPSMultilineLabel *)selfCopy textLayoutGuideTrailingConstraint];
  [(NSLayoutConstraint *)textLayoutGuideTrailingConstraint setConstant:v3];
  MEMORY[0x277D82BD8](textLayoutGuideTrailingConstraint);
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

- (CPSMultilineLabel)initWithFrame:(CGRect)frame
{
  v56[8] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v53 = a2;
  v54 = 0;
  v52.receiver = self;
  v52.super_class = CPSMultilineLabel;
  v54 = [(CPSMultilineLabel *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v54, v54);
  if (v54)
  {
    v3 = objc_opt_new();
    currentConfiguration = v54->_currentConfiguration;
    v54->_currentConfiguration = v3;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSMultilineLabel *)v54 setBackgroundColor:?];
    labelColor = [MEMORY[0x277D75348] labelColor];
    textColor = v54->_textColor;
    v54->_textColor = labelColor;
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
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v54->_baselineView setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor2);
    v11 = objc_alloc_init(MEMORY[0x277D756D0]);
    textLayoutGuide = v54->_textLayoutGuide;
    v54->_textLayoutGuide = v11;
    *&v13 = MEMORY[0x277D82BD8](textLayoutGuide).n128_u64[0];
    [(CPSMultilineLabel *)v54 addLayoutGuide:v54->_textLayoutGuide, v13];
    topAnchor = [(UIView *)v54->_baselineView topAnchor];
    topAnchor2 = [(CPSMultilineLabel *)v54 topAnchor];
    v14 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
    baselineViewTopAnchor = v54->_baselineViewTopAnchor;
    v54->_baselineViewTopAnchor = v14;
    MEMORY[0x277D82BD8](baselineViewTopAnchor);
    MEMORY[0x277D82BD8](topAnchor2);
    *&v16 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
    bottomAnchor = [(UIView *)v54->_baselineView bottomAnchor];
    bottomAnchor2 = [(CPSMultilineLabel *)v54 bottomAnchor];
    v17 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    baselineViewBottomAnchor = v54->_baselineViewBottomAnchor;
    v54->_baselineViewBottomAnchor = v17;
    MEMORY[0x277D82BD8](baselineViewBottomAnchor);
    MEMORY[0x277D82BD8](bottomAnchor2);
    *&v19 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
    leadingAnchor = [(UILayoutGuide *)v54->_textLayoutGuide leadingAnchor];
    leadingAnchor2 = [(CPSMultilineLabel *)v54 leadingAnchor];
    v20 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
    textLayoutGuideLeadingConstraint = v54->_textLayoutGuideLeadingConstraint;
    v54->_textLayoutGuideLeadingConstraint = v20;
    MEMORY[0x277D82BD8](textLayoutGuideLeadingConstraint);
    MEMORY[0x277D82BD8](leadingAnchor2);
    *&v22 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    trailingAnchor = [(UILayoutGuide *)v54->_textLayoutGuide trailingAnchor];
    trailingAnchor2 = [(CPSMultilineLabel *)v54 trailingAnchor];
    v23 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
    textLayoutGuideTrailingConstraint = v54->_textLayoutGuideTrailingConstraint;
    v54->_textLayoutGuideTrailingConstraint = v23;
    MEMORY[0x277D82BD8](textLayoutGuideTrailingConstraint);
    MEMORY[0x277D82BD8](trailingAnchor2);
    *&v25 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
    v39 = MEMORY[0x277CCAAD0];
    v56[0] = v54->_baselineViewTopAnchor;
    v56[1] = v54->_baselineViewBottomAnchor;
    widthAnchor = [(UIView *)v54->_baselineView widthAnchor];
    v50 = [(NSLayoutDimension *)widthAnchor constraintEqualToConstant:0.0];
    v56[2] = v50;
    leadingAnchor3 = [(UIView *)v54->_baselineView leadingAnchor];
    leadingAnchor4 = [(CPSMultilineLabel *)v54 leadingAnchor];
    v47 = [(NSLayoutXAxisAnchor *)leadingAnchor3 constraintEqualToAnchor:?];
    v56[3] = v47;
    v56[4] = v54->_textLayoutGuideLeadingConstraint;
    v56[5] = v54->_textLayoutGuideTrailingConstraint;
    topAnchor3 = [(UILayoutGuide *)v54->_textLayoutGuide topAnchor];
    topAnchor4 = [(CPSMultilineLabel *)v54 topAnchor];
    v44 = [(NSLayoutYAxisAnchor *)topAnchor3 constraintEqualToAnchor:?];
    v56[6] = v44;
    bottomAnchor3 = [(UILayoutGuide *)v54->_textLayoutGuide bottomAnchor];
    bottomAnchor4 = [(CPSMultilineLabel *)v54 bottomAnchor];
    v41 = [(NSLayoutYAxisAnchor *)bottomAnchor3 constraintEqualToAnchor:?];
    v56[7] = v41;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
    [v39 activateConstraints:?];
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](widthAnchor);
    [(CPSMultilineLabel *)v54 setContentHuggingPriority:1 forAxis:?];
    LODWORD(v26) = 1148846080;
    [(CPSMultilineLabel *)v54 setContentHuggingPriority:0 forAxis:v26];
  }

  v28 = MEMORY[0x277D82BE0](v54);
  objc_storeStrong(&v54, 0);
  return v28;
}

- (void)setBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSMultilineLabel;
  [(CPSMultilineLabel *)&v3 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(CPSMultilineLabel *)selfCopy _updateLayout];
}

- (void)drawRect:(CGRect)rect
{
  v61 = *MEMORY[0x277D85DE8];
  rectCopy = rect;
  selfCopy = self;
  v54 = a2;
  text = [(CPSMultilineLabel *)self text];

  if (text)
  {
    attributedText = [(CPSMultilineLabel *)selfCopy attributedText];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextClearRect(CurrentContext, rectCopy);
    CGContextSaveGState(CurrentContext);
    if ([(CPSMultilineLabel *)selfCopy debug])
    {
      v36 = CurrentContext;
      yellowColor = [MEMORY[0x277D75348] yellowColor];
      v3 = yellowColor;
      CGContextSetFillColorWithColor(CurrentContext, [yellowColor CGColor]);

      CGContextFillRect(CurrentContext, rectCopy);
    }

    v32 = CurrentContext;
    [(CPSMultilineLabel *)selfCopy bounds];
    v48 = v4;
    v47 = v5;
    v50 = v6;
    v49 = v7;
    CGContextTranslateCTM(CurrentContext, 0.0, v6);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v46 = [(CPSMultilineLabel *)selfCopy _textFrame:attributedText rect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
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

    [(CPSMultilineLabel *)selfCopy setBaselineOffsets:v42];
    [(CPSMultilineLabel *)selfCopy setLeadingOffsets:v43[0]];
    CTFrameDraw(v46, CurrentContext);
    CFRelease(v46);
    CGContextRestoreGState(CurrentContext);
    [(CPSMultilineLabel *)selfCopy _updateBaselines];
    [(CPSMultilineLabel *)selfCopy _updateLayoutGuideConstraints];
    currentConfiguration = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    v40 = [(CPSMultilineLabelConfig *)currentConfiguration copy];

    v15 = Count;
    currentConfiguration2 = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    [(CPSMultilineLabelConfig *)currentConfiguration2 setLineCount:v15];

    location = [attributedText attributesAtIndex:0 effectiveRange:?];
    v18 = [location objectForKeyedSubscript:*MEMORY[0x277CC4838]];
    currentConfiguration3 = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    [(CPSMultilineLabelConfig *)currentConfiguration3 setFont:v18];

    string = [attributedText string];
    currentConfiguration4 = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    [(CPSMultilineLabelConfig *)currentConfiguration4 setText:string];

    v21 = attributedText;
    currentConfiguration5 = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    [(CPSMultilineLabelConfig *)currentConfiguration5 setAttributedText:v21];

    currentConfiguration6 = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    attributedText2 = [(CPSMultilineLabelConfig *)currentConfiguration6 attributedText];
    attributedText3 = [v40 attributedText];
    v26 = [(NSAttributedString *)attributedText2 isEqualToAttributedString:?];

    if (!v26)
    {
      [(CPSMultilineLabel *)selfCopy invalidateIntrinsicContentSize];
      [(CPSMultilineLabel *)selfCopy setNeedsLayout];
    }

    v11 = v40;
    currentConfiguration7 = [(CPSMultilineLabel *)selfCopy currentConfiguration];
    v13 = [v11 isEqualToLabelConfig:?];

    if ((v13 & 1) == 0)
    {
      delegate = [(CPSMultilineLabel *)selfCopy delegate];
      [(CPSMultilineLabelDelegate *)delegate labelDidUpdateCurrentConfig:selfCopy];
    }

    v9 = 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v40, v9);
    objc_storeStrong(&v42, v9);
    objc_storeStrong(v43, v9);
    objc_storeStrong(&attributedText, v9);
  }

  else
  {
    v53 = UIGraphicsGetCurrentContext();
    CGContextClearRect(v53, rectCopy);
    CGContextRestoreGState(v53);
  }
}

- (void)setText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  if (![(NSString *)selfCopy->_text isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    text = selfCopy->_text;
    selfCopy->_text = v3;
    *&v5 = MEMORY[0x277D82BD8](text).n128_u64[0];
    [(CPSMultilineLabel *)selfCopy _updateLayout];
  }

  objc_storeStrong(location, 0);
}

- (void)setTextColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  if (([(UIColor *)selfCopy->_textColor isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&selfCopy->_textColor, location[0]);
    [(CPSMultilineLabel *)selfCopy _updateLayout];
  }

  objc_storeStrong(location, 0);
}

- (void)setDebug:(BOOL)debug
{
  v50[8] = *MEMORY[0x277D85DE8];
  if (self->_debug != debug)
  {
    self->_debug = debug;
    if (debug)
    {
      v3 = objc_alloc(MEMORY[0x277D75D18]);
      v11 = MEMORY[0x277CBF3A0];
      v6 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(CPSMultilineLabel *)self setDebugFirstBaselineView:?];
      debugFirstBaselineView = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(UIView *)debugFirstBaselineView setTranslatesAutoresizingMaskIntoConstraints:0];
      debugFirstBaselineView2 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(CPSMultilineLabel *)self addSubview:?];
      greenColor = [MEMORY[0x277D75348] greenColor];
      debugFirstBaselineView3 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(UIView *)debugFirstBaselineView3 setBackgroundColor:greenColor];
      MEMORY[0x277D82BD8](debugFirstBaselineView3);
      MEMORY[0x277D82BD8](greenColor);
      v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v11, v11[1], v11[2], v11[3]}];
      [(CPSMultilineLabel *)self setDebugLastBaselineView:?];
      debugLastBaselineView = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(UIView *)debugLastBaselineView setTranslatesAutoresizingMaskIntoConstraints:0];
      debugLastBaselineView2 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(CPSMultilineLabel *)self addSubview:?];
      redColor = [MEMORY[0x277D75348] redColor];
      debugLastBaselineView3 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(UIView *)debugLastBaselineView3 setBackgroundColor:redColor];
      MEMORY[0x277D82BD8](debugLastBaselineView3);
      [(CPSMultilineLabel *)self setNeedsDisplay];
      v17 = MEMORY[0x277CCAAD0];
      debugFirstBaselineView4 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      leadingAnchor = [(UIView *)debugFirstBaselineView4 leadingAnchor];
      leadingAnchor2 = [(CPSMultilineLabel *)self leadingAnchor];
      v45 = [NSLayoutXAxisAnchor constraintEqualToAnchor:leadingAnchor constant:"constraintEqualToAnchor:constant:"];
      v50[0] = v45;
      debugFirstBaselineView5 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      trailingAnchor = [(UIView *)debugFirstBaselineView5 trailingAnchor];
      centerXAnchor = [(CPSMultilineLabel *)self centerXAnchor];
      v41 = [NSLayoutXAxisAnchor constraintEqualToAnchor:trailingAnchor constant:"constraintEqualToAnchor:constant:"];
      v50[1] = v41;
      debugFirstBaselineView6 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      heightAnchor = [(UIView *)debugFirstBaselineView6 heightAnchor];
      v38 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:?];
      v50[2] = v38;
      debugFirstBaselineView7 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      topAnchor = [(UIView *)debugFirstBaselineView7 topAnchor];
      firstBaselineAnchor = [(CPSMultilineLabel *)self firstBaselineAnchor];
      v34 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
      v50[3] = v34;
      debugLastBaselineView4 = [(CPSMultilineLabel *)self debugLastBaselineView];
      leadingAnchor3 = [(UIView *)debugLastBaselineView4 leadingAnchor];
      centerXAnchor2 = [(CPSMultilineLabel *)self centerXAnchor];
      v30 = [(NSLayoutXAxisAnchor *)leadingAnchor3 constraintEqualToAnchor:-5.0 constant:?];
      v50[4] = v30;
      debugLastBaselineView5 = [(CPSMultilineLabel *)self debugLastBaselineView];
      trailingAnchor2 = [(UIView *)debugLastBaselineView5 trailingAnchor];
      trailingAnchor3 = [(CPSMultilineLabel *)self trailingAnchor];
      v26 = [(NSLayoutXAxisAnchor *)trailingAnchor2 constraintEqualToAnchor:5.0 constant:?];
      v50[5] = v26;
      debugLastBaselineView6 = [(CPSMultilineLabel *)self debugLastBaselineView];
      heightAnchor2 = [(UIView *)debugLastBaselineView6 heightAnchor];
      v23 = [(NSLayoutDimension *)heightAnchor2 constraintEqualToConstant:1.0];
      v50[6] = v23;
      debugLastBaselineView7 = [(CPSMultilineLabel *)self debugLastBaselineView];
      topAnchor2 = [(UIView *)debugLastBaselineView7 topAnchor];
      lastBaselineAnchor = [(CPSMultilineLabel *)self lastBaselineAnchor];
      v19 = [(NSLayoutYAxisAnchor *)topAnchor2 constraintEqualToAnchor:?];
      v50[7] = v19;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
      [v17 activateConstraints:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](lastBaselineAnchor);
      MEMORY[0x277D82BD8](topAnchor2);
      MEMORY[0x277D82BD8](debugLastBaselineView7);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](heightAnchor2);
      MEMORY[0x277D82BD8](debugLastBaselineView6);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](trailingAnchor3);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](debugLastBaselineView5);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](centerXAnchor2);
      MEMORY[0x277D82BD8](leadingAnchor3);
      MEMORY[0x277D82BD8](debugLastBaselineView4);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](firstBaselineAnchor);
      MEMORY[0x277D82BD8](topAnchor);
      MEMORY[0x277D82BD8](debugFirstBaselineView7);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](heightAnchor);
      MEMORY[0x277D82BD8](debugFirstBaselineView6);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](centerXAnchor);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](debugFirstBaselineView5);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](debugFirstBaselineView4);
    }

    else
    {
      debugFirstBaselineView8 = [(CPSMultilineLabel *)self debugFirstBaselineView];
      [(UIView *)debugFirstBaselineView8 removeFromSuperview];
      debugLastBaselineView8 = [(CPSMultilineLabel *)self debugLastBaselineView];
      [(UIView *)debugLastBaselineView8 removeFromSuperview];
      [(CPSMultilineLabel *)self setDebugFirstBaselineView:MEMORY[0x277D82BD8](debugLastBaselineView8).n128_f64[0]];
      [(CPSMultilineLabel *)self setDebugLastBaselineView:0];
    }
  }
}

- (id)firstBaselineAnchor
{
  baselineView = [(CPSMultilineLabel *)self baselineView];
  topAnchor = [(UIView *)baselineView topAnchor];
  MEMORY[0x277D82BD8](baselineView);

  return topAnchor;
}

- (id)lastBaselineAnchor
{
  baselineView = [(CPSMultilineLabel *)self baselineView];
  bottomAnchor = [(UIView *)baselineView bottomAnchor];
  MEMORY[0x277D82BD8](baselineView);

  return bottomAnchor;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSMultilineLabel;
  [(CPSMultilineLabel *)&v3 traitCollectionDidChange:location[0]];
  [(CPSMultilineLabel *)selfCopy setNeedsDisplay];
  [(CPSMultilineLabel *)selfCopy setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (id)_attributedTextForRect:(CGRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  v24[1] = a2;
  v24[0] = [(CPSMultilineLabel *)self _attributedStringWithSize:0.0];
  [(CPSMultilineLabel *)selfCopy _heightForAttributedString:v24[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
  v23 = v3;
  [(CPSMultilineLabel *)selfCopy _statsForString:v24[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
  v22 = v4;
  [(CPSMultilineLabel *)selfCopy minimumScaleFactor];
  if (v5 >= 1.0)
  {
    [(CPSMultilineLabel *)selfCopy minimumFontSize];
    if (v12 > -1.79769313e308 && ![(CPSMultilineLabel *)selfCopy _fitsInHeight:v22 numberOfLines:v23 rect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height])
    {
      [(CPSMultilineLabel *)selfCopy minimumFontSize];
      v13 = [(CPSMultilineLabel *)selfCopy _attributedStringWithSize:?];
      v14 = v24[0];
      v24[0] = v13;
      MEMORY[0x277D82BD8](v14);
    }
  }

  else
  {
    font = [(CPSMultilineLabel *)selfCopy font];
    [(UIFont *)font pointSize];
    v19 = v6;
    MEMORY[0x277D82BD8](font);
    v21 = v19;
    [(CPSMultilineLabel *)selfCopy minimumScaleFactor];
    v20 = v19 * v7;
    while (1)
    {
      v17 = 0;
      if (![(CPSMultilineLabel *)selfCopy _fitsInHeight:v22 numberOfLines:v23 rect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height])
      {
        v17 = v21 >= v20;
      }

      if (!v17)
      {
        break;
      }

      v21 = v21 - 0.100000001;
      v8 = [(CPSMultilineLabel *)selfCopy _attributedStringWithSize:v21];
      v9 = v24[0];
      v24[0] = v8;
      MEMORY[0x277D82BD8](v9);
      [(CPSMultilineLabel *)selfCopy _heightForAttributedString:v24[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
      v23 = v10;
      [(CPSMultilineLabel *)selfCopy _statsForString:v24[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
      v22 = v11;
    }
  }

  v16 = [(CPSMultilineLabel *)selfCopy _ellipsedString:v24[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
  objc_storeStrong(v24, 0);

  return v16;
}

- (id)_attributedStringWithSize:(double)size
{
  v63 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v59 = a2;
  sizeCopy = size;
  v57 = objc_opt_new();
  font = [(CPSMultilineLabel *)selfCopy font];
  v40 = 0;
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(font, sizeCopy, 0, 0, 0);

  v56[1] = CopyWithSymbolicTraits;
  v62 = CopyWithSymbolicTraits;
  v37 = CopyWithSymbolicTraits;
  v3 = CopyWithSymbolicTraits;
  v38 = CopyWithSymbolicTraits;
  [v57 setObject:? forKeyedSubscript:?];

  textColor = [(CPSMultilineLabel *)selfCopy textColor];
  [v57 setObject:? forKeyedSubscript:?];

  v56[0] = objc_opt_new();
  v55 = NSTextAlignmentToCTTextAlignment([(CPSMultilineLabel *)selfCopy textAlignment]);
  v53 = 0;
  v41 = 0;
  if (v55 == kCTTextAlignmentNatural)
  {
    traitCollection = [(CPSMultilineLabel *)selfCopy traitCollection];
    v53 = 1;
    v41 = [traitCollection layoutDirection] == 1;
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

  [(CPSMultilineLabel *)selfCopy lineSpacing];
  if (v4 > -1.79769313e308)
  {
    [(CPSMultilineLabel *)selfCopy lineSpacing];
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
  text = [(CPSMultilineLabel *)selfCopy text];
  v18 = [v16 initWithString:? attributes:?];

  v19 = 0;
  objc_storeStrong(v56, 0);
  objc_storeStrong(&v57, v19);
  v13 = v18;

  return v13;
}

- (id)_ellipsedString:(id)string inRect:(CGRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  *&v31 = [(CPSMultilineLabel *)selfCopy _statsForString:location[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
  *(&v31 + 1) = v4;
  if (v31 < [location[0] length] || *(&v31 + 1) > -[CPSMultilineLabel effectiveNumberOfLines](selfCopy, "effectiveNumberOfLines"))
  {
    v29 = ([location[0] length] - v31);
    string = [location[0] string];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [location[0] length];
    v41 = v5 - v29;
    v40 = v29;
    v42 = v5 - v29;
    v43 = v29;
    v26[1] = (v5 - v29);
    v26[2] = v29;
    v27 = [string rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:0 range:{v5 - v29, v29}];
    v28 = v6;
    MEMORY[0x277D82BD8](whitespaceAndNewlineCharacterSet);
    *&v7 = MEMORY[0x277D82BD8](string).n128_u64[0];
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
        v19 = *(&v31 + 1) > [(CPSMultilineLabel *)selfCopy effectiveNumberOfLines];
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
      string2 = [v26[0] string];
      v17 = [string2 stringByReplacingOccurrencesOfString:@"…" withString:&stru_2855A5FC8];
      v23 = [v16 _rangeOfTrailingWhiteSpace:?];
      v24 = v11;
      MEMORY[0x277D82BD8](v17);
      *&v12 = MEMORY[0x277D82BD8](string2).n128_u64[0];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v26[0] replaceCharactersInRange:v23 withString:{v24, &stru_2855A5FC8, v12}];
      }

      *&v22 = [(CPSMultilineLabel *)selfCopy _statsForString:v26[0] inRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
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

- (__CTFrame)_textFrame:(id)frame rect:(CGRect)rect
{
  rectCopy = rect;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, frame);
  framesetter = CTFramesetterCreateWithAttributedString(location[0]);
  path = CGPathCreateMutable();
  CGPathAddRect(path, 0, rectCopy);
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

- (BOOL)_fitsInHeight:(double)height numberOfLines:(unint64_t)lines rect:(CGRect)rect
{
  v9 = height <= rect.size.height;
  v8 = lines <= [(CPSMultilineLabel *)self effectiveNumberOfLines];
  v7 = 0;
  if ([(CPSMultilineLabel *)self prefersFewerLines])
  {
    v7 = lines > 1;
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

- (double)_heightForAttributedString:(id)string inRect:(CGRect)rect
{
  rectCopy = rect;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_statsForString:(id)string inRect:(CGRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  frame = [(CPSMultilineLabel *)selfCopy _textFrame:location[0] rect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
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

+ (_NSRange)_rangeOfTrailingWhiteSpace:(id)space
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, space);
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