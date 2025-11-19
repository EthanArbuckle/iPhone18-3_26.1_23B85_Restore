@interface SUUITextBoxView
- (CGSize)_textSizeToFitSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUITextBoxView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)titleInsets;
- (__CTFrame)_textFrame;
- (id)_moreButtonLabel;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)reset;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setFixedWidthTextFrame:(__CTFrame *)a3;
- (void)setFixedWidthTitleTextFrame:(__CTFrame *)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMoreButtonTitle:(id)a3;
- (void)setNumberOfVisibleLines:(int64_t)a3;
- (void)setRating:(double)a3;
- (void)setRatingText:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTextFrameWithText:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTruncationStyle:(int64_t)a3;
@end

@implementation SUUITextBoxView

- (SUUITextBoxView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUITextBoxView;
  v3 = [(SUUITextBoxView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    [v4 userInterfaceIdiom];

    *&v3->_contentInsets.top = xmmword_259FCAAD0;
    *&v3->_contentInsets.bottom = xmmword_259FCAAE0;
    v3->_titleInsets.bottom = 2.0;
  }

  return v3;
}

- (void)dealloc
{
  textFrame = self->_textFrame;
  if (textFrame)
  {
    CFRelease(textFrame);
  }

  titleTextFrame = self->_titleTextFrame;
  if (titleTextFrame)
  {
    CFRelease(titleTextFrame);
  }

  truncationToken = self->_truncationToken;
  if (truncationToken)
  {
    CFRelease(truncationToken);
  }

  v6.receiver = self;
  v6.super_class = SUUITextBoxView;
  [(SUUITextBoxView *)&v6 dealloc];
}

- (void)reset
{
  [(SUUITextBoxView *)self setFixedWidthTextFrame:0];
  [(SUUITextBoxView *)self setFixedWidthTitleTextFrame:0];
  [(SUUITextBoxView *)self setRating:0.0];
  [(SUUITextBoxView *)self setRatingText:0];
  [(SUUITextBoxView *)self setSubtitle:0];
  [(SUUITextBoxView *)self setTitle:0];
  moreButtonLabel = self->_moreButtonLabel;

  [(UILabel *)moreButtonLabel setHidden:1];
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v21 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    titleLabel = self->_titleLabel;
    v7 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v7)
    {
      [(UILabel *)titleLabel setTextColor:v7];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:v8];
    }

    subtitleLabel = self->_subtitleLabel;
    v10 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v10)
    {
      [(UILabel *)subtitleLabel setTextColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [(UILabel *)subtitleLabel setTextColor:v11];
    }

    ratingLabel = self->_ratingLabel;
    v13 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v13)
    {
      [(UILabel *)ratingLabel setTextColor:v13];
    }

    else
    {
      v14 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)ratingLabel setTextColor:v14];
    }

    moreButtonLabel = self->_moreButtonLabel;
    v16 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v16)
    {
      [(UILabel *)moreButtonLabel setTextColor:v16];
    }

    else
    {
      v17 = [(SUUITextBoxView *)self tintColor];
      [(UILabel *)moreButtonLabel setTextColor:v17];
    }

    v18 = self->_moreButtonLabel;
    v19 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v19)
    {
      [(UILabel *)v18 setHighlightedTextColor:v19];
    }

    else
    {
      v20 = [MEMORY[0x277D75348] grayColor];
      [(UILabel *)v18 setHighlightedTextColor:v20];
    }

    [(SUUITextBoxView *)self setNeedsDisplay];
    v5 = v21;
  }
}

- (void)setFixedWidthTextFrame:(__CTFrame *)a3
{
  textFrame = self->_textFrame;
  if (textFrame != a3)
  {
    if (textFrame)
    {
      CFRelease(textFrame);
    }

    self->_textFrame = a3;
    underlyingText = self->_underlyingText;
    self->_underlyingText = 0;

    v7 = self->_textFrame;
    if (v7)
    {
      CFRetain(v7);
    }

    [(SUUITextBoxView *)self setNeedsDisplay];

    [(SUUITextBoxView *)self setNeedsLayout];
  }
}

- (void)setFixedWidthTitleTextFrame:(__CTFrame *)a3
{
  titleTextFrame = self->_titleTextFrame;
  if (titleTextFrame != a3)
  {
    if (titleTextFrame)
    {
      CFRelease(titleTextFrame);
    }

    self->_titleTextFrame = a3;
    if (a3)
    {
      CFRetain(a3);
      [(UILabel *)self->_titleLabel removeFromSuperview];
      titleLabel = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUITextBoxView *)self setNeedsDisplay];
  }
}

- (void)setMoreButtonTitle:(id)a3
{
  v6 = a3;
  v4 = [(SUUITextBoxView *)self moreButtonTitle];
  if (v4 != v6 && ([v4 isEqualToString:v6] & 1) == 0)
  {
    v5 = [(SUUITextBoxView *)self _moreButtonLabel];
    [v5 setText:v6];
    [v5 sizeToFit];
  }
}

- (void)setNumberOfVisibleLines:(int64_t)a3
{
  if (self->_numberOfVisibleLines != a3)
  {
    self->_numberOfVisibleLines = a3;
    [(SUUITextBoxView *)self setNeedsDisplay];
  }
}

- (void)setRating:(double)a3
{
  if (self->_rating != a3)
  {
    ratingImageView = self->_ratingImageView;
    if (a3 == 0.0)
    {
      [(UIImageView *)ratingImageView removeFromSuperview];
      v8 = self->_ratingImageView;
      self->_ratingImageView = 0;
    }

    else
    {
      if (!ratingImageView)
      {
        v6 = objc_alloc_init(MEMORY[0x277D755E8]);
        v7 = self->_ratingImageView;
        self->_ratingImageView = v6;

        [(SUUITextBoxView *)self addSubview:self->_ratingImageView];
      }

      v8 = [SUUIRatingStarsCache cacheWithProperties:1];
      v9 = self->_ratingImageView;
      v10 = [v8 ratingStarsImageForRating:a3];
      [(UIImageView *)v9 setImage:v10];

      [(UIImageView *)self->_ratingImageView sizeToFit];
    }

    [(SUUITextBoxView *)self setNeedsLayout];
  }

  self->_rating = a3;
}

- (void)setRatingText:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_ratingLabel text];
  if (v4 != v16 && ([v4 isEqualToString:v16] & 1) == 0)
  {
    ratingLabel = self->_ratingLabel;
    if (v16)
    {
      if (!ratingLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_ratingLabel;
        self->_ratingLabel = v6;

        v8 = self->_ratingLabel;
        v9 = [(SUUITextBoxView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_ratingLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_ratingLabel;
        v13 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v13)
        {
          [(UILabel *)v12 setTextColor:v13];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
          [(UILabel *)v12 setTextColor:v15];
        }

        [(SUUITextBoxView *)self addSubview:self->_ratingLabel];
        ratingLabel = self->_ratingLabel;
      }

      [(UILabel *)ratingLabel setText:?];
    }

    else
    {
      [(UILabel *)ratingLabel removeFromSuperview];
      v14 = self->_ratingLabel;
      self->_ratingLabel = 0;
    }

    [(SUUITextBoxView *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_subtitleLabel text];
  if (v4 != v16 && ([v4 isEqualToString:v16] & 1) == 0)
  {
    subtitleLabel = self->_subtitleLabel;
    if (v16)
    {
      if (!subtitleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_subtitleLabel;
        self->_subtitleLabel = v6;

        v8 = self->_subtitleLabel;
        v9 = [(SUUITextBoxView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_subtitleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_subtitleLabel;
        v13 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v13)
        {
          [(UILabel *)v12 setTextColor:v13];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
          [(UILabel *)v12 setTextColor:v15];
        }

        [(SUUITextBoxView *)self addSubview:self->_subtitleLabel];
        subtitleLabel = self->_subtitleLabel;
      }

      [(UILabel *)subtitleLabel setText:?];
      [(UILabel *)self->_subtitleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v14 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    [(SUUITextBoxView *)self setNeedsLayout];
  }
}

- (void)setTextFrameWithText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_underlyingText != v4)
  {
    textFrame = self->_textFrame;
    v9 = v5;
    if (textFrame)
    {
      CFRelease(textFrame);
      v5 = v9;
      self->_textFrame = 0;
    }

    v7 = [(NSString *)v5 copy];
    underlyingText = self->_underlyingText;
    self->_underlyingText = v7;

    v4 = [(SUUITextBoxView *)self setNeedsDisplay];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setTitle:(id)a3
{
  v20 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  if (v4 != v20 && ([v4 isEqualToString:v20] & 1) == 0)
  {
    v5 = v20;
    if (v20)
    {
      titleTextFrame = self->_titleTextFrame;
      if (titleTextFrame)
      {
        CFRelease(titleTextFrame);
        v5 = v20;
        self->_titleTextFrame = 0;
      }

      titleLabel = self->_titleLabel;
      if (!titleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_titleLabel;
        self->_titleLabel = v8;

        v10 = self->_titleLabel;
        v11 = [(SUUITextBoxView *)self backgroundColor];
        [(UILabel *)v10 setBackgroundColor:v11];

        v12 = self->_titleLabel;
        v13 = MEMORY[0x277D74300];
        v14 = [MEMORY[0x277D75418] currentDevice];
        [v14 userInterfaceIdiom];

        v15 = [v13 systemFontOfSize:17.0];
        [(UILabel *)v12 setFont:v15];

        v16 = self->_titleLabel;
        v17 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v17)
        {
          [(UILabel *)v16 setTextColor:v17];
        }

        else
        {
          v19 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v16 setTextColor:v19];
        }

        [(SUUITextBoxView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
        v5 = v20;
      }

      [(UILabel *)titleLabel setText:v5];
    }

    else
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
      v18 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    self->_titleTextIsNaturallyRTL = [v20 _isNaturallyRTL];
    [(SUUITextBoxView *)self setNeedsLayout];
  }
}

- (void)setTruncationStyle:(int64_t)a3
{
  if (self->_truncationStyle != a3)
  {
    self->_truncationStyle = a3;
    [(UILabel *)self->_moreButtonLabel setHidden:a3 == 1];
  }
}

- (void)drawRect:(CGRect)a3
{
  v98 = *MEMORY[0x277D85DE8];
  [(SUUITextBoxView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v95 = v9;
  v96 = v8;
  if (self->_titleLabel)
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    [v10 userInterfaceIdiom];

    height = 22.0;
  }

  else
  {
    height = 0.0;
  }

  titleTextFrame = self->_titleTextFrame;
  v13 = MEMORY[0x277CBF2C0];
  if (titleTextFrame)
  {
    Lines = CTFrameGetLines(titleTextFrame);
    Count = CFArrayGetCount(Lines);
    v93 = v88;
    v16 = &v88[-2 * MEMORY[0x28223BE20]()];
    v99.location = 0;
    v99.length = Count;
    CTFrameGetLineOrigins(self->_titleTextFrame, v99, v16);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v18 = v13[1];
    *&v97.a = *v13;
    *&v97.c = v18;
    *&v97.tx = v13[2];
    CGContextSetTextMatrix(CurrentContext, &v97);
    v19 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    v20 = v19;
    if (v19)
    {
      [v19 set];
    }

    else
    {
      v21 = [MEMORY[0x277D75348] blackColor];
      [v21 set];
    }

    Path = CTFrameGetPath(self->_titleTextFrame);
    BoundingBox = CGPathGetBoundingBox(Path);
    height = BoundingBox.size.height;
    if (Count >= 1)
    {
      v23 = 0;
      v24 = self->_contentInsets.top + BoundingBox.size.height;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Lines, v23);
        if (self->_titleTextIsNaturallyRTL)
        {
          v102.origin.x = v5;
          v102.origin.y = v7;
          v102.size.height = v95;
          v102.size.width = v96;
          Width = CGRectGetWidth(v102);
          BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0);
          v27 = Width - CGRectGetWidth(BoundsWithOptions) - (self->_contentInsets.left + v16->x);
        }

        else
        {
          v27 = self->_contentInsets.left + v16->x;
        }

        CGContextSetTextPosition(CurrentContext, v27, v16->y - v24);
        CTLineDraw(ValueAtIndex, CurrentContext);
        ++v23;
        ++v16;
      }

      while (Count != v23);
    }

    CGContextRestoreGState(CurrentContext);
  }

  v28 = [(SUUITextBoxView *)self _textFrame];
  if (!v28)
  {
    return;
  }

  v29 = v28;
  v30 = CTFrameGetLines(v28);
  v31 = CFArrayGetCount(v30);
  v32 = v31;
  v88[1] = v88;
  v93 = 504;
  numberOfVisibleLines = self->_numberOfVisibleLines;
  if (numberOfVisibleLines >= v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = self->_numberOfVisibleLines;
  }

  if (numberOfVisibleLines)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  MEMORY[0x28223BE20]();
  v36 = &v88[-2 * v35];
  v100.location = 0;
  v100.length = v35;
  CTFrameGetLineOrigins(v29, v100, v36);
  v37 = UIGraphicsGetCurrentContext();
  CGContextSaveGState(v37);
  CGContextScaleCTM(v37, 1.0, -1.0);
  v38 = v13[1];
  *&v97.a = *v13;
  *&v97.c = v38;
  *&v97.tx = v13[2];
  CGContextSetTextMatrix(v37, &v97);
  v39 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
  v40 = v39;
  if (v39)
  {
    [v39 set];
  }

  else
  {
    v41 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    [v41 set];
  }

  ratingImageView = self->_ratingImageView;
  v94 = v7;
  if (ratingImageView)
  {
    p_contentInsets = &self->_contentInsets;
    top = self->_contentInsets.top;
    if (height <= 0.00000011920929)
    {
      if (self->_subtitleLabel)
      {
        v45 = top + 16.0;
      }

      else
      {
        v45 = self->_contentInsets.top;
      }
    }

    else
    {
      v45 = height + top;
    }

    v46 = 14.0;
    goto LABEL_38;
  }

  if (self->_ratingLabel)
  {
    v46 = 17.0;
  }

  else
  {
    v46 = 0.0;
  }

  p_contentInsets = &self->_contentInsets;
  v47 = self->_contentInsets.top;
  if (height <= 0.00000011920929)
  {
    if (self->_subtitleLabel)
    {
      v45 = v47 + 16.0;
    }

    else
    {
      v45 = self->_contentInsets.top;
    }

    if (v46 <= 0.00000011920929)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v45 = height + v47;
  if (v46 > 0.00000011920929)
  {
LABEL_38:
    v49 = [MEMORY[0x277D75418] currentDevice];
    [v49 userInterfaceIdiom];

    bottom = v46 + 1.0 + 5.0;
    goto LABEL_39;
  }

  bottom = self->_titleInsets.bottom;
LABEL_39:
  v45 = v45 + bottom;
LABEL_40:
  v50 = p_contentInsets->bottom;
  v51 = CTFrameGetPath(v29);
  v104 = CGPathGetBoundingBox(v51);
  v52 = v35 - 1;
  if (v35 >= 1)
  {
    v53 = 0;
    v54 = p_contentInsets->bottom - v95 + v95 - v50 - v45 - v104.size.height;
    v92 = v35 - 1;
    v91 = v5;
    v90 = v30;
    v89 = v32;
    while (1)
    {
      v55 = CFArrayGetValueAtIndex(v30, v53);
      v105 = CTLineGetBoundsWithOptions(v55, 0);
      v56 = v105.size.width;
      if (self->_textIsNaturallyRTL)
      {
        x = v105.origin.x;
        y = v105.origin.y;
        v59 = v105.size.height;
        v106.origin.x = v5;
        v106.origin.y = v94;
        v106.size.height = v95;
        v106.size.width = v96;
        v60 = CGRectGetWidth(v106);
        v107.origin.x = x;
        v107.origin.y = y;
        v107.size.width = v56;
        v107.size.height = v59;
        v61 = v60 - CGRectGetWidth(v107) - (p_contentInsets->left + v36->x);
      }

      else
      {
        v61 = p_contentInsets->left + v36->x;
      }

      v62 = v54 + v36->y;
      CGContextSetTextPosition(v37, v61, v62);
      if (v53 >= v52 && v32 != v35 && *(&self->super.super.super.super.isa + v93))
      {
        break;
      }

      CTLineDraw(v55, v37);
LABEL_63:
      ++v53;
      ++v36;
      if (v35 == v53)
      {
        goto LABEL_64;
      }
    }

    if (!self->_truncationToken)
    {
      v63 = [SUUITextLayout newAttributedStringWithText:@"…"];
      self->_truncationToken = CTLineCreateWithAttributedString(v63);
      v64 = v63;
      v52 = v92;
      CFRelease(v64);
    }

    v65 = v96 - p_contentInsets->left - p_contentInsets->right;
    v66 = [(SUUITextBoxView *)self _moreButtonLabel];
    [v66 frame];
    v68 = v67;
    v70 = v69;
    v108 = CTLineGetBoundsWithOptions(self->_truncationToken, 0x20uLL);
    v71 = v108.size.width;
    v72 = v65 - v108.size.width;
    v73 = [v66 isHidden];
    v74 = v72 - (v68 + 1.0);
    if (v73)
    {
      v74 = v72;
    }

    if (v74 < v56)
    {
      TruncatedLine = CTLineCreateTruncatedLine(v55, v74, kCTLineTruncationEnd, 0);
      v109 = CTLineGetBoundsWithOptions(TruncatedLine, 0);
      v56 = v109.size.width;
      if (TruncatedLine)
      {
        TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(TruncatedLine);
        CTLineDraw(TruncatedLine, v37);
        CFRelease(TruncatedLine);
        v52 = v92;
LABEL_58:
        v77 = v61 + v56 - TrailingWhitespaceWidth;
        v78 = ceilf(v77);
        CGContextSetTextPosition(v37, v78, v62);
        CTLineDraw(self->_truncationToken, v37);
        if (v66)
        {
          v79 = v71 + v78 + 1.0;
          v80 = ceilf(v79);
          v81 = fabs(v62) - v70;
          v82 = floorf(v81);
          v83 = [MEMORY[0x277D759A0] mainScreen];
          [v83 scale];
          v85 = v84 == 1.0;
          v86 = 3.5;
          if (v85)
          {
            v86 = 4.0;
          }

          v87 = (v82 + v86);

          v52 = v92;
          [v66 setFrame:{v80, v87, v68, v70}];
        }

        v5 = v91;
        v30 = v90;
        v32 = v89;
        goto LABEL_63;
      }

      v52 = v92;
    }

    TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v55);
    CTLineDraw(v55, v37);
    goto LABEL_58;
  }

LABEL_64:
  CGContextRestoreGState(v37);
}

- (void)layoutSubviews
{
  [(SUUITextBoxView *)self bounds];
  v52 = v4;
  v53 = v3;
  v6 = v5;
  v51 = v7;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    v9 = 1;
  }

  else
  {
    v9 = self->_titleLabel != 0;
  }

  p_contentInsets = &self->_contentInsets;
  if (self->_ratingLabel)
  {
    v11 = 1;
  }

  else
  {
    v11 = self->_ratingImageView != 0;
  }

  top = p_contentInsets->top;
  v13 = MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = v14;
  v50 = v15;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel frame];
    v15 = v17;
    v16 = 16.0;
  }

  titleLabel = self->_titleLabel;
  v19 = v14;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v20 = [MEMORY[0x277D75418] currentDevice];
    [v20 userInterfaceIdiom];

    v19 = 22.0;
  }

  if (v16 >= v19)
  {
    v21 = v16;
  }

  else
  {
    v21 = v19;
  }

  v22 = v6 - self->_contentInsets.right - v15;
  [(UILabel *)self->_subtitleLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22, self->_contentInsets.top + v21 - v16 + -1.0, v15, v16, *&v53, v52, v6, v51)];
  left = self->_contentInsets.left;
  if (v15 <= 0.0)
  {
    v24 = v6 - left - self->_contentInsets.right;
  }

  else
  {
    v24 = v22 + -5.0 - left;
  }

  [(UILabel *)self->_titleLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(left, v21 + p_contentInsets->top - v19, v24, v19, *&v53, v52, v6, v51)];
  if (v9)
  {
    if (v11)
    {
      v25 = [MEMORY[0x277D75418] currentDevice];
      [v25 userInterfaceIdiom];

      bottom = 1.0;
    }

    else
    {
      bottom = self->_titleInsets.bottom;
    }

    v27 = top + v21 + bottom;
  }

  else
  {
    v27 = top;
  }

  v28 = v50;
  ratingLabel = self->_ratingLabel;
  v30 = v14;
  if (ratingLabel)
  {
    [(UILabel *)ratingLabel frame];
    v30 = 17.0;
  }

  ratingImageView = self->_ratingImageView;
  if (ratingImageView)
  {
    [(UIImageView *)ratingImageView frame];
    v28 = v34;
    v14 = v35;
    v36 = self->_ratingImageView;
    if (v30 >= v35)
    {
      v37 = v30;
    }

    else
    {
      v37 = v35;
    }

    if (v36)
    {
      v38 = self->_contentInsets.left;
      v39 = (v37 - v35) * 0.5;
      v40 = v27 + floorf(v39) + 2.0;
      [(UIImageView *)v36 setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v38, v40, v34, v35, *&v53, v52, v6, v51)];
    }

    else
    {
      v38 = v32;
      v40 = v33;
    }
  }

  else
  {
    v38 = *v13;
    v40 = v13[1];
    if (v30 >= v14)
    {
      v37 = v30;
    }

    else
    {
      v37 = v14;
    }
  }

  v41 = self->_ratingLabel;
  if (v41)
  {
    if (self->_ratingImageView)
    {
      v56.origin.x = v38;
      v56.origin.y = v40;
      v56.size.width = v28;
      v56.size.height = v14;
      v42 = CGRectGetMaxX(v56) + 5.0;
      v41 = self->_ratingLabel;
    }

    else
    {
      v42 = self->_contentInsets.left;
    }

    v43 = (v37 - v30) * 0.5;
    [(UILabel *)v41 setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v42, v27 + floorf(v43), v6 - v42 - self->_contentInsets.right, v30, *&v53, v52, v6, v51)];
  }

  v44 = [(SUUITextBoxView *)self _textFrame];
  if (!v44 || self->_truncationStyle == 1)
  {
    v45 = [(SUUITextBoxView *)self _moreButtonLabel];
    v54 = v45;
LABEL_43:
    v46 = 1;
    goto LABEL_44;
  }

  Lines = CTFrameGetLines(v44);
  Count = CFArrayGetCount(Lines);
  numberOfVisibleLines = self->_numberOfVisibleLines;
  v45 = [(SUUITextBoxView *)self _moreButtonLabel];
  v54 = v45;
  if (!numberOfVisibleLines || Count <= numberOfVisibleLines)
  {
    goto LABEL_43;
  }

  v46 = 0;
LABEL_44:
  [v45 setHidden:v46];
}

- (void)setBackgroundColor:(id)a3
{
  moreButtonLabel = self->_moreButtonLabel;
  v5 = a3;
  [(UILabel *)moreButtonLabel setBackgroundColor:v5];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  [(UILabel *)self->_ratingLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUITextBoxView;
  [(SUUITextBoxView *)&v6 setBackgroundColor:v5];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_underlyingText)
  {
    if (self->_textFrame)
    {
      [(SUUITextBoxView *)self frame];
      if (v8 != width)
      {
        CFRelease(self->_textFrame);
        self->_textFrame = 0;
        [(SUUITextBoxView *)self setNeedsDisplay];
      }
    }
  }

  v9.receiver = self;
  v9.super_class = SUUITextBoxView;
  [(SUUITextBoxView *)&v9 setFrame:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  p_contentInsets = &self->_contentInsets;
  top = self->_contentInsets.top;
  bottom = self->_contentInsets.bottom;
  if (self->_titleLabel)
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    [v8 userInterfaceIdiom];

    v9 = 22.0;
  }

  else
  {
    titleTextFrame = self->_titleTextFrame;
    if (titleTextFrame)
    {
      Path = CTFrameGetPath(titleTextFrame);
      BoundingBox = CGPathGetBoundingBox(Path);
      *&BoundingBox.origin.x = BoundingBox.size.height;
      v9 = ceilf(*&BoundingBox.origin.x);
    }

    else
    {
      v9 = 0.0;
    }
  }

  v12 = top + bottom;
  v13 = 16.0;
  if (v9 >= 16.0)
  {
    v13 = v9;
  }

  if (self->_subtitleLabel)
  {
    v9 = v13;
  }

  if (v9 > 0.0)
  {
    v12 = v12 + v9 + self->_titleInsets.bottom;
  }

  if (self->_ratingLabel)
  {
    if (v9 != 0.0)
    {
      v12 = v12 - self->_titleInsets.bottom;
    }

    v12 = v12 + 27.0;
  }

  [(SUUITextBoxView *)self _textSizeToFitSize:width - p_contentInsets->left - p_contentInsets->right, 1.79769313e308];
  v15 = v12 + v14;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

- (id)_moreButtonLabel
{
  moreButtonLabel = self->_moreButtonLabel;
  if (!moreButtonLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_moreButtonLabel;
    self->_moreButtonLabel = v4;

    v6 = self->_moreButtonLabel;
    v7 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)self->_moreButtonLabel setHidden:self->_truncationStyle == 1];
    v8 = self->_moreButtonLabel;
    v9 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v9)
    {
      [(UILabel *)v8 setTextColor:v9];
    }

    else
    {
      v10 = [(SUUITextBoxView *)self tintColor];
      [(UILabel *)v8 setTextColor:v10];
    }

    v11 = self->_moreButtonLabel;
    v12 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v12)
    {
      [(UILabel *)v11 setHighlightedTextColor:v12];
    }

    else
    {
      v13 = [MEMORY[0x277D75348] grayColor];
      [(UILabel *)v11 setHighlightedTextColor:v13];
    }

    [(UILabel *)self->_moreButtonLabel setTextAlignment:2];
    [(SUUITextBoxView *)self addSubview:self->_moreButtonLabel];
    moreButtonLabel = self->_moreButtonLabel;
  }

  return moreButtonLabel;
}

- (__CTFrame)_textFrame
{
  result = self->_textFrame;
  if (!result)
  {
    if (self->_underlyingText)
    {
      [(SUUITextBoxView *)self bounds];
      v4 = CGRectGetWidth(v12) - self->_contentInsets.left - self->_contentInsets.right;
      v5 = [SUUITextLayout newAttributedStringWithText:self->_underlyingText];
      v6 = CTFramesetterCreateWithAttributedString(v5);
      v11.height = 1.79769313e308;
      v9.location = 0;
      v9.length = 0;
      v11.width = v4;
      v7 = CTFramesetterSuggestFrameSizeWithConstraints(v6, v9, 0, v11, 0);
      Mutable = CGPathCreateMutable();
      v13.origin.x = 0.0;
      v13.origin.y = 0.0;
      v13.size.width = v7.width;
      v13.size.height = v7.height;
      CGPathAddRect(Mutable, 0, v13);
      v10.location = 0;
      v10.length = 0;
      self->_textFrame = CTFramesetterCreateFrame(v6, v10, Mutable, 0);
      CGPathRelease(Mutable);
      CFRelease(v6);
      CFRelease(v5);
      self->_textIsNaturallyRTL = [(NSString *)self->_underlyingText _isNaturallyRTL];
      return self->_textFrame;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGSize)_textSizeToFitSize:(CGSize)a3
{
  if (self->_underlyingText)
  {
    height = a3.height;
    width = a3.width;
    v5 = [SUUITextLayout newAttributedStringWithText:?];
    v6 = CTFramesetterCreateWithAttributedString(v5);
    v24.location = 0;
    v24.length = 0;
    v27.width = width;
    v27.height = height;
    v7 = CTFramesetterSuggestFrameSizeWithConstraints(v6, v24, 0, v27, 0);
    v8 = v7.width;
    v9 = v7.height;
    CFRelease(v6);
    CFRelease(v5);
  }

  else
  {
    textFrame = self->_textFrame;
    if (textFrame)
    {
      Path = CTFrameGetPath(textFrame);
      BoundingBox = CGPathGetBoundingBox(Path);
      v8 = BoundingBox.size.width;
      v9 = BoundingBox.size.height;
      Lines = CTFrameGetLines(self->_textFrame);
      Count = CFArrayGetCount(Lines);
      numberOfVisibleLines = self->_numberOfVisibleLines;
      if (numberOfVisibleLines)
      {
        v20 = numberOfVisibleLines < Count;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        origins.x = 0.0;
        origins.y = 0.0;
        v22.x = 0.0;
        v22.y = 0.0;
        v25.location = 0;
        v25.length = 1;
        CTFrameGetLineOrigins(self->_textFrame, v25, &v22);
        v26.location = self->_numberOfVisibleLines - 1;
        v26.length = 1;
        CTFrameGetLineOrigins(self->_textFrame, v26, &origins);
        ValueAtIndex = CFArrayGetValueAtIndex(Lines, self->_numberOfVisibleLines - 1);
        BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0x14uLL);
        v9 = BoundsWithOptions.size.height + v22.y - origins.y - BoundsWithOptions.origin.y;
      }
    }

    else
    {
      v8 = *MEMORY[0x277CBF3A8];
      v9 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  v10 = v9;
  v11 = ceilf(v10);
  v12 = v8;
  v13 = ceilf(v12);
  result.height = v11;
  result.width = v13;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)titleInsets
{
  top = self->_titleInsets.top;
  left = self->_titleInsets.left;
  bottom = self->_titleInsets.bottom;
  right = self->_titleInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end