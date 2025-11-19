@interface ICNoteEditorUserTitleView
+ (BOOL)shouldShowUserTitleViewForNote:(id)a3;
+ (id)newUserTitleView;
- (ICNoteEditorUserTitleView)initWithCoder:(id)a3;
- (ICNoteEditorUserTitleView)initWithFrame:(CGRect)a3;
- (ICNoteEditorUserTitleViewDelegate)delegate;
- (UIAlertController)alertController;
- (UIButton)editButton;
- (UILabel)label;
- (double)preferredHeight;
- (id)accessibilityContainer;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityElementDidBecomeFocused;
- (void)awakeFromNib;
- (void)dealloc;
- (void)editButtonPressed:(id)a3;
- (void)noteWillBeDeleted:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForTraitChanges;
- (void)setHidden:(BOOL)a3;
- (void)setNote:(id)a3;
- (void)updateConstraints;
- (void)updateContentToCurrentNote;
- (void)updateFonts;
@end

@implementation ICNoteEditorUserTitleView

- (ICNoteEditorUserTitleView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteEditorUserTitleView;
  v3 = [(ICNoteEditorUserTitleView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICNoteEditorUserTitleView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteEditorUserTitleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteEditorUserTitleView;
  v3 = [(ICNoteEditorUserTitleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteEditorUserTitleView *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(ICNote *)self->_note ic_removeObserver:self forKeyPath:@"title" context:&compoundliteral_3];
  [(ICNote *)self->_note ic_removeObserver:self forKeyPath:@"titleSourceAttachment" context:&compoundliteral_3];
  [(ICNote *)self->_note ic_removeObserver:self forKeyPath:@"folder" context:&compoundliteral_3];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNoteEditorUserTitleView;
  [(ICNoteEditorUserTitleView *)&v4 dealloc];
}

- (void)awakeFromNib
{
  v16.receiver = self;
  v16.super_class = ICNoteEditorUserTitleView;
  [(ICNoteEditorUserTitleView *)&v16 awakeFromNib];
  v3 = ICAccessibilityAccessibilityLargerTextSizesEnabled() ^ 1;
  v4 = [(ICNoteEditorUserTitleView *)self label];
  [v4 setNumberOfLines:v3];

  [(ICNoteEditorUserTitleView *)self updateFonts];
  v5 = [(ICNoteEditorUserTitleView *)self label];
  v6 = [v5 font];
  v7 = [v6 ic_fontHasSingleLineA];

  if ((v7 & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[self.label.font ic_fontHasSingleLineA]" functionName:"-[ICNoteEditorUserTitleView awakeFromNib]" simulateCrash:1 showAlert:0 format:@"font should have a single-line a attribute"];
  }

  v8 = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  v9 = [(ICNoteEditorUserTitleView *)self label];
  [v9 setTextColor:v8];

  v10 = [(ICNoteEditorUserTitleView *)self label];
  [v10 setTextAlignment:1];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_noteWillBeDeleted_ name:*MEMORY[0x277D35D18] object:0];

  v12 = [(ICNoteEditorUserTitleView *)self note];
  LOBYTE(v9) = [v12 isSharedAndEmpty];

  if ((v9 & 1) == 0)
  {
    [(ICNoteEditorUserTitleView *)self updateContentToCurrentNote];
    v13 = [(ICNoteEditorUserTitleView *)self editButton];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Edit" value:&stru_282757698 table:0];
    [v13 setTitle:v15 forState:0];
  }
}

- (void)updateConstraints
{
  v9.receiver = self;
  v9.super_class = ICNoteEditorUserTitleView;
  [(ICNoteEditorUserTitleView *)&v9 updateConstraints];
  v3 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v4 = MEMORY[0x277CCAAD0];
  if (v3)
  {
    v5 = [(ICNoteEditorUserTitleView *)self defaultConstraints];
    [v4 deactivateConstraints:v5];

    v6 = MEMORY[0x277CCAAD0];
    [(ICNoteEditorUserTitleView *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    v7 = [(ICNoteEditorUserTitleView *)self alternateConstraintsForAXLargerTextSizes];
    [v4 deactivateConstraints:v7];

    v6 = MEMORY[0x277CCAAD0];
    [(ICNoteEditorUserTitleView *)self defaultConstraints];
  }
  v8 = ;
  [v6 activateConstraints:v8];
}

- (double)preferredHeight
{
  v3 = 0.0;
  if (([(ICNoteEditorUserTitleView *)self isHidden]& 1) == 0)
  {
    v4 = [(ICNoteEditorUserTitleView *)self label];
    v5 = [v4 numberOfLines];
    v6 = [(ICNoteEditorUserTitleView *)self label];
    v7 = v6;
    if (v5 == 1)
    {
      v8 = [v6 font];
      [v8 lineHeight];
      *&v9 = v9;
      v10 = ceilf(*&v9);
    }

    else
    {
      [v6 intrinsicContentSize];
      v10 = v11;
    }

    v3 = v10 + 12.0;
    if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
    {
      v12 = [(ICNoteEditorUserTitleView *)self editButton];
      [v12 intrinsicContentSize];
      v3 = v3 + v13;
    }
  }

  return v3;
}

- (void)setNote:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_note != v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [objc_opt_class() noteKeyPathsAffectingUserTitleView];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(ICNote *)self->_note ic_removeObserver:self forKeyPath:*(*(&v20 + 1) + 8 * v10++) context:&compoundliteral_3];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_note, a3);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [objc_opt_class() noteKeyPathsAffectingUserTitleView];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(ICNote *)self->_note ic_addObserver:self forKeyPath:*(*(&v16 + 1) + 8 * v15++) context:&compoundliteral_3];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(ICNoteEditorUserTitleView *)self updateContentToCurrentNote];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICNoteEditorUserTitleView *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/ICNoteEditorUserTitleView.m"]& 1) != 0)
  {
    v13 = [(ICNoteEditorUserTitleView *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &compoundliteral_3 && (v13 & 1) == 0)
    {

      [(ICNoteEditorUserTitleView *)self updateContentToCurrentNote];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICNoteEditorUserTitleView;
    [(ICNoteEditorUserTitleView *)&v14 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (void)noteWillBeDeleted:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICNoteEditorUserTitleView *)self note];

  if (v4 == v5)
  {
    v6 = [(ICNoteEditorUserTitleView *)self alertController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if ([(ICNoteEditorUserTitleView *)self isHidden]!= a3)
  {
    v6.receiver = self;
    v6.super_class = ICNoteEditorUserTitleView;
    [(ICNoteEditorUserTitleView *)&v6 setHidden:v3];
    v5 = [(ICNoteEditorUserTitleView *)self delegate];
    [v5 userTitleHiddenStateDidChange:self];
  }
}

+ (BOOL)shouldShowUserTitleViewForNote:(id)a3
{
  v3 = a3;
  v4 = [v3 isSharedAndEmpty];
  if (v3)
  {
    v5 = [v3 titleSourceAttachment];
    if ([v5 attachmentType] == 10)
    {
      v6 = 0;
    }

    else
    {
      v8 = [v3 titleSourceAttachment];
      v6 = [v8 attachmentType] != 13;
    }

    v9 = [v3 titleSourceAttachment];
    v7 = 0;
    if (v9 && !v6)
    {
      v7 = [v3 isEditable];
    }
  }

  else
  {
    v7 = 0;
  }

  return (v4 | v7) & 1;
}

- (void)updateContentToCurrentNote
{
  v3 = [(ICNoteEditorUserTitleView *)self note];
  v4 = [v3 isSharedAndEmpty];

  if (v4)
  {
    return;
  }

  v5 = objc_opt_class();
  v6 = [(ICNoteEditorUserTitleView *)self note];
  -[ICNoteEditorUserTitleView setHidden:](self, "setHidden:", [v5 shouldShowUserTitleViewForNote:v6] ^ 1);

  if (([(ICNoteEditorUserTitleView *)self isHidden]& 1) != 0)
  {
    return;
  }

  v7 = [(ICNoteEditorUserTitleView *)self note];
  v8 = [v7 titleSourceAttachment];
  v9 = [v8 userTitle];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"Note Title: %@" value:&stru_282757698 table:0];
    v26 = [v10 localizedStringWithFormat:v12, v9];
  }

  else
  {
    v14 = [(ICNoteEditorUserTitleView *)self note];
    v15 = [v14 attributedTitle];

    if (v15)
    {
      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v16 localizedStringForKey:@"Suggested Title: " value:&stru_282757698 table:0];
      v18 = [(ICNoteEditorUserTitleView *)self note];
      v19 = [v18 attributedTitle];
      v13 = [v17 ic_attributedStringByAppendingAttributedString:v19];
    }

    else
    {
      v13 = 0;
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] mainBundle];
    v22 = [v21 localizedStringForKey:@"Suggested Title: %@" value:&stru_282757698 table:0];
    v23 = [(ICNoteEditorUserTitleView *)self note];
    v24 = [v23 title];
    v26 = [v20 localizedStringWithFormat:v22, v24];

    if (v13)
    {
      v25 = [(ICNoteEditorUserTitleView *)self label];
      [v25 setAttributedText:v13];

      goto LABEL_12;
    }
  }

  v13 = [(ICNoteEditorUserTitleView *)self label];
  [v13 setText:v26];
LABEL_12:
}

- (void)editButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"Note Title" value:&stru_282757698 table:0];

  v7 = [(ICNoteEditorUserTitleView *)self note];
  v8 = [v7 titleSourceAttachment];

  if (v8)
  {
    objc_initWeak(location, self);
    v35 = v6;
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:&stru_282757698 preferredStyle:1];
    v10 = [v8 note];
    v11 = [v10 attributedTitle];

    v12 = [v8 note];
    v13 = [v12 title];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __47__ICNoteEditorUserTitleView_editButtonPressed___block_invoke;
    v43[3] = &unk_2781ADEA0;
    v14 = v8;
    v44 = v14;
    v36 = v11 != 0;
    v48 = v11 != 0;
    v15 = v11;
    v45 = v15;
    v16 = v13;
    v46 = v16;
    objc_copyWeak(&v47, location);
    [v9 addTextFieldWithConfigurationHandler:v43];
    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
    v20 = [v17 actionWithTitle:v19 style:1 handler:&__block_literal_global_13];
    [v9 addAction:v20];

    v21 = MEMORY[0x277D750F8];
    v22 = [MEMORY[0x277CCA8D8] mainBundle];
    v23 = [v22 localizedStringForKey:@"Done" value:&stru_282757698 table:0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __47__ICNoteEditorUserTitleView_editButtonPressed___block_invoke_3;
    v37[3] = &unk_2781ADEC8;
    v24 = v9;
    v38 = v24;
    v42 = v36;
    v25 = v15;
    v39 = v25;
    v26 = v16;
    v40 = v26;
    v41 = v14;
    v27 = [v21 actionWithTitle:v23 style:0 handler:v37];
    [v24 addAction:v27];

    [(ICNoteEditorUserTitleView *)self setAlertController:v24];
    v28 = [(ICNoteEditorUserTitleView *)self window];
    v29 = [v28 rootViewController];

    v30 = [v29 presentedViewController];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v29;
    }

    v33 = v32;

    [v33 presentViewController:v24 animated:1 completion:0];
    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 postNotificationName:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

    objc_destroyWeak(&v47);
    objc_destroyWeak(location);
    v6 = v35;
  }
}

void __47__ICNoteEditorUserTitleView_editButtonPressed___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setAutocapitalizationType:2];
  [v7 setClearButtonMode:3];
  v3 = [*(a1 + 32) title];
  if (v3)
  {
    [v7 setPlaceholder:v3];
  }

  else
  {
    v4 = [*(a1 + 32) note];
    v5 = [v4 title];
    [v7 setPlaceholder:v5];
  }

  if (*(a1 + 64) == 1)
  {
    [v7 setAttributedText:*(a1 + 40)];
  }

  else
  {
    [v7 setText:*(a1 + 48)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v7 setDelegate:WeakRetained];
}

void __47__ICNoteEditorUserTitleView_editButtonPressed___block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v15 = ICDynamicCast();

  v4 = [v15 text];
  v5 = [v15 attributedText];
  v6 = v5;
  if (*(a1 + 64) == 1)
  {
    if ([v5 isEqualToAttributedString:*(a1 + 40)])
    {
      goto LABEL_12;
    }
  }

  else if ([v4 isEqualToString:*(a1 + 48)])
  {
    goto LABEL_12;
  }

  v7 = [*(a1 + 56) note];
  v8 = [v7 isEditable];

  if (v8)
  {
    if ([v4 length])
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 56) setUserTitle:v9];
    [*(a1 + 56) updateChangeCountWithReason:@"Edited user title"];
    v10 = [*(a1 + 56) note];
    v11 = [v10 regenerateTitle:1 snippet:1];

    if (v11)
    {
      v12 = [*(a1 + 56) note];
      [v12 markShareDirtyIfNeededWithReason:@"Edited attachment user title"];

      v13 = [*(a1 + 56) note];
      [v13 updateChangeCountWithReason:@"Edited attachment user title"];
    }

    v14 = [*(a1 + 56) note];
    [v14 updateModificationDateAndChangeCountAndSaveImmediately];
  }

LABEL_12:
}

+ (id)newUserTitleView
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v4 = NSStringFromClass(a1);
  v5 = [v3 loadNibNamed:v4 owner:a1 options:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"result != ((void*)0)" functionName:"+[ICNoteEditorUserTitleView newUserTitleView]" simulateCrash:1 showAlert:0 format:{@"Unable to load user title view", v14}];
  v12 = 0;
LABEL_12:
  [v12 setTranslatesAutoresizingMaskIntoConstraints:{1, v14}];

  return v12;
}

- (void)updateFonts
{
  v3 = [MEMORY[0x277D74300] ic_preferredFontForDateText];
  v4 = [(ICNoteEditorUserTitleView *)self label];
  [v4 setFont:v3];

  v8 = [(ICNoteEditorUserTitleView *)self label];
  v5 = [v8 font];
  v6 = [(ICNoteEditorUserTitleView *)self editButton];
  v7 = [v6 titleLabel];
  [v7 setFont:v5];
}

- (void)registerForTraitChanges
{
  v8[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ICNoteEditorUserTitleView_registerForTraitChanges__block_invoke;
  v5[3] = &unk_2781ACDB8;
  objc_copyWeak(&v6, &location);
  v4 = [(ICNoteEditorUserTitleView *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__ICNoteEditorUserTitleView_registerForTraitChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = ICAccessibilityAccessibilityLargerTextSizesEnabled() ^ 1;
    v3 = [v4 label];
    [v3 setNumberOfLines:v2];

    [v4 updateFonts];
    [v4 setNeedsUpdateConstraints];
    WeakRetained = v4;
  }
}

- (id)accessibilityValue
{
  v2 = [(ICNoteEditorUserTitleView *)self label];
  v3 = [v2 text];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap to edit the title of this note." value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorUserTitleView;
  v2 = [(ICNoteEditorUserTitleView *)&v7 accessibilityContainer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      v5 = [v4 accessibilityContainer];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v4 = v4;

    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v3;
}

- (void)accessibilityElementDidBecomeFocused
{
  v5.receiver = self;
  v5.super_class = ICNoteEditorUserTitleView;
  [(ICNoteEditorUserTitleView *)&v5 accessibilityElementDidBecomeFocused];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(ICNoteEditorUserTitleView *)self nextResponder];
    if (v3)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v4 = [v3 nextResponder];

        v3 = v4;
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      v3 = v3;
    }

LABEL_7:
    [v3 showOverscrollContentAndScrollToTop];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICNoteEditorUserTitleView;
  return *MEMORY[0x277D76548] | [(ICNoteEditorUserTitleView *)&v3 accessibilityTraits];
}

- (ICNoteEditorUserTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (UIButton)editButton
{
  WeakRetained = objc_loadWeakRetained(&self->_editButton);

  return WeakRetained;
}

- (UIAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

@end