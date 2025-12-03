@interface JFXTextEffectEditorTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)textEditingFrame;
- (CGRect)textFrameWithoutFudge;
- (JFXTextEffectEditorTextView)initWithTextEditingProperties:(id)properties editorView:(id)view textContainer:(id)container;
- (JFXTextEffectEditorView)editorView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)textColorForCaretSelection;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (unint64_t)JFX_countNumberOfLines;
- (void)JFX_adjustSizeToMatchExpectedNumberOfLines:(id)lines;
- (void)JFX_adjustTextEditingViewFrameAndInsetsForShadow:(id)shadow;
- (void)JFX_adjustTextEditingViewInsetsForVerticalAlignment:(int64_t)alignment textAreaHeight:(double)height textHeight:(double)textHeight;
- (void)applyTextEditingProperties:(id)properties;
- (void)unmarkText;
@end

@implementation JFXTextEffectEditorTextView

- (JFXTextEffectEditorTextView)initWithTextEditingProperties:(id)properties editorView:(id)view textContainer:(id)container
{
  propertiesCopy = properties;
  viewCopy = view;
  containerCopy = container;
  [propertiesCopy bounds];
  v18.receiver = self;
  v18.super_class = JFXTextEffectEditorTextView;
  v11 = [(JFXTextEffectEditorTextView *)&v18 initWithFrame:containerCopy textContainer:?];

  if (v11)
  {
    [(JFXTextEffectEditorTextView *)v11 setEditorView:viewCopy];
    layer = [(JFXTextEffectEditorTextView *)v11 layer];
    [layer setBorderWidth:0.0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(JFXTextEffectEditorTextView *)v11 setBackgroundColor:clearColor];

    [(JFXTextEffectEditorTextView *)v11 setReturnKeyType:0];
    [(JFXTextEffectEditorTextView *)v11 setKeyboardAppearance:1];
    [(JFXTextEffectEditorTextView *)v11 setScrollEnabled:0];
    textContainer = [(JFXTextEffectEditorTextView *)v11 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(JFXTextEffectEditorTextView *)v11 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(JFXTextEffectEditorTextView *)v11 setContentInsetAdjustmentBehavior:2];
    textContainer2 = [(JFXTextEffectEditorTextView *)v11 textContainer];
    [textContainer2 setWidthTracksTextView:1];

    textContainer3 = [(JFXTextEffectEditorTextView *)v11 textContainer];
    [textContainer3 setHeightTracksTextView:1];

    if ([propertiesCopy isAllCaps])
    {
      [(JFXTextEffectEditorTextView *)v11 setAutocapitalizationType:3];
    }

    if ([propertiesCopy isEmoji])
    {
      [(JFXTextEffectEditorTextView *)v11 setKeyboardType:124];
    }
  }

  return v11;
}

- (void)applyTextEditingProperties:(id)properties
{
  propertiesCopy = properties;
  useFullTransform = [propertiesCopy useFullTransform];
  editorView = [(JFXTextEffectEditorTextView *)self editorView];
  transformView = [editorView transformView];
  v8 = transformView;
  if (useFullTransform)
  {
    v9 = *(MEMORY[0x277CD9DE8] + 80);
    v117 = *(MEMORY[0x277CD9DE8] + 64);
    v118 = v9;
    v10 = *(MEMORY[0x277CD9DE8] + 112);
    v119 = *(MEMORY[0x277CD9DE8] + 96);
    v120 = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 16);
    v113 = *MEMORY[0x277CD9DE8];
    v114 = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 48);
    v115 = *(MEMORY[0x277CD9DE8] + 32);
    v116 = v12;
    [transformView setTransform3D:&v113];

    effectFrame = [propertiesCopy effectFrame];
    [effectFrame relativeToSize];
    v14 = CGRectMakeWithSize();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    editorView2 = [(JFXTextEffectEditorTextView *)self editorView];
    transformView2 = [editorView2 transformView];
    [transformView2 setBounds:{v14, v16, v18, v20}];

    v23 = *MEMORY[0x277CBF348];
    v24 = *(MEMORY[0x277CBF348] + 8);
    editorView3 = [(JFXTextEffectEditorTextView *)self editorView];
    transformView3 = [editorView3 transformView];
    [transformView3 setCenter:{v23, v24}];
  }

  else
  {
    v27 = *(MEMORY[0x277CBF2C0] + 16);
    v113 = *MEMORY[0x277CBF2C0];
    v114 = v27;
    v115 = *(MEMORY[0x277CBF2C0] + 32);
    [transformView setTransform:&v113];

    [propertiesCopy frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    editorView3 = [(JFXTextEffectEditorTextView *)self editorView];
    transformView3 = [editorView3 transformView];
    [transformView3 setFrame:{v29, v31, v33, v35}];
  }

  selectedRange = [(JFXTextEffectEditorTextView *)self selectedRange];
  v38 = v37;
  attributedText = [propertiesCopy attributedText];
  [(JFXTextEffectEditorTextView *)self setAttributedText:attributedText];

  [(JFXTextEffectEditorTextView *)self setSelectedRange:selectedRange, v38];
  customTextEditTintColor = [propertiesCopy customTextEditTintColor];
  [(JFXTextEffectEditorTextView *)self setTintColor:customTextEditTintColor];

  [propertiesCopy bounds];
  if (useFullTransform)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    effectFrame2 = [propertiesCopy effectFrame];
    v46 = effectFrame2;
    if (effectFrame2)
    {
      [effectFrame2 transform];
    }

    else
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
    }

    v105 = v116;
    v107 = v114;
    v101 = v115;
    v102 = v113;
    v103 = v120;
    v104 = v118;
    v99 = v119;
    v100 = v117;
    editorView4 = [(JFXTextEffectEditorTextView *)self editorView];
    transformView4 = [editorView4 transformView];
    v112[0] = v102;
    v112[1] = v107;
    v112[2] = v101;
    v112[3] = v105;
    v112[4] = v100;
    v112[5] = v104;
    v112[6] = v99;
    v112[7] = v103;
    [transformView4 setTransform3D:v112];

    effectFrame3 = [propertiesCopy effectFrame];
    [effectFrame3 objectBounds];
    v47 = v54;
    v56 = v55;
    v49 = v57;
    v50 = v58;

    effectFrame4 = [propertiesCopy effectFrame];
    [effectFrame4 relativeToSize];
    v48 = v60 - (v56 + v50);
  }

  else
  {
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v50 = v44;
  }

  if ([propertiesCopy isSpecialCaseForGameOverPoster])
  {
    v47 = v47 + (v49 - v49 * 0.73) * 0.5;
    v48 = v48 + (v50 - v50 * 0.73) * 0.5;
    v50 = v50 * 0.73;
    v49 = v49 * 0.73;
  }

  [(JFXTextEffectEditorTextView *)self setFrame:v47, v48, v49, v50];
  [(JFXTextEffectEditorTextView *)self setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v61 = MEMORY[0x277D415F8];
  attributedText2 = [propertiesCopy attributedText];
  defaultTypingAttributes = [propertiesCopy defaultTypingAttributes];
  v64 = [v61 shadowFromAttributedString:attributedText2 defaultAttributes:defaultTypingAttributes];

  [(JFXTextEffectEditorTextView *)self JFX_adjustTextEditingViewFrameAndInsetsForShadow:v64];
  [(JFXTextEffectEditorTextView *)self frame];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = 1.0;
  v74 = 1.0;
  if ((useFullTransform & 1) == 0)
  {
    [propertiesCopy scale];
    v73 = v75;
    v74 = v76;
  }

  [(JFXTextEffectEditorTextView *)self textContainerInset];
  v78 = v77;
  [(JFXTextEffectEditorTextView *)self textContainerInset];
  v80 = v72 - (v78 + v79);
  v81 = MEMORY[0x277D415F8];
  attributedText3 = [propertiesCopy attributedText];
  typingAttributes = [(JFXTextEffectEditorTextView *)self typingAttributes];
  [v81 textHeightFromAttributedString:attributedText3 defaultAttributes:typingAttributes scale:v73];
  v85 = v84;

  v86 = MEMORY[0x277D415F8];
  attributedText4 = [propertiesCopy attributedText];
  defaultTypingAttributes2 = [propertiesCopy defaultTypingAttributes];
  v89 = [v86 verticalAlignmentFromAttributedString:attributedText4 defaultAttributes:defaultTypingAttributes2];

  [(JFXTextEffectEditorTextView *)self JFX_adjustTextEditingViewInsetsForVerticalAlignment:v89 textAreaHeight:v80 textHeight:v85];
  [(JFXTextEffectEditorTextView *)self setTextFrameWithoutFudge:v66, v68, v70, v72];
  [(JFXTextEffectEditorTextView *)self setFrame:v66, v68, v70, v72 + 100.0];
  [(JFXTextEffectEditorTextView *)self JFX_adjustSizeToMatchExpectedNumberOfLines:propertiesCopy];
  v90 = MEMORY[0x277D415F8];
  attributedText5 = [propertiesCopy attributedText];
  [v90 xOffsetForTextTrackingFromAttributedString:attributedText5];
  v108 = v73 * v92;

  [propertiesCopy baselineYOffset];
  v106 = v74 * v93;
  [(JFXTextEffectEditorTextView *)self center];
  v95.f64[1] = v94;
  v96.f64[0] = v108;
  v96.f64[1] = v106;
  [(JFXTextEffectEditorTextView *)self setCenter:vaddq_f64(v96, v95)];
  if ((useFullTransform & 1) == 0)
  {
    if (propertiesCopy)
    {
      [propertiesCopy partialTransformNoScaleNoTranslation];
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
    }

    editorView5 = [(JFXTextEffectEditorTextView *)self editorView];
    transformView5 = [editorView5 transformView];
    v113 = v109;
    v114 = v110;
    v115 = v111;
    [transformView5 setTransform:&v113];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_paste_ == action && ([MEMORY[0x277D75810] generalPasteboard], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasImages"), v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = JFXTextEffectEditorTextView;
    v9 = [(JFXTextEffectEditorTextView *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  beginningOfDocument = [(JFXTextEffectEditorTextView *)self beginningOfDocument];
  endOfDocument = [(JFXTextEffectEditorTextView *)self endOfDocument];
  v10 = [(JFXTextEffectEditorTextView *)self textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  [(JFXTextEffectEditorTextView *)self selectionRectsForRange:v10];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v19 + 1) + 8 * i) rect];
        v26.x = x;
        v26.y = y;
        if (CGRectContainsPoint(v27, v26))
        {
          v18.receiver = self;
          v18.super_class = JFXTextEffectEditorTextView;
          v16 = [(JFXTextEffectEditorTextView *)&v18 hitTest:eventCopy withEvent:x, y];
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (CGRect)textEditingFrame
{
  v24 = *MEMORY[0x277D85DE8];
  beginningOfDocument = [(JFXTextEffectEditorTextView *)self beginningOfDocument];
  endOfDocument = [(JFXTextEffectEditorTextView *)self endOfDocument];
  v5 = [(JFXTextEffectEditorTextView *)self textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  v6 = [(JFXTextEffectEditorTextView *)self selectionRectsForRange:v5];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v14) rect];
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v14;
      }

      while (v12 != v14);
      v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)unmarkText
{
  delegate = [(JFXTextEffectEditorTextView *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_2855B2490];

  if (v4)
  {
    delegate2 = [(JFXTextEffectEditorTextView *)self delegate];
    [delegate2 textEffectEditorTextViewDidUnmarkText:self];
  }

  v6.receiver = self;
  v6.super_class = JFXTextEffectEditorTextView;
  [(JFXTextEffectEditorTextView *)&v6 unmarkText];
}

- (id)textColorForCaretSelection
{
  editorView = [(JFXTextEffectEditorTextView *)self editorView];
  textEditingProperties = [editorView textEditingProperties];

  defaultTextColor = [textEditingProperties defaultTextColor];
  customTextColor = [textEditingProperties customTextColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v7 = [customTextColor isEqual:clearColor];

  if (v7)
  {
    v8 = defaultTextColor;
  }

  else
  {
    v8 = customTextColor;
  }

  v9 = v8;

  return v8;
}

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  editorView = [(JFXTextEffectEditorTextView *)self editorView];
  textEditingProperties = [editorView textEditingProperties];

  v17.receiver = self;
  v17.super_class = JFXTextEffectEditorTextView;
  v9 = [(JFXTextEffectEditorTextView *)&v17 textStylingAtPosition:positionCopy inDirection:direction];

  v10 = *MEMORY[0x277D740C0];
  customTextColor = [v9 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  if (!customTextColor)
  {
    customTextColor = [textEditingProperties customTextColor];
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  v13 = [customTextColor isEqual:clearColor];

  if (v13)
  {
    defaultTextColor = [textEditingProperties defaultTextColor];
    if (!defaultTextColor)
    {
      defaultTextColor = [MEMORY[0x277D75348] blackColor];
    }

    v15 = [v9 mutableCopy];
    [v15 setObject:defaultTextColor forKeyedSubscript:v10];
  }

  else
  {
    v15 = v9;
  }

  return v15;
}

- (void)JFX_adjustTextEditingViewFrameAndInsetsForShadow:(id)shadow
{
  if (shadow)
  {
    selfCopy = self;
    shadowCopy = shadow;
    [shadowCopy shadowOffset];
    v6 = fabs(v5);
    [shadowCopy shadowBlurRadius];
    v8 = v6 + fabs(v7);
    [shadowCopy shadowOffset];
    v10 = fabs(v9);
    [shadowCopy shadowBlurRadius];
    v12 = v11;

    v13 = v10 + fabs(v12);
    [(JFXTextEffectEditorTextView *)selfCopy frame];
    v21 = CGRectInset(v20, -v8, -v13);
    [(JFXTextEffectEditorTextView *)selfCopy setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
    [(JFXTextEffectEditorTextView *)selfCopy textContainerInset];
    [(JFXTextEffectEditorTextView *)selfCopy setTextContainerInset:v13 + v14, v8 + v16, v13 + v15, v8 + v17];
  }
}

- (void)JFX_adjustTextEditingViewInsetsForVerticalAlignment:(int64_t)alignment textAreaHeight:(double)height textHeight:(double)textHeight
{
  if ((alignment + 1) < 2)
  {
    return;
  }

  selfCopy = self;
  if (height > textHeight)
  {
    v10 = height - textHeight;
    if (alignment == 2)
    {
      v14 = selfCopy;
      [(JFXTextEffectEditorTextView *)selfCopy textContainerInset];
      v12 = v10 + v13;
      goto LABEL_7;
    }

    if (alignment == 1)
    {
      v14 = selfCopy;
      [(JFXTextEffectEditorTextView *)selfCopy textContainerInset];
      v12 = v10 * 0.5 + v11;
LABEL_7:
      [(JFXTextEffectEditorTextView *)v14 setTextContainerInset:v12];
      selfCopy = v14;
    }
  }
}

- (void)JFX_adjustSizeToMatchExpectedNumberOfLines:(id)lines
{
  linesCopy = lines;
  numberOfLines = [linesCopy numberOfLines];
  if (numberOfLines)
  {
    v5 = numberOfLines;
    textAlignment = [linesCopy textAlignment];
    v7 = 5;
    do
    {
      jFX_countNumberOfLines = [(JFXTextEffectEditorTextView *)self JFX_countNumberOfLines];
      if (jFX_countNumberOfLines == v5)
      {
        break;
      }

      v9 = jFX_countNumberOfLines <= v5 ? -2.0 : 2.0;
      [(JFXTextEffectEditorTextView *)self frame];
      if (textAlignment == 2)
      {
        v10 = v10 - v9;
      }

      else if (textAlignment == 1)
      {
        v10 = v10 + v9 * -0.5;
      }

      [(JFXTextEffectEditorTextView *)self setFrame:v10];
      --v7;
    }

    while (v7);
  }
}

- (unint64_t)JFX_countNumberOfLines
{
  layoutManager = [(JFXTextEffectEditorTextView *)self layoutManager];
  numberOfGlyphs = [layoutManager numberOfGlyphs];
  [layoutManager extraLineFragmentRect];
  v5 = v4 > 0.0;
  if (numberOfGlyphs)
  {
    v6 = 0;
    do
    {
      v8 = 0;
      v9 = 0;
      [layoutManager lineFragmentRectForGlyphAtIndex:v6 effectiveRange:&v8];
      v6 = v9 + v8;
      ++v5;
    }

    while (v9 + v8 < numberOfGlyphs);
  }

  return v5;
}

- (CGRect)textFrameWithoutFudge
{
  x = self->_textFrameWithoutFudge.origin.x;
  y = self->_textFrameWithoutFudge.origin.y;
  width = self->_textFrameWithoutFudge.size.width;
  height = self->_textFrameWithoutFudge.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (JFXTextEffectEditorView)editorView
{
  WeakRetained = objc_loadWeakRetained(&self->_editorView);

  return WeakRetained;
}

@end