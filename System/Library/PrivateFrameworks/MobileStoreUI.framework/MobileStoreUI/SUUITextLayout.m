@interface SUUITextLayout
+ (__CFAttributedString)_newAttributedStringWithRequest:(id)a3;
+ (__CFAttributedString)newAttributedStringWithText:(id)a3;
- (CGSize)textSize;
- (CGSize)truncatedSize;
- (SUUITextLayout)initWithLayoutRequest:(id)a3;
- (void)dealloc;
@end

@implementation SUUITextLayout

- (SUUITextLayout)initWithLayoutRequest:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SUUITextLayout;
  v5 = [(SUUITextLayout *)&v23 init];
  if (v5)
  {
    v6 = [v4 attributedText];
    if (v6 || (v6 = [objc_opt_class() _newAttributedStringWithRequest:v4]) != 0)
    {
      v7 = v6;
      [v4 width];
      v9 = v8;
      v10 = CTFramesetterCreateWithAttributedString(v7);
      v5->_framesetter = v10;
      v26.height = 1.79769313e308;
      v24.location = 0;
      v24.length = 0;
      v26.width = v9;
      v11 = CTFramesetterSuggestFrameSizeWithConstraints(v10, v24, 0, v26, 0);
      Mutable = CGPathCreateMutable();
      v13 = Mutable;
      height = v11.height;
      if (v9 >= v11.width)
      {
        width = v9;
      }

      else
      {
        width = v11.width;
      }

      v16 = 0;
      v17 = 0;
      CGPathAddRect(Mutable, 0, *(&height - 3));
      v25.location = 0;
      v25.length = 0;
      v5->_textFrame = CTFramesetterCreateFrame(v5->_framesetter, v25, v13, 0);
      CGPathRelease(v13);
      v5->_size = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(v11)));
      Lines = CTFrameGetLines(v5->_textFrame);
      Count = CFArrayGetCount(Lines);
      v20 = [v4 numberOfLines];
      if (v20 && v20 < Count)
      {
        v5->_requiresTruncation = 1;
        v5->_truncatedSize.width = SUUITextLayoutSizeForCTFrame(v5->_textFrame, v20);
        v5->_truncatedSize.height = v21;
      }

      v5->_lineHeight = SUUIAttributedStringGetLineHeight(v7);
      CFRelease(v7);
    }
  }

  return v5;
}

- (void)dealloc
{
  textFrame = self->_textFrame;
  if (textFrame)
  {
    CFRelease(textFrame);
  }

  framesetter = self->_framesetter;
  if (framesetter)
  {
    CFRelease(framesetter);
  }

  v5.receiver = self;
  v5.super_class = SUUITextLayout;
  [(SUUITextLayout *)&v5 dealloc];
}

+ (__CFAttributedString)newAttributedStringWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  [(SUUITextLayoutRequest *)v5 setText:v4];

  v6 = [a1 _newAttributedStringWithRequest:v5];
  return v6;
}

+ (__CFAttributedString)_newAttributedStringWithRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D74240]);
  [v4 setMinimumLineHeight:16.0];
  [v4 setLineBreakMode:0];
  [v4 setAlignment:{NSTextAlignmentFromCTTextAlignment(objc_msgSend(v3, "textAlignment"))}];
  v5 = 0;
  if ([v3 fontWeight] <= 2)
  {
    v6 = MEMORY[0x277D74300];
    [v3 fontSize];
    v7 = [v6 systemFontOfSize:? weight:?];
    v5 = [v7 fontName];
  }

  if (UIAccessibilityIsBoldTextEnabled())
  {
    v8 = MEMORY[0x277D74300];
    [v3 fontSize];
    v9 = [v8 systemFontOfSize:?];
    v10 = [v9 fontName];

    v5 = v10;
  }

  [v3 fontSize];
  v12 = CTFontCreateWithName(v5, v11, 0);
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v14 = [v13 initWithObjectsAndKeys:{v12, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], v4, *MEMORY[0x277D74118], 0}];
  v15 = [v3 text];
  v16 = CFAttributedStringCreate(0, v15, v14);

  CFRelease(v12);
  return v16;
}

- (CGSize)textSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)truncatedSize
{
  width = self->_truncatedSize.width;
  height = self->_truncatedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end