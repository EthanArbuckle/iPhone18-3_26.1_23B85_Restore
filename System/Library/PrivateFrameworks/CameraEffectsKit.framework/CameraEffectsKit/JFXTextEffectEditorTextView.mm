@interface JFXTextEffectEditorTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)textEditingFrame;
- (CGRect)textFrameWithoutFudge;
- (JFXTextEffectEditorTextView)initWithTextEditingProperties:(id)a3 editorView:(id)a4 textContainer:(id)a5;
- (JFXTextEffectEditorView)editorView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)textColorForCaretSelection;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (unint64_t)JFX_countNumberOfLines;
- (void)JFX_adjustSizeToMatchExpectedNumberOfLines:(id)a3;
- (void)JFX_adjustTextEditingViewFrameAndInsetsForShadow:(id)a3;
- (void)JFX_adjustTextEditingViewInsetsForVerticalAlignment:(int64_t)a3 textAreaHeight:(double)a4 textHeight:(double)a5;
- (void)applyTextEditingProperties:(id)a3;
- (void)unmarkText;
@end

@implementation JFXTextEffectEditorTextView

- (JFXTextEffectEditorTextView)initWithTextEditingProperties:(id)a3 editorView:(id)a4 textContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 bounds];
  v18.receiver = self;
  v18.super_class = JFXTextEffectEditorTextView;
  v11 = [(JFXTextEffectEditorTextView *)&v18 initWithFrame:v10 textContainer:?];

  if (v11)
  {
    [(JFXTextEffectEditorTextView *)v11 setEditorView:v9];
    v12 = [(JFXTextEffectEditorTextView *)v11 layer];
    [v12 setBorderWidth:0.0];

    v13 = [MEMORY[0x277D75348] clearColor];
    [(JFXTextEffectEditorTextView *)v11 setBackgroundColor:v13];

    [(JFXTextEffectEditorTextView *)v11 setReturnKeyType:0];
    [(JFXTextEffectEditorTextView *)v11 setKeyboardAppearance:1];
    [(JFXTextEffectEditorTextView *)v11 setScrollEnabled:0];
    v14 = [(JFXTextEffectEditorTextView *)v11 textContainer];
    [v14 setLineFragmentPadding:0.0];

    [(JFXTextEffectEditorTextView *)v11 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(JFXTextEffectEditorTextView *)v11 setContentInsetAdjustmentBehavior:2];
    v15 = [(JFXTextEffectEditorTextView *)v11 textContainer];
    [v15 setWidthTracksTextView:1];

    v16 = [(JFXTextEffectEditorTextView *)v11 textContainer];
    [v16 setHeightTracksTextView:1];

    if ([v8 isAllCaps])
    {
      [(JFXTextEffectEditorTextView *)v11 setAutocapitalizationType:3];
    }

    if ([v8 isEmoji])
    {
      [(JFXTextEffectEditorTextView *)v11 setKeyboardType:124];
    }
  }

  return v11;
}

- (void)applyTextEditingProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 useFullTransform];
  v6 = [(JFXTextEffectEditorTextView *)self editorView];
  v7 = [v6 transformView];
  v8 = v7;
  if (v5)
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
    [v7 setTransform3D:&v113];

    v13 = [v4 effectFrame];
    [v13 relativeToSize];
    v14 = CGRectMakeWithSize();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(JFXTextEffectEditorTextView *)self editorView];
    v22 = [v21 transformView];
    [v22 setBounds:{v14, v16, v18, v20}];

    v23 = *MEMORY[0x277CBF348];
    v24 = *(MEMORY[0x277CBF348] + 8);
    v25 = [(JFXTextEffectEditorTextView *)self editorView];
    v26 = [v25 transformView];
    [v26 setCenter:{v23, v24}];
  }

  else
  {
    v27 = *(MEMORY[0x277CBF2C0] + 16);
    v113 = *MEMORY[0x277CBF2C0];
    v114 = v27;
    v115 = *(MEMORY[0x277CBF2C0] + 32);
    [v7 setTransform:&v113];

    [v4 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v25 = [(JFXTextEffectEditorTextView *)self editorView];
    v26 = [v25 transformView];
    [v26 setFrame:{v29, v31, v33, v35}];
  }

  v36 = [(JFXTextEffectEditorTextView *)self selectedRange];
  v38 = v37;
  v39 = [v4 attributedText];
  [(JFXTextEffectEditorTextView *)self setAttributedText:v39];

  [(JFXTextEffectEditorTextView *)self setSelectedRange:v36, v38];
  v40 = [v4 customTextEditTintColor];
  [(JFXTextEffectEditorTextView *)self setTintColor:v40];

  [v4 bounds];
  if (v5)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v45 = [v4 effectFrame];
    v46 = v45;
    if (v45)
    {
      [v45 transform];
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
    v51 = [(JFXTextEffectEditorTextView *)self editorView];
    v52 = [v51 transformView];
    v112[0] = v102;
    v112[1] = v107;
    v112[2] = v101;
    v112[3] = v105;
    v112[4] = v100;
    v112[5] = v104;
    v112[6] = v99;
    v112[7] = v103;
    [v52 setTransform3D:v112];

    v53 = [v4 effectFrame];
    [v53 objectBounds];
    v47 = v54;
    v56 = v55;
    v49 = v57;
    v50 = v58;

    v59 = [v4 effectFrame];
    [v59 relativeToSize];
    v48 = v60 - (v56 + v50);
  }

  else
  {
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v50 = v44;
  }

  if ([v4 isSpecialCaseForGameOverPoster])
  {
    v47 = v47 + (v49 - v49 * 0.73) * 0.5;
    v48 = v48 + (v50 - v50 * 0.73) * 0.5;
    v50 = v50 * 0.73;
    v49 = v49 * 0.73;
  }

  [(JFXTextEffectEditorTextView *)self setFrame:v47, v48, v49, v50];
  [(JFXTextEffectEditorTextView *)self setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v61 = MEMORY[0x277D415F8];
  v62 = [v4 attributedText];
  v63 = [v4 defaultTypingAttributes];
  v64 = [v61 shadowFromAttributedString:v62 defaultAttributes:v63];

  [(JFXTextEffectEditorTextView *)self JFX_adjustTextEditingViewFrameAndInsetsForShadow:v64];
  [(JFXTextEffectEditorTextView *)self frame];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = 1.0;
  v74 = 1.0;
  if ((v5 & 1) == 0)
  {
    [v4 scale];
    v73 = v75;
    v74 = v76;
  }

  [(JFXTextEffectEditorTextView *)self textContainerInset];
  v78 = v77;
  [(JFXTextEffectEditorTextView *)self textContainerInset];
  v80 = v72 - (v78 + v79);
  v81 = MEMORY[0x277D415F8];
  v82 = [v4 attributedText];
  v83 = [(JFXTextEffectEditorTextView *)self typingAttributes];
  [v81 textHeightFromAttributedString:v82 defaultAttributes:v83 scale:v73];
  v85 = v84;

  v86 = MEMORY[0x277D415F8];
  v87 = [v4 attributedText];
  v88 = [v4 defaultTypingAttributes];
  v89 = [v86 verticalAlignmentFromAttributedString:v87 defaultAttributes:v88];

  [(JFXTextEffectEditorTextView *)self JFX_adjustTextEditingViewInsetsForVerticalAlignment:v89 textAreaHeight:v80 textHeight:v85];
  [(JFXTextEffectEditorTextView *)self setTextFrameWithoutFudge:v66, v68, v70, v72];
  [(JFXTextEffectEditorTextView *)self setFrame:v66, v68, v70, v72 + 100.0];
  [(JFXTextEffectEditorTextView *)self JFX_adjustSizeToMatchExpectedNumberOfLines:v4];
  v90 = MEMORY[0x277D415F8];
  v91 = [v4 attributedText];
  [v90 xOffsetForTextTrackingFromAttributedString:v91];
  v108 = v73 * v92;

  [v4 baselineYOffset];
  v106 = v74 * v93;
  [(JFXTextEffectEditorTextView *)self center];
  v95.f64[1] = v94;
  v96.f64[0] = v108;
  v96.f64[1] = v106;
  [(JFXTextEffectEditorTextView *)self setCenter:vaddq_f64(v96, v95)];
  if ((v5 & 1) == 0)
  {
    if (v4)
    {
      [v4 partialTransformNoScaleNoTranslation];
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
    }

    v97 = [(JFXTextEffectEditorTextView *)self editorView];
    v98 = [v97 transformView];
    v113 = v109;
    v114 = v110;
    v115 = v111;
    [v98 setTransform:&v113];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_paste_ == a3 && ([MEMORY[0x277D75810] generalPasteboard], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasImages"), v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = JFXTextEffectEditorTextView;
    v9 = [(JFXTextEffectEditorTextView *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(JFXTextEffectEditorTextView *)self beginningOfDocument];
  v9 = [(JFXTextEffectEditorTextView *)self endOfDocument];
  v10 = [(JFXTextEffectEditorTextView *)self textRangeFromPosition:v8 toPosition:v9];

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
          v16 = [(JFXTextEffectEditorTextView *)&v18 hitTest:v7 withEvent:x, y];
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
  v3 = [(JFXTextEffectEditorTextView *)self beginningOfDocument];
  v4 = [(JFXTextEffectEditorTextView *)self endOfDocument];
  v5 = [(JFXTextEffectEditorTextView *)self textRangeFromPosition:v3 toPosition:v4];

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
  v3 = [(JFXTextEffectEditorTextView *)self delegate];
  v4 = [v3 conformsToProtocol:&unk_2855B2490];

  if (v4)
  {
    v5 = [(JFXTextEffectEditorTextView *)self delegate];
    [v5 textEffectEditorTextViewDidUnmarkText:self];
  }

  v6.receiver = self;
  v6.super_class = JFXTextEffectEditorTextView;
  [(JFXTextEffectEditorTextView *)&v6 unmarkText];
}

- (id)textColorForCaretSelection
{
  v2 = [(JFXTextEffectEditorTextView *)self editorView];
  v3 = [v2 textEditingProperties];

  v4 = [v3 defaultTextColor];
  v5 = [v3 customTextColor];
  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(JFXTextEffectEditorTextView *)self editorView];
  v8 = [v7 textEditingProperties];

  v17.receiver = self;
  v17.super_class = JFXTextEffectEditorTextView;
  v9 = [(JFXTextEffectEditorTextView *)&v17 textStylingAtPosition:v6 inDirection:a4];

  v10 = *MEMORY[0x277D740C0];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  if (!v11)
  {
    v11 = [v8 customTextColor];
  }

  v12 = [MEMORY[0x277D75348] clearColor];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = [v8 defaultTextColor];
    if (!v14)
    {
      v14 = [MEMORY[0x277D75348] blackColor];
    }

    v15 = [v9 mutableCopy];
    [v15 setObject:v14 forKeyedSubscript:v10];
  }

  else
  {
    v15 = v9;
  }

  return v15;
}

- (void)JFX_adjustTextEditingViewFrameAndInsetsForShadow:(id)a3
{
  if (a3)
  {
    v18 = self;
    v4 = a3;
    [v4 shadowOffset];
    v6 = fabs(v5);
    [v4 shadowBlurRadius];
    v8 = v6 + fabs(v7);
    [v4 shadowOffset];
    v10 = fabs(v9);
    [v4 shadowBlurRadius];
    v12 = v11;

    v13 = v10 + fabs(v12);
    [(JFXTextEffectEditorTextView *)v18 frame];
    v21 = CGRectInset(v20, -v8, -v13);
    [(JFXTextEffectEditorTextView *)v18 setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
    [(JFXTextEffectEditorTextView *)v18 textContainerInset];
    [(JFXTextEffectEditorTextView *)v18 setTextContainerInset:v13 + v14, v8 + v16, v13 + v15, v8 + v17];
  }
}

- (void)JFX_adjustTextEditingViewInsetsForVerticalAlignment:(int64_t)a3 textAreaHeight:(double)a4 textHeight:(double)a5
{
  if ((a3 + 1) < 2)
  {
    return;
  }

  v9 = self;
  if (a4 > a5)
  {
    v10 = a4 - a5;
    if (a3 == 2)
    {
      v14 = v9;
      [(JFXTextEffectEditorTextView *)v9 textContainerInset];
      v12 = v10 + v13;
      goto LABEL_7;
    }

    if (a3 == 1)
    {
      v14 = v9;
      [(JFXTextEffectEditorTextView *)v9 textContainerInset];
      v12 = v10 * 0.5 + v11;
LABEL_7:
      [(JFXTextEffectEditorTextView *)v14 setTextContainerInset:v12];
      v9 = v14;
    }
  }
}

- (void)JFX_adjustSizeToMatchExpectedNumberOfLines:(id)a3
{
  v11 = a3;
  v4 = [v11 numberOfLines];
  if (v4)
  {
    v5 = v4;
    v6 = [v11 textAlignment];
    v7 = 5;
    do
    {
      v8 = [(JFXTextEffectEditorTextView *)self JFX_countNumberOfLines];
      if (v8 == v5)
      {
        break;
      }

      v9 = v8 <= v5 ? -2.0 : 2.0;
      [(JFXTextEffectEditorTextView *)self frame];
      if (v6 == 2)
      {
        v10 = v10 - v9;
      }

      else if (v6 == 1)
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
  v2 = [(JFXTextEffectEditorTextView *)self layoutManager];
  v3 = [v2 numberOfGlyphs];
  [v2 extraLineFragmentRect];
  v5 = v4 > 0.0;
  if (v3)
  {
    v6 = 0;
    do
    {
      v8 = 0;
      v9 = 0;
      [v2 lineFragmentRectForGlyphAtIndex:v6 effectiveRange:&v8];
      v6 = v9 + v8;
      ++v5;
    }

    while (v9 + v8 < v3);
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