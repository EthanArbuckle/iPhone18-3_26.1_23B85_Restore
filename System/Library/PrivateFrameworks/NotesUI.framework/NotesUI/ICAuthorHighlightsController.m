@interface ICAuthorHighlightsController
- (BOOL)isAnimating;
- (BOOL)isPerformingHighlightUpdatesForTextStorage:(id)a3;
- (BOOL)rangeHasOrNeedsHighlights:(_NSRange)a3 inTextStorage:(id)a4;
- (BOOL)shouldAnimateInTextStorage:(id)a3;
- (CADisplayLink)highlightAnimationsDisplayLink;
- (ICAuthorHighlightsController)initWithNote:(id)a3 textLayoutManager:(id)a4;
- (ICTTTextEditGrouper)editGrouper;
- (ICTTTextStorage)invalidHighlightsTextStorage;
- (NSCache)editGroupsForTextStorageDocument;
- (NSMutableSet)textStorageDocumentsBeingUpdated;
- (NSMutableSet)textStorageDocumentsNeedingHighlightUpdates;
- (_NSRange)invalidHighlightsRange;
- (id)attributesForHighlightingTextLineFragment:(id)a3 characterRange:(_NSRange)a4 defaultRenderingAttributes:(id)a5 effectiveRange:(_NSRange *)a6 textView:(id)a7;
- (id)editGroupsForTextStorage:(id)a3;
- (id)highlightColorForUserID:(id)a3;
- (id)highlightsAttributedStringForTextStorage:(id)a3;
- (void)dealloc;
- (void)extendHighlightsForRange:(_NSRange)a3 inTextStorage:(id)a4;
- (void)extendHighlightsForRange:(_NSRange)a3 inTextStorage:(id)a4 reverse:(BOOL)a5;
- (void)flashHighlightsForRange:(_NSRange)a3 withDuration:(id)a4 inTextStorage:(id)a5;
- (void)performHighlightUpdatesForRange:(_NSRange)a3 inTextStorage:(id)a4 updates:(id)a5;
- (void)removeHighlightAnimationsForRange:(_NSRange)a3 inTextStorage:(id)a4;
- (void)removeHighlightValuesForRange:(_NSRange)a3 inTextStorage:(id)a4;
- (void)setAttachmentHighlightValue:(double)a3 highlightColor:(id)a4 forRange:(_NSRange)a5 inTextStorage:(id)a6;
- (void)setCheckmarkHighlightValue:(double)a3 highlightColor:(id)a4 forRange:(_NSRange)a5 inTextStorage:(id)a6;
- (void)setCoalesceAuthorHighlightUpdates:(BOOL)a3;
- (void)setHighlightAnimation:(id)a3 forRange:(_NSRange)a4 inTextStorage:(id)a5;
- (void)setHighlightAttributesForHighlightValue:(double)a3 highlightColor:(id)a4 forRange:(_NSRange)a5 inTextStorage:(id)a6 editGroups:(id)a7;
- (void)setHighlightValue:(id)a3 forRange:(_NSRange)a4 inTextStorage:(id)a5;
- (void)setTextHighlightValue:(double)a3 highlightColor:(id)a4 blendsTextColor:(BOOL)a5 forRange:(_NSRange)a6 inTextStorage:(id)a7;
- (void)textStorageDidProcessEndEditing:(id)a3;
- (void)updateDerivedConfiguration;
- (void)updateHighlightAnimationsIfNeeded;
- (void)updateHighlightAttributesForRange:(_NSRange)a3 inTextStorage:(id)a4;
@end

@implementation ICAuthorHighlightsController

- (void)updateDerivedConfiguration
{
  [(ICAuthorHighlightsController *)self setFadedMultiplier:0.6];
  v6 = [(ICAuthorHighlightsController *)self note];
  v3 = [v6 textStorage];
  v4 = [v3 hasAnyTextViewWithDarkAppearance];
  v5 = 0.2;
  if (v4)
  {
    v5 = 0.25;
  }

  [(ICAuthorHighlightsController *)self setHighlightedMultiplier:v5];
}

- (NSMutableSet)textStorageDocumentsBeingUpdated
{
  textStorageDocumentsBeingUpdated = self->_textStorageDocumentsBeingUpdated;
  if (textStorageDocumentsBeingUpdated)
  {
    v4 = textStorageDocumentsBeingUpdated;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
  }

  v5 = self->_textStorageDocumentsBeingUpdated;
  self->_textStorageDocumentsBeingUpdated = v4;

  v6 = self->_textStorageDocumentsBeingUpdated;

  return v6;
}

- (ICAuthorHighlightsController)initWithNote:(id)a3 textLayoutManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ICAuthorHighlightsController;
  v9 = [(ICAuthorHighlightsController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeStrong(&v10->_textLayoutManager, a4);
    v10->_allowsAnimations = 1;
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v10 selector:sel_textStorageDidProcessEndEditing_ name:@"ICTTTextStorageDidProcessEndEditingNotification" object:0];

    [(ICAuthorHighlightsController *)v10 updateDerivedConfiguration];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAuthorHighlightsController;
  [(ICAuthorHighlightsController *)&v4 dealloc];
}

- (id)highlightColorForUserID:(id)a3
{
  v4 = a3;
  v5 = [(ICAuthorHighlightsController *)self note];
  v6 = [v5 collaborationColorManager];
  v7 = [(ICAuthorHighlightsController *)self note];
  v8 = [v6 highlightColorForUserID:v4 note:v7];

  return v8;
}

- (id)highlightsAttributedStringForTextStorage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    objc_opt_class();
    v7 = [v3 highlightsAttributedString];
    v6 = ICCheckedDynamicCast();
  }

  return v6;
}

- (void)setHighlightValue:(id)a3 forRange:(_NSRange)a4 inTextStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  [(ICAuthorHighlightsController *)self updateDerivedConfiguration];
  v20.location = [v10 ic_range];
  v21.location = location;
  v21.length = length;
  v11 = NSIntersectionRange(v20, v21);
  v12 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v10];

  v13 = *MEMORY[0x1E69B7928];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__ICAuthorHighlightsController_setHighlightValue_forRange_inTextStorage___block_invoke;
  v16[3] = &unk_1E846ADA8;
  v17 = v9;
  v18 = v12;
  v19 = v11;
  v14 = v12;
  v15 = v9;
  [v14 enumerateAttribute:v13 inRange:v11.location options:v11.length usingBlock:{0x100000, v16}];
}

void __73__ICAuthorHighlightsController_setHighlightValue_forRange_inTextStorage___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(ICAuthorHighlightValueAttribute);
  v4 = [*(a1 + 32) value];
  if (v4)
  {
    v5 = [*(a1 + 32) value];
    [v5 floatValue];
    [(ICAuthorHighlightValueAttribute *)v3 setValue:v6];
  }

  else
  {
    [v8 value];
    [(ICAuthorHighlightValueAttribute *)v3 setValue:?];
  }

  v7 = [*(a1 + 32) color];
  [(ICAuthorHighlightValueAttribute *)v3 setColor:v7];

  [*(a1 + 40) addAttribute:*MEMORY[0x1E69B7928] value:v3 range:{*(a1 + 48), *(a1 + 56)}];
}

- (void)removeHighlightValuesForRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:a4];
  [v6 removeAttribute:*MEMORY[0x1E69B7928] range:{location, length}];
}

- (BOOL)isAnimating
{
  v2 = [(ICAuthorHighlightsController *)self textStorageDocumentsNeedingHighlightUpdates];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)shouldAnimateInTextStorage:(id)a3
{
  v4 = a3;
  if ([(ICAuthorHighlightsController *)self allowsAnimations])
  {
    v5 = [(ICAuthorHighlightsController *)self now];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 textViews];
      v6 = [v7 count] != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHighlightAnimation:(id)a3 forRange:(_NSRange)a4 inTextStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (-[ICAuthorHighlightsController shouldAnimateInTextStorage:](self, "shouldAnimateInTextStorage:", v10) || ([v9 isRemovedOnCompletion] & 1) == 0)
  {
    [(ICAuthorHighlightsController *)self removeHighlightAnimationsForRange:location inTextStorage:length, v10];
    [(ICAuthorHighlightsController *)self updateDerivedConfiguration];
    v11 = [(ICAuthorHighlightsController *)self now];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E695DF00] now];
    }

    v14 = v13;

    v27.location = [v10 ic_range];
    v28.location = location;
    v28.length = length;
    v15 = NSIntersectionRange(v27, v28);
    v16 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v10];
    v17 = *MEMORY[0x1E69B7928];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__ICAuthorHighlightsController_setHighlightAnimation_forRange_inTextStorage___block_invoke;
    v21[3] = &unk_1E846ADD0;
    v22 = v14;
    v23 = v9;
    v24 = v16;
    v25 = self;
    v18 = v10;
    v26 = v18;
    v19 = v16;
    v20 = v14;
    [v19 enumerateAttribute:v17 inRange:v15.location options:v15.length usingBlock:{0x100000, v21}];
    if (![(ICAuthorHighlightsController *)self shouldAnimateInTextStorage:v18])
    {
      [(ICAuthorHighlightsController *)self removeHighlightAnimationsForRange:v15.location inTextStorage:v15.length, v18];
    }
  }
}

void __77__ICAuthorHighlightsController_setHighlightAnimation_forRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = [[ICAuthorHighlightAnimationAttribute alloc] initWithStartDate:*(a1 + 32)];
  v8 = [*(a1 + 40) duration];
  if (v8)
  {
    v9 = [*(a1 + 40) duration];
    [v9 floatValue];
    [(ICAuthorHighlightAnimationAttribute *)v7 setDuration:v10];
  }

  else
  {
    [(ICAuthorHighlightAnimationAttribute *)v7 setDuration:0.25];
  }

  v11 = [*(a1 + 40) fromValue];
  if (v11)
  {
    v12 = [*(a1 + 40) fromValue];
    [v12 floatValue];
    [(ICAuthorHighlightAnimationAttribute *)v7 setFromValue:v13];
  }

  else
  {
    [v21 value];
    [(ICAuthorHighlightAnimationAttribute *)v7 setFromValue:?];
  }

  v14 = [*(a1 + 40) toValue];
  [v14 floatValue];
  [(ICAuthorHighlightAnimationAttribute *)v7 setToValue:v15];

  v16 = [*(a1 + 40) color];
  [(ICAuthorHighlightAnimationAttribute *)v7 setColor:v16];

  -[ICAuthorHighlightAnimationAttribute setAboveExistingHighlights:](v7, "setAboveExistingHighlights:", [*(a1 + 40) isAboveExistingHighlights]);
  -[ICAuthorHighlightAnimationAttribute setRemovedOnCompletion:](v7, "setRemovedOnCompletion:", [*(a1 + 40) isRemovedOnCompletion]);
  [(ICAuthorHighlightAnimationAttribute *)v7 fromValue];
  v18 = v17;
  [(ICAuthorHighlightAnimationAttribute *)v7 toValue];
  if (vabdd_f64(v18, v19) >= 0.00999999978)
  {
    [*(a1 + 48) addAttribute:*MEMORY[0x1E69B7920] value:v7 range:{a3, a4}];
    if ([(ICAuthorHighlightAnimationAttribute *)v7 isRemovedOnCompletion])
    {
      [(ICAuthorHighlightAnimationAttribute *)v7 duration];
      if (v20 <= 0.0)
      {
        [*(a1 + 56) removeHighlightAnimationsForRange:a3 inTextStorage:{a4, *(a1 + 64)}];
      }
    }

    else
    {
      [*(a1 + 48) removeAttribute:*MEMORY[0x1E69B7928] range:{a3, a4}];
    }
  }
}

- (void)removeHighlightAnimationsForRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v15.location = [v7 ic_range];
  v16.location = location;
  v16.length = length;
  v8 = NSIntersectionRange(v15, v16);
  v9 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v7];

  v10 = MEMORY[0x1E69B7920];
  v11 = *MEMORY[0x1E69B7920];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__ICAuthorHighlightsController_removeHighlightAnimationsForRange_inTextStorage___block_invoke;
  v13[3] = &unk_1E846AE20;
  v14 = v9;
  v12 = v9;
  [v12 enumerateAttribute:v11 inRange:v8.location options:v8.length usingBlock:{0x100000, v13}];
  [v12 removeAttribute:*v10 range:{v8.location, v8.length}];
}

void __80__ICAuthorHighlightsController_removeHighlightAnimationsForRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7 && ([v7 isRemovedOnCompletion] & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E69B7928];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__ICAuthorHighlightsController_removeHighlightAnimationsForRange_inTextStorage___block_invoke_2;
    v11[3] = &unk_1E846ADF8;
    v12 = v8;
    v13 = *(a1 + 32);
    [v9 enumerateAttribute:v10 inRange:a3 options:a4 usingBlock:{0, v11}];
  }
}

void __80__ICAuthorHighlightsController_removeHighlightAnimationsForRange_inTextStorage___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = objc_alloc_init(ICAuthorHighlightValueAttribute);
  if ([*(a1 + 32) isAboveExistingHighlights])
  {
    [v13 value];
    v9 = v8;
    [*(a1 + 32) toValue];
    v11 = v9 + v10;
  }

  else
  {
    [*(a1 + 32) toValue];
  }

  [(ICAuthorHighlightValueAttribute *)v7 setValue:v11];
  v12 = [*(a1 + 32) color];
  [(ICAuthorHighlightValueAttribute *)v7 setColor:v12];

  [*(a1 + 40) addAttribute:*MEMORY[0x1E69B7928] value:v7 range:{a3, a4}];
}

- (void)flashHighlightsForRange:(_NSRange)a3 withDuration:(id)a4 inTextStorage:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  if ([(ICAuthorHighlightsController *)self shouldAnimateInTextStorage:v10])
  {
    [(ICAuthorHighlightsController *)self updateDerivedConfiguration];
    v18.location = [v10 ic_range];
    v19.location = location;
    v19.length = length;
    v11 = NSIntersectionRange(v18, v19);
    v12 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v10];
    v13 = *MEMORY[0x1E69B7928];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__ICAuthorHighlightsController_flashHighlightsForRange_withDuration_inTextStorage___block_invoke;
    v14[3] = &unk_1E846AE48;
    v15 = v9;
    v16 = self;
    v17 = v10;
    [v12 enumerateAttribute:v13 inRange:v11.location options:v11.length usingBlock:{0, v14}];
  }
}

void __83__ICAuthorHighlightsController_flashHighlightsForRange_withDuration_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = objc_alloc_init(ICAuthorHighlightAnimation);
  v8 = v7;
  if (*(a1 + 32))
  {
    [(ICAuthorHighlightAnimation *)v7 setDuration:?];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:2.0];
    [(ICAuthorHighlightAnimation *)v8 setDuration:v9];
  }

  [v19 value];
  v11 = v10;
  v12 = MEMORY[0x1E696AD98];
  [v19 value];
  v14 = -1.0;
  if (v11 <= 0.0)
  {
    v14 = 1.0;
  }

  v15 = [v12 numberWithDouble:v13 + v14];
  [(ICAuthorHighlightAnimation *)v8 setFromValue:v15];

  v16 = MEMORY[0x1E696AD98];
  [v19 value];
  v17 = [v16 numberWithDouble:?];
  [(ICAuthorHighlightAnimation *)v8 setToValue:v17];

  v18 = [v19 color];
  [(ICAuthorHighlightAnimation *)v8 setColor:v18];

  [(ICAuthorHighlightAnimation *)v8 setRemovedOnCompletion:1];
  [*(a1 + 40) setHighlightAnimation:v8 forRange:a3 inTextStorage:{a4, *(a1 + 48)}];
}

- (void)setCoalesceAuthorHighlightUpdates:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthorHighlightsController setCoalesceAuthorHighlightUpdates:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (self->_coalesceAuthorHighlightUpdates != v3)
  {
    self->_coalesceAuthorHighlightUpdates = v3;
    if (!v3 && [(ICAuthorHighlightsController *)self invalidHighlightsRange]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(ICAuthorHighlightsController *)self invalidHighlightsRange];
      if (v5)
      {
        v6 = [(ICAuthorHighlightsController *)self invalidHighlightsTextStorage];

        if (v6)
        {
          v7 = [(ICAuthorHighlightsController *)self invalidHighlightsRange];
          v9 = v8;
          v10 = [(ICAuthorHighlightsController *)self invalidHighlightsTextStorage];
          [(ICAuthorHighlightsController *)self performHighlightUpdatesForRange:v7 inTextStorage:v9 updates:v10, 0];
        }
      }
    }

    [(ICAuthorHighlightsController *)self setInvalidHighlightsRange:0x7FFFFFFFFFFFFFFFLL, 0];

    [(ICAuthorHighlightsController *)self setInvalidHighlightsTextStorage:0];
  }
}

- (void)performHighlightUpdatesForRange:(_NSRange)a3 inTextStorage:(id)a4 updates:(id)a5
{
  length = a3.length;
  location = a3.location;
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthorHighlightsController performHighlightUpdatesForRange:inTextStorage:updates:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (!v9)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((textStorage) != nil)" functionName:"-[ICAuthorHighlightsController performHighlightUpdatesForRange:inTextStorage:updates:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textStorage"}];
  }

  if ([v9 length] && length)
  {
    if (v10)
    {
      [(ICAuthorHighlightsController *)self updateDerivedConfiguration];
LABEL_9:
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v29 = @"ICAuthorHighlightsControllerTextStorageKey";
      v30[0] = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      [v11 postNotificationName:@"ICAuthorHighlightsControllerWillPerformHighlightUpdatesNotification" object:self userInfo:v12];

      v13 = [(ICAuthorHighlightsController *)self textStorageDocumentsBeingUpdated];
      v14 = [v9 document];
      [v13 addObject:v14];

      objc_opt_class();
      v15 = ICDynamicCast();
      [v15 beginPreventEditingUpdates];

      [v9 beginTemporaryAttributeEditing];
      if (v10)
      {
        v10[2](v10, location, length);
      }

      v33.location = [v9 ic_range];
      v33.length = v16;
      v31.location = location;
      v31.length = length;
      v17 = NSIntersectionRange(v31, v33);
      [(ICAuthorHighlightsController *)self updateHighlightAttributesForRange:v17.location inTextStorage:v17.length, v9];
      [v9 endTemporaryAttributeEditing];
      objc_opt_class();
      v18 = ICDynamicCast();
      [v18 endPreventEditingUpdates];

      v19 = [(ICAuthorHighlightsController *)self textStorageDocumentsBeingUpdated];
      v20 = [v9 document];
      [v19 removeObject:v20];

      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      v27 = @"ICAuthorHighlightsControllerTextStorageKey";
      v28 = v9;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v21 postNotificationName:@"ICAuthorHighlightsControllerDidPerformHighlightUpdatesNotification" object:self userInfo:v22];

      goto LABEL_20;
    }

    if ([(ICAuthorHighlightsController *)self isPerformingHighlightUpdatesForTextStorage:v9])
    {
      goto LABEL_20;
    }

    [(ICAuthorHighlightsController *)self updateDerivedConfiguration];
    if (![(ICAuthorHighlightsController *)self rangeHasOrNeedsHighlights:location inTextStorage:length, v9])
    {
      goto LABEL_20;
    }

    if (![(ICAuthorHighlightsController *)self coalesceAuthorHighlightUpdates])
    {
      goto LABEL_9;
    }

    v23 = [(ICAuthorHighlightsController *)self invalidHighlightsTextStorage];
    if (v23)
    {
      v24 = v23;
      v25 = [(ICAuthorHighlightsController *)self invalidHighlightsTextStorage];

      if (v25 != v9)
      {
        goto LABEL_9;
      }
    }

    [(ICAuthorHighlightsController *)self setInvalidHighlightsTextStorage:v9];
    if ([(ICAuthorHighlightsController *)self invalidHighlightsRange]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v32.location = [(ICAuthorHighlightsController *)self invalidHighlightsRange];
      v34.location = location;
      v34.length = length;
      v26 = NSUnionRange(v32, v34);
      location = v26.location;
      length = v26.length;
    }

    [(ICAuthorHighlightsController *)self setInvalidHighlightsRange:location, length];
  }

LABEL_20:
}

- (BOOL)isPerformingHighlightUpdatesForTextStorage:(id)a3
{
  v4 = a3;
  v5 = [(ICAuthorHighlightsController *)self textStorageDocumentsBeingUpdated];
  v6 = [v4 document];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (BOOL)rangeHasOrNeedsHighlights:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v19.location = [v7 ic_range];
  v20.location = location;
  v20.length = length;
  v8 = NSIntersectionRange(v19, v20);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__ICAuthorHighlightsController_rangeHasOrNeedsHighlights_inTextStorage___block_invoke;
  v12[3] = &unk_1E846AE70;
  v10 = v7;
  v13 = v10;
  v14 = &v15;
  [v9 enumerateAttributesInRange:v8.location options:v8.length usingBlock:{0, v12}];
  LOBYTE(length) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return length;
}

void __72__ICAuthorHighlightsController_rangeHasOrNeedsHighlights_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v19 = a2;
  v8 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:0];
  v9 = [v19 allKeys];
  v10 = [v9 containsObject:*MEMORY[0x1E69B7928]];
  v11 = [v9 containsObject:*MEMORY[0x1E69B7920]];
  v12 = *MEMORY[0x1E69DB650];
  v13 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v13)
  {
    v14 = [v19 objectForKeyedSubscript:v12];
    v15 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7960]];
    v16 = v14 != v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v9 containsObject:*MEMORY[0x1E69DB600]];
  v18 = [v9 containsObject:*MEMORY[0x1E69B7930]];
  *(*(*(a1 + 40) + 8) + 24) = (v10 | v11 | v16 | v17 | v18 | [v9 containsObject:*MEMORY[0x1E69B75D8]]) & 1;
  *a5 = *(*(*(a1 + 40) + 8) + 24);
}

- (void)extendHighlightsForRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v10 = a4;
  v12.location = [v10 ic_range];
  v13.location = location;
  v13.length = length;
  v7 = NSIntersectionRange(v12, v13);
  v8 = [(ICAuthorHighlightsController *)self editGroupsForTextStorageDocument];
  v9 = [v10 document];
  [v8 removeObjectForKey:v9];

  [(ICAuthorHighlightsController *)self extendHighlightsForRange:v7.location inTextStorage:v7.length reverse:v10, 0];
  [(ICAuthorHighlightsController *)self extendHighlightsForRange:v7.location inTextStorage:v7.length reverse:v10, 1];
}

- (void)extendHighlightsForRange:(_NSRange)a3 inTextStorage:(id)a4 reverse:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    v11 = length;
  }

  else
  {
    v11 = -1;
  }

  v12 = [v9 attributesAtIndex:location + v11 effectiveRange:0];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__26;
  v22[4] = __Block_byref_object_dispose__26;
  v23 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69B7928]];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__26;
  v20[4] = __Block_byref_object_dispose__26;
  v21 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69B7920]];
  v13 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v10];
  if (v5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__ICAuthorHighlightsController_extendHighlightsForRange_inTextStorage_reverse___block_invoke;
  v16[3] = &unk_1E846AE98;
  v18 = v22;
  v15 = v13;
  v17 = v15;
  v19 = v20;
  [v15 enumerateAttributesInRange:location options:length usingBlock:{v14, v16}];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __79__ICAuthorHighlightsController_extendHighlightsForRange_inTextStorage_reverse___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *MEMORY[0x1E69B7928];
  v18 = v7;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B7928]];
  v10 = *(*(a1 + 40) + 8);
  v11 = v9;
  if (!v9)
  {
    v11 = *(v10 + 40);
  }

  objc_storeStrong((v10 + 40), v11);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = [v18 objectForKeyedSubscript:v8];

    if (!v12)
    {
      [*(a1 + 32) addAttribute:v8 value:*(*(*(a1 + 40) + 8) + 40) range:{a3, a4}];
    }
  }

  v13 = MEMORY[0x1E69B7920];
  v14 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69B7920]];
  v15 = *(*(a1 + 48) + 8);
  v16 = v14;
  if (!v14)
  {
    v16 = *(v15 + 40);
  }

  objc_storeStrong((v15 + 40), v16);

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v17 = [v18 objectForKeyedSubscript:*v13];

    if (!v17)
    {
      [*(a1 + 32) addAttribute:*v13 value:*(*(*(a1 + 48) + 8) + 40) range:{a3, a4}];
    }
  }
}

- (NSMutableSet)textStorageDocumentsNeedingHighlightUpdates
{
  textStorageDocumentsNeedingHighlightUpdates = self->_textStorageDocumentsNeedingHighlightUpdates;
  if (textStorageDocumentsNeedingHighlightUpdates)
  {
    v4 = textStorageDocumentsNeedingHighlightUpdates;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
  }

  v5 = self->_textStorageDocumentsNeedingHighlightUpdates;
  self->_textStorageDocumentsNeedingHighlightUpdates = v4;

  v6 = self->_textStorageDocumentsNeedingHighlightUpdates;

  return v6;
}

- (CADisplayLink)highlightAnimationsDisplayLink
{
  highlightAnimationsDisplayLink = self->_highlightAnimationsDisplayLink;
  if (!highlightAnimationsDisplayLink)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    v5 = [v4 displayLinkWithTarget:self selector:sel_updateHighlightAnimationsIfNeeded];
    v6 = self->_highlightAnimationsDisplayLink;
    self->_highlightAnimationsDisplayLink = v5;

    v7 = self->_highlightAnimationsDisplayLink;
    v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    highlightAnimationsDisplayLink = self->_highlightAnimationsDisplayLink;
  }

  return highlightAnimationsDisplayLink;
}

- (void)updateHighlightAnimationsIfNeeded
{
  v3 = [(ICAuthorHighlightsController *)self textStorageDocumentsNeedingHighlightUpdates];
  v4 = [v3 count];

  if (v4)
  {
    performBlockOnMainThreadAndWait();
  }

  else
  {
    v5 = [(ICAuthorHighlightsController *)self highlightAnimationsDisplayLink];
    [v5 setPaused:1];
  }
}

void __65__ICAuthorHighlightsController_updateHighlightAnimationsIfNeeded__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [*(a1 + 32) textStorageDocumentsNeedingHighlightUpdates];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        objc_opt_class();
        v8 = ICDynamicCast();
        v9 = [v8 mergeableString];
        v10 = [v9 delegate];
        v11 = ICDynamicCast();

        if (v11)
        {
          v21 = 0;
          v22 = &v21;
          v23 = 0x3010000000;
          v24 = &unk_1D449C2A9;
          v25 = xmmword_1D4433FC0;
          v12 = [*(a1 + 32) highlightsAttributedStringForTextStorage:v11];
          v13 = *MEMORY[0x1E69B7920];
          v14 = [v11 ic_range];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __65__ICAuthorHighlightsController_updateHighlightAnimationsIfNeeded__block_invoke_2;
          v20[3] = &unk_1E846AEC0;
          v20[4] = &v21;
          [v12 enumerateAttribute:v13 inRange:v14 options:v15 usingBlock:{0, v20}];
          v16 = v22[5];
          if (v16)
          {
            [*(a1 + 32) performHighlightUpdatesForRange:v22[4] inTextStorage:v16 updates:{v11, &__block_literal_global_32}];
          }

          else
          {
            v18 = [*(a1 + 32) textStorageDocumentsNeedingHighlightUpdates];
            v19 = [v11 document];
            [v18 removeObject:v19];
          }

          _Block_object_dispose(&v21, 8);
        }

        else
        {
          v17 = [*(a1 + 32) textStorageDocumentsNeedingHighlightUpdates];
          [v17 removeObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }
}

void __65__ICAuthorHighlightsController_updateHighlightAnimationsIfNeeded__block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger length)
{
  v7.location = a2;
  if (v7.location)
  {
    v8 = *(*(a1 + 32) + 8);
    v7.length = *(v8 + 40);
    if (v7.length)
    {
      location = v7.location;
      v7.location = *(v8 + 32);
      v11.location = a3;
      v11.length = length;
      v7 = NSUnionRange(v7, v11);
      a3 = v7.location;
      v7.location = location;
      length = v7.length;
      v8 = *(*(a1 + 32) + 8);
    }

    *(v8 + 32) = a3;
    *(v8 + 40) = length;
  }
}

- (ICTTTextEditGrouper)editGrouper
{
  editGrouper = self->_editGrouper;
  if (!editGrouper)
  {
    v4 = objc_alloc(MEMORY[0x1E69B78D8]);
    v5 = [(ICAuthorHighlightsController *)self note];
    v6 = [v4 initWithNote:v5];
    v7 = self->_editGrouper;
    self->_editGrouper = v6;

    [(ICTTTextEditGrouper *)self->_editGrouper setJoinsWhitespaceAndNewlineGaps:1];
    v8 = objc_alloc_init(MEMORY[0x1E69B78D0]);
    [(ICTTTextEditGrouper *)self->_editGrouper setFilter:v8];

    v9 = [(ICTTTextEditGrouper *)self->_editGrouper filter];
    [v9 setAllowsMissingUsers:0];

    editGrouper = self->_editGrouper;
  }

  return editGrouper;
}

- (NSCache)editGroupsForTextStorageDocument
{
  editGroupsForTextStorageDocument = self->_editGroupsForTextStorageDocument;
  if (editGroupsForTextStorageDocument)
  {
    v4 = editGroupsForTextStorageDocument;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  }

  v5 = self->_editGroupsForTextStorageDocument;
  self->_editGroupsForTextStorageDocument = v4;

  v6 = self->_editGroupsForTextStorageDocument;

  return v6;
}

- (id)editGroupsForTextStorage:(id)a3
{
  v4 = a3;
  v5 = [(ICAuthorHighlightsController *)self editGroupsForTextStorageDocument];
  v6 = [v4 document];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v8 = [(ICAuthorHighlightsController *)self editGrouper];
    v9 = [v4 ic_range];
    v11 = [v4 editsInRange:{v9, v10}];
    v7 = [v8 groupedEditsForEdits:v11 inAttributedString:v4];

    v12 = [(ICAuthorHighlightsController *)self editGroupsForTextStorageDocument];
    v13 = [v4 document];
    [v12 setObject:v7 forKey:v13];
  }

  return v7;
}

- (void)updateHighlightAttributesForRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICAuthorHighlightsController *)self now];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] now];
  }

  v11 = v10;

  v12 = [(ICAuthorHighlightsController *)self editGroupsForTextStorage:v7];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v13 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v7];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__ICAuthorHighlightsController_updateHighlightAttributesForRange_inTextStorage___block_invoke;
  v22[3] = &unk_1E846AF08;
  v14 = v11;
  v23 = v14;
  v24 = self;
  v15 = v7;
  v25 = v15;
  v27 = &v28;
  v16 = v12;
  v26 = v16;
  [v13 enumerateAttributesInRange:location options:length usingBlock:{0, v22}];
  if (*(v29 + 24) == 1)
  {
    v17 = [(ICAuthorHighlightsController *)self textStorageDocumentsNeedingHighlightUpdates];
    v18 = [v15 document];
    [v17 addObject:v18];

    v19 = [(ICAuthorHighlightsController *)self highlightAnimationsDisplayLink];
    [v19 setPaused:0];
LABEL_9:

    goto LABEL_10;
  }

  if (location == [v15 ic_range] && length == v20)
  {
    v19 = [(ICAuthorHighlightsController *)self textStorageDocumentsNeedingHighlightUpdates];
    v21 = [v15 document];
    [v19 removeObject:v21];

    goto LABEL_9;
  }

LABEL_10:

  _Block_object_dispose(&v28, 8);
}

void __80__ICAuthorHighlightsController_updateHighlightAttributesForRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69B7928];
  v8 = a2;
  v27 = [v8 objectForKeyedSubscript:v7];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7920]];

  [v27 value];
  v11 = v10;
  v12 = [v9 color];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v27 color];
  }

  v15 = v14;

  if (v9)
  {
    v16 = *(a1 + 32);
    v17 = [v9 startDate];
    [v16 timeIntervalSinceDate:v17];
    v19 = v18;

    [v9 duration];
    v21 = v19 / v20;
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = fmin(v21, 1.0);
    [v9 fromValue];
    v24 = v23;
    [v9 toValue];
    v26 = v25 * v22 + v24 * (1.0 - v22);
    if ([v9 isAboveExistingHighlights])
    {
      v11 = v11 + v26;
    }

    else
    {
      v11 = v26;
    }

    if (v22 < 1.0 && ([*(a1 + 40) shouldAnimateInTextStorage:*(a1 + 48)] & 1) != 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      [*(a1 + 40) removeHighlightAnimationsForRange:a3 inTextStorage:{a4, *(a1 + 48)}];
    }
  }

  [*(a1 + 40) setHighlightAttributesForHighlightValue:v15 highlightColor:a3 forRange:a4 inTextStorage:*(a1 + 48) editGroups:{*(a1 + 56), v11}];
}

- (void)setHighlightAttributesForHighlightValue:(double)a3 highlightColor:(id)a4 forRange:(_NSRange)a5 inTextStorage:(id)a6 editGroups:(id)a7
{
  length = a5.length;
  location = a5.location;
  v38 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v14];
  v17 = *MEMORY[0x1E69B7940];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v16 addAttribute:v17 value:v18 range:{location, length}];

  [(ICAuthorHighlightsController *)self setAttachmentHighlightValue:0 highlightColor:location forRange:length inTextStorage:v14, a3];
  v19 = 0.0;
  if (!v13)
  {
    v19 = a3;
  }

  [(ICAuthorHighlightsController *)self setCheckmarkHighlightValue:0 highlightColor:location forRange:length inTextStorage:v14, v19];
  range2[0] = location;
  v20 = location;
  v21 = length;
  [(ICAuthorHighlightsController *)self setTextHighlightValue:0 highlightColor:0 blendsTextColor:v20 forRange:length inTextStorage:v14, a3];
  if (a3 > 0.0)
  {
    if (v13)
    {
      [(ICAuthorHighlightsController *)self setAttachmentHighlightValue:v13 highlightColor:range2[0] forRange:length inTextStorage:v14, a3];
      [(ICAuthorHighlightsController *)self setTextHighlightValue:v13 highlightColor:0 blendsTextColor:range2[0] forRange:length inTextStorage:v14, a3];
    }

    else
    {
      v30 = v16;
      v31 = v15;
      v35 = 0u;
      v36 = 0u;
      *&range2[1] = 0u;
      v34 = 0u;
      obj = v15;
      v22 = [obj countByEnumeratingWithState:&range2[1] objects:v37 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(range2[2] + 8 * i);
            v39.location = [v26 range];
            v40.location = range2[0];
            v40.length = v21;
            v27 = NSIntersectionRange(v39, v40);
            if (v27.length)
            {
              v28 = [v26 userID];
              v29 = [(ICAuthorHighlightsController *)self highlightColorForUserID:v28];

              [(ICAuthorHighlightsController *)self setAttachmentHighlightValue:v29 highlightColor:v27.location forRange:v27.length inTextStorage:v14, a3];
              [(ICAuthorHighlightsController *)self setCheckmarkHighlightValue:v29 highlightColor:v27.location forRange:v27.length inTextStorage:v14, a3];
              [(ICAuthorHighlightsController *)self setTextHighlightValue:v29 highlightColor:1 blendsTextColor:v27.location forRange:v27.length inTextStorage:v14, a3];
            }
          }

          v23 = [obj countByEnumeratingWithState:&range2[1] objects:v37 count:16];
        }

        while (v23);
      }

      v15 = v31;
      v13 = 0;
      v16 = v30;
    }
  }
}

- (void)setAttachmentHighlightValue:(double)a3 highlightColor:(id)a4 forRange:(_NSRange)a5 inTextStorage:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a6;
  v12 = a4;
  [(ICAuthorHighlightsController *)self fadedMultiplier];
  v14 = a3 * v13 + 1.0;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = fmin(v14, 1.0);
  if (a3 >= 0.0)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = [v12 colorWithAlphaComponent:{fmin(v16, 1.0)}];

  v18 = *MEMORY[0x1E69DB5F8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__ICAuthorHighlightsController_setAttachmentHighlightValue_highlightColor_forRange_inTextStorage___block_invoke;
  v21[3] = &unk_1E846AF30;
  v22 = v17;
  v23 = v11;
  v24 = v15;
  v25 = a3;
  v19 = v11;
  v20 = v17;
  [v19 enumerateAttribute:v18 inRange:location options:length usingBlock:{0, v21}];
}

void __98__ICAuthorHighlightsController_setAttachmentHighlightValue_highlightColor_forRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();
  v6 = v5;
  if (v5)
  {
    [v5 setForegroundAlpha:*(a1 + 48)];
    [v6 setHighlightColor:*(a1 + 32)];
    if (ICInternalSettingsIsTextKit2Enabled() && ([*(a1 + 40) textLayoutManagers], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = [*(a1 + 40) textLayoutManagers];
      v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v10)
      {
        v11 = v10;
        v31 = v4;
        v33 = *v39;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v39 != v33)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            v14 = [v6 viewIdentifier];
            v15 = [v13 existingAttachmentViewForIdentifier:v14];

            objc_opt_class();
            v16 = ICDynamicCast();
            v17 = v16;
            if (v16)
            {
              [v16 setForegroundAlpha:*(a1 + 48)];
              [v17 setHighlightColor:*(a1 + 32)];
            }

            objc_opt_class();
            v18 = ICDynamicCast();
            if (v18)
            {
              v19 = [*(a1 + 40) attributesAtIndex:a3 effectiveRange:0];
              v20 = [v19 mutableCopy];

              v21 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
              [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69B7940]];

              v22 = [v20 copy];
              [v18 updateHighlightsWithAttributes:v22];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v11);
        v4 = v31;
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = [*(a1 + 40) layoutManagers];
      v23 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = v4;
        v26 = *v35;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v9);
            }

            v28 = *(*(&v34 + 1) + 8 * j);
            objc_opt_class();
            v29 = [v28 viewForTextAttachmentNoCreate:v6];
            v30 = ICDynamicCast();

            [v30 setForegroundAlpha:*(a1 + 48)];
            [v30 setHighlightColor:*(a1 + 32)];
          }

          v24 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v24);
        v4 = v25;
      }
    }
  }
}

- (void)setCheckmarkHighlightValue:(double)a3 highlightColor:(id)a4 forRange:(_NSRange)a5 inTextStorage:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a4;
  v12 = a6;
  [(ICAuthorHighlightsController *)self fadedMultiplier];
  v14 = a3 * v13 + 1.0;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = fmin(v14, 1.0);
  v16 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v12];
  [v16 removeAttribute:*MEMORY[0x1E69B7938] range:{location, length}];
  v17 = *MEMORY[0x1E69B7600];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__ICAuthorHighlightsController_setCheckmarkHighlightValue_highlightColor_forRange_inTextStorage___block_invoke;
  v21[3] = &unk_1E846AF58;
  v21[4] = self;
  v22 = v11;
  v25 = a3;
  v26 = v15;
  v23 = v12;
  v24 = v16;
  v18 = v16;
  v19 = v12;
  v20 = v11;
  [v19 enumerateAttribute:v17 inRange:location options:length usingBlock:{0, v21}];
}

void __97__ICAuthorHighlightsController_setCheckmarkHighlightValue_highlightColor_forRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = [v22 todo];

  if (v7)
  {
    v8 = [*(a1 + 32) note];
    v9 = [v22 todo];
    v10 = [v9 uuid];
    v11 = [v10 UUIDString];
    v12 = [v8 userIDForChecklistItemWithIdentifier:v11];

    if (v12)
    {
      v13 = [*(a1 + 32) highlightColorForUserID:v12];
    }

    else
    {
      v13 = *(a1 + 40);
    }

    v14 = v13;
    v15 = *(a1 + 64);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = [v13 colorWithAlphaComponent:{fmin(v15, 1.0)}];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v17 = [*(a1 + 48) attribute:*MEMORY[0x1E69DB688] atIndex:a3 effectiveRange:0];
      v18 = [(ICCheckmarkAuthorHighlightValueAttribute *)v17 textLists];
      v19 = [v18 firstObject];

      objc_opt_class();
      v20 = [v19 markerTextAttachment];
      v21 = ICCheckedDynamicCast();

      [v21 setForegroundAlpha:*(a1 + 72)];
      [v21 setHighlightColor:v16];
    }

    else
    {
      v17 = objc_alloc_init(ICCheckmarkAuthorHighlightValueAttribute);
      [(ICCheckmarkAuthorHighlightValueAttribute *)v17 setForegroundAlpha:*(a1 + 72)];
      [(ICCheckmarkAuthorHighlightValueAttribute *)v17 setHighlightColor:v16];
      [*(a1 + 56) addAttribute:*MEMORY[0x1E69B7938] value:v17 range:{a3, a4}];
    }
  }
}

- (void)setTextHighlightValue:(double)a3 highlightColor:(id)a4 blendsTextColor:(BOOL)a5 forRange:(_NSRange)a6 inTextStorage:(id)a7
{
  length = a6.length;
  location = a6.location;
  v10 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a7;
  [(ICAuthorHighlightsController *)self fadedMultiplier];
  v16 = a3 * v15 + 1.0;
  if (v16 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  [(ICAuthorHighlightsController *)self highlightedMultiplier];
  v19 = v18 * a3;
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  v20 = [v13 colorWithAlphaComponent:{fmin(v19, 1.0)}];
  v21 = [(ICAuthorHighlightsController *)self highlightsAttributedStringForTextStorage:v14];
  v22 = v21;
  if (v17 >= 1.0)
  {
    if (v20)
    {
      v33 = v13;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke_2;
      v48[3] = &unk_1E846AF80;
      v32 = v14;
      v49 = v14;
      v34 = v49;
      [v49 ic_componentRangesSeparatedByPredicate:v48 inRange:{location, length}];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v47 = 0u;
      v24 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v45;
        v27 = *MEMORY[0x1E69DB600];
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v30 = [*(*(&v44 + 1) + 8 * i) rangeValue];
            v31 = v29;
            if (v10)
            {
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke_3;
              v39[3] = &unk_1E846AFA8;
              v40 = v20;
              v41 = v34;
              v43 = a3;
              v42 = v22;
              [v42 enumerateAttributesInRange:v30 options:v31 usingBlock:{0, v39}];
            }

            else
            {
              [v22 addAttribute:v27 value:v20 range:{v30, v29}];
            }
          }

          v25 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v25);
      }

      v14 = v32;
      v13 = v33;
      v23 = &v49;
    }

    else
    {
      [v21 removeAttribute:*MEMORY[0x1E69DB600] range:{location, length}];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke_4;
      v36[3] = &unk_1E8468DC0;
      v23 = &v37;
      v37 = v14;
      v38 = v22;
      [v38 enumerateAttributesInRange:location options:length usingBlock:{0, v36}];
    }
  }

  else
  {
    [v21 removeAttribute:*MEMORY[0x1E69DB600] range:{location, length}];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke;
    v50[3] = &unk_1E8468E88;
    v51[1] = *&a3;
    v51[2] = *&v17;
    v23 = v51;
    v51[0] = v22;
    [v51[0] enumerateAttributesInRange:location options:length usingBlock:{0, v50}];
  }
}

void __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69B7960];
  v8 = a2;
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  }

  v12 = v11;

  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7930]];

  v14 = [v13 color];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;

  v18 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  v19 = [v17 ic_colorBlendedWithColor:v18 fraction:fabs(*(a1 + 40))];

  v27 = [v19 colorWithAlphaComponent:*(a1 + 48)];

  [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB650] value:v27 range:{a3, a4}];
  v20 = [v13 underlineStyle];
  v21 = *(a1 + 32);
  v22 = *MEMORY[0x1E69DB758];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  [v21 addAttribute:v22 value:v23 range:{a3, a4}];

  v24 = [v13 underlineColor];
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v27;
  }

  v26 = v25;

  [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB750] value:v26 range:{a3, a4}];
}

uint64_t __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v7 = [v6 characterIsMember:a3];

  if (v7)
  {
    isKindOfClass = 1;
  }

  else if (a3 == 65532)
  {
    v9 = [*(a1 + 32) attribute:*MEMORY[0x1E69DB5F8] atIndex:a2 effectiveRange:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v7 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69B7960]];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  }

  v10 = v9;

  v11 = *(a1 + 32);
  objc_opt_class();
  v12 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
  v13 = ICDynamicCast();

  v38 = v13;
  [v13 intValue];
  if (ICEmphasisColorTypeForTag())
  {
    v14 = ICColorForEmphasisColorType();

    if (([*(a1 + 40) isForTextKit2] & 1) == 0)
    {
      v15 = [v14 colorWithAlphaComponent:0.2];
      v16 = [v15 ic_colorBlendedWithColor:v11 fraction:*(a1 + 56)];

      v11 = v16;
    }
  }

  else
  {
    v14 = v10;
  }

  v17 = a4;
  v18 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69B7930]];
  if ([v18 type] == 1)
  {
    v19 = [*(a1 + 40) textViews];
    v20 = [v19 anyObject];
    v21 = [v20 tintColor];
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v14;
  }

  v23 = v22;

  v24 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  v25 = [v23 ic_colorBlendedWithColor:v24 fraction:*(a1 + 56)];

  [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB650] value:v25 range:{a3, a4}];
  if (v11)
  {
    [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB600] value:v11 range:{a3, a4}];
  }

  v26 = [v18 underlineStyle];
  v27 = *(a1 + 48);
  v28 = *MEMORY[0x1E69DB758];
  [MEMORY[0x1E696AD98] numberWithInteger:v26];
  v29 = v11;
  v31 = v30 = v17;
  [v27 addAttribute:v28 value:v31 range:{a3, v30}];

  v32 = [v18 underlineColor];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v25;
  }

  v35 = v34;

  v36 = [MEMORY[0x1E69DC888] clearColor];
  v37 = [v35 ic_colorBlendedWithColor:v36 fraction:*(a1 + 56)];

  [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB750] value:v37 range:{a3, v30}];
}

void __108__ICAuthorHighlightsController_setTextHighlightValue_highlightColor_blendsTextColor_forRange_inTextStorage___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69B7960]];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
  }

  v10 = v9;

  objc_opt_class();
  v11 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
  v12 = ICDynamicCast();

  [v12 intValue];
  if (ICEmphasisColorTypeForTag())
  {
    v13 = ICColorForEmphasisColorType();

    if ([*(a1 + 32) isForTextKit2])
    {
      v14 = 0;
    }

    else
    {
      v14 = [v13 colorWithAlphaComponent:0.2];
    }

    v10 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v28 objectForKeyedSubscript:*MEMORY[0x1E69B7930]];
  v16 = [v15 color];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v10;
  }

  v19 = v18;

  [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB650] value:v19 range:{a3, a4}];
  if (v14)
  {
    [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB600] value:v14 range:{a3, a4}];
  }

  v20 = [v15 underlineStyle];
  v21 = *(a1 + 40);
  v22 = *MEMORY[0x1E69DB758];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  [v21 addAttribute:v22 value:v23 range:{a3, a4}];

  v24 = [v15 underlineColor];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v19;
  }

  v27 = v26;

  [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB750] value:v27 range:{a3, a4}];
}

- (id)attributesForHighlightingTextLineFragment:(id)a3 characterRange:(_NSRange)a4 defaultRenderingAttributes:(id)a5 effectiveRange:(_NSRange *)a6 textView:(id)a7
{
  location = a4.location;
  v73[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a7;
  v14 = a3;
  objc_opt_class();
  v15 = [v14 textLayoutFragment];

  v16 = [v15 textElement];
  v17 = ICDynamicCast();

  v70 = v13;
  if (!v17 || ([v17 locationForCharacterIndex:location dataSourceLocationsOnly:1 actualRange:0], v18 = objc_claimAutoreleasedReturnValue(), (v19 = v18) == 0) && (objc_msgSend(v17, "locationForCharacterIndex:dataSourceLocationsOnly:actualRange:", location, 0, 0), (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v33 = v12;
    goto LABEL_29;
  }

  v71.location = 0;
  v71.length = 0;
  v20 = [(ICAuthorHighlightsController *)self note];
  v21 = [v20 textContentStorage];

  v22 = [v21 documentRange];
  v23 = [v22 location];
  v69 = v19;
  v24 = [v21 offsetFromLocation:v23 toLocation:v19];

  v25 = [v21 textStorage];
  v26 = [v25 highlightsAttributedString];
  v27 = [v26 attributesAtIndex:v24 effectiveRange:&v71];

  v28.location = [v13 ic_markedTextRange];
  if (v28.location == 0x7FFFFFFFFFFFFFFFLL || (v29 = v28.location, length = v28.length, !NSIntersectionRange(v28, v71).location))
  {
    v32 = 0;
  }

  else
  {
    if (v71.location <= v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = v71.location;
    }

    if (v29 <= v31)
    {
      if (v29 + length <= v31)
      {
        v32 = v29 == v71.location && length == v71.length;
      }

      else
      {
        v71.location = v31;
        v71.length = v29 + length - v31;
        v32 = 1;
      }
    }

    else
    {
      v32 = 0;
      v71.location = v31;
      v71.length = v29 - v31;
    }
  }

  v34 = [v21 documentRange];
  v35 = [v34 location];
  v36 = [v21 locationFromLocation:v35 withOffset:v71.location];

  v37 = [v17 rangeForLocation:v36 allowsTrailingEdge:1];
  v38 = v71.length;
  a6->location = v37;
  a6->length = v38;
  v39 = [v12 mutableCopy];
  if (!v18)
  {
    objc_opt_class();
    v46 = *MEMORY[0x1E69DB650];
    v47 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v48 = ICCheckedDynamicCast();

    objc_opt_class();
    v49 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69B7940]];
    v50 = ICCheckedDynamicCast();
    [v50 floatValue];
    v52 = v51;

    if (fabs(v52) >= 0.00999999978)
    {
      v53 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69DB670]];

      if (!v53)
      {
        [v68 fadedMultiplier];
        v55 = v52 * v54 + 1.0;
        if (v55 < 0.0)
        {
          v55 = 0.0;
        }

        v56 = [v48 colorWithAlphaComponent:{fmin(v55, 1.0)}];
        [v39 setObject:v56 forKeyedSubscript:v46];
      }
    }

    goto LABEL_27;
  }

  v40 = *MEMORY[0x1E69DB600];
  v41 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69DB600]];
  [v39 setObject:v41 forKeyedSubscript:v40];

  if (v32)
  {
    v42 = *MEMORY[0x1E69DB650];
    v43 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v72 = v42;
    v44 = [v43 colorWithAlphaComponent:0.8];
    v73[0] = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];

    [v39 addEntriesFromDictionary:v45];
  }

  else
  {
    v57 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69DB670]];

    if (v57)
    {
      goto LABEL_24;
    }

    v58 = *MEMORY[0x1E69DB650];
    v43 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    [v39 setObject:v43 forKeyedSubscript:v58];
  }

LABEL_24:
  v59 = *MEMORY[0x1E69DB758];
  v60 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if (!v60)
  {
    goto LABEL_28;
  }

  v61 = v60;
  v62 = [v27 objectForKeyedSubscript:v59];
  v63 = [v62 isEqual:&unk_1F4FC3ED0];

  if (v63)
  {
    goto LABEL_28;
  }

  v64 = [v27 objectForKeyedSubscript:v59];
  [v39 setObject:v64 forKeyedSubscript:v59];

  v65 = *MEMORY[0x1E69DB750];
  v48 = [v27 objectForKeyedSubscript:*MEMORY[0x1E69DB750]];
  [v39 setObject:v48 forKeyedSubscript:v65];
LABEL_27:

LABEL_28:
  v33 = [v39 copy];

LABEL_29:

  return v33;
}

- (void)textStorageDidProcessEndEditing:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v8 = ICDynamicCast();

  if (![(ICAuthorHighlightsController *)self isPerformingHighlightUpdatesForTextStorage:v8])
  {
    v6 = [(ICAuthorHighlightsController *)self editGroupsForTextStorageDocument];
    v7 = [v8 document];
    [v6 removeObjectForKey:v7];
  }
}

- (_NSRange)invalidHighlightsRange
{
  length = self->_invalidHighlightsRange.length;
  location = self->_invalidHighlightsRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (ICTTTextStorage)invalidHighlightsTextStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidHighlightsTextStorage);

  return WeakRetained;
}

@end