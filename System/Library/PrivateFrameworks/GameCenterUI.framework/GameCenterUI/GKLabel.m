@interface GKLabel
+ (void)initialize;
- (CGSize)intrinsicContentSize;
- (CGSize)shrinkFontToFitSize:(CGSize)a3;
- (GKLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)titleEdgeInsets;
- (double)actualFontShrinkageFactor;
- (void)applyTextStyle:(id)a3;
- (void)replayAndApplyStyleUnlessInhibited;
- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setBaseStyle:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setText:(id)a3;
- (void)updateConstraints;
@end

@implementation GKLabel

- (void)replayAndApplyStyleUnlessInhibited
{
  if (![(GKLabel *)self shouldInhibitReplay])
  {

    [(GKLabel *)self replayAndApplyStyleWithSystemContentChange:0];
  }
}

- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKLabel *)self usingAttributedText];
  baseStyle = self->_baseStyle;
  if (v5)
  {
    if (!baseStyle)
    {
      return;
    }

    v7 = [(GKLabel *)self attributedText];
    v8 = [MEMORY[0x277D0C8B0] attributedString:v7 byReplayingFromBaseStyle:self->_baseStyle systemContentSizeDidChange:v3];
    if (v8 != v7)
    {
      v13.receiver = self;
      v13.super_class = GKLabel;
      [(GKLabel *)&v13 setAttributedText:v8];
    }
  }

  else
  {
    v7 = baseStyle;
    appliedStyle = self->_appliedStyle;
    if (appliedStyle)
    {
      v10 = [(GKTextStyle *)appliedStyle replayOnBaseStyle:self->_baseStyle systemContentSizeDidChange:v3];

      v7 = v10;
    }

    if (!v7)
    {
      goto LABEL_10;
    }

    v12 = 0.0;
    v8 = [(GKTextStyle *)v7 resolveFontAndLineSpacing:&v12];
    [(GKLabel *)self setFont:v8];
    v11 = [(GKTextStyle *)v7 color];
    [(GKLabel *)self setTextColor:v11];

    [(GKLabel *)self setLineBreakMode:[(GKTextStyle *)v7 lineBreakMode]];
    [(GKLabel *)self setTextAlignment:[(GKTextStyle *)v7 textAlignment]];
    [(GKLabel *)self setLineSpacing:v12];
  }

LABEL_10:
}

- (void)setBaseStyle:(id)a3
{
  v5 = a3;
  if (self->_baseStyle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_baseStyle, a3);
    [(GKLabel *)self replayAndApplyStyleWithSystemContentChange:0];
    v5 = v6;
  }
}

- (CGSize)intrinsicContentSize
{
  v16.receiver = self;
  v16.super_class = GKLabel;
  [(GKLabel *)&v16 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(GKLabel *)self titleEdgeInsets];
  v8 = v7;
  [(GKLabel *)self titleEdgeInsets];
  v10 = v4 + v8 + v9;
  [(GKLabel *)self titleEdgeInsets];
  v12 = v11;
  [(GKLabel *)self titleEdgeInsets];
  v14 = v6 + v12 + v13;
  v15 = v10;
  result.height = v14;
  result.width = v15;
  return result;
}

+ (void)initialize
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v21[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v4 = [v2 appearanceWhenContainedInInstancesOfClasses:v3];

  v5 = objc_alloc_init(MEMORY[0x277D0C8C0]);
  [v4 setBaseStyle:v5];

  v6 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:1];
  v7 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
  v8 = MEMORY[0x277D75C80];
  v20[0] = v6;
  v20[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v10 = [v8 traitCollectionWithTraitsFromCollections:v9];

  v11 = [objc_opt_class() appearanceForTraitCollection:v10];
  v12 = objc_alloc_init(MEMORY[0x277D0C8C0]);
  [v11 setBaseStyle:v12];

  v13 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:2];
  v14 = MEMORY[0x277D75C80];
  v19[0] = v6;
  v19[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v16 = [v14 traitCollectionWithTraitsFromCollections:v15];

  v17 = [objc_opt_class() appearanceForTraitCollection:v16];
  v18 = objc_alloc_init(MEMORY[0x277D0C8B8]);
  [v17 setBaseStyle:v18];
}

- (GKLabel)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = GKLabel;
  v3 = [(GKLabel *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = 0x277D0C8C0;
    }

    v7 = objc_alloc_init(*v6);
    objc_storeStrong(&v3->_baseStyle, v7);
  }

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKLabel;
  [(GKLabel *)&v4 setAttributedText:a3];
  self->_usingAttributedText = 1;
  [(GKLabel *)self replayAndApplyStyleUnlessInhibited];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKLabel;
  [(GKLabel *)&v4 setText:a3];
  self->_usingAttributedText = 0;
}

- (void)applyTextStyle:(id)a3
{
  appliedStyle = a3;
  v6 = appliedStyle;
  if (self->_appliedStyle != appliedStyle)
  {
    objc_storeStrong(&self->_appliedStyle, a3);
    appliedStyle = self->_appliedStyle;
  }

  if (appliedStyle)
  {
    [(GKLabel *)self replayAndApplyStyleWithSystemContentChange:0];
  }
}

- (double)actualFontShrinkageFactor
{
  result = self->_actualFontShrinkageFactor;
  if (result == 0.0)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)shrinkFontToFitSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v41[2] = *MEMORY[0x277D85DE8];
  [(GKLabel *)self replayAndApplyStyleUnlessInhibited];
  if (width == 0.0 || (v39 = height, v6 = width, height == 0.0))
  {
    [(GKLabel *)self frame];
    v39 = v8;
    if (v7 == 0.0)
    {
      v28 = height;
      v27 = width;
      goto LABEL_30;
    }

    v6 = v7;
  }

  v9 = [(GKLabel *)self text];
  if ([(GKLabel *)self numberOfLines]== 1)
  {
    v10 = 0;
    v11 = 2;
  }

  else
  {
    v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v13 = [v9 componentsSeparatedByCharactersInSet:v12];

    if ([v13 count] < 2)
    {
      v10 = 0;
      v11 = 2;
    }

    else
    {
      v10 = [v13 objectAtIndexedSubscript:0];
      v11 = 0;
    }
  }

  v14 = [(GKLabel *)self font];
  [v14 pointSize];
  v16 = v15;
  [(GKLabel *)self minimumScaleFactor];
  v18 = v16 * v17;
  v19 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v20 = [v19 mutableCopy];

  [v20 setLineBreakMode:v11];
  LODWORD(v21) = *"333?";
  [v20 setHyphenationFactor:v21];
  v38 = v16;
  if (v16 >= v18)
  {
    v22 = *MEMORY[0x277D740A8];
    v23 = *MEMORY[0x277D74118];
    while (1)
    {
      v40[0] = v22;
      v40[1] = v23;
      v41[0] = v14;
      v41[1] = v20;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      [v9 boundingRectWithSize:1 options:v24 attributes:0 context:{v6, 1.79769313e308}];
      v27 = v26;
      v28 = v25;
      if (v26 < v6 && v25 < v39)
      {
        if (!v10)
        {
          break;
        }

        [v10 boundingRectWithSize:1 options:v24 attributes:0 context:{1.79769313e308, v25}];
        if (v30 < v6)
        {
          break;
        }
      }

      v16 = v16 + -0.5;
      v31 = [v14 fontWithSize:v16];

      width = v27;
      height = v28;
      v14 = v31;
      if (v16 < v18)
      {
        goto LABEL_24;
      }
    }
  }

  v31 = v14;
  v28 = height;
  v27 = width;
LABEL_24:
  if (v16 != v38)
  {
    [(GKLabel *)self setFont:v31];
    v32 = [(GKLabel *)self attributedText];

    if (v32)
    {
      v33 = [(GKLabel *)self attributedText];
      v34 = [v33 attributesAtIndex:0 effectiveRange:0];

      v35 = [v34 objectForKeyedSubscript:@"GKRecorderAttribute"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v35 setFontSize:0 rebaseSelector:v16];
      }
    }
  }

  [(GKLabel *)self setActualFontShrinkageFactor:v16 / v38];

LABEL_30:
  v36 = v27;
  v37 = v28;
  result.height = v37;
  result.width = v36;
  return result;
}

- (void)updateConstraints
{
  if ([(GKLabel *)self shouldEnforcePreferredWidth])
  {
    [(GKLabel *)self bounds];
    Width = CGRectGetWidth(v6);
    [(GKLabel *)self preferredMaxLayoutWidth];
    if (v4 != Width)
    {
      [(GKLabel *)self setPreferredMaxLayoutWidth:Width];
    }
  }

  v5.receiver = self;
  v5.super_class = GKLabel;
  [(GKLabel *)&v5 updateConstraints];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(GKLabel *)self shouldEnforcePreferredWidth])
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    v8 = CGRectGetWidth(v10);
    [(GKLabel *)self bounds];
    if (v8 != CGRectGetWidth(v11))
    {
      [(GKLabel *)self setNeedsUpdateConstraints];
    }
  }

  v9.receiver = self;
  v9.super_class = GKLabel;
  [(GKLabel *)&v9 setBounds:x, y, width, height];
}

- (UIEdgeInsets)titleEdgeInsets
{
  top = self->_titleEdgeInsets.top;
  left = self->_titleEdgeInsets.left;
  bottom = self->_titleEdgeInsets.bottom;
  right = self->_titleEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end