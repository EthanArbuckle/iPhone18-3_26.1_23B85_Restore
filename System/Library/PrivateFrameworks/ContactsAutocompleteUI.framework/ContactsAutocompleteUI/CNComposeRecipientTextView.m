@interface CNComposeRecipientTextView
- (BOOL)_canAddAdditionalAtoms;
- (BOOL)_delegateRespondsToSizeChange;
- (BOOL)_hasRecipientsWithPresentationOptions:(unint64_t)a3;
- (BOOL)_recipientAtomHitInView:(id)a3 atLocation:(CGPoint)a4;
- (BOOL)_textViewContainsAtomizedRecipients;
- (BOOL)_useRightToLeftLayout;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)containsAddress:(id)a3;
- (BOOL)finishEnteringRecipient;
- (BOOL)hasClearableText;
- (BOOL)hasContent;
- (BOOL)hostRecipientViewHasSearchResults;
- (BOOL)resignFirstResponder;
- (BOOL)shouldExpandRecipient:(id)a3;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNComposeRecipientTextView)initWithFrame:(CGRect)a3;
- (CNComposeRecipientTextView)initWithFrame:(CGRect)a3 dragDropDelegate:(id)a4;
- (CNComposeRecipientTextView)initWithOptions:(id)a3;
- (NSArray)addresses;
- (NSArray)recipients;
- (NSArray)uncommentedAddresses;
- (UIColor)inactiveTextColor;
- (UIFont)baseFont;
- (_NSRange)_placeholderAttachmentRange;
- (_NSRange)_rangeForComposeRecipientAtom:(id)a3;
- (double)labelTopPadding;
- (double)offsetForRowWithTextField;
- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)a3 numberOfRowsAboveField:(int64_t)a4;
- (id)_atomAttachmentForRecipient:(id)a3;
- (id)_atomViewAtCharacterIndex:(unint64_t)a3;
- (id)_attributedStringWithAtomizedRecipients;
- (id)_baseAttributes;
- (id)_placeholderAttachmentWithStaticWidth;
- (id)_textContainerExclusionPathsWithAddButton:(BOOL)a3;
- (id)_toString;
- (id)_userEnteredTextWithRange:(_NSRange *)a3;
- (id)_valueForAtomLayoutOption:(id)a3 withRecipient:(id)a4;
- (id)atomViewForRecipient:(id)a3;
- (id)atomViewsInRange:(_NSRange)a3;
- (id)clearableTextRanges;
- (id)dragPreviewForDraggedItem:(id)a3 withContainer:(id)a4;
- (id)selectedAtoms;
- (id)undoManager;
- (unint64_t)_atomPresentationOptionsForRecipient:(id)a3;
- (unint64_t)indexOfRecipientForInsertionAtPoint:(CGPoint)a3;
- (unint64_t)numberOfRowsOfTextInField;
- (void)_addAddressAtomSubview:(id)a3;
- (void)_addButtonTapped:(id)a3;
- (void)_didRemoveRecipient:(id)a3;
- (void)_ensureAddButton;
- (void)_ensureInactiveTextView;
- (void)_insertAtomAttachment:(id)a3 andReplaceCharactersInRange:(_NSRange)a4;
- (void)_invalidateTextContainerExclusionPaths;
- (void)_longPressGestureRecognized:(id)a3;
- (void)_notifyDelegateOfNewSize:(CGSize)a3;
- (void)_notifyDelegateOfSizeChange;
- (void)_recomputeTextContainerExclusionPaths;
- (void)_removeAddressAtomSubview:(id)a3;
- (void)_removeAllRecipients;
- (void)_resetSelectionState;
- (void)_setAddButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setTextViewIsCollapsed:(BOOL)a3 animated:(BOOL)a4;
- (void)_setValue:(id)a3 forAtomLayoutOption:(id)a4 withRecipient:(id)a5;
- (void)_tapGestureRecognized:(id)a3;
- (void)_updateAddButtonVisibilityAnimated:(BOOL)a3;
- (void)_updateInactiveTextView;
- (void)addAddress:(id)a3;
- (void)addRecipient:(id)a3;
- (void)addRecipient:(id)a3 index:(unint64_t)a4 animate:(BOOL)a5;
- (void)atomTextView:(id)a3 didChangeWritingDirection:(int64_t)a4;
- (void)atomTextViewDidBecomeFirstResponder:(id)a3;
- (void)atomTextViewDidResignFirstResponder:(id)a3;
- (void)clearText;
- (void)composeRecipientAtomDisambiguate:(id)a3;
- (void)composeRecipientAtomShowPersonCard:(id)a3;
- (void)dealloc;
- (void)deselectAllAtoms;
- (void)dragEnteredAtPoint:(CGPoint)a3;
- (void)dragExited;
- (void)dragMovedToPoint:(CGPoint)a3;
- (void)dropItems:(id)a3;
- (void)invalidateAtomPresentationOptions;
- (void)invalidateAtomPresentationOptionsForRecipient:(id)a3;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutSubviews;
- (void)reflow;
- (void)refreshGlass;
- (void)refreshPreferredContentSize;
- (void)removeRecipient:(id)a3;
- (void)removeSingleRecipient:(id)a3;
- (void)selectAllAtoms;
- (void)selectAtom:(id)a3;
- (void)selectAtomForRecipient:(id)a3;
- (void)setAddresses:(id)a3;
- (void)setAtomPresentationOptions:(unint64_t)a3 forRecipient:(id)a4;
- (void)setBaseFont:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInactiveTextColor:(id)a3;
- (void)setLabel:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)setShowGlassBackground:(BOOL)a3;
- (void)setShowsAddButtonWhenExpanded:(BOOL)a3;
- (void)setUsingActiveAppearance:(BOOL)usingActiveAppearance animated:(BOOL)a4;
- (void)shiftSelectAtom:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
@end

@implementation CNComposeRecipientTextView

- (void)dealloc
{
  [(_CNAtomTextView *)self->_textView setHostRecipientView:0];
  [(_CNAtomTextView *)self->_textView setDelegate:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(CNComposeRecipientTextView *)self keyboardWillHideNotificationObserver];
  [v3 removeObserver:v4];

  v5 = [(CNComposeRecipientTextView *)self keyboardDidHideNotificationObserver];
  [v3 removeObserver:v5];

  v6.receiver = self;
  v6.super_class = CNComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v6 dealloc];
}

- (CNComposeRecipientTextView)initWithFrame:(CGRect)a3 dragDropDelegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(CNComposeRecipientTextView *)self initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [[CNComposeDragSource alloc] initWithView:v10 delegate:v9];
    dragSource = v10->_dragSource;
    v10->_dragSource = v11;

    [(CNComposeDragSource *)v10->_dragSource setAllowsDragOverridingMasterSwitch:1];
    v13 = [[CNComposeDropTarget alloc] initWithView:v10 delegate:v9];
    dropTarget = v10->_dropTarget;
    v10->_dropTarget = v13;

    v15 = MEMORY[0x1E695DFA8];
    v16 = +[CNComposeRecipient readableTypeIdentifiersForItemProvider];
    v17 = [v15 setWithArray:v16];

    v18 = [MEMORY[0x1E695D1B8] readableTypeIdentifiersForItemProvider];
    [v17 addObjectsFromArray:v18];

    v19 = +[CNComposeRecipients readableTypeIdentifiersForItemProvider];
    [v17 addObjectsFromArray:v19];

    [(CNComposeDropTarget *)v10->_dropTarget setAcceptableUTIs:v17];
    v20 = [(_CNAtomTextView *)v10->_textView interactions];
    v21 = [v20 _cn_filter:&__block_literal_global_16];
    [(_CNAtomTextView *)v10->_textView setInteractions:v21];
  }

  return v10;
}

BOOL __61__CNComposeRecipientTextView_initWithFrame_dragDropDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v5 = 0;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = v4 != objc_opt_class();
  }

  return v5;
}

- (void)refreshGlass
{
  [(UIView *)self cn_setWantsGlassBackground:self->_showGlassBackground];
  if (self->_showGlassBackground)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  [(UIView *)self cn_applyCornerRadius:v3];
  showGlassBackground = self->_showGlassBackground;

  [(CNComposeRecipientTextView *)self setSeparatorHidden:showGlassBackground];
}

- (void)setShowGlassBackground:(BOOL)a3
{
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:29];

  self->_showGlassBackground = v7 & a3;

  [(CNComposeRecipientTextView *)self refreshGlass];
}

- (CNComposeRecipientTextView)initWithOptions:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNComposeRecipientTextView;
  v5 = [(CNComposeRecipientTextView *)&v17 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 copy];
    options = v6->_options;
    v6->_options = v7;

    v9 = [(CNAutocompleteSearchControllerOptions *)v6->_options trailingButtonMidlineInsetFromLayoutMargin];

    if (v9)
    {
      v10 = [(CNAutocompleteSearchControllerOptions *)v6->_options trailingButtonMidlineInsetFromLayoutMargin];
      [v10 floatValue];
      [(CNComposeRecipientTextView *)v6 setTrailingButtonMidlineInsetFromLayoutMargin:v11];
    }

    v12 = [(CNAutocompleteSearchControllerOptions *)v6->_options shouldAlwaysShowAddContactsButton];

    if (v12)
    {
      v13 = [(CNAutocompleteSearchControllerOptions *)v6->_options shouldAlwaysShowAddContactsButton];
      -[CNComposeRecipientTextView setShouldAlwaysShowAddContactsButton:](v6, "setShouldAlwaysShowAddContactsButton:", [v13 BOOLValue]);
    }

    else
    {
      [(CNComposeRecipientTextView *)v6 setShouldAlwaysShowAddContactsButton:0];
    }

    [(CNComposeRecipientTextView *)v6 setBackgroundColor:0];
    v14 = [(CNAutocompleteSearchControllerOptions *)v6->_options showGlassBackground];

    if (v14)
    {
      v15 = [(CNAutocompleteSearchControllerOptions *)v6->_options showGlassBackground];
      -[CNComposeRecipientTextView setShowGlassBackground:](v6, "setShowGlassBackground:", [v15 BOOLValue]);
    }

    else
    {
      [(CNComposeRecipientTextView *)v6 setShowGlassBackground:0];
    }
  }

  return v6;
}

- (CNComposeRecipientTextView)initWithFrame:(CGRect)a3
{
  v39.receiver = self;
  v39.super_class = CNComposeRecipientTextView;
  v3 = [(CNComposeHeaderView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNComposeRecipientTextView *)v3 setClipsToBounds:1];
    v4->_usingActiveAppearance = 1;
    v5 = [_CNAtomTextView alloc];
    [(CNComposeRecipientTextView *)v4 bounds];
    v6 = [(_CNAtomTextView *)v5 initWithFrame:?];
    textView = v4->_textView;
    v4->_textView = v6;

    v8 = [(_CNAtomTextView *)v4->_textView textContainer];
    [v8 setLineFragmentPadding:0.0];

    v9 = v4->_textView;
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(_CNAtomTextView *)v9 setBackgroundColor:v10];

    [(_CNAtomTextView *)v4->_textView setDelegate:v4];
    v11 = v4->_textView;
    v12 = +[CNAtomView defaultFont];
    [(_CNAtomTextView *)v11 setFont:v12];

    [(_CNAtomTextView *)v4->_textView setForceEnableDictation:1];
    [(_CNAtomTextView *)v4->_textView setAutocorrectionType:1];
    [(_CNAtomTextView *)v4->_textView setAutocapitalizationType:0];
    [(_CNAtomTextView *)v4->_textView setKeyboardType:7];
    [(_CNAtomTextView *)v4->_textView setBounces:0];
    [(_CNAtomTextView *)v4->_textView setAutoresizingMask:0];
    [(_CNAtomTextView *)v4->_textView setHostRecipientView:v4];
    v13 = [(_CNAtomTextView *)v4->_textView layoutManager];
    [v13 setDelegate:v4];

    v14 = [(_CNAtomTextView *)v4->_textView layoutManager];
    [v14 setAllowsNonContiguousLayout:1];

    [(_CNAtomTextView *)v4->_textView setScrollsToTop:0];
    v4->_enabled = 1;
    [(CNComposeRecipientTextView *)v4 addSubview:v4->_textView];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    atomViews = v4->_atomViews;
    v4->_atomViews = v15;

    v17 = [(CNComposeHeaderView *)v4 labelView];
    [v17 removeFromSuperview];

    v18 = v4->_textView;
    v19 = [(CNComposeHeaderView *)v4 labelView];
    [(_CNAtomTextView *)v18 addSubview:v19];

    [(CNComposeRecipientTextView *)v4 _setAddButtonVisible:0 animated:0];
    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapGestureRecognized_];
    [v20 setCancelsTouchesInView:0];
    [(CNComposeRecipientTextView *)v4 addGestureRecognizer:v20];
    v21 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel__longPressGestureRecognized_];
    [v21 setCancelsTouchesInView:0];
    [(CNComposeRecipientTextView *)v4 addGestureRecognizer:v21];
    v4->_textViewExclusionPathsAreValid = 1;
    v4->_atomViewAnimationDepth = 0;
    v4->_parentIsClosing = 0;
    v4->_isTextFieldCollapsed = 0;
    v4->_collapsedStateInitialized = 0;
    v4->_indicatesUnsafeRecipientsWhenCollapsed = 0;
    v4->_notifyDelegateOfSizeChange = 1;
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    atomPresentationOptionsByRecipient = v4->_atomPresentationOptionsByRecipient;
    v4->_atomPresentationOptionsByRecipient = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    atomLayoutOptionsByRecipient = v4->_atomLayoutOptionsByRecipient;
    v4->_atomLayoutOptionsByRecipient = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recipientsBeingRemoved = v4->_recipientsBeingRemoved;
    v4->_recipientsBeingRemoved = v26;

    v4->_showsAddButtonWhenExpanded = 1;
    *&v4->_expandRecipientsInNamedGroups = 1;
    v4->_showGlassBackground = 0;
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    objc_initWeak(&location, v4);
    v29 = *MEMORY[0x1E69DE078];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __44__CNComposeRecipientTextView_initWithFrame___block_invoke;
    v36[3] = &unk_1E7CD1EA8;
    objc_copyWeak(&v37, &location);
    v30 = [v28 addObserverForName:v29 object:0 queue:0 usingBlock:v36];
    [(CNComposeRecipientTextView *)v4 setKeyboardWillHideNotificationObserver:v30];

    v31 = *MEMORY[0x1E69DDF70];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __44__CNComposeRecipientTextView_initWithFrame___block_invoke_2;
    v34[3] = &unk_1E7CD1EA8;
    objc_copyWeak(&v35, &location);
    v32 = [v28 addObserverForName:v31 object:0 queue:0 usingBlock:v34];
    [(CNComposeRecipientTextView *)v4 setKeyboardDidHideNotificationObserver:v32];

    [(CNComposeRecipientTextView *)v4 refreshGlass];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __44__CNComposeRecipientTextView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setKeyboardIsHiding:1];
}

void __44__CNComposeRecipientTextView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setKeyboardIsHiding:0];
}

- (double)labelTopPadding
{
  options = self->_options;
  if (options && ([(CNAutocompleteSearchControllerOptions *)options labelTopPadding], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(CNAutocompleteSearchControllerOptions *)self->_options labelTopPadding];
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CNComposeRecipientTextView;
    [(CNComposeHeaderView *)&v10 labelTopPadding];
    return v8;
  }

  return v7;
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = CNComposeRecipientTextView;
  [(CNComposeHeaderView *)&v59 layoutSubviews];
  v3 = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
  [(CNComposeHeaderView *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(_CNAtomTextView *)self->_textView bounds];
  if (v10 <= 0.00000011920929)
  {
    textView = self;
  }

  else
  {
    textView = self->_textView;
  }

  [textView bounds];
  v13 = v12;
  if (v3)
  {
    [(_CNAtomTextView *)self->_textView frame];
    v62.origin.x = v5;
    v62.origin.y = v7;
    v62.size.width = v9;
    v62.size.height = v13;
    if (!CGRectEqualToRect(v60, v62))
    {
      [(CNComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
    }
  }

  [(_CNAtomTextView *)self->_textView setFrame:v5, v7, v9, v13];
  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  [(_CNAtomTextView *)self->_textView setTextContainerInset:?];
  v14 = [objc_opt_class() defaultFont];
  [v14 lineHeight];

  [(CNComposeRecipientTextView *)self bounds];
  UIRoundToViewScale();
  addButton = self->_addButton;
  if (addButton)
  {
    p_addButtonFrame = &self->_addButtonFrame;
    x = self->_addButtonFrame.origin.x;
    y = self->_addButtonFrame.origin.y;
    width = self->_addButtonFrame.size.width;
    height = self->_addButtonFrame.size.height;
    [(UIButton *)addButton intrinsicContentSize];
    self->_addButtonFrame.size.width = v21;
    self->_addButtonFrame.size.height = v22;
    UIRoundToViewScale();
    self->_addButtonFrame.origin.y = v23;
    v24 = [MEMORY[0x1E69966E8] currentEnvironment];
    v25 = [v24 featureFlags];
    v26 = [v25 isFeatureEnabled:29];

    v27 = -1.0;
    if (v26)
    {
      v27 = 1.0;
    }

    self->_addButtonFrame.origin.y = self->_addButtonFrame.origin.y + v27;
    [(CNComposeHeaderView *)self _contentRect];
    if (v3)
    {
      MinX = CGRectGetMinX(*&v28);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v28) - self->_addButtonFrame.size.width;
    }

    p_addButtonFrame->origin.x = MinX;
    [(CNComposeRecipientTextView *)self trailingButtonMidlineInsetFromLayoutMargin];
    if (v33 == 0.0)
    {
      v38 = p_addButtonFrame->origin.x;
    }

    else
    {
      [(CNComposeRecipientTextView *)self trailingButtonMidlineInsetFromLayoutMargin];
      v35 = v34;
      v61.origin.x = p_addButtonFrame->origin.x;
      v61.origin.y = self->_addButtonFrame.origin.y;
      v61.size.width = self->_addButtonFrame.size.width;
      v61.size.height = self->_addButtonFrame.size.height;
      v36 = v35 + CGRectGetWidth(v61) * -0.5;
      v37 = -1.0;
      if (v3)
      {
        v37 = 1.0;
      }

      v38 = p_addButtonFrame->origin.x + v36 * v37;
      p_addButtonFrame->origin.x = v38;
    }

    v39 = self->_addButtonFrame.origin.y;
    v40 = self->_addButtonFrame.size.width;
    v41 = self->_addButtonFrame.size.height;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    if (!CGRectEqualToRect(*&v38, v63))
    {
      [(UIButton *)self->_addButton setFrame:p_addButtonFrame->origin.x, self->_addButtonFrame.origin.y, self->_addButtonFrame.size.width, self->_addButtonFrame.size.height];
      [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
    }
  }

  if (![(CNComposeRecipientTextView *)self usingActiveAppearance])
  {
    [(CNComposeRecipientTextView *)self _updateInactiveTextView];
  }

  if (v3)
  {
    v58.receiver = self;
    v58.super_class = CNComposeRecipientTextView;
    [(CNComposeHeaderView *)&v58 layoutSubviews];
  }

  options = self->_options;
  if (options)
  {
    v43 = [(CNAutocompleteSearchControllerOptions *)options labelLeadingPadding];

    if (v43)
    {
      v44 = [(CNComposeHeaderView *)self labelView];
      [v44 frame];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      [(CNAutocompleteSearchControllerOptions *)self->_options labelLeadingPadding];
      if (v3)
        v53 = {;
        [v53 floatValue];
        v55 = v46 - v54;
      }

      else
        v53 = {;
        [v53 floatValue];
        v55 = v56;
      }

      v57 = [(CNComposeHeaderView *)self labelView];
      [v57 setFrame:{v55, v48, v50, v52}];
    }
  }

  if (self->_showGlassBackground)
  {
    [(CNComposeRecipientTextView *)self setSeparatorHidden:1];
  }
}

- (void)refreshPreferredContentSize
{
  v4.receiver = self;
  v4.super_class = CNComposeRecipientTextView;
  [(CNComposeHeaderView *)&v4 refreshPreferredContentSize];
  textView = self->_textView;
  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  [(_CNAtomTextView *)textView setTextContainerInset:?];
  [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  [(CNComposeRecipientTextView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_CNAtomTextView *)self->_textView sizeThatFits:a3.width, a3.height];
  v5 = v4 + -2.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CNComposeRecipientTextView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = CNComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v16 setBounds:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CNComposeRecipientTextView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = CNComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v16 setFrame:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  }
}

- (void)_removeAllRecipients
{
  v3 = [(_CNAtomTextView *)self->_textView textStorage];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(_CNAtomTextView *)self->_textView textStorage];
    v6 = [v5 length];

    v7 = [(_CNAtomTextView *)self->_textView textStorage];
    [v7 deleteCharactersInRange:{0, v6}];

    v9 = [(_CNAtomTextView *)self->_textView layoutManager];
    v8 = [(_CNAtomTextView *)self->_textView textContainer];
    [v9 ensureLayoutForTextContainer:v8];
  }
}

- (void)setAddresses:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNComposeRecipientTextView *)self recipients];
  v6 = [v5 copy];

  [(CNComposeRecipientTextView *)self _removeAllRecipients];
  v7 = [(CNComposeHeaderView *)self delegate];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v7 composeRecipientView:self composeRecipientForAddress:{*(*(&v17 + 1) + 8 * v13), v17}];
        if (([v8 containsObject:v14] & 1) == 0)
        {
          [(CNComposeRecipientTextView *)self addRecipient:v14];
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if (objc_opt_respondsToSelector())
  {
    if ([v6 count])
    {
      v15 = v6;
    }

    else
    {
      v15 = 0;
    }

    if ([v8 count])
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    [v7 composeRecipientView:self didReplaceRecipients:v15 withRecipients:v16];
  }

  [(CNComposeRecipientTextView *)self _updateInactiveTextView];
  [(CNComposeRecipientTextView *)self reflow];
}

- (NSArray)recipients
{
  v3 = [MEMORY[0x1E695DF70] array];
  textView = self->_textView;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CNComposeRecipientTextView_recipients__block_invoke;
  v7[3] = &unk_1E7CD2990;
  v5 = v3;
  v8 = v5;
  [(_CNAtomTextView *)textView enumerateAtoms:v7];

  return v5;
}

void __40__CNComposeRecipientTextView_recipients__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 recipient];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 recipient];
    [v4 addObject:v5];
  }
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  [(CNComposeRecipientTextView *)self _removeAllRecipients];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CNComposeRecipientTextView_setRecipients___block_invoke;
  v5[3] = &unk_1E7CD29B8;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];

  [(CNComposeRecipientTextView *)self _updateInactiveTextView];
}

- (void)addRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeRecipientTextView *)self recipients];
  -[CNComposeRecipientTextView addRecipient:index:animate:](self, "addRecipient:index:animate:", v4, [v5 count], 0);
}

- (void)addRecipient:(id)a3 index:(unint64_t)a4 animate:(BOOL)a5
{
  v5 = a5;
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v39 = v8;
    if (v5)
    {
      [(CNComposeRecipientTextView *)self _beginAtomViewAnimations];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v10 = [(CNComposeRecipientTextView *)self selectedAtoms];
    v11 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
    v40 = v5;
    if (v11)
    {
      v12 = v11;
      v13 = *v53;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          v16 = [(CNComposeRecipientTextView *)self recipients];
          v17 = [v15 recipient];
          a4 = [v16 indexOfObject:v17];

          v18 = [v15 recipient];
          [(CNComposeRecipientTextView *)self removeRecipient:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v12);
    }

    v9 = v39;
    if ([(CNComposeRecipientTextView *)self shouldExpandRecipient:v39])
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = [v39 sortedChildren];
      v20 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v20)
      {
        v21 = v20;
        v42 = *v49;
        obj = v19;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v49 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v48 + 1) + 8 * j);
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v24 = [v23 children];
            v25 = [v24 arrayByAddingObject:v23];

            v26 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v45;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v45 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  [*(*(&v44 + 1) + 8 * k) setIsMemberOfGroup:0];
                }

                v27 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
              }

              while (v27);
            }

            v30 = [(CNComposeRecipientTextView *)self recipients];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __57__CNComposeRecipientTextView_addRecipient_index_animate___block_invoke;
            v43[3] = &unk_1E7CD1BE0;
            v43[4] = v23;
            v31 = [v30 _cn_any:v43];

            if ((v31 & 1) == 0)
            {
              [(CNComposeRecipientTextView *)self addRecipient:v23 index:a4++ animate:v40];
            }
          }

          v19 = obj;
          v21 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v21);
      }

      v9 = v39;
    }

    else
    {
      v32 = [(CNComposeRecipientTextView *)self recipients];
      v33 = [v32 containsObject:v39];

      if ((v33 & 1) == 0)
      {
        v34 = [(CNComposeRecipientTextView *)self _atomAttachmentForRecipient:v39];
        [(CNComposeRecipientTextView *)self _insertAtomAttachment:v34 atCharacterIndex:a4];
        v35 = [(CNComposeHeaderView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v35 composeRecipientView:self didAddRecipient:v39];
        }

        [(_CNAtomTextView *)self->_textView setSelectedRange:a4 + 1, 0];
        v36 = [(CNComposeRecipientTextView *)self undoManager];
        [v36 registerUndoWithTarget:self selector:sel_removeRecipient_ object:v39];
        if (([v36 isUndoing] & 1) == 0)
        {
          v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v38 = [v37 localizedStringForKey:@"ADDRESS_ADDITION" value:&stru_1F3002C60 table:@"Localized"];
          [v36 setActionName:v38];

          v9 = v39;
        }
      }

      [(CNComposeRecipientTextView *)self _updateAddButtonVisibility];
      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 postNotificationName:@"CNComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
    }
  }
}

uint64_t __57__CNComposeRecipientTextView_addRecipient_index_animate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 normalizedAddress];
  v4 = [*(a1 + 32) normalizedAddress];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)shouldExpandRecipient:(id)a3
{
  v4 = a3;
  if ([v4 isGroup])
  {
    if ([(CNComposeRecipientTextView *)self expandRecipientsInNamedGroups])
    {
      v5 = 1;
    }

    else
    {
      v6 = *MEMORY[0x1E6996568];
      v7 = [v4 displayString];
      v5 = (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (!undoManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    v5 = self->_undoManager;
    self->_undoManager = v4;

    undoManager = self->_undoManager;
  }

  return undoManager;
}

- (void)_didRemoveRecipient:(id)a3
{
  v9 = a3;
  v4 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 composeRecipientView:self didRemoveRecipient:v9];
  }

  v5 = [(CNComposeRecipientTextView *)self undoManager];
  [v5 registerUndoWithTarget:self selector:sel_addRecipient_ object:v9];
  if (([v5 isUndoing] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ADDRESS_DELETION" value:&stru_1F3002C60 table:@"Localized"];
    [v5 setActionName:v7];
  }

  [(CNComposeRecipientTextView *)self _updateAddButtonVisibility];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"CNComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
}

- (void)removeRecipient:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNComposeRecipientTextView *)self shouldExpandRecipient:v4])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 children];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(CNComposeRecipientTextView *)self removeSingleRecipient:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [(CNComposeRecipientTextView *)self removeSingleRecipient:v4];
  }
}

- (void)removeSingleRecipient:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = &unk_1B815995B;
  v18 = xmmword_1B81555E0;
  textView = self->_textView;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__CNComposeRecipientTextView_removeSingleRecipient___block_invoke;
  v11 = &unk_1E7CD29E0;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [(_CNAtomTextView *)textView enumerateAtomAttachments:&v8];
  if (v15[4] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(_CNAtomTextView *)self->_textView textStorage:v8];
    [v7 deleteCharactersInRange:{v15[4], v15[5]}];

    [(CNComposeRecipientTextView *)self _didRemoveRecipient:v6];
  }

  _Block_object_dispose(&v14, 8);
}

void __52__CNComposeRecipientTextView_removeSingleRecipient___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 recipient];
  v10 = [v9 isEquivalentAddressToRecipient:*(a1 + 32)];

  if (v10)
  {
    v11 = *(*(a1 + 40) + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    *a5 = 1;
  }
}

- (void)addAddress:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeHeaderView *)self delegate];
  v6 = [v5 composeRecipientView:self composeRecipientForAddress:v4];

  if (v6)
  {
    v11 = 0uLL;
    v7 = [(CNComposeRecipientTextView *)self _userEnteredTextWithRange:&v11];
    textView = self->_textView;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__CNComposeRecipientTextView_addAddress___block_invoke;
    v9[3] = &unk_1E7CD2A08;
    v9[4] = self;
    v10 = v11;
    [(_CNAtomTextView *)textView batchTextStorageUpdates:v9];
    [(CNComposeRecipientTextView *)self addRecipient:v6 index:v11 animate:1];
    [(_CNAtomTextView *)self->_textView setSelectedRange:v11 + 1, 0];
  }
}

void __41__CNComposeRecipientTextView_addAddress___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 544) textStorage];
  [v2 deleteCharactersInRange:{a1[5], a1[6]}];
}

- (BOOL)containsAddress:(id)a3
{
  v4 = a3;
  v5 = [(_CNAtomTextView *)self->_textView atoms];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CNComposeRecipientTextView_containsAddress___block_invoke;
  v10[3] = &unk_1E7CD2A30;
  v11 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v10];
  v8 = [v7 count] != 0;

  return v8;
}

uint64_t __46__CNComposeRecipientTextView_containsAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  v4 = [v3 uncommentedAddress];
  v5 = [v4 ea_isEqualToEmailAddress:*(a1 + 32)];

  return v5;
}

- (void)_addButtonTapped:(id)a3
{
  v4 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    self->_addButtonWasTapped = 1;
    [v4 composeRecipientViewRequestAddRecipient:self];
  }
}

- (NSArray)addresses
{
  v2 = [(CNComposeRecipientTextView *)self recipients];
  v3 = [v2 arrayByApplyingSelector:sel_commentedAddress];

  return v3;
}

- (NSArray)uncommentedAddresses
{
  v2 = [(CNComposeRecipientTextView *)self recipients];
  v3 = [v2 arrayByApplyingSelector:sel_uncommentedAddress];

  return v3;
}

- (void)setUsingActiveAppearance:(BOOL)usingActiveAppearance animated:(BOOL)a4
{
  v14 = a4;
  if (self->_usingActiveAppearance != usingActiveAppearance)
  {
    v4 = a4;
    self->_usingActiveAppearance = usingActiveAppearance;
    collapsableUpdateTimer = self->_collapsableUpdateTimer;
    if (collapsableUpdateTimer)
    {
      [(NSTimer *)collapsableUpdateTimer invalidate];
      v7 = self->_collapsableUpdateTimer;
      self->_collapsableUpdateTimer = 0;

      usingActiveAppearance = self->_usingActiveAppearance;
    }

    v13 = !usingActiveAppearance;
    if (v4)
    {
      v8 = MEMORY[0x1E695DF50];
      v9 = [(CNComposeRecipientTextView *)self methodSignatureForSelector:sel__setTextViewIsCollapsed_animated_];
      v10 = [v8 invocationWithMethodSignature:v9];

      [v10 setTarget:self];
      [v10 setSelector:sel__setTextViewIsCollapsed_animated_];
      [v10 setArgument:&v13 atIndex:2];
      [v10 setArgument:&v14 atIndex:3];
      v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v10 invocation:0 repeats:0.1];
      v12 = self->_collapsableUpdateTimer;
      self->_collapsableUpdateTimer = v11;
    }

    else
    {
      [CNComposeRecipientTextView _setTextViewIsCollapsed:"_setTextViewIsCollapsed:animated:" animated:?];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    [(_CNAtomTextView *)self->_textView setEditable:?];

    [(CNComposeRecipientTextView *)self setUserInteractionEnabled:v4];
  }
}

- (void)setSeparatorHidden:(BOOL)a3
{
  if (self->_separatorHidden != a3)
  {
    v4 = a3;
    self->_separatorHidden = a3;
    v5 = [(CNComposeHeaderView *)self separator];
    [v5 setHidden:v4];
  }
}

- (void)setExpanded:(BOOL)a3
{
  self->_expanded = a3;
  [(CNComposeRecipientTextView *)self _updateAddButtonVisibility];

  [(CNComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
}

- (void)_updateAddButtonVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = (self->_addButtonWasTapped || self->_usingActiveAppearance && self->_expanded) && self->_showsAddButtonWhenExpanded && [(CNComposeRecipientTextView *)self _canAddAdditionalAtoms];

  [(CNComposeRecipientTextView *)self _setAddButtonVisible:v5 animated:v3];
}

- (void)setShowsAddButtonWhenExpanded:(BOOL)a3
{
  if (self->_showsAddButtonWhenExpanded != a3)
  {
    self->_showsAddButtonWhenExpanded = a3;
    [(CNComposeRecipientTextView *)self _updateAddButtonVisibility];

    [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  }
}

- (BOOL)_hasRecipientsWithPresentationOptions:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  textView = self->_textView;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CNComposeRecipientTextView__hasRecipientsWithPresentationOptions___block_invoke;
  v6[3] = &unk_1E7CD2A58;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = self;
  [(_CNAtomTextView *)textView enumerateAtoms:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __68__CNComposeRecipientTextView__hasRecipientsWithPresentationOptions___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 recipient];
  v5 = [v3 _atomPresentationOptionsForRecipient:v4];

  if ((a1[6] & v5) != 0)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }
}

- (id)_userEnteredTextWithRange:(_NSRange *)a3
{
  v5 = [(_CNAtomTextView *)self->_textView textStorage];
  v6 = [v5 string];

  v7 = [(_CNAtomTextView *)self->_textView selectedRange];
  v9 = v7 + v8;
  if (v7 + v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 length];
  }

  v10 = [v6 length];
  v11 = [v6 substringToIndex:v9];
  v12 = [MEMORY[0x1E696AB08] _cn_textAttachmentCharacterSet];
  v13 = [v11 rangeOfCharacterFromSet:v12 options:4];
  v15 = v14;

  v16 = [v6 substringFromIndex:v9];

  v17 = [MEMORY[0x1E696AB08] _cn_textAttachmentCharacterSet];
  v18 = [v16 rangeOfCharacterFromSet:v17 options:0];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13 + v15;
  }

  v20 = v18 + v9;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v10;
  }

  v21 = v20 - v19;
  v22 = v21 & ~(v21 >> 63);
  if (v19 == 0x7FFFFFFFFFFFFFFFLL || v21 < 1)
  {
    v26 = &stru_1F3002C60;
    if (a3)
    {
LABEL_16:
      a3->location = v19;
      a3->length = v22;
    }
  }

  else
  {
    v24 = [v6 substringWithRange:{v19, v21 & ~(v21 >> 63)}];
    v25 = [MEMORY[0x1E696AEC0] _cn_textAttachmentCharacterString];
    v26 = [v24 stringByReplacingOccurrencesOfString:v25 withString:&stru_1F3002C60];

    if (a3)
    {
      goto LABEL_16;
    }
  }

  return v26;
}

- (double)offsetForRowWithTextField
{
  [(CNComposeRecipientTextView *)self bounds];
  v3 = v2;
  [objc_opt_class() preferredHeight];
  return v3 - v4;
}

- (unint64_t)numberOfRowsOfTextInField
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(_CNAtomTextView *)self->_textView layoutManager];
  v4 = [v3 numberOfGlyphs];

  v5 = [(_CNAtomTextView *)self->_textView layoutManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CNComposeRecipientTextView_numberOfRowsOfTextInField__block_invoke;
  v8[3] = &unk_1E7CD2A80;
  v8[4] = &v9;
  [v5 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v4, v8}];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)setBaseFont:(id)a3
{
  v5 = a3;
  if (([(UIFont *)self->_baseFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_baseFont, a3);
    [(_CNAtomTextView *)self->_textView setFont:self->_baseFont];
  }
}

- (UIFont)baseFont
{
  v2 = self->_baseFont;
  if (!v2)
  {
    v2 = [objc_opt_class() defaultFont];
  }

  return v2;
}

- (BOOL)hasContent
{
  v2 = [(_CNAtomTextView *)self->_textView textStorage];
  v3 = [v2 length] != 0;

  return v3;
}

- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)a3 numberOfRowsAboveField:(int64_t)a4
{
  v7 = [(CNComposeRecipientTextView *)self numberOfRowsOfTextInField];
  if (a4 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = a3 - v8;
  if (v7 < a3 - v8)
  {
    v9 = v7;
  }

  if (a4 >= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0.0;
  v12 = 0.0;
  if (v8 >= 1)
  {
    v13 = v8;
    [objc_opt_class() preferredHeight];
    v12 = v14 * v13;
  }

  if (v10 >= 1)
  {
    [objc_opt_class() preferredHeight];
    v16 = v15;
    [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
    v11 = (v16 - v17) * v10;
  }

  return v12 + v11;
}

- (unint64_t)_atomPresentationOptionsForRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeHeaderView *)self delegate];
  v6 = [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else if (objc_opt_respondsToSelector())
  {
    v8 = [v5 presentationOptionsForRecipient:v4];
    atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [(NSMutableDictionary *)atomPresentationOptionsByRecipient setObject:v10 forKey:v4];
  }

  else
  {
    v8 = 0;
  }

  if (-[CNComposeDropTarget handlesDroppedContacts](self->_dropTarget, "handlesDroppedContacts") && ![v4 kind])
  {
    v11 = *MEMORY[0x1E6996570];
    v12 = [v4 address];
    if ((*(v11 + 16))(v11, v12))
    {
      v13 = MEMORY[0x1E699B240];
      v14 = [v4 address];
      v15 = [v13 emailAddressWithString:v14];

      if (!v15)
      {
        v8 |= 0x20000uLL;
      }
    }

    else
    {

      v8 |= 0x20000uLL;
    }
  }

  return v8;
}

- (void)setLabel:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNComposeRecipientTextView;
  [(CNComposeHeaderView *)&v4 setLabel:a3];
  [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
}

- (UIColor)inactiveTextColor
{
  inactiveTextColor = self->_inactiveTextColor;
  if (!inactiveTextColor)
  {
    v4 = [(CNComposeRecipientTextView *)self interactionTintColor];
    v5 = [v4 copy];
    v6 = self->_inactiveTextColor;
    self->_inactiveTextColor = v5;

    inactiveTextColor = self->_inactiveTextColor;
  }

  return inactiveTextColor;
}

- (void)setInactiveTextColor:(id)a3
{
  objc_storeStrong(&self->_inactiveTextColor, a3);

  [(CNComposeRecipientTextView *)self _updateInactiveTextView];
}

- (id)_baseAttributes
{
  v8.receiver = self;
  v8.super_class = CNComposeRecipientTextView;
  v3 = [(CNComposeHeaderView *)&v8 _baseAttributes];
  v4 = [v3 mutableCopy];

  v5 = [(CNComposeRecipientTextView *)self typingTextColor];

  if (v5)
  {
    v6 = [(CNComposeRecipientTextView *)self typingTextColor];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  }

  return v4;
}

- (id)clearableTextRanges
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(_CNAtomTextView *)self->_textView textStorage];
  v6 = [v5 string];
  v7 = [v4 stringWithString:v6];

  if ([v7 length])
  {
    v8 = [MEMORY[0x1E696AB08] _cn_textAttachmentCharacterSet];
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    [v9 setCharactersToBeSkipped:0];
    v10 = 0;
    while (1)
    {
      v11 = [v9 scanLocation];
      if (v11 >= [v7 length])
      {
        break;
      }

      v19 = v10;
      v12 = [v9 scanUpToCharactersFromSet:v8 intoString:&v19];
      v13 = v19;

      if ([v13 length])
      {
        v14 = [v9 scanLocation];
        v15 = v14 - [v13 length];
        v16 = [v13 length];
        v17 = [MEMORY[0x1E696B098] valueWithRange:{v15, v16}];
        [v3 addObject:v17];
      }

      v10 = v13;
      if (((v12 | [v9 scanCharactersFromSet:v8 intoString:0]) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = v10;
LABEL_9:
  }

  return v3;
}

- (void)clearText
{
  v3 = [(_CNAtomTextView *)self->_textView delegate];
  [(_CNAtomTextView *)self->_textView setDelegate:0];
  [(_CNAtomTextView *)self->_textView unmarkText];
  [(_CNAtomTextView *)self->_textView setDelegate:v3];
  v4 = [(CNComposeRecipientTextView *)self clearableTextRanges];
  if ([v4 count])
  {
    textView = self->_textView;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__CNComposeRecipientTextView_clearText__block_invoke;
    v6[3] = &unk_1E7CD1E08;
    v7 = v4;
    v8 = self;
    [(_CNAtomTextView *)textView batchTextStorageUpdates:v6];
  }
}

void __39__CNComposeRecipientTextView_clearText__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) rangeValue];
        v9 = v8;
        v10 = [*(*(a1 + 40) + 544) textStorage];
        [v10 deleteCharactersInRange:{v7, v9}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (BOOL)hasClearableText
{
  v2 = [(CNComposeRecipientTextView *)self clearableTextRanges];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)invalidateAtomPresentationOptions
{
  [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient removeAllObjects];
  [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient removeAllObjects];
  textView = self->_textView;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CNComposeRecipientTextView_invalidateAtomPresentationOptions__block_invoke;
  v4[3] = &unk_1E7CD2990;
  v4[4] = self;
  [(_CNAtomTextView *)textView enumerateAtoms:v4];
  [(CNComposeRecipientTextView *)self reflow];
}

void __63__CNComposeRecipientTextView_invalidateAtomPresentationOptions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 recipient];
  if (v3)
  {
    [v4 setPresentationOptions:{objc_msgSend(*(a1 + 32), "_atomPresentationOptionsForRecipient:", v3)}];
  }
}

- (void)invalidateAtomPresentationOptionsForRecipient:(id)a3
{
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  v5 = a3;
  [(NSMutableDictionary *)atomPresentationOptionsByRecipient removeObjectForKey:v5];
  v7 = [(CNComposeRecipientTextView *)self atomViewForRecipient:v5];
  v6 = [(CNComposeRecipientTextView *)self _atomPresentationOptionsForRecipient:v5];

  [v7 setPresentationOptions:v6];
  [(CNComposeRecipientTextView *)self reflow];
}

- (void)setAtomPresentationOptions:(unint64_t)a3 forRecipient:(id)a4
{
  v8 = a4;
  v6 = [(CNComposeRecipientTextView *)self atomViewForRecipient:?];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient setObject:v7 forKeyedSubscript:v8];

    [v6 setPresentationOptions:a3];
    [(CNComposeRecipientTextView *)self reflow];
  }

  else
  {
    [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient removeObjectForKey:v8];
  }
}

- (BOOL)finishEnteringRecipient
{
  if (self->_parentIsClosing)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = [(CNComposeRecipientTextView *)self usingActiveAppearance];
    if (v2)
    {
      v4 = [(CNComposeRecipientTextView *)self text];
      v5 = [v4 length];

      if (v5)
      {
        v6 = [(CNComposeHeaderView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v7 = [(CNComposeRecipientTextView *)self text];
          [v6 composeRecipientView:self didFinishEnteringAddress:v7];
        }

        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2;
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = CNComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v4 resignFirstResponder];
  return [(_CNAtomTextView *)self->_textView resignFirstResponder];
}

- (BOOL)_useRightToLeftLayout
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

- (void)reflow
{
  if (![(_CNAtomTextView *)self->_textView isEditingTextStorage])
  {
    v3 = [(_CNAtomTextView *)self->_textView layoutManager];
    v4 = [v3 numberOfGlyphs];

    v5 = [(_CNAtomTextView *)self->_textView layoutManager];
    v6 = [v5 characterRangeForGlyphRange:0 actualGlyphRange:{v4, 0}];
    v8 = v7;

    v9 = [(_CNAtomTextView *)self->_textView layoutManager];
    [v9 invalidateLayoutForCharacterRange:v6 actualCharacterRange:{v8, 0}];

    if ([(CNComposeRecipientTextView *)self _isTextViewCollapsed])
    {
      [(CNComposeRecipientTextView *)self _updateInactiveTextView];
    }

    [(CNComposeRecipientTextView *)self setNeedsLayout];
  }
}

- (id)_textContainerExclusionPathsWithAddButton:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    [(CNComposeRecipientTextView *)self _ensureAddButton];
  }

  v30.receiver = self;
  v30.super_class = CNComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v30 layoutIfNeeded];
  v6 = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
  if (v6)
  {
    v7 = 8;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(CNComposeHeaderView *)self labelView];
  [(CNComposeHeaderView *)self _exclusionRectForView:v8 alongEdge:v7];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(CNComposeRecipientTextView *)self textView];
  [(CNComposeRecipientTextView *)self convertRect:v17 toView:v10 + -3.0, v12 + 0.0, v14 + 6.0, v16];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v19, v21, v23, v25}];
  [v5 addObject:v26];
  if (v3)
  {
    if (v6)
    {
      v27 = 2;
    }

    else
    {
      v27 = 8;
    }

    [(CNComposeHeaderView *)self _exclusionRectForView:self->_addButton alongEdge:v27];
    [(CNComposeRecipientTextView *)self convertRect:self->_textView toView:?];
    v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
    [v5 addObject:v28];
  }

  return v5;
}

- (void)_recomputeTextContainerExclusionPaths
{
  if (!self->_textViewExclusionPathsAreValid)
  {
    if (self->_expanded || (-[_CNAtomTextView attributedText](self->_textView, "attributedText"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, v4))
    {
      v8 = [(CNComposeRecipientTextView *)self _textContainerExclusionPathsWithAddButton:self->_showsAddButtonWhenExpanded];
      v5 = [(_CNAtomTextView *)self->_textView textContainer];
      [v5 setExclusionPaths:v8];

      self->_textViewExclusionPathsAreValid = 1;
      textView = self->_textView;
      v7 = [(CNComposeRecipientTextView *)self _baseAttributes];
      [(_CNAtomTextView *)textView setTypingAttributes:v7];

      if ([(CNComposeRecipientTextView *)self _isTextViewCollapsed])
      {
        [(CNComposeRecipientTextView *)self _updateInactiveTextView];
      }
    }
  }
}

- (void)_invalidateTextContainerExclusionPaths
{
  if (self->_textViewExclusionPathsAreValid)
  {
    v8[9] = v2;
    v8[10] = v3;
    self->_textViewExclusionPathsAreValid = 0;
    v5 = [MEMORY[0x1E6996820] defaultProvider];
    v6 = [v5 mainThreadScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__CNComposeRecipientTextView__invalidateTextContainerExclusionPaths__block_invoke;
    v8[3] = &unk_1E7CD1F90;
    v8[4] = self;
    v7 = [v6 afterDelay:v8 performBlock:0.0];
  }
}

- (_NSRange)_rangeForComposeRecipientAtom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = &unk_1B815995B;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v19 = vnegq_f64(v6);
  if (v4)
  {
    textView = self->_textView;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__CNComposeRecipientTextView__rangeForComposeRecipientAtom___block_invoke;
    v12[3] = &unk_1E7CD29E0;
    v13 = v4;
    v14 = &v15;
    [(_CNAtomTextView *)textView enumerateAtomAttachments:v12];

    v9 = v16[4];
    v8 = v16[5];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v15, 8);

  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

void __60__CNComposeRecipientTextView__rangeForComposeRecipientAtom___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 atomView];
  v10 = *(a1 + 32);

  if (v9 == v10)
  {
    v11 = *(*(a1 + 40) + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    *a5 = 1;
  }
}

- (id)_atomViewAtCharacterIndex:(unint64_t)a3
{
  v4 = [(_CNAtomTextView *)self->_textView textStorage];
  v5 = [v4 attributesAtIndex:a3 effectiveRange:0];

  v6 = [v5 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 atomView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setValue:(id)a3 forAtomLayoutOption:(id)a4 withRecipient:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient objectForKey:v9];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient setObject:v10 forKey:v9];
  }

  [v10 setObject:v11 forKey:v8];
}

- (id)_valueForAtomLayoutOption:(id)a3 withRecipient:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resetSelectionState
{
  v3 = [(_CNAtomTextView *)self->_textView text];
  v4 = [v3 length];

  [(_CNAtomTextView *)self->_textView setSelectedRange:v4, 0];
  atomViews = self->_atomViews;

  [(NSMutableArray *)atomViews enumerateObjectsUsingBlock:&__block_literal_global_117];
}

- (BOOL)_textViewContainsAtomizedRecipients
{
  v3 = [(_CNAtomTextView *)self->_textView textStorage];
  if ([v3 length])
  {
    v4 = [(CNComposeRecipientTextView *)self recipients];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_toString
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E69DB650];
  v3 = [(CNComposeHeaderView *)self labelView];
  v4 = [v3 textColor];
  v16[0] = v4;
  v15[1] = *MEMORY[0x1E69DB648];
  v5 = [(CNComposeHeaderView *)self labelView];
  v6 = [v5 font];
  v16[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9 = [(CNComposeHeaderView *)self labelView];
  v10 = [v9 text];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1F3002C60;
  }

  v13 = [v8 initWithString:v12 attributes:v7];

  return v13;
}

- (void)_ensureInactiveTextView
{
  if (!self->_inactiveTextView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD168]);
    v4 = [v3 initWithFrame:0 textContainer:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    inactiveTextView = self->_inactiveTextView;
    self->_inactiveTextView = v4;

    v6 = self->_inactiveTextView;
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v6 setBackgroundColor:v7];

    [(UITextView *)self->_inactiveTextView setEditable:0];
    [(UITextView *)self->_inactiveTextView setSelectable:0];
    [(UITextView *)self->_inactiveTextView setScrollEnabled:0];
    [(UITextView *)self->_inactiveTextView setUserInteractionEnabled:0];
    [(UITextView *)self->_inactiveTextView setHidden:!self->_isTextFieldCollapsed];
    v8 = 0.0;
    if (self->_isTextFieldCollapsed)
    {
      v8 = 1.0;
    }

    [(UITextView *)self->_inactiveTextView setAlpha:v8];
    v9 = [(UITextView *)self->_inactiveTextView textContainer];
    [v9 setLineFragmentPadding:0.0];

    v10 = self->_inactiveTextView;

    [(CNComposeRecipientTextView *)self addSubview:v10];
  }
}

- (void)_updateInactiveTextView
{
  [(CNComposeRecipientTextView *)self _ensureInactiveTextView];
  [(CNComposeHeaderView *)self _recipientViewEdgeInsets];
  [(UITextView *)self->_inactiveTextView setTextContainerInset:?];
  v3 = [(CNComposeRecipientTextView *)self _attributedStringWithAtomizedRecipients];
  [(UITextView *)self->_inactiveTextView setAttributedText:v3];

  [(UITextView *)self->_inactiveTextView frame];
  [(_CNAtomTextView *)self->_textView frame];
  v5 = v4;
  v7 = v6;
  [(_CNAtomTextView *)self->_textView frame];
  v9 = v8;
  +[(CNComposeHeaderView *)CNComposeRecipientTextView];
  inactiveTextView = self->_inactiveTextView;

  [(UITextView *)inactiveTextView setFrame:v5, v7, v9, v10];
}

- (id)_attributedStringWithAtomizedRecipients
{
  if ([(CNComposeRecipientTextView *)self _textViewContainsAtomizedRecipients])
  {
    v3 = [(CNComposeRecipientTextView *)self _baseAttributes];
    v4 = [v3 mutableCopy];

    if ([(CNComposeRecipientTextView *)self _hasDowntimeBlockedRecipients]|| self->_indicatesUnsafeRecipientsWhenCollapsed && [(CNComposeRecipientTextView *)self _hasUnsafeRecipients])
    {
      v5 = [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      v5 = [(CNComposeRecipientTextView *)self inactiveTextColor];
    }

    v7 = v5;
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v8 = [(CNComposeRecipientTextView *)self recipients];
    v9 = [(_CNAtomTextView *)self->_textView layoutManager];
    [v9 lineFragmentRectForGlyphAtIndex:0 effectiveRange:0];
    v11 = v10;

    v12 = objc_alloc_init(CNNameListBuilderBlockDelegate);
    -[CNNameListBuilderBlockDelegate setCountOfNames:](v12, "setCountOfNames:", [v8 count]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__CNComposeRecipientTextView__attributedStringWithAtomizedRecipients__block_invoke;
    v25[3] = &unk_1E7CD2AC8;
    v26 = v8;
    v13 = v8;
    [(CNNameListBuilderBlockDelegate *)v12 setNameProviderBlock:v25];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__CNComposeRecipientTextView__attributedStringWithAtomizedRecipients__block_invoke_2;
    v22[3] = &unk_1E7CD2AF0;
    v23 = v4;
    v24 = v11;
    v14 = v4;
    [(CNNameListBuilderBlockDelegate *)v12 setLengthValidationBlock:v22];
    v15 = [[CNNameListBuilder alloc] initWithDelegate:v12];
    [(CNNameListBuilder *)v15 setShouldStripEllipses:0];
    v16 = [(CNNameListBuilder *)v15 build];
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16 attributes:v14];
    v17 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v17 setBounds:{0.0, 0.0, 5.0, 5.0}];
    v18 = objc_opt_new();
    [v17 setImage:v18];

    v19 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
    [v6 insertAttributedString:v19 atIndex:0];
    v20 = [(CNComposeRecipientTextView *)self _toString];
    [v6 insertAttributedString:v20 atIndex:0];
  }

  else
  {
    v6 = [(CNComposeRecipientTextView *)self _toString];
  }

  return v6;
}

id __69__CNComposeRecipientTextView__attributedStringWithAtomizedRecipients__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndex:a2];
  v3 = [v2 compositeName];

  return v3;
}

- (void)_setTextViewIsCollapsed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  collapsableUpdateTimer = self->_collapsableUpdateTimer;
  self->_collapsableUpdateTimer = 0;

  v8 = [(CNComposeRecipientTextView *)self _isTextViewCollapsed];
  if (v5)
  {
    v9 = ![(CNComposeRecipientTextView *)self _textViewContainsAtomizedRecipients];
  }

  else
  {
    v9 = 0;
  }

  if (!self->_collapsedStateInitialized || ((v9 | v8 ^ v5 ^ 1) & 1) == 0)
  {
    self->_collapsedStateInitialized = 1;
    self->_isTextFieldCollapsed = v5;
    if (v5)
    {
      [(CNComposeRecipientTextView *)self _updateInactiveTextView];
    }

    [(_CNAtomTextView *)self->_textView bounds];
    [(_CNAtomTextView *)self->_textView setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __63__CNComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke;
    v32[3] = &unk_1E7CD2750;
    v32[4] = self;
    v33 = v5;
    v10 = MEMORY[0x1B8CB9350](v32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__CNComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke_2;
    v30[3] = &unk_1E7CD2868;
    v30[4] = self;
    v31 = v5;
    v11 = MEMORY[0x1B8CB9350](v30);
    if (v4)
    {
      [(UITextView *)self->_inactiveTextView setHidden:0];
      if (v5)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      if (v5)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      [(UITextView *)self->_inactiveTextView setAlpha:v12];
      [(_CNAtomTextView *)self->_textView setAlpha:v13];
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v11 completion:0.23];
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10[2](v10);
      v11[2](v11, 1);
      if (!v5)
      {
LABEL_16:
        v14 = [(_CNAtomTextView *)self->_textView layoutManager];
        v15 = [(_CNAtomTextView *)self->_textView textStorage];
        [v14 invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(v15, "length"), 0}];

        v16 = [(_CNAtomTextView *)self->_textView layoutManager];
        v17 = [(_CNAtomTextView *)self->_textView textContainer];
        [v16 ensureLayoutForTextContainer:v17];

        goto LABEL_21;
      }
    }

    v16 = [(UITextView *)self->_inactiveTextView text];
    if ([v16 length])
    {
      v18 = [(CNComposeRecipientTextView *)self _delegateRespondsToSizeChange];

      if (v18)
      {
        [(CNComposeRecipientTextView *)self bounds];
        v20 = v19;
        [(CNComposeHeaderView *)self _additionalContentHeight];
        v22 = v21;
        [(UITextView *)self->_inactiveTextView frame];
        [(CNComposeRecipientTextView *)self _notifyDelegateOfNewSize:v20, v22 + v23];
        [(_CNAtomTextView *)self->_textView bounds];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        [(UITextView *)self->_inactiveTextView frame];
        [(_CNAtomTextView *)self->_textView setBounds:v25, v27, v29];
      }

      goto LABEL_22;
    }

LABEL_21:

LABEL_22:
  }
}

uint64_t __63__CNComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 552) setAlpha:v2];
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(*(a1 + 32) + 544);

  return [v4 setAlpha:v3];
}

uint64_t __63__CNComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 552) setHidden:(*(result + 40) & 1) == 0];
  }

  return result;
}

- (void)_ensureAddButton
{
  if (!self->_addButton)
  {
    v3 = [MEMORY[0x1E69966E8] currentEnvironment];
    v4 = [v3 featureFlags];
    v5 = [v4 isFeatureEnabled:29];

    if (v5)
    {
      v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:2];
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v6];
      v8 = +[CNUIAutocompleteColorRepository solariumButtonImageConfiguration];
      v9 = [v7 imageByApplyingSymbolConfiguration:v8];
    }

    else
    {
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
    }

    v10 = [CNComposeRecipientActionButton systemButtonWithImage:v9 target:self action:sel__addButtonTapped_];
    addButton = self->_addButton;
    self->_addButton = v10;

    v12 = self->_addButton;
    v13 = [CNComposeTableViewCell axCappedSymbolConfigurationIsBold:0];
    [(UIButton *)v12 setPreferredSymbolConfiguration:v13 forImageInState:0];

    [(CNComposeRecipientTextView *)self _updateAddButtonVisibilityAnimated:0];
    [(UIButton *)self->_addButton setAccessibilityIdentifier:@"ComposeRecipientAddButton"];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ADD_CONTACT_ACCESSIBILITY_LABEL" value:&stru_1F3002C60 table:@"Localized"];
    [(UIButton *)self->_addButton setAccessibilityLabel:v15];

    [(UIButton *)self->_addButton setAutoresizingMask:0];
    [(UIButton *)self->_addButton setAutoresizesSubviews:0];
    [(UIButton *)self->_addButton setPointerInteractionEnabled:1];
    [(UIButton *)self->_addButton frame];
    self->_addButtonFrame.origin.x = v16;
    self->_addButtonFrame.origin.y = v17;
    self->_addButtonFrame.size.width = v18;
    self->_addButtonFrame.size.height = v19;
    v20 = self->_addButton;

    [(CNComposeRecipientTextView *)self addSubview:v20];
  }
}

- (void)_setAddButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CNComposeRecipientTextView *)self _isAddButtonVisible]!= a3)
  {
    if (v5 && !self->_addButton)
    {
      [(CNComposeRecipientTextView *)self _ensureAddButton];
    }

    if ([(CNComposeRecipientTextView *)self shouldAlwaysShowAddContactsButton])
    {
      v12 = [(CNComposeRecipientTextView *)self addButton];
      [v12 setAlpha:1.0];
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__CNComposeRecipientTextView__setAddButtonVisible_animated___block_invoke;
      v15[3] = &unk_1E7CD2750;
      v15[4] = self;
      v16 = v5;
      v7 = MEMORY[0x1B8CB9350](v15);
      v8 = v7;
      if (v4)
      {
        v9 = 1.0;
        if (v5)
        {
          v9 = 0.0;
        }

        [(UIButton *)self->_addButton setAlpha:v9];
        if (v5)
        {
          CGAffineTransformMakeTranslation(&v14, 2.0, 0.0);
        }

        else
        {
          v10 = *(MEMORY[0x1E695EFD0] + 16);
          *&v14.a = *MEMORY[0x1E695EFD0];
          *&v14.c = v10;
          *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
        }

        addButton = self->_addButton;
        v13 = v14;
        [(UIButton *)addButton setTransform:&v13];
        [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.2];
      }

      else
      {
        (*(v7 + 16))(v7);
      }
    }
  }
}

void __60__CNComposeRecipientTextView__setAddButtonVisible_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) addButton];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) addButton];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v6];
}

- (BOOL)_recipientAtomHitInView:(id)a3 atLocation:(CGPoint)a4
{
  v4 = [a3 hitTest:0 withEvent:{a4.x, a4.y}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_tapGestureRecognized:(id)a3
{
  v8 = a3;
  if ([v8 state] == 3)
  {
    v4 = [(CNComposeRecipientTextView *)self textView];
    if ([v4 isEditable])
    {
    }

    else
    {
      v5 = [v8 view];
      v6 = [v8 view];
      [v8 locationInView:v6];
      v7 = [(CNComposeRecipientTextView *)self _recipientAtomHitInView:v5 atLocation:?];

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    [(_CNAtomTextView *)self->_textView becomeFirstResponder];
  }

LABEL_6:
}

- (void)_longPressGestureRecognized:(id)a3
{
  v8 = a3;
  if ([v8 state] == 1)
  {
    v4 = [(CNComposeRecipientTextView *)self textView];
    if ([v4 isEditable])
    {
    }

    else
    {
      v5 = [v8 view];
      v6 = [v8 view];
      [v8 locationInView:v6];
      v7 = [(CNComposeRecipientTextView *)self _recipientAtomHitInView:v5 atLocation:?];

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    [(_CNAtomTextView *)self->_textView becomeFirstResponder];
  }

LABEL_6:
}

- (BOOL)_canAddAdditionalAtoms
{
  if (self->_maxRecipients < 1)
  {
    return 1;
  }

  v3 = [(CNComposeRecipientTextView *)self recipients];
  v4 = [v3 count] < self->_maxRecipients;

  return v4;
}

- (id)_atomAttachmentForRecipient:(id)a3
{
  v4 = a3;
  v5 = [CNComposeRecipientAtom alloc];
  v6 = [(CNComposeRecipientAtom *)v5 initWithFrame:v4 recipient:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = [(CNComposeRecipientTextView *)self _atomPresentationOptionsForRecipient:v4];

  [(CNAtomView *)v6 setPresentationOptions:v7];
  v8 = [[_CNAtomTextAttachment alloc] initWithAtomView:v6];

  return v8;
}

- (void)_insertAtomAttachment:(id)a3 andReplaceCharactersInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(CNComposeRecipientTextView *)self _baseAttributes];
  v10 = [v7 attributedStringWithBaseAttributes:v8];

  v9 = [(_CNAtomTextView *)self->_textView textStorage];
  if (length)
  {
    [v9 replaceCharactersInRange:location withAttributedString:{length, v10}];
  }

  else
  {
    [v9 insertAttributedString:v10 atIndex:location];
  }

  if (![(_CNAtomTextView *)self->_textView isEditingTextStorage])
  {
    [(CNComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
  }
}

- (void)_addAddressAtomSubview:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_atomViews containsObject:?]& 1) == 0)
  {
    [v4 setDelegate:self];
    [(NSMutableArray *)self->_atomViews addObject:v4];
    [(_CNAtomTextView *)self->_textView addSubview:v4];
  }
}

- (void)_removeAddressAtomSubview:(id)a3
{
  v4 = a3;
  [v4 setDelegate:0];
  [(NSMutableArray *)self->_atomViews removeObject:v4];
  [v4 removeFromSuperview];
}

- (id)atomViewForRecipient:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_atomViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 recipient];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)atomViewsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x1E695DF70] array];
  textView = self->_textView;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CNComposeRecipientTextView_atomViewsInRange___block_invoke;
  v10[3] = &unk_1E7CD2990;
  v8 = v6;
  v11 = v8;
  [(_CNAtomTextView *)textView enumerateAtomsInCharacterRange:location withBlock:length, v10];

  return v8;
}

- (id)selectedAtoms
{
  v4 = [(_CNAtomTextView *)self->_textView selectedRange];

  return [(CNComposeRecipientTextView *)self atomViewsInRange:v4, v3];
}

- (unint64_t)indexOfRecipientForInsertionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_CNAtomTextView *)self->_textView atoms];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [v5 count];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CNComposeRecipientTextView_indexOfRecipientForInsertionAtPoint___block_invoke;
  v8[3] = &unk_1E7CD2B18;
  *&v8[5] = x;
  *&v8[6] = y;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __66__CNComposeRecipientTextView_indexOfRecipientForInsertionAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 frame];
  MaxX = CGRectGetMaxX(v11);
  [v7 frame];
  v10 = v9;

  if (*(a1 + 40) < MaxX + v10 * -0.5)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v10 isEqualToString:@"\n"];
  v12 = [v10 isEqualToString:@"\t"];
  if ([v10 isEqualToString:{@", "}])
  {
    v13 = [v9 markedTextRange];
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = v11 | v12;
  if ((v15 & 1) == 0 && !v14)
  {
    if ([v10 isEqualToString:&stru_1F3002C60])
    {
      if (length == 1)
      {
        v16 = [(CNComposeRecipientTextView *)self _atomViewAtCharacterIndex:location];
        if (v16)
        {
          v17 = v16;
          if (([v16 isSelected] & 1) != 0 || objc_msgSend(v9, "_textInputSource") == 3)
          {
            recipientsBeingRemoved = self->_recipientsBeingRemoved;
            v19 = [v17 recipient];
            [(NSMutableArray *)recipientsBeingRemoved addObject:v19];

            v20 = 1;
          }

          else
          {
            [(CNComposeRecipientTextView *)self selectComposeRecipientAtom:v17];
            v20 = 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        textView = self->_textView;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __79__CNComposeRecipientTextView_textView_shouldChangeTextInRange_replacementText___block_invoke;
        v24[3] = &unk_1E7CD2990;
        v24[4] = self;
        [(_CNAtomTextView *)textView enumerateAtomsInCharacterRange:location withBlock:length, v24];
      }
    }

    v20 = 1;
    goto LABEL_22;
  }

  v21 = [(CNComposeHeaderView *)self delegate];
  if (![(CNComposeRecipientTextView *)self finishEnteringRecipient])
  {
    if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v21 composeRecipientViewTabPressed:self];
    }

    else if (v15 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v21 composeRecipientViewReturnPressed:self];
    }
  }

  v20 = 0;
LABEL_22:

  return v20;
}

uint64_t __79__CNComposeRecipientTextView_textView_shouldChangeTextInRange_replacementText___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(*(a1 + 32) + 680) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = [a3 selectedRange];
  v6 = v5;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(_CNAtomTextView *)self->_textView textStorage];
  v9 = [v8 length];

  v10 = [(_CNAtomTextView *)self->_textView layoutManager];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__CNComposeRecipientTextView_textViewDidChangeSelection___block_invoke;
  v16 = &unk_1E7CD2B68;
  v17 = self;
  v19 = v4;
  v20 = v6;
  v11 = v7;
  v18 = v11;
  [v10 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v9, &v13}];

  v12 = [(CNComposeHeaderView *)self delegate:v13];
  if (objc_opt_respondsToSelector())
  {
    [v12 composeRecipientView:self didSelectRecipients:v11];
  }
}

void __57__CNComposeRecipientTextView_textViewDidChangeSelection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v8 = [*(*(a1 + 32) + 544) layoutManager];
  v9 = [v8 characterRangeForGlyphRange:a3 actualGlyphRange:{a4, 0}];
  v11 = v10;

  v12 = *(*(a1 + 32) + 544);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CNComposeRecipientTextView_textViewDidChangeSelection___block_invoke_2;
  v13[3] = &unk_1E7CD2B40;
  v16 = v9;
  v17 = v11;
  v15 = v19;
  v18 = *(a1 + 48);
  v14 = *(a1 + 40);
  [v12 enumerateAtomsInCharacterRange:v9 withBlock:{v11, v13}];

  _Block_object_dispose(v19, 8);
}

void __57__CNComposeRecipientTextView_textViewDidChangeSelection___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 24) + a1[6];
  v5 = a1[8];
  v6 = a1[9];
  v7 = v4 < v5 || v4 - v5 >= v6;
  v14 = v3;
  if (v7)
  {
    if ([v3 isSelected])
    {
      [v14 setSelected:0 animated:0];
    }
  }

  else
  {
    v9 = v4 == v5 + v6 - 1;
    v8 = 3;
    if (v9)
    {
      v9 = v4 == v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    v10 = 2;
    if (v9)
    {
      v10 = 4;
    }

    if (v4 == v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    [v3 setSelected:1 animated:0 style:v11];
    v12 = a1[4];
    v13 = [v14 recipient];
    [v12 addObject:v13];
  }

  ++*(*(a1[5] + 8) + 24);
}

- (void)textViewDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_recipientsBeingRemoved count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_recipientsBeingRemoved;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(CNComposeRecipientTextView *)self _didRemoveRecipient:*(*(&v11 + 1) + 8 * v8++), v11];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_recipientsBeingRemoved removeAllObjects];
  }

  v9 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(CNComposeRecipientTextView *)self text];
    [v9 composeRecipientView:self textDidChange:v10];
  }
}

- (void)atomTextViewDidBecomeFirstResponder:(id)a3
{
  self->_didIgnoreFirstResponderResign = 0;
  self->_addButtonWasTapped = 0;
  v5 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 recipientViewDidBecomeFirstResponder:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 composeRecipientViewDidBecomeFirstResponder:self];
  }

  if (![(CNComposeRecipientTextView *)self _canAddAdditionalAtoms])
  {
    v4 = [(NSMutableArray *)self->_atomViews lastObject];
    [v4 setSelected:1 animated:1];
  }

  if ([(CNComposeRecipientTextView *)self usingActiveAppearance])
  {
    [(CNComposeRecipientTextView *)self setExpanded:1];
  }
}

- (BOOL)hostRecipientViewHasSearchResults
{
  v3 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 composeRecipientViewShowingSearchResults:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)atomTextViewDidResignFirstResponder:(id)a3
{
  if ([(CNComposeRecipientTextView *)self keyboardIsHiding]&& [(CNComposeRecipientTextView *)self hostRecipientViewHasSearchResults])
  {
    self->_didIgnoreFirstResponderResign = 1;
  }

  else
  {
    v4 = [(CNComposeHeaderView *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 recipientViewShouldIgnoreFirstResponderChanges:self])
    {
      self->_didIgnoreFirstResponderResign = 1;
    }

    else
    {
      [(CNComposeRecipientTextView *)self finishEnteringRecipient];
      if (objc_opt_respondsToSelector())
      {
        [v4 recipientViewDidResignFirstResponder:self];
      }

      [(CNComposeRecipientTextView *)self _resetSelectionState];
      [(CNComposeRecipientTextView *)self setExpanded:0];
    }
  }
}

- (void)atomTextView:(id)a3 didChangeWritingDirection:(int64_t)a4
{
  textView = self->_textView;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CNComposeRecipientTextView_atomTextView_didChangeWritingDirection___block_invoke;
  v6[3] = &__block_descriptor_33_e32_v16__0__CNComposeRecipientAtom_8l;
  v7 = a4 == 1;
  [(_CNAtomTextView *)textView enumerateAtoms:v6];
  [(CNComposeRecipientTextView *)self reflow];
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithArray:self->_atomViews];
    v11 = [(_CNAtomTextView *)self->_textView baseWritingDirection];
    v12 = [v8 textStorage];
    v13 = [v12 length];

    v14 = [v8 textStorage];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __84__CNComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke;
    v35[3] = &unk_1E7CD2BD8;
    v35[4] = self;
    v39 = v11;
    v15 = v8;
    v36 = v15;
    v16 = v9;
    v37 = v16;
    v17 = v10;
    v38 = v17;
    [v14 enumerateAttributesInRange:0 options:v13 usingBlock:{0, v35}];

    atomViewAnimationDepth = self->_atomViewAnimationDepth;
    if (atomViewAnimationDepth <= 1)
    {
      atomViewAnimationDepth = 1;
    }

    self->_atomViewAnimationDepth = atomViewAnimationDepth - 1;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        v23 = 0;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(CNComposeRecipientTextView *)self _removeAddressAtomSubview:*(*(&v31 + 1) + 8 * v23++), v31];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v21);
    }

    if ([(CNComposeRecipientTextView *)self usingActiveAppearance])
    {
      [(_CNAtomTextView *)self->_textView textContainerInset];
      [v15 usedRectForTextContainer:v16];
      UICeilToViewScale();
      *&v24 = v24;
      v25 = roundf(*&v24);
      [(_CNAtomTextView *)self->_textView bounds];
      v27 = v26;
      [(_CNAtomTextView *)self->_textView bounds];
      if (v27 != v29 || v28 != v25)
      {
        v30 = *(MEMORY[0x1E695EFF8] + 8);
        self->_currentTextRect.origin.x = *MEMORY[0x1E695EFF8];
        self->_currentTextRect.origin.y = v30;
        self->_currentTextRect.size.width = v27;
        self->_currentTextRect.size.height = v25;
        [(_CNAtomTextView *)self->_textView setFrame:v31];
        [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
        [(CNComposeRecipientTextView *)self _notifyDelegateOfSizeChange];
      }
    }
  }
}

void __84__CNComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 atomView];
      if (([v7 isPlaceholder] & 1) != 0 || !v8)
      {
        goto LABEL_21;
      }

      v9 = [v7 recipient];
      v10 = [*(a1 + 32) _valueForAtomLayoutOption:@"CNAtomLayoutOptionShouldBuildIn" withRecipient:v9];
      v11 = [v10 BOOLValue];

      v12 = [*(a1 + 32) _valueForAtomLayoutOption:@"CNAtomLayoutOptionShouldHide" withRecipient:v9];
      v13 = [v12 BOOLValue];

      v14 = [v8 superview];

      if (!v14)
      {
        [*(a1 + 32) _addAddressAtomSubview:v8];
        if (v13)
        {
          [v8 setAlpha:0.0];
        }

        v11 = 1;
      }

      v15 = [*(a1 + 32) _atomPresentationOptionsForRecipient:v9];
      if ([v8 presentationOptions] != v15)
      {
        [v8 setPresentationOptions:v15];
      }

      [v8 setSeparatorStyle:2];
      [v8 setSeparatorHidden:0];
      [v8 setSeparatorIsLeftAligned:*(a1 + 64) == 1];
      [*(a1 + 40) boundingRectForGlyphRange:a3 inTextContainer:{a4, *(a1 + 48)}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v8 intrinsicContentSize];
      v23 = v22;
      [v8 frame];
      if (v21 != v25 || v23 != v24)
      {
        [v8 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v21, v23}];
        [v8 layoutSubviews];
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __84__CNComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke_2;
      v31[3] = &unk_1E7CD2BB0;
      v31[4] = *(a1 + 32);
      v34 = v17;
      v35 = v19;
      v36 = v21;
      v37 = v23;
      v26 = v8;
      v32 = v26;
      v27 = *(a1 + 40);
      v28 = *(a1 + 64);
      v33 = v27;
      v38 = v28;
      v39 = v13;
      v29 = MEMORY[0x1B8CB9350](v31);
      if (v11 & 1 | (([*(a1 + 32) _shouldAnimateAtomViewChanges] & 1) == 0))
      {
        v29[2](v29);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [MEMORY[0x1E69DD250] animateWithDuration:v29 animations:0.25];
        if (!v11)
        {
LABEL_20:
          [*(a1 + 56) removeObject:v26];

LABEL_21:
          goto LABEL_22;
        }
      }

      if ([*(a1 + 32) _shouldAnimateAtomViewChanges])
      {
        v30 = [*(*(a1 + 32) + 544) textColor];
        [v26 performBuildInAnimationFromTextColor:v30 withDuration:0.25];
      }

      goto LABEL_20;
    }
  }

LABEL_22:
}

uint64_t __84__CNComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 544) convertGlyphRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) titleLabel];
  [v10 frame];
  v12 = v11;

  v13 = *(a1 + 64);
  [*(a1 + 48) lineFragmentUsedRectForGlyphAtIndex:0 effectiveRange:0];
  if (v13 >= v14)
  {
    v19 = v5 - v12;
  }

  else
  {
    v15 = [*(a1 + 32) labelView];
    [v15 frame];
    CGRectGetMaxY(v26);
    v16 = [*(a1 + 32) labelView];
    [v16 _baselineOffsetFromBottom];

    v27.origin.x = v3;
    v27.origin.y = v5;
    v27.size.width = v7;
    v27.size.height = v9;
    CGRectGetHeight(v27);
    v17 = [*(a1 + 40) titleLabel];
    [v17 _baselineOffsetFromBottom];

    [*(a1 + 40) edgeInsets];
    v19 = -v18;
    if (*(a1 + 88) == 1)
    {
      v19 = v18;
    }
  }

  [*(a1 + 40) presentationOptions];
  v20 = *(a1 + 40);
  v21 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v21 scale];
  UIRectIntegralWithScale();
  [v20 setFrame:?];

  v22 = 1.0;
  if (*(a1 + 96))
  {
    v22 = 0.0;
  }

  v23 = *(a1 + 40);

  return [v23 setAlpha:v22];
}

- (BOOL)_delegateRespondsToSizeChange
{
  v2 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (void)_notifyDelegateOfNewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 composeHeaderView:self didChangeSize:{width, height}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 composeRecipientView:self didChangeSize:{width, height}];
  }
}

- (void)_notifyDelegateOfSizeChange
{
  if (self->_notifyDelegateOfSizeChange)
  {
    v6[7] = v2;
    v6[8] = v3;
    self->_notifyDelegateOfSizeChange = 0;
    v5 = [MEMORY[0x1E696ADC8] mainQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__CNComposeRecipientTextView__notifyDelegateOfSizeChange__block_invoke;
    v6[3] = &unk_1E7CD1F90;
    v6[4] = self;
    [v5 addOperationWithBlock:v6];
  }
}

uint64_t __57__CNComposeRecipientTextView__notifyDelegateOfSizeChange__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) frame];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) _additionalContentHeight];
  v7 = v6;
  result = [*(a1 + 32) _delegateRespondsToSizeChange];
  if (result)
  {
    result = [*(a1 + 32) _notifyDelegateOfNewSize:{v3, v5 + v7}];
  }

  *(*(a1 + 32) + 661) = 1;
  return result;
}

- (void)selectAtomForRecipient:(id)a3
{
  v4 = [(CNComposeRecipientTextView *)self atomViewForRecipient:a3];
  [(CNComposeRecipientTextView *)self selectAtom:v4];
}

- (void)selectAtom:(id)a3
{
  v5 = [(CNComposeRecipientTextView *)self _rangeForComposeRecipientAtom:a3];
  textView = self->_textView;

  [(_CNAtomTextView *)textView setSelectedRange:v5, v4];
}

- (void)shiftSelectAtom:(id)a3
{
  v4 = [(CNComposeRecipientTextView *)self _rangeForComposeRecipientAtom:a3];
  v6 = v5;
  v10.location = [(_CNAtomTextView *)self->_textView selectedRange];
  textView = self->_textView;
  v11.location = v4;
  v11.length = v6;
  v8 = NSUnionRange(v10, v11);

  [(_CNAtomTextView *)textView setSelectedRange:v8.location, v8.length];
}

- (void)selectAllAtoms
{
  textView = self->_textView;
  v3 = [(_CNAtomTextView *)textView textStorage];
  -[_CNAtomTextView setSelectedRange:](textView, "setSelectedRange:", 0, [v3 length]);
}

- (void)deselectAllAtoms
{
  textView = self->_textView;
  v3 = [(_CNAtomTextView *)textView textStorage];
  -[_CNAtomTextView setSelectedRange:](textView, "setSelectedRange:", [v3 length], 0);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v10.receiver = self;
  v10.super_class = CNComposeRecipientTextView;
  v6 = [(CNComposeRecipientTextView *)&v10 canPerformAction:a3 withSender:a4];
  if (sel_selectAll_ != a3)
  {
    return v6;
  }

  v8 = [(_CNAtomTextView *)self->_textView text];
  v7 = [v8 length] != 0;

  return v7;
}

- (id)_placeholderAttachmentWithStaticWidth
{
  v2 = MEMORY[0x1E695F058];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = [[CNComposeRecipient alloc] initWithContact:0 address:@"email@me.com" kind:0];
  v6 = [[CNComposeRecipientAtom alloc] initWithFrame:v5 recipient:v3, v4, *(v2 + 16), *(v2 + 24)];
  [(CNAtomView *)v6 intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  v11 = [[_CNAtomTextAttachment alloc] initWithAtomView:0];
  [(_CNAtomTextAttachment *)v11 setBounds:v3, v4, v8, v10];
  [(_CNAtomTextAttachment *)v11 setIsPlaceholder:1];

  return v11;
}

- (_NSRange)_placeholderAttachmentRange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = &unk_1B815995B;
  v3 = [(CNComposeRecipientTextView *)self placeholderAttachment];

  if (v3)
  {
    textView = self->_textView;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__CNComposeRecipientTextView__placeholderAttachmentRange__block_invoke;
    v9[3] = &unk_1E7CD29E0;
    v9[4] = self;
    v9[5] = &v10;
    [(_CNAtomTextView *)textView enumerateAtomAttachments:v9];
  }

  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

void __57__CNComposeRecipientTextView__placeholderAttachmentRange__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 placeholderAttachment];

  if (v11 == v10)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a5 = 1;
  }
}

- (id)dragPreviewForDraggedItem:(id)a3 withContainer:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(CNComposeRecipientTextView *)self atomViewForRecipient:v7];
  v9 = [CNComposeRecipientAtom alloc];
  [v8 frame];
  v14 = -[CNComposeRecipientAtom initWithFrame:recipient:presentationOptions:](v9, "initWithFrame:recipient:presentationOptions:", v7, [v8 presentationOptions], v10, v11, v12, v13);

  [(CNAtomView *)v14 setSeparatorHidden:1];
  v15 = [v8 tintColor];
  [(CNComposeRecipientAtom *)v14 setTintColor:v15];

  [(CNAtomView *)v14 setSelected:1];
  [(CNAtomView *)v14 layoutSubviews];
  [(CNComposeRecipientAtom *)v14 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(CNAtomView *)v14 preferredWidth];
  [(CNComposeRecipientAtom *)v14 setFrame:v17, v19, v22, v21];
  v23 = [v8 superview];
  [(CNComposeRecipientAtom *)v14 center];
  [v23 convertPoint:v6 toView:?];
  v25 = v24;
  v27 = v26;

  v28 = objc_alloc(MEMORY[0x1E69DC9A8]);
  v29 = *(MEMORY[0x1E695EFD0] + 16);
  v39[0] = *MEMORY[0x1E695EFD0];
  v39[1] = v29;
  v39[2] = *(MEMORY[0x1E695EFD0] + 32);
  v30 = [v28 initWithContainer:v6 center:v39 transform:{v25, v27}];

  v31 = objc_alloc(MEMORY[0x1E69DC9A0]);
  v32 = MEMORY[0x1E696B098];
  [(CNComposeRecipientAtom *)v14 bounds];
  v43 = CGRectInset(v42, 8.0, 8.0);
  v33 = [v32 valueWithCGRect:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];
  v40[0] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v35 = [v31 initWithTextLineRects:v34];

  v36 = [(CNAtomView *)v14 effectiveTintColor];
  [v35 setBackgroundColor:v36];

  v37 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v14 parameters:v35 target:v30];

  return v37;
}

- (void)dragEnteredAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CNComposeRecipientTextView *)self placeholderAttachment];

  if (!v6)
  {
    v7 = [(CNComposeRecipientTextView *)self _placeholderAttachmentWithStaticWidth];
    [(CNComposeRecipientTextView *)self setPlaceholderAttachment:v7];

    v14 = 0.0;
    v8 = [(_CNAtomTextView *)self->_textView layoutManager];
    v9 = [(_CNAtomTextView *)self->_textView textContainer];
    v10 = [v8 glyphIndexForPoint:v9 inTextContainer:&v14 fractionOfDistanceThroughGlyph:{x, y}];

    [(CNComposeRecipientTextView *)self _beginAtomViewAnimations];
    if (v14 + -1.0 >= 0.0)
    {
      v11 = v14 + -1.0;
    }

    else
    {
      v11 = -(v14 + -1.0);
    }

    v12 = [(CNComposeRecipientTextView *)self placeholderAttachment];
    if (v11 >= 0.00000011920929)
    {
      [(CNComposeRecipientTextView *)self _insertAtomAttachment:v12 atCharacterIndex:v10];
    }

    else
    {
      v13 = [(_CNAtomTextView *)self->_textView textStorage];
      -[CNComposeRecipientTextView _insertAtomAttachment:atCharacterIndex:](self, "_insertAtomAttachment:atCharacterIndex:", v12, [v13 length]);
    }
  }

  [(CNComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
}

- (void)dragMovedToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CNComposeRecipientTextView *)self placeholderAttachment];

  if (v6)
  {
    v7 = [(CNComposeRecipientTextView *)self _placeholderAttachmentRange];
    v9 = v8;
    v32 = 0.0;
    v10 = [(_CNAtomTextView *)self->_textView layoutManager];
    v11 = [(_CNAtomTextView *)self->_textView textContainer];
    v12 = [v10 glyphIndexForPoint:v11 inTextContainer:&v32 fractionOfDistanceThroughGlyph:{x, y}];

    if (v12 - v7 == 1)
    {
      v13 = v32;
      if (v32 <= 0.4 || v32 >= 0.9)
      {
        goto LABEL_8;
      }
    }

    else if (v12 == v7)
    {
      goto LABEL_8;
    }

    v14 = [(_CNAtomTextView *)self->_textView textStorage];
    v15 = [(CNComposeRecipientTextView *)self placeholderAttachment];
    v16 = [(CNComposeRecipientTextView *)self _baseAttributes];
    v17 = [v15 attributedStringWithBaseAttributes:v16];

    [(CNComposeRecipientTextView *)self _beginAtomViewAnimations];
    textView = self->_textView;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __47__CNComposeRecipientTextView_dragMovedToPoint___block_invoke;
    v26 = &unk_1E7CD2C00;
    v29 = v7;
    v30 = v9;
    v27 = v14;
    v28 = v17;
    v31 = v12;
    v19 = v17;
    v20 = v14;
    [(_CNAtomTextView *)textView batchTextStorageUpdates:&v23];

LABEL_8:
    v21 = [(CNComposeRecipientTextView *)self recipients:v13];
    v22 = [v21 count];

    if (!v22)
    {
      [(_CNAtomTextView *)self->_textView becomeFirstResponder];
    }
  }
}

uint64_t __47__CNComposeRecipientTextView_dragMovedToPoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteCharactersInRange:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);

  return [v2 insertAttributedString:v3 atIndex:v4];
}

- (void)dragExited
{
  [(CNComposeRecipientTextView *)self _beginAtomViewAnimations];
  v3 = [(_CNAtomTextView *)self->_textView textStorage];
  v4 = [(CNComposeRecipientTextView *)self _placeholderAttachmentRange];
  [v3 deleteCharactersInRange:{v4, v5}];

  [(CNComposeRecipientTextView *)self setPlaceholderAttachment:0];
  textView = self->_textView;

  [(_CNAtomTextView *)textView resignFirstResponder];
}

- (void)dropItems:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __40__CNComposeRecipientTextView_dropItems___block_invoke;
  v28[3] = &unk_1E7CD29B8;
  v28[4] = self;
  [v4 enumerateObjectsUsingBlock:v28];
  v5 = [(CNComposeRecipientTextView *)self _placeholderAttachmentRange];
  v7 = v6;
  [(CNComposeRecipientTextView *)self _beginAtomViewAnimations];
  v16 = 544;
  textView = self->_textView;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__CNComposeRecipientTextView_dropItems___block_invoke_4;
  v23[3] = &unk_1E7CD2C78;
  v9 = v4;
  v24 = v9;
  v25 = self;
  v26 = v5;
  v27 = v7;
  [(_CNAtomTextView *)textView batchTextStorageUpdates:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        [(CNComposeRecipientTextView *)self _beginAtomViewAnimations];
        [(CNComposeRecipientTextView *)self _setValue:MEMORY[0x1E695E110] forAtomLayoutOption:@"CNAtomLayoutOptionShouldHide" withRecipient:v14];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __40__CNComposeRecipientTextView_dropItems___block_invoke_6;
        v18[3] = &unk_1E7CD1E08;
        v18[4] = self;
        v18[5] = v14;
        [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:0.35];
        v15 = [(CNComposeHeaderView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v15 composeRecipientView:self didAddRecipient:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v11);
  }

  [*(&self->super.super.super.super.isa + v16) resignFirstResponder];
  [(CNComposeRecipientTextView *)self setPlaceholderAttachment:0];
}

void __40__CNComposeRecipientTextView_dropItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 544) atoms];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__CNComposeRecipientTextView_dropItems___block_invoke_2;
  v11[3] = &unk_1E7CD2A30;
  v5 = v3;
  v12 = v5;
  v6 = [v4 indexesOfObjectsPassingTest:v11];

  if ([v6 count])
  {
    v7 = [*(a1 + 32) recipients];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__CNComposeRecipientTextView_dropItems___block_invoke_3;
    v9[3] = &unk_1E7CD2C28;
    v9[4] = *(a1 + 32);
    v10 = v7;
    v8 = v7;
    [v6 enumerateIndexesUsingBlock:v9];
  }
}

uint64_t __40__CNComposeRecipientTextView_dropItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  v4 = [v3 uncommentedAddress];
  v5 = [*(a1 + 32) uncommentedAddress];
  v6 = [v4 ea_isEqualToEmailAddress:v5];

  return v6;
}

void __40__CNComposeRecipientTextView_dropItems___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 removeRecipient:v3];
}

uint64_t __40__CNComposeRecipientTextView_dropItems___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CNComposeRecipientTextView_dropItems___block_invoke_5;
  v3[3] = &unk_1E7CD2C50;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __40__CNComposeRecipientTextView_dropItems___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _setValue:MEMORY[0x1E695E118] forAtomLayoutOption:@"CNAtomLayoutOptionShouldHide" withRecipient:v6];
  v9 = [*(a1 + 32) _atomAttachmentForRecipient:v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a3)
  {
    [v7 _insertAtomAttachment:v9 atCharacterIndex:v8 + a3];
  }

  else
  {
    [v7 _insertAtomAttachment:v9 andReplaceCharactersInRange:{v8, *(a1 + 48)}];
  }
}

void __40__CNComposeRecipientTextView_dropItems___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) atomViewForRecipient:*(a1 + 40)];
  [v1 setAlpha:1.0];
}

- (void)composeRecipientAtomDisambiguate:(id)a3
{
  v7 = a3;
  v4 = [(CNComposeHeaderView *)self delegate];
  v5 = [(CNComposeRecipientTextView *)self selectedAtoms];
  if ([v5 count] == 1)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      [v4 composeRecipientView:self disambiguateRecipientForAtom:v7];
    }
  }

  else
  {
  }
}

- (void)composeRecipientAtomShowPersonCard:(id)a3
{
  v5 = a3;
  v4 = [(CNComposeHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 composeRecipientView:self showPersonCardForAtom:v5];
  }
}

@end