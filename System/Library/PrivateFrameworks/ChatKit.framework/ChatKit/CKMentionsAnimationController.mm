@interface CKMentionsAnimationController
- (BOOL)__startAnimationIfNeeded_legacy;
- (BOOL)isAnyMentionAnimationActive;
- (BOOL)shouldMakeNewRippleAnimatorForIdentifier:(id)identifier;
- (CKMentionsAnimationController)initWithEntryTextView:(id)view;
- (CKMentionsAnimationControllerDelegate)delegate;
- (void)__startAnimationIfNeeded_legacy;
- (void)__startAnimationIfNeeded_textEffects;
- (void)_delegateDidFinishMentionAnimationWithIdentifier:(id)identifier;
- (void)_startAnimationIfNeeded;
- (void)_updateMentionAttributes_legacy:(id)attributes_legacy;
- (void)_updateMentionAttributes_textEffects:(id)effects;
- (void)didSetAttributedTextOfTextView;
- (void)markAnimationIdentifierAsFinishedButPendingAmongMarkedText:(id)text;
- (void)stopTimerRemovingAttribute:(BOOL)attribute;
- (void)updateDisplayForMentionGlyphRangeRemovingAttribute:(BOOL)attribute;
- (void)updateMentionAttributes:(id)attributes;
- (void)updateMentionDisplay;
@end

@implementation CKMentionsAnimationController

- (CKMentionsAnimationController)initWithEntryTextView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [(CKMentionsAnimationController *)a2 initWithEntryTextView:?];
  }

  v16.receiver = self;
  v16.super_class = CKMentionsAnimationController;
  v7 = [(CKMentionsAnimationController *)&v16 init];
  if (v7)
  {
    v8 = objc_opt_new();
    animationsByIdentifier = v7->_animationsByIdentifier;
    v7->_animationsByIdentifier = v8;

    v10 = objc_opt_new();
    rippleAnimatorsByIdentifier = v7->_rippleAnimatorsByIdentifier;
    v7->_rippleAnimatorsByIdentifier = v10;

    v12 = objc_opt_new();
    finishedAnimationsDuringMarkedTextByIdentifier = v7->_finishedAnimationsDuringMarkedTextByIdentifier;
    v7->_finishedAnimationsDuringMarkedTextByIdentifier = v12;

    objc_storeStrong(&v7->_textView, view);
    overlayView = v7->_overlayView;
    v7->_overlayView = 0;
  }

  return v7;
}

- (void)updateMentionAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (CKShouldUseModernRippleAnimation())
  {
    [(CKMentionsAnimationController *)self _updateMentionAttributes_textEffects:attributesCopy];
  }

  else
  {
    [(CKMentionsAnimationController *)self _updateMentionAttributes_legacy:attributesCopy];
  }
}

- (void)_updateMentionAttributes_legacy:(id)attributes_legacy
{
  attributes_legacyCopy = attributes_legacy;
  mentionAttributes = self->_mentionAttributes;
  if (mentionAttributes == attributes_legacyCopy || [(NSAttributedString *)mentionAttributes isEqualToAttributedString:attributes_legacyCopy])
  {
    [(CKMentionsAnimationController *)self didSetAttributedTextOfTextView];
  }

  else
  {
    [(CKMentionsAnimationController *)self setMentionAttributes:attributes_legacyCopy];
    textView = [(CKMentionsAnimationController *)self textView];
    textLayoutManager = [textView textLayoutManager];

    if (objc_opt_respondsToSelector())
    {
      [textLayoutManager setRequiresCTLineRef:1];
    }

    documentRange = [textLayoutManager documentRange];
    [textLayoutManager ensureLayoutForRange:documentRange];

    mentionAttributes = [(CKMentionsAnimationController *)self mentionAttributes];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__CKMentionsAnimationController__updateMentionAttributes_legacy___block_invoke;
    v10[3] = &unk_1E72EC2D8;
    v10[4] = self;
    [mentionAttributes ck_enumerateAllMentionAnimationIdentifiersUsingBlock:v10];

    [(CKMentionsAnimationController *)self didSetAttributedTextOfTextView];
  }
}

void __65__CKMentionsAnimationController__updateMentionAttributes_legacy___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([*(a1 + 32) shouldMakeNewRippleAnimatorForIdentifier:v7])
  {
    v8 = objc_alloc_init(CKMentionRippler);
    [*(*(a1 + 32) + 40) setObject:v8 forKeyedSubscript:v7];
    [(CKMentionRippler *)v8 start];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16.location = a3;
        v16.length = a4;
        v10 = NSStringFromRange(v16);
        v11 = 138412546;
        v12 = v10;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Setting up animation for range: %@ - identifier: %@", &v11, 0x16u);
      }
    }

    [*(a1 + 32) _startAnimationIfNeeded];
  }
}

- (void)_updateMentionAttributes_textEffects:(id)effects
{
  effectsCopy = effects;
  mentionAttributes = self->_mentionAttributes;
  if (mentionAttributes == effectsCopy || [(NSAttributedString *)mentionAttributes isEqualToAttributedString:effectsCopy])
  {
    [(CKMentionsAnimationController *)self didSetAttributedTextOfTextView];
  }

  else
  {
    [(CKMentionsAnimationController *)self setMentionAttributes:effectsCopy];
    textView = [(CKMentionsAnimationController *)self textView];
    textStorage = [textView textStorage];

    [textStorage beginEditing];
    mentionAttributes = [(CKMentionsAnimationController *)self mentionAttributes];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __70__CKMentionsAnimationController__updateMentionAttributes_textEffects___block_invoke;
    v15 = &unk_1E72EC328;
    selfCopy = self;
    v17 = textStorage;
    v9 = textStorage;
    [mentionAttributes ck_enumerateAllMentionAnimationIdentifiersUsingBlock:&v12];

    [v9 endEditing];
    textView2 = [(CKMentionsAnimationController *)self textView];
    [textView2 setNeedsLayout];

    textView3 = [(CKMentionsAnimationController *)self textView];
    [textView3 layoutIfNeeded];

    [(CKMentionsAnimationController *)self _startAnimationIfNeeded];
  }
}

void __70__CKMentionsAnimationController__updateMentionAttributes_textEffects___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([*(a1 + 32) shouldMakeNewRippleAnimatorForIdentifier:v7])
  {
    v8 = [*(a1 + 40) addRippleAnimationForRange_emk:{a3, a4}];
    v9 = *(a1 + 40);
    v10 = +[CKUIBehavior sharedBehaviors];
    v11 = [v10 balloonTextFont];
    [v9 addAttribute:*MEMORY[0x1E69DB648] value:v11 range:{a3, a4}];

    v13 = *(a1 + 32);
    v12 = (a1 + 32);
    v14 = [v13 textView];
    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__CKMentionsAnimationController__updateMentionAttributes_textEffects___block_invoke_2;
    v22[3] = &unk_1E72EC300;
    v22[4] = *v12;
    v16 = v8;
    v23 = v16;
    v17 = v7;
    v24 = v17;
    v18 = [v14 newRippleAnimatorForAnimation:v16 foregroundColor:v15 notify_emk:v22];

    v19 = [*v12 rippleAnimatorsByIdentifier];
    [v19 setObject:v18 forKeyedSubscript:v17];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v30.location = a3;
        v30.length = a4;
        v21 = NSStringFromRange(v30);
        *buf = 138412546;
        v26 = v21;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Setting up animation for range: %@ - identifier: %@", buf, 0x16u);
      }
    }
  }
}

uint64_t __70__CKMentionsAnimationController__updateMentionAttributes_textEffects___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isIdle];
  if (result)
  {
    v4 = [*(a1 + 32) textView];
    v5 = [v4 textStorage];
    v6 = [v5 removeRippleAnimation:*(a1 + 40) includingFilterEffect_emk:1];

    v7 = [*(a1 + 32) rippleAnimatorsByIdentifier];
    [v7 setObject:0 forKeyedSubscript:*(a1 + 48)];

    v8 = *(a1 + 32);

    return [v8 updateDisplayForMentionGlyphRangeRemovingAttribute:1];
  }

  return result;
}

- (BOOL)shouldMakeNewRippleAnimatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (CKShouldUseModernRippleAnimation())
  {
    rippleAnimatorsByIdentifier = self->_rippleAnimatorsByIdentifier;
  }

  else
  {
    rippleAnimatorsByIdentifier = self->_animationsByIdentifier;
  }

  v6 = [(NSMutableDictionary *)rippleAnimatorsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [(NSMutableSet *)self->_finishedAnimationsDuringMarkedTextByIdentifier containsObject:identifierCopy]^ 1;
  }

  return v7;
}

- (void)markAnimationIdentifierAsFinishedButPendingAmongMarkedText:(id)text
{
  [(NSMutableSet *)self->_finishedAnimationsDuringMarkedTextByIdentifier addObject:text];
  if (!CKShouldUseModernRippleAnimation())
  {
    textView = [(CKMentionsAnimationController *)self textView];
    [textView _setAnimatingMentionsHidden:0];
  }
}

- (void)didSetAttributedTextOfTextView
{
  [(NSMutableSet *)self->_finishedAnimationsDuringMarkedTextByIdentifier removeAllObjects];
  if (!CKShouldUseModernRippleAnimation())
  {
    isAnyMentionAnimationActive = [(CKMentionsAnimationController *)self isAnyMentionAnimationActive];
    v4 = IMOSLoggingEnabled();
    if (isAnyMentionAnimationActive)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "didSetAttributedTextOfTextView - at least 1 animation is active - hiding animating mentions…", v7, 2u);
        }
      }

      textView = [(CKMentionsAnimationController *)self textView];
      [textView _setAnimatingMentionsHidden:1];
LABEL_8:

      return;
    }

    if (v4)
    {
      textView = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(textView, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, textView, OS_LOG_TYPE_INFO, "didSetAttributedTextOfTextView - returning early because no animation is active", buf, 2u);
      }

      goto LABEL_8;
    }
  }
}

- (void)_startAnimationIfNeeded
{
  if (CKShouldUseModernRippleAnimation())
  {

    [(CKMentionsAnimationController *)self __startAnimationIfNeeded_textEffects];
  }

  else
  {

    [(CKMentionsAnimationController *)self __startAnimationIfNeeded_legacy];
  }
}

- (void)__startAnimationIfNeeded_textEffects
{
  v23 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "__startAnimationIfNeeded_textEffects", buf, 2u);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  rippleAnimatorsByIdentifier = [(CKMentionsAnimationController *)self rippleAnimatorsByIdentifier];
  v5 = [rippleAnimatorsByIdentifier countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(rippleAnimatorsByIdentifier);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        rippleAnimatorsByIdentifier2 = [(CKMentionsAnimationController *)self rippleAnimatorsByIdentifier];
        v11 = [rippleAnimatorsByIdentifier2 objectForKeyedSubscript:v9];

        LODWORD(rippleAnimatorsByIdentifier2) = [v11 isPlaying];
        v12 = IMOSLoggingEnabled();
        if (rippleAnimatorsByIdentifier2)
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v15;
              v21 = v9;
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "__startAnimationIfNeeded_textEffects - already playing %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v12)
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = v15;
              v21 = v9;
              _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "__startAnimationIfNeeded_textEffects - starting %@", buf, 0xCu);
            }
          }

          if (objc_opt_respondsToSelector())
          {
            [v11 performSelector:sel_start];
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [rippleAnimatorsByIdentifier countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)__startAnimationIfNeeded_legacy
{
  overlayView = self->_overlayView;
  if (self->_mentionTimer)
  {
    if (overlayView)
    {
      goto LABEL_3;
    }
  }

  else if (!overlayView)
  {
    goto LABEL_8;
  }

  if (![(CKMentionsAnimationController *)a2 __startAnimationIfNeeded_legacy])
  {
LABEL_3:
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "_startAnimationIfNeeded – return early because animation already running.", buf, 2u);
      }
    }

    return;
  }

LABEL_8:
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_startAnimationIfNeeded – animation needed!", v17, 2u);
    }
  }

  textView = [(CKMentionsAnimationController *)self textView];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [CKMentionsTextContainerOverlayView alloc];
    textView2 = [(CKMentionsAnimationController *)self textView];
    v10 = [(CKMentionsTextContainerOverlayView *)v8 initWithFrame:textView2 textView:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKMentionsAnimationController *)self setOverlayView:v10];

    overlayView = [(CKMentionsAnimationController *)self overlayView];
    textView3 = [(CKMentionsAnimationController *)self textView];
    [textView3 setTextContainerOverlayView:overlayView];

    v13 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_updateMentionDisplay selector:0 userInfo:1 repeats:0.0166666667];
    [(CKMentionsAnimationController *)self setMentionTimer:v13];

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    mentionTimer = [(CKMentionsAnimationController *)self mentionTimer];
    [mainRunLoop addTimer:mentionTimer forMode:*MEMORY[0x1E69DE760]];

    textView4 = [(CKMentionsAnimationController *)self textView];
    [textView4 setNeedsDisplayCurrentRenderAttributes];

    [(CKMentionsAnimationController *)self updateMentionDisplay];
  }
}

- (void)stopTimerRemovingAttribute:(BOOL)attribute
{
  attributeCopy = attribute;
  v11 = *MEMORY[0x1E69E9840];
  if (!CKShouldUseModernRippleAnimation())
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10[0] = 67109120;
        v10[1] = attributeCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "stopTimerRemovingAttribute: %{BOOL}d", v10, 8u);
      }
    }

    [(CKMentionsAnimationController *)self updateDisplayForMentionGlyphRangeRemovingAttribute:attributeCopy];
    mentionTimer = [(CKMentionsAnimationController *)self mentionTimer];
    [mentionTimer invalidate];

    [(CKMentionsAnimationController *)self setMentionTimer:0];
    textView = [(CKMentionsAnimationController *)self textView];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      textView2 = [(CKMentionsAnimationController *)self textView];
      [textView2 setTextContainerOverlayView:0];
    }

    [(CKMentionsAnimationController *)self setOverlayView:0];
  }
}

- (void)updateDisplayForMentionGlyphRangeRemovingAttribute:(BOOL)attribute
{
  attributeCopy = attribute;
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(v17) = 67109120;
      HIDWORD(v17) = attributeCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "updateDisplayForMentionGlyphRangeRemovingAttribute: %{BOOL}d", &v17, 8u);
    }
  }

  mentionAttributes = [(CKMentionsAnimationController *)self mentionAttributes];
  v7 = [mentionAttributes copy];

  v17 = 0;
  v18 = 0;
  textView = [(CKMentionsAnimationController *)self textView];
  textStorage = [textView textStorage];
  v10 = [textStorage length];

  v11 = [v7 length];
  if (v11)
  {
    v12 = 0;
    v13 = *MEMORY[0x1E69A70D0];
    do
    {
      v14 = [v7 attribute:v13 atIndex:v12 longestEffectiveRange:&v17 inRange:{v12, v11 - v12}];
      v15 = v14;
      if (v14 && [v14 length] && v18 + v17 <= v10 && attributeCopy)
      {
        [(CKMentionsAnimationController *)self _delegateDidFinishMentionAnimationWithIdentifier:v15];
      }

      v12 = v18 + v17;
    }

    while (v18 + v17 < v11);
  }
}

- (BOOL)isAnyMentionAnimationActive
{
  v16 = *MEMORY[0x1E69E9840];
  if (CKShouldUseModernRippleAnimation())
  {
    v3 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    mentionAttributes = self->_mentionAttributes;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CKMentionsAnimationController_isAnyMentionAnimationActive__block_invoke;
    v9[3] = &unk_1E72EC350;
    v9[4] = self;
    v9[5] = &v10;
    [(NSAttributedString *)mentionAttributes ck_enumerateAllMentionAnimationIdentifiersUsingBlock:v9];
    if ((v11[3] & 1) == 0)
    {
      animationsByIdentifier = [(CKMentionsAnimationController *)self animationsByIdentifier];
      [animationsByIdentifier removeAllObjects];
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(v11 + 24);
        *buf = 67109120;
        v15 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "isAnyMentionAnimationActive: %{BOOL}d", buf, 8u);
      }
    }

    v3 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return v3 & 1;
}

void __60__CKMentionsAnimationController_isAnyMentionAnimationActive__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = [*(a1 + 32) animationsByIdentifier];
  v7 = [v6 objectForKeyedSubscript:v10];

  if (v7)
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ([v7 finishedForGlyphIndex:a4 - 1 numberOfGlyphs:a4 timeIndex:{objc_msgSend(v7, "currentTimeIndex")}])
    {
      v9 = [*(a1 + 32) animationsByIdentifier];
      [v9 removeObjectForKey:v10];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)updateMentionDisplay
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "updateMentionDisplay", v7, 2u);
    }
  }

  [(CKMentionsAnimationController *)self updateDisplayForMentionGlyphRangeRemovingAttribute:0];
  if (![(CKMentionsAnimationController *)self isAnyMentionAnimationActive])
  {
    [(CKMentionsAnimationController *)self stopTimerRemovingAttribute:1];
  }

  overlayView = [(CKMentionsAnimationController *)self overlayView];
  animationsByIdentifier = [(CKMentionsAnimationController *)self animationsByIdentifier];
  v6 = [animationsByIdentifier copy];
  [overlayView updateUsingAnimations:v6];
}

- (void)_delegateDidFinishMentionAnimationWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = identifierCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_delegateDidFinishMentionAnimationWithIdentifier: %@", &v7, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mentionsAnimationController:self didFinishMentionAnimationWithIdentifier:identifierCopy];
}

- (CKMentionsAnimationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithEntryTextView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKMentionsAnimationController.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"textView"}];
}

- (BOOL)__startAnimationIfNeeded_legacy
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CKMentionsAnimationController.m" lineNumber:273 description:@"Invalid state"];

  return *a3 == 0;
}

@end