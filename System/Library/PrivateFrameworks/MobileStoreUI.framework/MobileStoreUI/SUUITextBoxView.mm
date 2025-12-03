@interface SUUITextBoxView
- (CGSize)_textSizeToFitSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUITextBoxView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)titleInsets;
- (__CTFrame)_textFrame;
- (id)_moreButtonLabel;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)reset;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setFixedWidthTextFrame:(__CTFrame *)frame;
- (void)setFixedWidthTitleTextFrame:(__CTFrame *)frame;
- (void)setFrame:(CGRect)frame;
- (void)setMoreButtonTitle:(id)title;
- (void)setNumberOfVisibleLines:(int64_t)lines;
- (void)setRating:(double)rating;
- (void)setRatingText:(id)text;
- (void)setSubtitle:(id)subtitle;
- (void)setTextFrameWithText:(id)text;
- (void)setTitle:(id)title;
- (void)setTruncationStyle:(int64_t)style;
@end

@implementation SUUITextBoxView

- (SUUITextBoxView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUITextBoxView;
  v3 = [(SUUITextBoxView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice userInterfaceIdiom];

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

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v21 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    titleLabel = self->_titleLabel;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }

    subtitleLabel = self->_subtitleLabel;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)subtitleLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [(UILabel *)subtitleLabel setTextColor:v11];
    }

    ratingLabel = self->_ratingLabel;
    secondaryTextColor3 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor3)
    {
      [(UILabel *)ratingLabel setTextColor:secondaryTextColor3];
    }

    else
    {
      blackColor2 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)ratingLabel setTextColor:blackColor2];
    }

    moreButtonLabel = self->_moreButtonLabel;
    secondaryTextColor4 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor4)
    {
      [(UILabel *)moreButtonLabel setTextColor:secondaryTextColor4];
    }

    else
    {
      tintColor = [(SUUITextBoxView *)self tintColor];
      [(UILabel *)moreButtonLabel setTextColor:tintColor];
    }

    v18 = self->_moreButtonLabel;
    secondaryTextColor5 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor5)
    {
      [(UILabel *)v18 setHighlightedTextColor:secondaryTextColor5];
    }

    else
    {
      grayColor = [MEMORY[0x277D75348] grayColor];
      [(UILabel *)v18 setHighlightedTextColor:grayColor];
    }

    [(SUUITextBoxView *)self setNeedsDisplay];
    schemeCopy = v21;
  }
}

- (void)setFixedWidthTextFrame:(__CTFrame *)frame
{
  textFrame = self->_textFrame;
  if (textFrame != frame)
  {
    if (textFrame)
    {
      CFRelease(textFrame);
    }

    self->_textFrame = frame;
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

- (void)setFixedWidthTitleTextFrame:(__CTFrame *)frame
{
  titleTextFrame = self->_titleTextFrame;
  if (titleTextFrame != frame)
  {
    if (titleTextFrame)
    {
      CFRelease(titleTextFrame);
    }

    self->_titleTextFrame = frame;
    if (frame)
    {
      CFRetain(frame);
      [(UILabel *)self->_titleLabel removeFromSuperview];
      titleLabel = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUITextBoxView *)self setNeedsDisplay];
  }
}

- (void)setMoreButtonTitle:(id)title
{
  titleCopy = title;
  moreButtonTitle = [(SUUITextBoxView *)self moreButtonTitle];
  if (moreButtonTitle != titleCopy && ([moreButtonTitle isEqualToString:titleCopy] & 1) == 0)
  {
    _moreButtonLabel = [(SUUITextBoxView *)self _moreButtonLabel];
    [_moreButtonLabel setText:titleCopy];
    [_moreButtonLabel sizeToFit];
  }
}

- (void)setNumberOfVisibleLines:(int64_t)lines
{
  if (self->_numberOfVisibleLines != lines)
  {
    self->_numberOfVisibleLines = lines;
    [(SUUITextBoxView *)self setNeedsDisplay];
  }
}

- (void)setRating:(double)rating
{
  if (self->_rating != rating)
  {
    ratingImageView = self->_ratingImageView;
    if (rating == 0.0)
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
      v10 = [v8 ratingStarsImageForRating:rating];
      [(UIImageView *)v9 setImage:v10];

      [(UIImageView *)self->_ratingImageView sizeToFit];
    }

    [(SUUITextBoxView *)self setNeedsLayout];
  }

  self->_rating = rating;
}

- (void)setRatingText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_ratingLabel text];
  if (text != textCopy && ([text isEqualToString:textCopy] & 1) == 0)
  {
    ratingLabel = self->_ratingLabel;
    if (textCopy)
    {
      if (!ratingLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_ratingLabel;
        self->_ratingLabel = v6;

        v8 = self->_ratingLabel;
        backgroundColor = [(SUUITextBoxView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_ratingLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_ratingLabel;
        primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
        if (primaryTextColor)
        {
          [(UILabel *)v12 setTextColor:primaryTextColor];
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

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  text = [(UILabel *)self->_subtitleLabel text];
  if (text != subtitleCopy && ([text isEqualToString:subtitleCopy] & 1) == 0)
  {
    subtitleLabel = self->_subtitleLabel;
    if (subtitleCopy)
    {
      if (!subtitleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_subtitleLabel;
        self->_subtitleLabel = v6;

        v8 = self->_subtitleLabel;
        backgroundColor = [(SUUITextBoxView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_subtitleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_subtitleLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v12 setTextColor:secondaryTextColor];
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

- (void)setTextFrameWithText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_underlyingText != textCopy)
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

    textCopy = [(SUUITextBoxView *)self setNeedsDisplay];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](textCopy, v5);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
  {
    v5 = titleCopy;
    if (titleCopy)
    {
      titleTextFrame = self->_titleTextFrame;
      if (titleTextFrame)
      {
        CFRelease(titleTextFrame);
        v5 = titleCopy;
        self->_titleTextFrame = 0;
      }

      titleLabel = self->_titleLabel;
      if (!titleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_titleLabel;
        self->_titleLabel = v8;

        v10 = self->_titleLabel;
        backgroundColor = [(SUUITextBoxView *)self backgroundColor];
        [(UILabel *)v10 setBackgroundColor:backgroundColor];

        v12 = self->_titleLabel;
        v13 = MEMORY[0x277D74300];
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        [currentDevice userInterfaceIdiom];

        v15 = [v13 systemFontOfSize:17.0];
        [(UILabel *)v12 setFont:v15];

        v16 = self->_titleLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v16 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v16 setTextColor:blackColor];
        }

        [(SUUITextBoxView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
        v5 = titleCopy;
      }

      [(UILabel *)titleLabel setText:v5];
    }

    else
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
      v18 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    self->_titleTextIsNaturallyRTL = [titleCopy _isNaturallyRTL];
    [(SUUITextBoxView *)self setNeedsLayout];
  }
}

- (void)setTruncationStyle:(int64_t)style
{
  if (self->_truncationStyle != style)
  {
    self->_truncationStyle = style;
    [(UILabel *)self->_moreButtonLabel setHidden:style == 1];
  }
}

- (void)drawRect:(CGRect)rect
{
  v98 = *MEMORY[0x277D85DE8];
  [(SUUITextBoxView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v95 = v9;
  v96 = v8;
  if (self->_titleLabel)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice userInterfaceIdiom];

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
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    v20 = secondaryTextColor;
    if (secondaryTextColor)
    {
      [secondaryTextColor set];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [blackColor set];
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

  _textFrame = [(SUUITextBoxView *)self _textFrame];
  if (!_textFrame)
  {
    return;
  }

  v29 = _textFrame;
  v30 = CTFrameGetLines(_textFrame);
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
  primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
  v40 = primaryTextColor;
  if (primaryTextColor)
  {
    [primaryTextColor set];
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice2 userInterfaceIdiom];

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
    _moreButtonLabel = [(SUUITextBoxView *)self _moreButtonLabel];
    [_moreButtonLabel frame];
    v68 = v67;
    v70 = v69;
    v108 = CTLineGetBoundsWithOptions(self->_truncationToken, 0x20uLL);
    v71 = v108.size.width;
    v72 = v65 - v108.size.width;
    isHidden = [_moreButtonLabel isHidden];
    v74 = v72 - (v68 + 1.0);
    if (isHidden)
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
        if (_moreButtonLabel)
        {
          v79 = v71 + v78 + 1.0;
          v80 = ceilf(v79);
          v81 = fabs(v62) - v70;
          v82 = floorf(v81);
          mainScreen = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen scale];
          v85 = v84 == 1.0;
          v86 = 3.5;
          if (v85)
          {
            v86 = 4.0;
          }

          v87 = (v82 + v86);

          v52 = v92;
          [_moreButtonLabel setFrame:{v80, v87, v68, v70}];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice userInterfaceIdiom];

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
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      [currentDevice2 userInterfaceIdiom];

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

  _textFrame = [(SUUITextBoxView *)self _textFrame];
  if (!_textFrame || self->_truncationStyle == 1)
  {
    _moreButtonLabel = [(SUUITextBoxView *)self _moreButtonLabel];
    v54 = _moreButtonLabel;
LABEL_43:
    v46 = 1;
    goto LABEL_44;
  }

  Lines = CTFrameGetLines(_textFrame);
  Count = CFArrayGetCount(Lines);
  numberOfVisibleLines = self->_numberOfVisibleLines;
  _moreButtonLabel = [(SUUITextBoxView *)self _moreButtonLabel];
  v54 = _moreButtonLabel;
  if (!numberOfVisibleLines || Count <= numberOfVisibleLines)
  {
    goto LABEL_43;
  }

  v46 = 0;
LABEL_44:
  [_moreButtonLabel setHidden:v46];
}

- (void)setBackgroundColor:(id)color
{
  moreButtonLabel = self->_moreButtonLabel;
  colorCopy = color;
  [(UILabel *)moreButtonLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_ratingLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUITextBoxView;
  [(SUUITextBoxView *)&v6 setBackgroundColor:colorCopy];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  p_contentInsets = &self->_contentInsets;
  top = self->_contentInsets.top;
  bottom = self->_contentInsets.bottom;
  if (self->_titleLabel)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [currentDevice userInterfaceIdiom];

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
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)v8 setTextColor:secondaryTextColor];
    }

    else
    {
      tintColor = [(SUUITextBoxView *)self tintColor];
      [(UILabel *)v8 setTextColor:tintColor];
    }

    v11 = self->_moreButtonLabel;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)v11 setHighlightedTextColor:secondaryTextColor2];
    }

    else
    {
      grayColor = [MEMORY[0x277D75348] grayColor];
      [(UILabel *)v11 setHighlightedTextColor:grayColor];
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

- (CGSize)_textSizeToFitSize:(CGSize)size
{
  if (self->_underlyingText)
  {
    height = size.height;
    width = size.width;
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