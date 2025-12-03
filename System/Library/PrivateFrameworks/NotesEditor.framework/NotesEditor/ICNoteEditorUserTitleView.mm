@interface ICNoteEditorUserTitleView
+ (BOOL)shouldShowUserTitleViewForNote:(id)note;
+ (id)newUserTitleView;
- (ICNoteEditorUserTitleView)initWithCoder:(id)coder;
- (ICNoteEditorUserTitleView)initWithFrame:(CGRect)frame;
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
- (void)editButtonPressed:(id)pressed;
- (void)noteWillBeDeleted:(id)deleted;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForTraitChanges;
- (void)setHidden:(BOOL)hidden;
- (void)setNote:(id)note;
- (void)updateConstraints;
- (void)updateContentToCurrentNote;
- (void)updateFonts;
@end

@implementation ICNoteEditorUserTitleView

- (ICNoteEditorUserTitleView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICNoteEditorUserTitleView;
  v3 = [(ICNoteEditorUserTitleView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICNoteEditorUserTitleView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteEditorUserTitleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICNoteEditorUserTitleView;
  v3 = [(ICNoteEditorUserTitleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  label = [(ICNoteEditorUserTitleView *)self label];
  [label setNumberOfLines:v3];

  [(ICNoteEditorUserTitleView *)self updateFonts];
  label2 = [(ICNoteEditorUserTitleView *)self label];
  font = [label2 font];
  ic_fontHasSingleLineA = [font ic_fontHasSingleLineA];

  if ((ic_fontHasSingleLineA & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[self.label.font ic_fontHasSingleLineA]" functionName:"-[ICNoteEditorUserTitleView awakeFromNib]" simulateCrash:1 showAlert:0 format:@"font should have a single-line a attribute"];
  }

  ic_noteEditorSecondaryLabelColor = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  label3 = [(ICNoteEditorUserTitleView *)self label];
  [label3 setTextColor:ic_noteEditorSecondaryLabelColor];

  label4 = [(ICNoteEditorUserTitleView *)self label];
  [label4 setTextAlignment:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_noteWillBeDeleted_ name:*MEMORY[0x277D35D18] object:0];

  note = [(ICNoteEditorUserTitleView *)self note];
  LOBYTE(label3) = [note isSharedAndEmpty];

  if ((label3 & 1) == 0)
  {
    [(ICNoteEditorUserTitleView *)self updateContentToCurrentNote];
    editButton = [(ICNoteEditorUserTitleView *)self editButton];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle localizedStringForKey:@"Edit" value:&stru_282757698 table:0];
    [editButton setTitle:v15 forState:0];
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
    defaultConstraints = [(ICNoteEditorUserTitleView *)self defaultConstraints];
    [v4 deactivateConstraints:defaultConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(ICNoteEditorUserTitleView *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    alternateConstraintsForAXLargerTextSizes = [(ICNoteEditorUserTitleView *)self alternateConstraintsForAXLargerTextSizes];
    [v4 deactivateConstraints:alternateConstraintsForAXLargerTextSizes];

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
    label = [(ICNoteEditorUserTitleView *)self label];
    numberOfLines = [label numberOfLines];
    label2 = [(ICNoteEditorUserTitleView *)self label];
    v7 = label2;
    if (numberOfLines == 1)
    {
      font = [label2 font];
      [font lineHeight];
      *&v9 = v9;
      v10 = ceilf(*&v9);
    }

    else
    {
      [label2 intrinsicContentSize];
      v10 = v11;
    }

    v3 = v10 + 12.0;
    if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
    {
      editButton = [(ICNoteEditorUserTitleView *)self editButton];
      [editButton intrinsicContentSize];
      v3 = v3 + v13;
    }
  }

  return v3;
}

- (void)setNote:(id)note
{
  v26 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  if (self->_note != noteCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    noteKeyPathsAffectingUserTitleView = [objc_opt_class() noteKeyPathsAffectingUserTitleView];
    v7 = [noteKeyPathsAffectingUserTitleView countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(noteKeyPathsAffectingUserTitleView);
          }

          [(ICNote *)self->_note ic_removeObserver:self forKeyPath:*(*(&v20 + 1) + 8 * v10++) context:&compoundliteral_3];
        }

        while (v8 != v10);
        v8 = [noteKeyPathsAffectingUserTitleView countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_note, note);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    noteKeyPathsAffectingUserTitleView2 = [objc_opt_class() noteKeyPathsAffectingUserTitleView];
    v12 = [noteKeyPathsAffectingUserTitleView2 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
            objc_enumerationMutation(noteKeyPathsAffectingUserTitleView2);
          }

          [(ICNote *)self->_note ic_addObserver:self forKeyPath:*(*(&v16 + 1) + 8 * v15++) context:&compoundliteral_3];
        }

        while (v13 != v15);
        v13 = [noteKeyPathsAffectingUserTitleView2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(ICNoteEditorUserTitleView *)self updateContentToCurrentNote];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICNoteEditorUserTitleView *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/ICNoteEditorUserTitleView.m"]& 1) != 0)
  {
    v13 = [(ICNoteEditorUserTitleView *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_3 && (v13 & 1) == 0)
    {

      [(ICNoteEditorUserTitleView *)self updateContentToCurrentNote];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICNoteEditorUserTitleView;
    [(ICNoteEditorUserTitleView *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)noteWillBeDeleted:(id)deleted
{
  object = [deleted object];
  note = [(ICNoteEditorUserTitleView *)self note];

  if (object == note)
  {
    alertController = [(ICNoteEditorUserTitleView *)self alertController];
    [alertController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(ICNoteEditorUserTitleView *)self isHidden]!= hidden)
  {
    v6.receiver = self;
    v6.super_class = ICNoteEditorUserTitleView;
    [(ICNoteEditorUserTitleView *)&v6 setHidden:hiddenCopy];
    delegate = [(ICNoteEditorUserTitleView *)self delegate];
    [delegate userTitleHiddenStateDidChange:self];
  }
}

+ (BOOL)shouldShowUserTitleViewForNote:(id)note
{
  noteCopy = note;
  isSharedAndEmpty = [noteCopy isSharedAndEmpty];
  if (noteCopy)
  {
    titleSourceAttachment = [noteCopy titleSourceAttachment];
    if ([titleSourceAttachment attachmentType] == 10)
    {
      v6 = 0;
    }

    else
    {
      titleSourceAttachment2 = [noteCopy titleSourceAttachment];
      v6 = [titleSourceAttachment2 attachmentType] != 13;
    }

    titleSourceAttachment3 = [noteCopy titleSourceAttachment];
    isEditable = 0;
    if (titleSourceAttachment3 && !v6)
    {
      isEditable = [noteCopy isEditable];
    }
  }

  else
  {
    isEditable = 0;
  }

  return (isSharedAndEmpty | isEditable) & 1;
}

- (void)updateContentToCurrentNote
{
  note = [(ICNoteEditorUserTitleView *)self note];
  isSharedAndEmpty = [note isSharedAndEmpty];

  if (isSharedAndEmpty)
  {
    return;
  }

  v5 = objc_opt_class();
  note2 = [(ICNoteEditorUserTitleView *)self note];
  -[ICNoteEditorUserTitleView setHidden:](self, "setHidden:", [v5 shouldShowUserTitleViewForNote:note2] ^ 1);

  if (([(ICNoteEditorUserTitleView *)self isHidden]& 1) != 0)
  {
    return;
  }

  note3 = [(ICNoteEditorUserTitleView *)self note];
  titleSourceAttachment = [note3 titleSourceAttachment];
  userTitle = [titleSourceAttachment userTitle];

  if (userTitle)
  {
    v10 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [mainBundle localizedStringForKey:@"Note Title: %@" value:&stru_282757698 table:0];
    v26 = [v10 localizedStringWithFormat:v12, userTitle];
  }

  else
  {
    note4 = [(ICNoteEditorUserTitleView *)self note];
    attributedTitle = [note4 attributedTitle];

    if (attributedTitle)
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [mainBundle2 localizedStringForKey:@"Suggested Title: " value:&stru_282757698 table:0];
      note5 = [(ICNoteEditorUserTitleView *)self note];
      attributedTitle2 = [note5 attributedTitle];
      label2 = [v17 ic_attributedStringByAppendingAttributedString:attributedTitle2];
    }

    else
    {
      label2 = 0;
    }

    v20 = MEMORY[0x277CCACA8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v22 = [mainBundle3 localizedStringForKey:@"Suggested Title: %@" value:&stru_282757698 table:0];
    note6 = [(ICNoteEditorUserTitleView *)self note];
    title = [note6 title];
    v26 = [v20 localizedStringWithFormat:v22, title];

    if (label2)
    {
      label = [(ICNoteEditorUserTitleView *)self label];
      [label setAttributedText:label2];

      goto LABEL_12;
    }
  }

  label2 = [(ICNoteEditorUserTitleView *)self label];
  [label2 setText:v26];
LABEL_12:
}

- (void)editButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"Note Title" value:&stru_282757698 table:0];

  note = [(ICNoteEditorUserTitleView *)self note];
  titleSourceAttachment = [note titleSourceAttachment];

  if (titleSourceAttachment)
  {
    objc_initWeak(location, self);
    v35 = v6;
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:&stru_282757698 preferredStyle:1];
    note2 = [titleSourceAttachment note];
    attributedTitle = [note2 attributedTitle];

    note3 = [titleSourceAttachment note];
    title = [note3 title];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __47__ICNoteEditorUserTitleView_editButtonPressed___block_invoke;
    v43[3] = &unk_2781ADEA0;
    v14 = titleSourceAttachment;
    v44 = v14;
    v36 = attributedTitle != 0;
    v48 = attributedTitle != 0;
    v15 = attributedTitle;
    v45 = v15;
    v16 = title;
    v46 = v16;
    objc_copyWeak(&v47, location);
    [v9 addTextFieldWithConfigurationHandler:v43];
    v17 = MEMORY[0x277D750F8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [mainBundle2 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
    v20 = [v17 actionWithTitle:v19 style:1 handler:&__block_literal_global_13];
    [v9 addAction:v20];

    v21 = MEMORY[0x277D750F8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v23 = [mainBundle3 localizedStringForKey:@"Done" value:&stru_282757698 table:0];
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
    window = [(ICNoteEditorUserTitleView *)self window];
    rootViewController = [window rootViewController];

    presentedViewController = [rootViewController presentedViewController];
    v31 = presentedViewController;
    if (presentedViewController)
    {
      v32 = presentedViewController;
    }

    else
    {
      v32 = rootViewController;
    }

    v33 = v32;

    [v33 presentViewController:v24 animated:1 completion:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

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
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v4 = NSStringFromClass(self);
  v5 = [v3 loadNibNamed:v4 owner:self options:0];

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
  ic_preferredFontForDateText = [MEMORY[0x277D74300] ic_preferredFontForDateText];
  label = [(ICNoteEditorUserTitleView *)self label];
  [label setFont:ic_preferredFontForDateText];

  label2 = [(ICNoteEditorUserTitleView *)self label];
  font = [label2 font];
  editButton = [(ICNoteEditorUserTitleView *)self editButton];
  titleLabel = [editButton titleLabel];
  [titleLabel setFont:font];
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
  label = [(ICNoteEditorUserTitleView *)self label];
  text = [label text];

  return text;
}

- (id)accessibilityHint
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap to edit the title of this note." value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorUserTitleView;
  accessibilityContainer = [(ICNoteEditorUserTitleView *)&v7 accessibilityContainer];
  v3 = accessibilityContainer;
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      accessibilityContainer2 = [v4 accessibilityContainer];

      v4 = accessibilityContainer2;
      if (!accessibilityContainer2)
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
    nextResponder = [(ICNoteEditorUserTitleView *)self nextResponder];
    if (nextResponder)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v3NextResponder = [nextResponder nextResponder];

        nextResponder = v3NextResponder;
        if (!v3NextResponder)
        {
          goto LABEL_7;
        }
      }

      nextResponder = nextResponder;
    }

LABEL_7:
    [nextResponder showOverscrollContentAndScrollToTop];
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