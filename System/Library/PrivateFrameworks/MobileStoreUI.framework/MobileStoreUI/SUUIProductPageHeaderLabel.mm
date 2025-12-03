@interface SUUIProductPageHeaderLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (__CTFramesetter)_newTextFramesetter;
- (double)secondaryImageWidth;
- (id)_textAttributes;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setContentRating:(id)rating;
- (void)setRatingColor:(id)color;
- (void)setSecondaryContentRatingImages:(id)images;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation SUUIProductPageHeaderLabel

- (void)setText:(id)text
{
  textCopy = text;
  if (self->_text != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_text, text);
    [(SUUIProductPageHeaderLabel *)self setNeedsDisplay];
    textCopy = v6;
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(SUUIProductPageHeaderLabel *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)setContentRating:(id)rating
{
  ratingCopy = rating;
  if (self->_contentRating != ratingCopy)
  {
    v8 = ratingCopy;
    objc_storeStrong(&self->_contentRating, rating);
    v6 = [(SUUIProductPageHeaderLabel *)self _imageForContentRating:self->_contentRating];
    contentRatingImage = self->_contentRatingImage;
    self->_contentRatingImage = v6;

    [(SUUIProductPageHeaderLabel *)self setNeedsDisplay];
    ratingCopy = v8;
  }
}

- (void)setSecondaryContentRatingImages:(id)images
{
  imagesCopy = images;
  if (self->_secondaryContentRatingImages != imagesCopy)
  {
    v6 = imagesCopy;
    objc_storeStrong(&self->_secondaryContentRatingImages, images);
    [(SUUIProductPageHeaderLabel *)self setNeedsDisplay];
    imagesCopy = v6;
  }
}

- (void)setRatingColor:(id)color
{
  colorCopy = color;
  if (self->_ratingColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_ratingColor, color);
    v6 = [(SUUIProductPageHeaderLabel *)self _imageForContentRating:self->_contentRating];
    contentRatingImage = self->_contentRatingImage;
    self->_contentRatingImage = v6;

    [(SUUIProductPageHeaderLabel *)self setNeedsDisplay];
    colorCopy = v8;
  }
}

- (double)secondaryImageWidth
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(NSArray *)self->_secondaryContentRatingImages count])
  {
    return 0.0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_secondaryContentRatingImages;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) size];
        v7 = v7 + v9 + 5.0;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)drawRect:(CGRect)rect
{
  [(SUUIProductPageHeaderLabel *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277CBF348];
  _newTextFramesetter = [(SUUIProductPageHeaderLabel *)self _newTextFramesetter];
  Mutable = CGPathCreateMutable();
  v95.origin.x = 0.0;
  v95.origin.y = 0.0;
  v82 = v5;
  v95.size.width = v5;
  v95.size.height = v7;
  CGPathAddRect(Mutable, 0, v95);
  v91.location = 0;
  v91.length = 0;
  Frame = CTFramesetterCreateFrame(_newTextFramesetter, v91, Mutable, 0);
  CFRelease(Mutable);
  Lines = CTFrameGetLines(Frame);
  Count = CFArrayGetCount(Lines);
  v14 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
  cf = Frame;
  v92.location = 0;
  v92.length = 0;
  CTFrameGetLineOrigins(Frame, v92, v14);
  [(SUUIProductPageHeaderLabel *)self secondaryImageWidth];
  v16 = v15;
  [(UIImage *)self->_contentRatingImage size];
  theArray = Lines;
  if (Count == 1)
  {
    if (self->_contentRatingImage && (v18 = v16 + v17 + 5.0, ValueAtIndex = CFArrayGetValueAtIndex(Lines, 0), BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0), v20 = v5 - v18, BoundsWithOptions.size.width > v20))
    {
      CFRelease(Frame);
      free(v14);
      v21 = CGPathCreateMutable();
      v97.origin.x = 0.0;
      v97.origin.y = 0.0;
      v97.size.width = v20;
      v97.size.height = v7;
      CGPathAddRect(v21, 0, v97);
      v93.location = 0;
      v93.length = 0;
      v22 = CTFramesetterCreateFrame(_newTextFramesetter, v93, v21, 0);
      CFRelease(v21);
      theArray = CTFrameGetLines(v22);
      Count = CFArrayGetCount(theArray);
      v14 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
      cf = v22;
      v94.location = 0;
      v94.length = 0;
      CTFrameGetLineOrigins(v22, v94, v14);
    }

    else
    {
      Count = 1;
    }
  }

  v75 = _newTextFramesetter;
  v77 = v8[1];
  v78 = *v8;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, 0.0, v7);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v24 = *(MEMORY[0x277CBF2C0] + 16);
  *&v90.a = *MEMORY[0x277CBF2C0];
  *&v90.c = v24;
  *&v90.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(CurrentContext, &v90);
  v25 = Count - 1;
  if (Count < 1)
  {
    v85 = 0;
  }

  else
  {
    v85 = 0;
    v26 = 0;
    p_x = &v14[v25].x;
    v28 = 0x277CCA000uLL;
    v76 = v14;
    v80 = CurrentContext;
    v81 = Count;
    v79 = Count - 1;
    do
    {
      v29 = CFArrayGetValueAtIndex(theArray, v26);
      v30 = v29;
      if (v26 == v25)
      {
        v31 = v28;
        v89 = v29;
        location = CTLineGetStringRange(v29).location;
        VisibleStringRange = CTFrameGetVisibleStringRange(cf);
        if (VisibleStringRange.location + VisibleStringRange.length >= [(NSString *)self->_text length])
        {
          v38 = 0;
        }

        else
        {
          v34 = [(NSString *)self->_text substringFromIndex:location];
          v35 = objc_alloc(MEMORY[0x277CCA898]);
          _textAttributes = [(SUUIProductPageHeaderLabel *)self _textAttributes];
          v37 = [v35 initWithString:v34 attributes:_textAttributes];

          v38 = CTLineCreateWithAttributedString(v37);
          CFRelease(v37);
        }

        v40 = objc_alloc(MEMORY[0x277CCA898]);
        _textAttributes2 = [(SUUIProductPageHeaderLabel *)self _textAttributes];
        v42 = [v40 initWithString:@"…" attributes:_textAttributes2];

        v87 = v42;
        v43 = CTLineCreateWithAttributedString(v42);
        contentRatingImage = self->_contentRatingImage;
        if (contentRatingImage)
        {
          [(UIImage *)contentRatingImage size];
          v46 = v45 + 5.0;
        }

        else
        {
          v46 = 0.0;
        }

        v47 = v82 - v46 - v16;
        if (v38)
        {
          v48 = v38;
        }

        else
        {
          v48 = v89;
        }

        v86 = v43;
        TruncatedLine = CTLineCreateTruncatedLine(v48, v47, kCTLineTruncationEnd, v43);
        v39 = TruncatedLine;
        if (self->_contentRatingImage)
        {
          v98 = CTLineGetBoundsWithOptions(TruncatedLine, 0);
          *&v98.origin.x = *p_x + v98.size.width + 5.0;
          v78 = roundf(*&v98.origin.x);
          v50 = v7 - p_x[1];
          [(UIImage *)self->_contentRatingImage size];
          v52 = v50 - v51 + 0.0;
          v77 = roundf(v52);
        }

        if ([(NSArray *)self->_secondaryContentRatingImages count])
        {
          v53 = self->_contentRatingImage;
          v84 = v38;
          if (v53)
          {
            [(UIImage *)v53 size];
            v55 = v54 + 5.0 + 5.0;
          }

          else
          {
            v55 = 5.0;
          }

          v99 = CTLineGetBoundsWithOptions(v39, 0);
          width = v99.size.width;
          v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_secondaryContentRatingImages, "count")}];
          v58 = v31;
          if ([(NSArray *)self->_secondaryContentRatingImages count])
          {
            v59 = 0;
            do
            {
              v60 = [(NSArray *)self->_secondaryContentRatingImages objectAtIndex:v59];
              v61 = v55 + width + *p_x;
              v62 = roundf(v61);
              v63 = v7 - p_x[1];
              [v60 size];
              v65 = v63 - v64 + -1.0;
              v66 = [*(v58 + 3680) valueWithCGPoint:{v62, roundf(v65)}];
              [v57 addObject:v66];
              [v60 size];
              v55 = v55 + v67 + 5.0;

              ++v59;
            }

            while ([(NSArray *)self->_secondaryContentRatingImages count]> v59);
          }

          v68 = [MEMORY[0x277CBEA60] arrayWithArray:v57];

          v85 = v68;
          v14 = v76;
          v28 = v58;
          v38 = v84;
        }

        CFRelease(v86);
        CFRelease(v87);
        v25 = v79;
        CurrentContext = v80;
        v30 = v89;
        if (v38)
        {
          CFRelease(v38);
        }

        Count = v81;
      }

      else
      {
        v39 = 0;
      }

      CGContextSetTextPosition(CurrentContext, v14[v26].x, v14[v26].y);
      if (v39)
      {
        v69 = v39;
      }

      else
      {
        v69 = v30;
      }

      CTLineDraw(v69, CurrentContext);
      if (v39)
      {
        CFRelease(v39);
      }

      ++v26;
    }

    while (v26 != Count);
  }

  CGContextRestoreGState(CurrentContext);
  v70 = self->_contentRatingImage;
  v71 = v75;
  if (v70)
  {
    [(UIImage *)v70 drawAtPoint:v78, v77];
  }

  if ([(NSArray *)self->_secondaryContentRatingImages count]&& [(NSArray *)self->_secondaryContentRatingImages count])
  {
    v72 = 0;
    do
    {
      v73 = [(NSArray *)self->_secondaryContentRatingImages objectAtIndex:v72];
      v74 = [v85 objectAtIndex:v72];
      [v74 CGPointValue];
      [v73 drawAtPoint:?];

      ++v72;
    }

    while ([(NSArray *)self->_secondaryContentRatingImages count]> v72);
  }

  free(v14);
  CFRelease(cf);
  CFRelease(v71);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _newTextFramesetter = [(SUUIProductPageHeaderLabel *)self _newTextFramesetter];
  v28.location = 0;
  v28.length = 0;
  v33.width = width;
  v33.height = height;
  v7 = CTFramesetterSuggestFrameSizeWithConstraints(_newTextFramesetter, v28, 0, v33, 0);
  v8 = v7.height;
  Mutable = CGPathCreateMutable();
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v7.width;
  v36.size.height = v7.height;
  CGPathAddRect(Mutable, 0, v36);
  v29.location = 0;
  v29.length = 0;
  Frame = CTFramesetterCreateFrame(_newTextFramesetter, v29, Mutable, 0);
  CFRelease(Mutable);
  Lines = CTFrameGetLines(Frame);
  Count = CFArrayGetCount(Lines);
  [(SUUIProductPageHeaderLabel *)self secondaryImageWidth];
  v14 = v13;
  [(UIImage *)self->_contentRatingImage size];
  if (Count == 1)
  {
    v16 = v14 + v15 + 5.0;
    if (v16 > 0.0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Lines, 0);
      BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0);
      v18 = width - v16;
      if (BoundsWithOptions.size.width <= v18)
      {
        goto LABEL_7;
      }

      CFRelease(Frame);
      v30.location = 0;
      v30.length = 0;
      v34.width = v18;
      v34.height = height;
      v8 = CTFramesetterSuggestFrameSizeWithConstraints(_newTextFramesetter, v30, 0, v34, 0).height;
      v19 = CGPathCreateMutable();
      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      v38.size.width = v18;
      v38.size.height = height;
      CGPathAddRect(v19, 0, v38);
      v31.location = 0;
      v31.length = 0;
      Frame = CTFramesetterCreateFrame(_newTextFramesetter, v31, v19, 0);
      CFRelease(v19);
      Lines = CTFrameGetLines(Frame);
      Count = CFArrayGetCount(Lines);
    }
  }

  if (Count >= 3)
  {
    v27.x = 0.0;
    v27.y = 0.0;
    v32.location = 1;
    v32.length = 1;
    CTFrameGetLineOrigins(Frame, v32, &v27);
    v20 = CFArrayGetValueAtIndex(Lines, 1);
    v39 = CTLineGetBoundsWithOptions(v20, 0);
    v8 = v8 - v27.y - v39.origin.y;
  }

LABEL_7:
  v21 = v8;
  v22 = roundf(v21);
  v23 = width;
  v24 = roundf(v23);
  CFRelease(Frame);
  CFRelease(_newTextFramesetter);
  v25 = v24;
  v26 = v22;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUIProductPageHeaderLabel;
  [(SUUIProductPageHeaderLabel *)&v3 layoutSubviews];
  [(SUUIProductPageHeaderLabel *)self setNeedsDisplay];
}

- (__CTFramesetter)_newTextFramesetter
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  text = self->_text;
  _textAttributes = [(SUUIProductPageHeaderLabel *)self _textAttributes];
  v6 = [v3 initWithString:text attributes:_textAttributes];

  v7 = CTFramesetterCreateWithAttributedString(v6);
  CFRelease(v6);
  return v7;
}

- (id)_textAttributes
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D740A8];
  v3 = 17.0;
  if (self->_isPad)
  {
    v3 = 22.0;
  }

  v4 = [MEMORY[0x277D74300] systemFontOfSize:v3];
  v10[0] = v4;
  v9[1] = *MEMORY[0x277D740C0];
  textColor = self->_textColor;
  blackColor = textColor;
  if (!textColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v10[1] = blackColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!textColor)
  {
  }

  return v7;
}

@end