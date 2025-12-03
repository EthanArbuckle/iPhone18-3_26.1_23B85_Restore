@interface ICNoteEditorNavigationItemConfiguration
- (BOOL)canShowToolbar;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateAnimated:(BOOL)animated;
- (BOOL)usesUndoRedoMenu;
- (ICMediaActionMenu)mediaActionMenu;
- (ICNoteEditorContextualInputAccessoryView)contextualInputAccessoryView;
- (ICNoteEditorNavigationItemConfiguration)initWithDataSource:(id)source delegate:(id)delegate;
- (ICNoteEditorNavigationItemConfigurationDataSource)dataSource;
- (ICNoteEditorNavigationItemConfigurationDelegate)delegate;
- (ICNoteEditorPillOrnamentBarButtonItem)checklistBarButtonItem;
- (ICNoteEditorPillOrnamentBarButtonItem)inlineSketchBarButtonItem;
- (ICNoteEditorPillOrnamentBarButtonItem)mediaBarButtonItem;
- (ICNoteEditorPillOrnamentBarButtonItem)redoBarButtonItem;
- (ICNoteEditorPillOrnamentBarButtonItem)styleBarButtonItem;
- (ICNoteEditorPillOrnamentBarButtonItem)tableBarButtonItem;
- (ICNoteEditorPillOrnamentBarButtonItem)undoBarButtonItem;
- (ICNoteEditorPillOrnamentViewController)pillOrnamentViewController;
- (ICSelectorDelayer)inlineSketchAnimationSelectorDelayer;
- (ICSidecarInsertMenuController)sidecarMenuController;
- (ICStyleSelectorViewController)styleSelectorViewController;
- (ICTableActionMenu)tableActionMenu;
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (NSString)checklistAccessibilityValue;
- (NSString)emphasisAccessibilityCustomContentValue;
- (NSString)indentationAccessibilityValue;
- (UIBarButtonItem)addNoteBarButtonItem;
- (UIBarButtonItem)blockQuoteBarButtonItem;
- (UIBarButtonItem)boldBarButtonItem;
- (UIBarButtonItem)calculatorModeItem;
- (UIBarButtonItem)closeAuxiliaryWindowBarButtonItem;
- (UIBarButtonItem)collaborationBarButtonItem;
- (UIBarButtonItem)customBackBarButtonItem;
- (UIBarButtonItem)deleteBarButtonItem;
- (UIBarButtonItem)doneBarButtonItem;
- (UIBarButtonItem)emphasisBarButtonItem;
- (UIBarButtonItem)formatBarButtonItem;
- (UIBarButtonItem)italicBarButtonItem;
- (UIBarButtonItem)leftIndentBarButtonItem;
- (UIBarButtonItem)linkBarButtonItem;
- (UIBarButtonItem)listSelectorBarButtonItem;
- (UIBarButtonItem)lockBarButtonItem;
- (UIBarButtonItem)moveBarButtonItem;
- (UIBarButtonItem)moveDownBarButtonItem;
- (UIBarButtonItem)moveUpBarButtonItem;
- (UIBarButtonItem)quickNoteAllNotesBarButtonItem;
- (UIBarButtonItem)quickNoteCancelBarButtonItem;
- (UIBarButtonItem)quickNoteSaveBarButtonItem;
- (UIBarButtonItem)rightIndentBarButtonItem;
- (UIBarButtonItem)shareBarButtonItem;
- (UIBarButtonItem)sidebarButtonItem;
- (UIBarButtonItem)strikethroughBarButtonItem;
- (UIBarButtonItem)underlineBarButtonItem;
- (UIBarButtonItem)verticalSeparatorBarButtonItem;
- (UIBarButtonItem)writingToolsBarButtonItem;
- (UIBarButtonItemGroup)addNoteBarButtonItemGroup;
- (UIBarButtonItemGroup)checklistBarButtonItemGroup;
- (UIBarButtonItemGroup)inlineSketchButtonItemGroup;
- (UIBarButtonItemGroup)inputAssistantLeadingBarButtonItemGroup;
- (UIBarButtonItemGroup)inputAssistantTrailingBarButtonItemGroup;
- (UIBarButtonItemGroup)mediaBarButtonItemGroup;
- (UIBarButtonItemGroup)pinnedTrailingBarButtonItemGroup;
- (UIBarButtonItemGroup)styleBarButtonItemGroup;
- (UIBarButtonItemGroup)tableBarButtonItemGroup;
- (UIBarButtonItemGroup)undoRedoBarButtonItemGroup;
- (UIBarButtonItemGroup)writingToolsButtonItemGroup;
- (UIImage)blockQuoteBarButtonItemImage;
- (UIMenu)mediaBarButtonItemMenu;
- (UIMenu)tableBarButtonItemMenu;
- (UIMenu)undoRedoMenu;
- (UINavigationController)navigationController;
- (UINavigationItem)navigationItem;
- (UITextInputAssistantItem)inputAssistantItem;
- (UIToolbar)inputAccessoryToolbar;
- (UIView)presentingSourceView;
- (UIViewController)presentingViewController;
- (UIWindowScene)presentingWindowScene;
- (id)accessibilityCustomContentFor:(id)for;
- (id)toolbarButtonConfiguration;
- (id)toolbarItemSource;
- (id)undoRedoButtonWithImageName:(id)name title:(id)title selector:(SEL)selector;
- (unint64_t)hash;
- (void)addNoteAction:(id)action event:(id)event;
- (void)backAction:(id)action;
- (void)blockQuoteAction:(id)action;
- (void)boldAction:(id)action;
- (void)checklistAction:(id)action;
- (void)closeAuxiliaryWindowAction:(id)action;
- (void)dealloc;
- (void)deleteAction:(id)action;
- (void)doneAction:(id)action;
- (void)emphasisAction:(id)action colorType:(int64_t)type;
- (void)inlineSketchAction:(id)action;
- (void)italicAction:(id)action;
- (void)leftIndentAction:(id)action;
- (void)linkAction:(id)action;
- (void)lockAction:(id)action;
- (void)moveAction:(id)action;
- (void)moveDownAction:(id)action;
- (void)moveUpAction:(id)action;
- (void)performInlineSketchAnimation:(id)animation;
- (void)photoLibraryAction:(id)action;
- (void)quickNoteAllNotesAction:(id)action;
- (void)quickNoteCancelAction:(id)action;
- (void)quickNoteSaveAction:(id)action;
- (void)redoAction:(id)action;
- (void)reset;
- (void)rightIndentAction:(id)action;
- (void)setForceHideToolbar:(BOOL)toolbar;
- (void)shareAction:(id)action;
- (void)sidebarAction:(id)action;
- (void)strikethroughAction:(id)action;
- (void)styleAction:(id)action;
- (void)tableAction:(id)action;
- (void)textViewDidChange:(id)change;
- (void)underlineAction:(id)action;
- (void)undoAction:(id)action;
- (void)updateBlockQuoteBarButtonItemImage;
- (void)updateCompactAnimated:(BOOL)animated;
- (void)updateEnabled;
- (void)updateFormatBarButtonsForChangeInTextView:(id)view;
- (void)updateMenus;
- (void)updateRegularAnimated:(BOOL)animated;
- (void)updateSelectionInTextView:(id)view;
- (void)updateTitlesAndImages;
- (void)updateToolbarVisibilityAnimated:(BOOL)animated;
- (void)writingToolsAction:(id)action;
@end

@implementation ICNoteEditorNavigationItemConfiguration

- (void)reset
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorNavigationItemConfiguration;
  [(ICNavigationItemConfiguration *)&v7 reset];
  undoBarButtonItem = self->_undoBarButtonItem;
  self->_undoBarButtonItem = 0;

  redoBarButtonItem = self->_redoBarButtonItem;
  self->_redoBarButtonItem = 0;

  undoRedoBarButtonItemGroup = self->_undoRedoBarButtonItemGroup;
  self->_undoRedoBarButtonItemGroup = 0;

  formatBarButtonItem = self->_formatBarButtonItem;
  self->_formatBarButtonItem = 0;

  self->_inlineSketchEditingState = 0;
}

- (UIBarButtonItem)addNoteBarButtonItem
{
  addNoteBarButtonItem = self->_addNoteBarButtonItem;
  if (addNoteBarButtonItem)
  {
    v3 = addNoteBarButtonItem;
  }

  else
  {
    usesPillOrnament = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = mainBundle;
    if (usesPillOrnament)
    {
      v8 = @"Create a note";
    }

    else
    {
      v8 = @"New Note";
    }

    v9 = [mainBundle localizedStringForKey:v8 value:&stru_282757698 table:0];

    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.pencil"];
    v12 = [v10 initWithTitle:v9 image:v11 target:self action:sel_addNoteAction_event_ menu:0];
    v13 = self->_addNoteBarButtonItem;
    self->_addNoteBarButtonItem = v12;

    [(UIBarButtonItem *)self->_addNoteBarButtonItem setSpringLoaded:1];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle2 localizedStringForKey:@"New note" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_addNoteBarButtonItem setAccessibilityLabel:v15];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"Double tap to compose a new note." value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_addNoteBarButtonItem setAccessibilityHint:v17];

    [(UIBarButtonItem *)self->_addNoteBarButtonItem _setPrefersSeparatePlatter:1];
    v3 = self->_addNoteBarButtonItem;
  }

  return v3;
}

- (unint64_t)hash
{
  v72[35] = *MEMORY[0x277D85DE8];
  v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canAddChecklist](self, "canAddChecklist")}];
  v72[0] = v70;
  v68 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canAddMedia](self, "canAddMedia")}];
  v72[1] = v68;
  v66 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canAddNote](self, "canAddNote")}];
  v72[2] = v66;
  v65 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canAddTable](self, "canAddTable")}];
  v72[3] = v65;
  v63 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canChangeStyle](self, "canChangeStyle")}];
  v72[4] = v63;
  v62 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canInlineSketch](self, "canInlineSketch")}];
  v72[5] = v62;
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canRedo](self, "canRedo")}];
  v72[6] = v60;
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canSaveQuickNote](self, "canSaveQuickNote")}];
  v72[7] = v59;
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canShare](self, "canShare")}];
  v72[8] = v58;
  v57 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canShowPillOrnament](self, "canShowPillOrnament")}];
  v72[9] = v57;
  v56 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canShowUndoRedo](self, "canShowUndoRedo")}];
  v72[10] = v56;
  v55 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canUndo](self, "canUndo")}];
  v72[11] = v55;
  v54 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canShowWritingTools](self, "canShowWritingTools")}];
  v72[12] = v54;
  v53 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration canUseWritingTools](self, "canUseWritingTools")}];
  v72[13] = v53;
  v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration hidesBackButton](self, "hidesBackButton")}];
  v72[14] = v52;
  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration hidesDefaultCenterItems](self, "hidesDefaultCenterItems")}];
  v72[15] = v51;
  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isCompact](self, "isCompact")}];
  v72[16] = v50;
  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isDeleted](self, "isDeleted")}];
  v72[17] = v49;
  v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isEditing](self, "isEditing")}];
  v72[18] = v48;
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isInTripleColumnSplitView](self, "isInTripleColumnSplitView")}];
  v72[19] = v47;
  v46 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isTableSelected](self, "isTableSelected")}];
  v72[20] = v46;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNoteEditorNavigationItemConfiguration inlineSketchEditingState](self, "inlineSketchEditingState")}];
  v72[21] = v45;
  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isEditingTable](self, "isEditingTable")}];
  v72[22] = v44;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNoteEditorNavigationItemConfiguration auxiliaryWindowType](self, "auxiliaryWindowType")}];
  v72[23] = v43;
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isInSecureScreen](self, "isInSecureScreen")}];
  v72[24] = v42;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNoteEditorNavigationItemConfiguration lockState](self, "lockState")}];
  v72[25] = v41;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNoteEditorNavigationItemConfiguration quickNoteType](self, "quickNoteType")}];
  v72[26] = v40;
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration showsDoneWhileEditing](self, "showsDoneWhileEditing")}];
  v72[27] = v39;
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration usesCustomBackButton](self, "usesCustomBackButton")}];
  v72[28] = v38;
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration usesMediaMenu](self, "usesMediaMenu")}];
  v72[29] = v37;
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration usesPillOrnament](self, "usesPillOrnament")}];
  v72[30] = v36;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration usesSidecarMenu](self, "usesSidecarMenu")}];
  v72[31] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration usesStyleMenu](self, "usesStyleMenu")}];
  v72[32] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration usesOnlyTrailingInputAssistantItems](self, "usesOnlyTrailingInputAssistantItems")}];
  v72[33] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteEditorNavigationItemConfiguration isWritingToolsVisible](self, "isWritingToolsVisible")}];
  v72[34] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:35];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 0;
    v10 = 31;
    while (1)
    {
      v11 = [v7 objectAtIndexedSubscript:v8];
      if ([v11 integerValue] < 0)
      {
        break;
      }

      v9 += v10 + v10 * [v11 unsignedIntegerValue];

      ++v8;
      v10 += 31;
      if (v8 >= [v7 count])
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:

  checklistAccessibilityValue = [(ICNoteEditorNavigationItemConfiguration *)self checklistAccessibilityValue];
  v13 = [checklistAccessibilityValue hash];
  if (!v13)
  {
    null = [MEMORY[0x277CBEB68] null];
    v13 = [null hash];
  }

  indentationAccessibilityValue = [(ICNoteEditorNavigationItemConfiguration *)self indentationAccessibilityValue];
  if (![indentationAccessibilityValue hash])
  {
    null2 = [MEMORY[0x277CBEB68] null];
    [null2 hash];
  }

  v69 = v13;
  emphasisAccessibilityCustomContentValue = [(ICNoteEditorNavigationItemConfiguration *)self emphasisAccessibilityCustomContentValue];
  if (![emphasisAccessibilityCustomContentValue hash])
  {
    null3 = [MEMORY[0x277CBEB68] null];
    [null3 hash];
  }

  collaborationBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];
  if (![collaborationBarButtonItem hash])
  {
    null4 = [MEMORY[0x277CBEB68] null];
    [null4 hash];
  }

  inputAssistantItem = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
  if (![inputAssistantItem hash])
  {
    [MEMORY[0x277CBEB68] null];
    v20 = v19 = inputAssistantItem;
    [v20 hash];

    inputAssistantItem = v19;
  }

  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  if (![contextualInputAccessoryView hash])
  {
    null5 = [MEMORY[0x277CBEB68] null];
    [null5 hash];
  }

  inputAccessoryToolbar = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
  if (![inputAccessoryToolbar hash])
  {
    null6 = [MEMORY[0x277CBEB68] null];
    [null6 hash];
  }

  toolbarItemSource = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
  if (![toolbarItemSource hash])
  {
    [MEMORY[0x277CBEB68] null];
    v33 = v32 = checklistAccessibilityValue;
    [v33 hash];

    checklistAccessibilityValue = v32;
  }

  v34 = ICHashWithHashKeys(v9, v25, v26, v27, v28, v29, v30, v31, v69);

  return v34;
}

- (NSString)checklistAccessibilityValue
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationChecklistAccessibilityValue:self];

  return v4;
}

- (ICNoteEditorNavigationItemConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NSString)indentationAccessibilityValue
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationIndentationAccessibilityValue:self];

  return v4;
}

- (NSString)emphasisAccessibilityCustomContentValue
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationEmphasisAccessibilityCustomContentValue:self];

  return v4;
}

- (UIBarButtonItem)collaborationBarButtonItem
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationCollaborationBarButtonItem:self];

  return v4;
}

- (UITextInputAssistantItem)inputAssistantItem
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationInputAssistantItem:self];

  return v4;
}

- (ICNoteEditorContextualInputAccessoryView)contextualInputAccessoryView
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationContextualInputAccessoryView:self];

  return v4;
}

- (UIToolbar)inputAccessoryToolbar
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationInputAccessoryToolbar:self];

  return v4;
}

- (id)toolbarItemSource
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationToolbarItemSource:self];

  return v4;
}

- (UINavigationController)navigationController
{
  presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  navigationController = [presentingViewController navigationController];

  return navigationController;
}

- (UIViewController)presentingViewController
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationPresentingViewController:self];

  return v4;
}

- (BOOL)canShowToolbar
{
  if (-[ICNoteEditorNavigationItemConfiguration forceHideToolbar](self, "forceHideToolbar") || (!-[ICNoteEditorNavigationItemConfiguration canShowContextualFormatBar](self, "canShowContextualFormatBar") || !-[ICNoteEditorNavigationItemConfiguration isEditing](self, "isEditing") ? (LOBYTE(v3) = 1) : (v3 = !-[ICNoteEditorNavigationItemConfiguration isWritingToolsVisible](self, "isWritingToolsVisible")), -[ICNoteEditorNavigationItemConfiguration inlineSketchEditingState](self, "inlineSketchEditingState") == 3 || (([MEMORY[0x277D75418] ic_isVision] & 1) != 0 || -[ICNoteEditorNavigationItemConfiguration canShowContextualFormatBar](self, "canShowContextualFormatBar")) && -[ICNoteEditorNavigationItemConfiguration inlineSketchEditingState](self, "inlineSketchEditingState") == 4))
  {
    LOBYTE(v4) = 0;
  }

  else if ([(ICNoteEditorNavigationItemConfiguration *)self isCompact]&& [(ICNoteEditorNavigationItemConfiguration *)self isTableSelected]|| (v4 = [(ICNoteEditorNavigationItemConfiguration *)self isCompact]))
  {
    LOBYTE(v4) = ![(ICNoteEditorNavigationItemConfiguration *)self isWritingToolsVisible]& v3;
  }

  return v4;
}

- (UINavigationItem)navigationItem
{
  presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  navigationItem = [presentingViewController navigationItem];

  return navigationItem;
}

- (UIBarButtonItem)shareBarButtonItem
{
  shareBarButtonItem = self->_shareBarButtonItem;
  if (shareBarButtonItem)
  {
    v3 = shareBarButtonItem;
  }

  else
  {
    usesPillOrnament = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = mainBundle;
    if (usesPillOrnament)
    {
      v8 = @"Share this note";
    }

    else
    {
      v8 = @"Share";
    }

    v9 = [mainBundle localizedStringForKey:v8 value:&stru_282757698 table:0];

    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
    v12 = [v10 initWithTitle:v9 image:v11 target:self action:sel_shareAction_ menu:0];
    v13 = self->_shareBarButtonItem;
    self->_shareBarButtonItem = v12;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle2 localizedStringForKey:@"Share" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_shareBarButtonItem setAccessibilityLabel:v15];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"Double tap to add people to the current note" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_shareBarButtonItem setAccessibilityHint:v17];

    v3 = self->_shareBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItemGroup)pinnedTrailingBarButtonItemGroup
{
  pinnedTrailingBarButtonItemGroup = self->_pinnedTrailingBarButtonItemGroup;
  if (!pinnedTrailingBarButtonItemGroup)
  {
    v4 = objc_alloc(MEMORY[0x277D751F0]);
    v5 = [v4 initWithBarButtonItems:MEMORY[0x277CBEBF8] representativeItem:0];
    v6 = self->_pinnedTrailingBarButtonItemGroup;
    self->_pinnedTrailingBarButtonItemGroup = v5;

    pinnedTrailingBarButtonItemGroup = self->_pinnedTrailingBarButtonItemGroup;
  }

  v7 = pinnedTrailingBarButtonItemGroup;

  return v7;
}

- (ICNoteEditorPillOrnamentBarButtonItem)checklistBarButtonItem
{
  checklistBarButtonItem = self->_checklistBarButtonItem;
  if (checklistBarButtonItem)
  {
    v3 = checklistBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"checklist" withConfiguration:toolbarButtonConfiguration];

    LODWORD(toolbarButtonConfiguration) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    if (toolbarButtonConfiguration)
    {
      v10 = @"Make a checklist";
    }

    else
    {
      v10 = @"Checklist";
    }

    v11 = [mainBundle localizedStringForKey:v10 value:&stru_282757698 table:0];

    v12 = [[ICNoteEditorPillOrnamentBarButtonItem alloc] initWithTitle:v11 image:v7 target:self action:sel_checklistAction_ menu:0];
    v13 = self->_checklistBarButtonItem;
    self->_checklistBarButtonItem = v12;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_checklistBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle2 localizedStringForKey:@"Checklist" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_checklistBarButtonItem setAccessibilityLabel:v15];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"Double tap to add a checklist to the current note." value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_checklistBarButtonItem setAccessibilityHint:v17];

    v3 = self->_checklistBarButtonItem;
  }

  return v3;
}

- (ICNoteEditorPillOrnamentBarButtonItem)mediaBarButtonItem
{
  mediaBarButtonItem = self->_mediaBarButtonItem;
  if (!mediaBarButtonItem)
  {
    v4 = [[ICNoteEditorPillOrnamentBarButtonItem alloc] initWithTitle:0 image:0 target:self action:0 menu:0];
    v5 = self->_mediaBarButtonItem;
    self->_mediaBarButtonItem = v4;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_mediaBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    mediaBarButtonItem = self->_mediaBarButtonItem;
  }

  v6 = mediaBarButtonItem;

  return v6;
}

- (ICNoteEditorPillOrnamentBarButtonItem)inlineSketchBarButtonItem
{
  inlineSketchBarButtonItem = self->_inlineSketchBarButtonItem;
  if (inlineSketchBarButtonItem)
  {
    v3 = inlineSketchBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    v6 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v7 = [v5 systemImageNamed:@"pencil.tip.crop.circle" withConfiguration:v6];

    LODWORD(v6) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    if (v6)
    {
      v10 = @"Drawing tools";
    }

    else
    {
      v10 = @"Handwriting";
    }

    v11 = [mainBundle localizedStringForKey:v10 value:&stru_282757698 table:0];

    v12 = [[ICNoteEditorPillOrnamentBarButtonItem alloc] initWithTitle:v11 image:v7 target:self action:sel_inlineSketchAction_ menu:0];
    v13 = self->_inlineSketchBarButtonItem;
    self->_inlineSketchBarButtonItem = v12;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_inlineSketchBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle2 localizedStringForKey:@"Handwriting" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_inlineSketchBarButtonItem setAccessibilityLabel:v15];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"Double tap to toggle the ink picker" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_inlineSketchBarButtonItem setAccessibilityHint:v17];

    v3 = self->_inlineSketchBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)writingToolsBarButtonItem
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
  {
    writingToolsBarButtonItem = self->_writingToolsBarButtonItem;
    if (writingToolsBarButtonItem)
    {
      v4 = writingToolsBarButtonItem;
    }

    else
    {
      v5 = MEMORY[0x277D755B8];
      toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
      v7 = [v5 systemImageNamed:@"apple.writing.tools" withConfiguration:toolbarButtonConfiguration];

      LODWORD(toolbarButtonConfiguration) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = mainBundle;
      if (toolbarButtonConfiguration)
      {
        v10 = @"Use Writing Tools";
      }

      else
      {
        v10 = @"Writing Tools";
      }

      v11 = [mainBundle localizedStringForKey:v10 value:&stru_282757698 table:0];

      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v11 image:v7 target:self action:sel_writingToolsAction_ menu:0];
      v13 = self->_writingToolsBarButtonItem;
      self->_writingToolsBarButtonItem = v12;

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [mainBundle2 localizedStringForKey:@"Writing Tools" value:&stru_282757698 table:0];
      [(UIBarButtonItem *)self->_writingToolsBarButtonItem setAccessibilityLabel:v15];

      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [mainBundle3 localizedStringForKey:@"Double tap to open the Writing Tools popover." value:&stru_282757698 table:0];
      [(UIBarButtonItem *)self->_writingToolsBarButtonItem setAccessibilityHint:v17];

      v4 = self->_writingToolsBarButtonItem;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICNoteEditorPillOrnamentViewController)pillOrnamentViewController
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]&& ([(ICNoteEditorNavigationItemConfiguration *)self presentingWindowScene], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    pillOrnamentViewController = self->_pillOrnamentViewController;
    if (!pillOrnamentViewController)
    {
      v5 = [ICNoteEditorPillOrnamentViewController alloc];
      presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
      v7 = [(ICNoteEditorPillOrnamentViewController *)v5 initWithRootViewController:presentingViewController];
      v8 = self->_pillOrnamentViewController;
      self->_pillOrnamentViewController = v7;

      pillOrnamentViewController = self->_pillOrnamentViewController;
    }

    v9 = pillOrnamentViewController;
  }

  else
  {
    [(ICPillOrnamentViewController *)self->_pillOrnamentViewController hide];
    v9 = 0;
  }

  return v9;
}

- (void)updateEnabled
{
  canAddNote = [(ICNoteEditorNavigationItemConfiguration *)self canAddNote];
  addNoteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
  [addNoteBarButtonItem setEnabled:canAddNote];

  canUseWritingTools = [(ICNoteEditorNavigationItemConfiguration *)self canUseWritingTools];
  writingToolsBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
  [writingToolsBarButtonItem setEnabled:canUseWritingTools];

  canAddChecklist = [(ICNoteEditorNavigationItemConfiguration *)self canAddChecklist];
  checklistBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
  [checklistBarButtonItem setEnabled:canAddChecklist];

  canInlineSketch = [(ICNoteEditorNavigationItemConfiguration *)self canInlineSketch];
  inlineSketchBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
  [inlineSketchBarButtonItem setEnabled:canInlineSketch];

  canAddMedia = [(ICNoteEditorNavigationItemConfiguration *)self canAddMedia];
  mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem setEnabled:canAddMedia];

  canSaveQuickNote = [(ICNoteEditorNavigationItemConfiguration *)self canSaveQuickNote];
  quickNoteSaveBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteSaveBarButtonItem];
  [quickNoteSaveBarButtonItem setEnabled:canSaveQuickNote];

  canRedo = [(ICNoteEditorNavigationItemConfiguration *)self canRedo];
  redoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
  [redoBarButtonItem setEnabled:canRedo];

  canShare = [(ICNoteEditorNavigationItemConfiguration *)self canShare];
  shareBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self shareBarButtonItem];
  [shareBarButtonItem setEnabled:canShare];

  canChangeStyle = [(ICNoteEditorNavigationItemConfiguration *)self canChangeStyle];
  styleBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
  [styleBarButtonItem setEnabled:canChangeStyle];

  canAddTable = [(ICNoteEditorNavigationItemConfiguration *)self canAddTable];
  tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
  [tableBarButtonItem setEnabled:canAddTable];

  usesUndoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self canUndo]|| [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
  undoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
  [undoBarButtonItem setEnabled:usesUndoRedoMenu];

  canAddLink = [(ICNoteEditorNavigationItemConfiguration *)self canAddLink];
  linkBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self linkBarButtonItem];
  [linkBarButtonItem setEnabled:canAddLink];

  LODWORD(canAddLink) = [(ICNoteEditorNavigationItemConfiguration *)self canUndo];
  undoMenuItem = [(ICNoteEditorNavigationItemConfiguration *)self undoMenuItem];
  [undoMenuItem setIc_disabled:canAddLink ^ 1];

  LODWORD(canAddLink) = [(ICNoteEditorNavigationItemConfiguration *)self canRedo];
  redoMenuItem = [(ICNoteEditorNavigationItemConfiguration *)self redoMenuItem];
  [redoMenuItem setIc_disabled:canAddLink ^ 1];
}

- (UIBarButtonItem)quickNoteSaveBarButtonItem
{
  quickNoteSaveBarButtonItem = self->_quickNoteSaveBarButtonItem;
  if (!quickNoteSaveBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:self action:sel_quickNoteSaveAction_];
    v5 = self->_quickNoteSaveBarButtonItem;
    self->_quickNoteSaveBarButtonItem = v4;

    [(UIBarButtonItem *)self->_quickNoteSaveBarButtonItem setStyle:2];
    quickNoteSaveBarButtonItem = self->_quickNoteSaveBarButtonItem;
  }

  v6 = quickNoteSaveBarButtonItem;

  return v6;
}

- (ICNoteEditorPillOrnamentBarButtonItem)redoBarButtonItem
{
  redoBarButtonItem = self->_redoBarButtonItem;
  if (redoBarButtonItem)
  {
    v3 = redoBarButtonItem;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Redo" value:&stru_282757698 table:0];

    v7 = [ICNoteEditorPillOrnamentBarButtonItem alloc];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.forward"];
    v9 = [(ICNoteEditorPillOrnamentBarButtonItem *)v7 initWithTitle:v6 image:v8 target:self action:sel_redoAction_ menu:0];
    v10 = self->_redoBarButtonItem;
    self->_redoBarButtonItem = v9;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_redoBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_redoBarButtonItem setTitle:v6];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_redoBarButtonItem setAccessibilityLabel:v6];
    v3 = self->_redoBarButtonItem;
  }

  return v3;
}

- (ICNoteEditorPillOrnamentBarButtonItem)styleBarButtonItem
{
  styleBarButtonItem = self->_styleBarButtonItem;
  if (styleBarButtonItem)
  {
    v3 = styleBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"textformat.alt" withConfiguration:toolbarButtonConfiguration];

    LODWORD(toolbarButtonConfiguration) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    if (toolbarButtonConfiguration)
    {
      v10 = @"Choose a style to apply to text";
    }

    else
    {
      v10 = @"Format";
    }

    v11 = [mainBundle localizedStringForKey:v10 value:&stru_282757698 table:0];

    v12 = [ICNoteEditorPillOrnamentBarButtonItem alloc];
    if ([(ICNoteEditorNavigationItemConfiguration *)self usesStyleMenu])
    {
      v13 = 0;
    }

    else
    {
      v13 = sel_styleAction_;
    }

    v14 = [(ICNoteEditorPillOrnamentBarButtonItem *)v12 initWithTitle:v11 image:v7 target:self action:v13 menu:0];
    v15 = self->_styleBarButtonItem;
    self->_styleBarButtonItem = v14;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_styleBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle2 localizedStringForKey:@"Format" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_styleBarButtonItem setAccessibilityLabel:v17];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [mainBundle3 localizedStringForKey:@"Double tap to choose a style to apply to text." value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_styleBarButtonItem setAccessibilityHint:v19];

    v3 = self->_styleBarButtonItem;
  }

  return v3;
}

- (ICNoteEditorPillOrnamentBarButtonItem)tableBarButtonItem
{
  tableBarButtonItem = self->_tableBarButtonItem;
  if (tableBarButtonItem)
  {
    v3 = tableBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"table" withConfiguration:toolbarButtonConfiguration];

    LODWORD(toolbarButtonConfiguration) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = mainBundle;
    if (toolbarButtonConfiguration)
    {
      v10 = @"Add a table";
    }

    else
    {
      v10 = @"Table";
    }

    v11 = [mainBundle localizedStringForKey:v10 value:&stru_282757698 table:0];

    v12 = [[ICNoteEditorPillOrnamentBarButtonItem alloc] initWithTitle:v11 image:v7 target:self action:sel_tableAction_ menu:0];
    v13 = self->_tableBarButtonItem;
    self->_tableBarButtonItem = v12;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_tableBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    v3 = self->_tableBarButtonItem;
  }

  return v3;
}

- (BOOL)usesUndoRedoMenu
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self isCompact]&& ![(ICNoteEditorNavigationItemConfiguration *)self isLandscape])
  {
    return 1;
  }

  return [(ICNoteEditorNavigationItemConfiguration *)self isInTripleColumnSplitView];
}

- (ICNoteEditorPillOrnamentBarButtonItem)undoBarButtonItem
{
  undoBarButtonItem = self->_undoBarButtonItem;
  if (undoBarButtonItem)
  {
    v3 = undoBarButtonItem;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Undo" value:&stru_282757698 table:0];

    v7 = [ICNoteEditorPillOrnamentBarButtonItem alloc];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.backward"];
    v9 = [(ICNoteEditorPillOrnamentBarButtonItem *)v7 initWithTitle:v6 image:v8 target:self action:sel_undoAction_ menu:0];
    v10 = self->_undoBarButtonItem;
    self->_undoBarButtonItem = v9;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_undoBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_undoBarButtonItem setTitle:v6];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_undoBarButtonItem setAccessibilityLabel:v6];
    v3 = self->_undoBarButtonItem;
  }

  return v3;
}

- (void)updateMenus
{
  mediaBarButtonItemMenu = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemMenu];
  if (mediaBarButtonItemMenu)
  {
    v4 = 0;
  }

  else
  {
    v4 = sel_photoLibraryAction_;
  }

  mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem setAction:v4];

  mediaBarButtonItemMenu2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemMenu];
  mediaBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem2 setMenu:mediaBarButtonItemMenu2];

  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditingTable])
  {
    v8 = 0;
  }

  else
  {
    v8 = sel_tableAction_;
  }

  tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
  [tableBarButtonItem setAction:v8];

  isEditingTable = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  if (isEditingTable)
  {
    tableBarButtonItemMenu = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItemMenu];
  }

  else
  {
    tableBarButtonItemMenu = 0;
  }

  tableBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
  [tableBarButtonItem2 setMenu:tableBarButtonItemMenu];

  if (isEditingTable)
  {
  }

  usesStyleMenu = [(ICNoteEditorNavigationItemConfiguration *)self usesStyleMenu];
  styleSelectorViewController = [(ICNoteEditorNavigationItemConfiguration *)self styleSelectorViewController];
  v15 = styleSelectorViewController;
  if (usesStyleMenu)
  {
    [styleSelectorViewController makeInlineMenu];
  }

  else
  {
    [styleSelectorViewController makeShortcutMenu];
  }
  v22 = ;

  styleBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
  [styleBarButtonItem setMenu:v22];

  objc_opt_class();
  undoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
  customView = [undoBarButtonItem customView];
  v19 = ICDynamicCast();

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu])
  {
    undoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    [v19 setMenu:undoRedoMenu];
  }

  else
  {
    [v19 setMenu:0];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu])
  {
    v21 = [(ICNoteEditorNavigationItemConfiguration *)self canUndo]^ 1;
  }

  else
  {
    v21 = 0;
  }

  [v19 setShowsMenuAsPrimaryAction:v21];
}

- (UIMenu)mediaBarButtonItemMenu
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self usesMediaMenu])
  {
    if (![(ICNoteEditorNavigationItemConfiguration *)self usesSidecarMenu])
    {
LABEL_6:
      mediaActionMenu = [(ICNoteEditorNavigationItemConfiguration *)self mediaActionMenu];
      makeMenu = [mediaActionMenu makeMenu];

      goto LABEL_8;
    }

    mediaActionMenu2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaActionMenu];
    if ([mediaActionMenu2 hasSidecarMenuItems])
    {

      goto LABEL_6;
    }

    IsAudioTranscriptionEnabled = ICInternalSettingsIsAudioTranscriptionEnabled();

    if (IsAudioTranscriptionEnabled)
    {
      goto LABEL_6;
    }
  }

  makeMenu = 0;
LABEL_8:

  return makeMenu;
}

- (ICMediaActionMenu)mediaActionMenu
{
  objc_initWeak(&location, self);
  lockState = [(ICNoteEditorNavigationItemConfiguration *)self lockState];
  v4 = [ICMediaActionMenu alloc];
  isInSecureScreen = [(ICNoteEditorNavigationItemConfiguration *)self isInSecureScreen];
  presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  presentingSourceView = [(ICNoteEditorNavigationItemConfiguration *)self presentingSourceView];
  sidecarMenuController = [(ICNoteEditorNavigationItemConfiguration *)self sidecarMenuController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__ICNoteEditorNavigationItemConfiguration_mediaActionMenu__block_invoke;
  v12[3] = &unk_2781ADAC0;
  objc_copyWeak(&v13, &location);
  v10 = [(ICMediaActionMenu *)v4 initWithIsPasswordProtected:lockState != 0 isInSecureScreen:isInSecureScreen presentingViewController:presentingViewController presentingBarButtonItem:mediaBarButtonItem presentingSourceView:presentingSourceView sidecarMenuController:sidecarMenuController completion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

- (UIView)presentingSourceView
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationPresentingSourceView:self];

  return v4;
}

- (ICSidecarInsertMenuController)sidecarMenuController
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self usesSidecarMenu]&& !self->_sidecarMenuController)
  {
    v3 = objc_alloc_init(ICSidecarInsertMenuController);
    sidecarMenuController = self->_sidecarMenuController;
    self->_sidecarMenuController = v3;

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__ICNoteEditorNavigationItemConfiguration_sidecarMenuController__block_invoke;
    v11[3] = &unk_2781AC0B8;
    objc_copyWeak(&v12, &location);
    [(ICSidecarInsertMenuController *)self->_sidecarMenuController setMenuDidChange:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__ICNoteEditorNavigationItemConfiguration_sidecarMenuController__block_invoke_2;
    v9[3] = &unk_2781ADAE8;
    objc_copyWeak(&v10, &location);
    [(ICSidecarInsertMenuController *)self->_sidecarMenuController setDidReceiveItems:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  [(ICSidecarInsertMenuController *)self->_sidecarMenuController setPresentingViewController:presentingViewController];

  presentingSourceView = [(ICNoteEditorNavigationItemConfiguration *)self presentingSourceView];
  [(ICSidecarInsertMenuController *)self->_sidecarMenuController setPresentingSourceView:presentingSourceView];

  v7 = self->_sidecarMenuController;

  return v7;
}

- (ICStyleSelectorViewController)styleSelectorViewController
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationStyleSelectorViewController:self];

  return v4;
}

- (UIMenu)undoRedoMenu
{
  v24[1] = *MEMORY[0x277D85DE8];
  undoRedoMenu = self->_undoRedoMenu;
  if (undoRedoMenu)
  {
    v3 = undoRedoMenu;
  }

  else
  {
    v5 = MEMORY[0x277D750C8];
    v6 = MEMORY[0x277CCA8D8];
    selfCopy = self;
    mainBundle = [v6 mainBundle];
    v9 = [mainBundle localizedStringForKey:@"Undo" value:&stru_282757698 table:0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke;
    v23[3] = &unk_2781AC800;
    v23[4] = selfCopy;
    v10 = [v5 ic_actionWithTitle:v9 imageName:@"arrow.uturn.backward" handler:v23];
    [(ICNoteEditorNavigationItemConfiguration *)selfCopy setUndoMenuItem:v10];

    v11 = MEMORY[0x277D750C8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle2 localizedStringForKey:@"Redo" value:&stru_282757698 table:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke_2;
    v22[3] = &unk_2781AC800;
    v22[4] = selfCopy;
    v14 = [v11 ic_actionWithTitle:v13 imageName:@"arrow.uturn.forward" handler:v22];
    [(ICNoteEditorNavigationItemConfiguration *)selfCopy setRedoMenuItem:v14];

    v15 = MEMORY[0x277D75710];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke_3;
    v21[3] = &unk_2781ADA98;
    v21[4] = selfCopy;
    v16 = [MEMORY[0x277D753F0] elementWithUncachedProvider:v21];
    v24[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v18 = [v15 ic_inlineMenuWithChildren:v17];
    v19 = self->_undoRedoMenu;
    self->_undoRedoMenu = v18;

    v3 = self->_undoRedoMenu;
  }

  return v3;
}

- (void)updateTitlesAndImages
{
  checklistAccessibilityValue = [(ICNoteEditorNavigationItemConfiguration *)self checklistAccessibilityValue];
  checklistBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
  [checklistBarButtonItem setAccessibilityValue:checklistAccessibilityValue];

  indentationAccessibilityValue = [(ICNoteEditorNavigationItemConfiguration *)self indentationAccessibilityValue];
  leftIndentBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self leftIndentBarButtonItem];
  [leftIndentBarButtonItem setAccessibilityValue:indentationAccessibilityValue];

  indentationAccessibilityValue2 = [(ICNoteEditorNavigationItemConfiguration *)self indentationAccessibilityValue];
  rightIndentBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self rightIndentBarButtonItem];
  [rightIndentBarButtonItem setAccessibilityValue:indentationAccessibilityValue2];

  [(ICNoteEditorNavigationItemConfiguration *)self updateBlockQuoteBarButtonItemImage];
  inlineSketchEditingState = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState];
  v93 = 0;
  if (inlineSketchEditingState <= 1)
  {
    if (inlineSketchEditingState)
    {
      if (inlineSketchEditingState != 1)
      {
        goto LABEL_13;
      }

      v10 = MEMORY[0x277D755B8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
      v93 = [v10 imageNamed:@"pencil.tip.crop.circle.fill" inBundle:v11 withConfiguration:toolbarButtonConfiguration];

      inlineSketchAnimationSelectorDelayer = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchAnimationSelectorDelayer];
      [inlineSketchAnimationSelectorDelayer cancelPreviousFireRequests];
      goto LABEL_12;
    }

    v15 = MEMORY[0x277D755B8];
LABEL_10:
    inlineSketchAnimationSelectorDelayer = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v93 = [v15 systemImageNamed:@"pencil.tip.crop.circle" withConfiguration:inlineSketchAnimationSelectorDelayer];
    goto LABEL_12;
  }

  if (inlineSketchEditingState == 2)
  {
    v17 = MEMORY[0x277D755B8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    toolbarButtonConfiguration2 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v93 = [v17 imageNamed:@"pencil.tip.crop.circle.fill" inBundle:v18 withConfiguration:toolbarButtonConfiguration2];

    inlineSketchAnimationSelectorDelayer = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchAnimationSelectorDelayer];
    [inlineSketchAnimationSelectorDelayer requestFire];
    goto LABEL_12;
  }

  if (inlineSketchEditingState != 3)
  {
    goto LABEL_13;
  }

  isCompact = [(ICNoteEditorNavigationItemConfiguration *)self isCompact];
  v15 = MEMORY[0x277D755B8];
  if (isCompact)
  {
    goto LABEL_10;
  }

  inlineSketchAnimationSelectorDelayer = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  toolbarButtonConfiguration3 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
  v93 = [v15 imageNamed:@"pencil.tip.crop.circle.on" inBundle:inlineSketchAnimationSelectorDelayer withConfiguration:toolbarButtonConfiguration3];

LABEL_12:
LABEL_13:
  inlineSketchBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
  [inlineSketchBarButtonItem setImage:v93];

  mediaBarButtonItemMenu = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemMenu];

  usesPillOrnament = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = mainBundle;
  v25 = @"Open the photo library";
  v26 = @"Add files, media, and more";
  if (!usesPillOrnament)
  {
    v25 = @"Photo Library";
    v26 = @"Attachments";
  }

  if (mediaBarButtonItemMenu)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (mediaBarButtonItemMenu)
  {
    v28 = @"paperclip";
  }

  else
  {
    v28 = @"photo.on.rectangle";
  }

  if (mediaBarButtonItemMenu)
  {
    v29 = @"Attachments";
  }

  else
  {
    v29 = @"Photo Library";
  }

  if (mediaBarButtonItemMenu)
  {
    v30 = @"Double tap to add a photo or scan a document into the current note.";
  }

  else
  {
    v30 = @"Double tap to add a photo into the current note.";
  }

  v31 = [mainBundle localizedStringForKey:v27 value:&stru_282757698 table:0];

  mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem setTitle:v31];

  v33 = MEMORY[0x277D755B8];
  toolbarButtonConfiguration4 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
  v35 = [v33 systemImageNamed:v28 withConfiguration:toolbarButtonConfiguration4];
  mediaBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem2 setImage:v35];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v38 = [mainBundle2 localizedStringForKey:v29 value:&stru_282757698 table:0];
  mediaBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem3 setAccessibilityLabel:v38];

  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v41 = [mainBundle3 localizedStringForKey:v30 value:&stru_282757698 table:0];
  mediaBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [mediaBarButtonItem4 setAccessibilityHint:v41];

  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditingTable])
  {
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v44 = [mainBundle4 localizedStringForKey:@"Table Actions" value:&stru_282757698 table:0];
    tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem setTitle:v44];

    v46 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration5 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v48 = [v46 systemImageNamed:@"table.badge.more" withConfiguration:toolbarButtonConfiguration5];
    tableBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem2 setImage:v48];

    tableBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem3 setImageInsets:{0.0, -5.0, 0.0, -5.0}];

    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v52 = [mainBundle5 localizedStringForKey:@"Table Actions" value:&stru_282757698 table:0];
    tableBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem4 setAccessibilityLabel:v52];

    mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
    mainBundle9 = [mainBundle6 localizedStringForKey:@"Double tap to show the table actions menu." value:&stru_282757698 table:0];
    tableBarButtonItem5 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem5 setAccessibilityHint:mainBundle9];
  }

  else
  {
    usesPillOrnament2 = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
    v59 = mainBundle7;
    if (usesPillOrnament2)
    {
      v60 = @"Add a table";
    }

    else
    {
      v60 = @"Table";
    }

    mainBundle6 = [mainBundle7 localizedStringForKey:v60 value:&stru_282757698 table:0];

    tableBarButtonItem6 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem6 setTitle:mainBundle6];

    v62 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v64 = [v62 systemImageNamed:@"table" withConfiguration:toolbarButtonConfiguration6];
    tableBarButtonItem7 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem7 setImage:v64];

    v66 = *MEMORY[0x277D768C8];
    v67 = *(MEMORY[0x277D768C8] + 8);
    v68 = *(MEMORY[0x277D768C8] + 16);
    v69 = *(MEMORY[0x277D768C8] + 24);
    tableBarButtonItem8 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem8 setImageInsets:{v66, v67, v68, v69}];

    mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
    v72 = [mainBundle8 localizedStringForKey:@"Table" value:&stru_282757698 table:0];
    tableBarButtonItem9 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem9 setAccessibilityLabel:v72];

    mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
    tableBarButtonItem5 = [mainBundle9 localizedStringForKey:@"Double tap to add a table to the current note." value:&stru_282757698 table:0];
    tableBarButtonItem10 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [tableBarButtonItem10 setAccessibilityHint:tableBarButtonItem5];
  }

  lockState = [(ICNoteEditorNavigationItemConfiguration *)self lockState];
  if (lockState <= 2)
  {
    v76 = off_2781ADB08[lockState];
    v77 = off_2781ADB20[lockState];
    v78 = off_2781ADB38[lockState];
    v79 = MEMORY[0x277D755B8];
    v80 = off_2781ADB50[lockState];
    toolbarButtonConfiguration7 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v82 = [v79 systemImageNamed:v76 withConfiguration:toolbarButtonConfiguration7];
    lockBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [lockBarButtonItem setImage:v82];

    mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
    v85 = [mainBundle10 localizedStringForKey:v77 value:&stru_282757698 table:0];
    lockBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [lockBarButtonItem2 setTitle:v85];

    mainBundle11 = [MEMORY[0x277CCA8D8] mainBundle];
    v88 = [mainBundle11 localizedStringForKey:v78 value:&stru_282757698 table:0];
    lockBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [lockBarButtonItem3 setAccessibilityLabel:v88];

    mainBundle12 = [MEMORY[0x277CCA8D8] mainBundle];
    v91 = [mainBundle12 localizedStringForKey:v80 value:&stru_282757698 table:0];
    lockBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [lockBarButtonItem4 setAccessibilityHint:v91];
  }
}

- (UIBarButtonItem)leftIndentBarButtonItem
{
  leftIndentBarButtonItem = self->_leftIndentBarButtonItem;
  if (leftIndentBarButtonItem)
  {
    v3 = leftIndentBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"decrease.indent" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_leftIndentAction_];
    v9 = self->_leftIndentBarButtonItem;
    self->_leftIndentBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Outdent" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_leftIndentBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_leftIndentBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)rightIndentBarButtonItem
{
  rightIndentBarButtonItem = self->_rightIndentBarButtonItem;
  if (rightIndentBarButtonItem)
  {
    v3 = rightIndentBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"increase.indent" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_rightIndentAction_];
    v9 = self->_rightIndentBarButtonItem;
    self->_rightIndentBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Indent" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_rightIndentBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_rightIndentBarButtonItem;
  }

  return v3;
}

- (void)updateBlockQuoteBarButtonItemImage
{
  blockQuoteBarButtonItemImage = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItemImage];
  [(UIBarButtonItem *)self->_blockQuoteBarButtonItem setImage:blockQuoteBarButtonItemImage];
}

- (UIImage)blockQuoteBarButtonItemImage
{
  v10[2] = *MEMORY[0x277D85DE8];
  blockQuoteBarButtonItem = self->_blockQuoteBarButtonItem;
  if (blockQuoteBarButtonItem && [(UIBarButtonItem *)blockQuoteBarButtonItem isSelected])
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v10[0] = systemBackgroundColor;
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    v5 = [systemBackgroundColor2 colorWithAlphaComponent:0.6];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_7];
    v9 = systemBackgroundColor;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  }

  v7 = [MEMORY[0x277D755B8] ic_hierarchicalSystemImageNamed:@"quotelevel.square.fill" colors:v6 fontTextStyle:*MEMORY[0x277D76918] scale:3 weight:5 maxContentSizeCategory:*MEMORY[0x277D76828]];

  return v7;
}

- (UIBarButtonItem)lockBarButtonItem
{
  lockBarButtonItem = self->_lockBarButtonItem;
  if (!lockBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:0 image:0 target:self action:sel_lockAction_ menu:0];
    v5 = self->_lockBarButtonItem;
    self->_lockBarButtonItem = v4;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"Locked" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_lockBarButtonItem setAccessibilityLabel:v7];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle2 localizedStringForKey:@"Double tap to open your locked notes" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_lockBarButtonItem setAccessibilityHint:v9];

    lockBarButtonItem = self->_lockBarButtonItem;
  }

  v10 = lockBarButtonItem;

  return v10;
}

- (ICNoteEditorNavigationItemConfiguration)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = ICNoteEditorNavigationItemConfiguration;
  v8 = [(ICNavigationItemConfiguration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v9->_showsDoneWhileEditing = 1;
    v9->_usesMediaMenu = 1;
    v9->_canShowContextualFormatBar = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_updateTitlesAndImages name:*MEMORY[0x277D765F0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_updateBlockQuoteBarButtonItemImage name:*MEMORY[0x277D76460] object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNoteEditorNavigationItemConfiguration;
  [(ICNoteEditorNavigationItemConfiguration *)&v4 dealloc];
}

- (UIWindowScene)presentingWindowScene
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationPresentingWindowScene:self];

  return v4;
}

- (void)setForceHideToolbar:(BOOL)toolbar
{
  forceHideToolbar = self->_forceHideToolbar;
  self->_forceHideToolbar = toolbar;
  if (forceHideToolbar != toolbar)
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateToolbarVisibilityAnimated:1];
  }
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteEditorNavigationItemConfigurationTableAttachmentViewController:self];

  return v4;
}

- (BOOL)updateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  needsUpdate = [(ICNavigationItemConfiguration *)self needsUpdate];
  if (needsUpdate)
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateToolbarVisibilityAnimated:animatedCopy];
    if ([(ICNoteEditorNavigationItemConfiguration *)self isCompact])
    {
      [(ICNoteEditorNavigationItemConfiguration *)self updateCompactAnimated:animatedCopy];
    }

    else
    {
      [(ICNoteEditorNavigationItemConfiguration *)self updateRegularAnimated:animatedCopy];
    }

    [(ICNoteEditorNavigationItemConfiguration *)self updateEnabled];
    [(ICNoteEditorNavigationItemConfiguration *)self updateMenus];
    [(ICNoteEditorNavigationItemConfiguration *)self updateTitlesAndImages];
    v7.receiver = self;
    v7.super_class = ICNoteEditorNavigationItemConfiguration;
    LOBYTE(needsUpdate) = [(ICNavigationItemConfiguration *)&v7 updateAnimated:animatedCopy];
  }

  return needsUpdate;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowContextualFormatBar])
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateFormatBarButtonsForChangeInTextView:changeCopy];
    contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
    [contextualInputAccessoryView updateFromTextViewDidChange:changeCopy];
  }
}

- (void)updateSelectionInTextView:(id)view
{
  viewCopy = view;
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowContextualFormatBar])
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateFormatBarButtonsForChangeInTextView:viewCopy];
    contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
    [contextualInputAccessoryView updateFromSelectionInTextView:viewCopy];
  }
}

- (void)updateFormatBarButtonsForChangeInTextView:(id)view
{
  viewCopy = view;
  currentBIUSForStyleSelector = [viewCopy currentBIUSForStyleSelector];
  boldBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self boldBarButtonItem];
  [boldBarButtonItem setSelected:currentBIUSForStyleSelector & 1];

  italicBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self italicBarButtonItem];
  [italicBarButtonItem setSelected:(currentBIUSForStyleSelector >> 1) & 1];

  underlineBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self underlineBarButtonItem];
  [underlineBarButtonItem setSelected:(currentBIUSForStyleSelector >> 2) & 1];

  strikethroughBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self strikethroughBarButtonItem];
  [strikethroughBarButtonItem setSelected:(currentBIUSForStyleSelector >> 3) & 1];

  emphasisMenuButton = [(ICNoteEditorNavigationItemConfiguration *)self emphasisMenuButton];
  currentEmphasisColorsForStyleSelector = [viewCopy currentEmphasisColorsForStyleSelector];
  [emphasisMenuButton setActiveContexts:currentEmphasisColorsForStyleSelector];

  currentParagraphStyleForStyleSelector = [viewCopy currentParagraphStyleForStyleSelector];
  isBlockQuote = [currentParagraphStyleForStyleSelector isBlockQuote];
  blockQuoteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItem];
  [blockQuoteBarButtonItem setSelected:isBlockQuote];

  [(ICNoteEditorNavigationItemConfiguration *)self updateBlockQuoteBarButtonItemImage];
  listSelectorMenuButton = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
  currentListStylesForStyleSelector = [viewCopy currentListStylesForStyleSelector];

  [listSelectorMenuButton setActiveContexts:currentListStylesForStyleSelector];
  LODWORD(viewCopy) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  leftIndentBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self leftIndentBarButtonItem];
  [leftIndentBarButtonItem setEnabled:viewCopy ^ 1];

  LODWORD(viewCopy) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  rightIndentBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self rightIndentBarButtonItem];
  [rightIndentBarButtonItem setEnabled:viewCopy ^ 1];

  LODWORD(viewCopy) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  moveUpBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveUpBarButtonItem];
  [moveUpBarButtonItem setEnabled:viewCopy ^ 1];

  LODWORD(viewCopy) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  moveDownBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveDownBarButtonItem];
  [moveDownBarButtonItem setEnabled:viewCopy ^ 1];

  LODWORD(viewCopy) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  blockQuoteBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItem];
  [blockQuoteBarButtonItem2 setEnabled:viewCopy ^ 1];

  listSelectorMenuButton2 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
  [listSelectorMenuButton2 setEnabled:{-[ICNoteEditorNavigationItemConfiguration isEditingTable](self, "isEditingTable") ^ 1}];
}

- (ICSelectorDelayer)inlineSketchAnimationSelectorDelayer
{
  inlineSketchAnimationSelectorDelayer = self->_inlineSketchAnimationSelectorDelayer;
  if (!inlineSketchAnimationSelectorDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_performInlineSketchAnimation_ delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:1.5];
    [(ICNoteEditorNavigationItemConfiguration *)self setInlineSketchAnimationSelectorDelayer:v4];

    inlineSketchAnimationSelectorDelayer = self->_inlineSketchAnimationSelectorDelayer;
  }

  v5 = inlineSketchAnimationSelectorDelayer;

  return v5;
}

- (void)performInlineSketchAnimation:(id)animation
{
  v4 = MEMORY[0x277D75D18];
  inlineSketchBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
  ic_view = [inlineSketchBarButtonItem ic_view];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ICNoteEditorNavigationItemConfiguration_performInlineSketchAnimation___block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [v4 transitionWithView:ic_view duration:5242880 options:v7 animations:0 completion:0.5];
}

void __72__ICNoteEditorNavigationItemConfiguration_performInlineSketchAnimation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInlineSketchEditingState:0];
  [*(a1 + 32) updateAnimated:1];
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 inlineSketchBarButtonItem];
  [v4 noteEditorNavigationItemConfiguration:v2 didCompleteAnimationFromInlineSketchBarButtonItem:v3];
}

- (void)updateCompactAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v218[1] = *MEMORY[0x277D85DE8];
  inlineSketchEditingState = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState];
  if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]== 2 && inlineSketchEditingState != 3)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"New Quick Note" value:&stru_282757698 table:0];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  navigationItem = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem setTitle:v8];

  if (v7)
  {
  }

  isDeleted = [(ICNoteEditorNavigationItemConfiguration *)self isDeleted];
  navigationItem2 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem2 setStyle:isDeleted];

  v12 = [(ICNoteEditorNavigationItemConfiguration *)self hidesBackButton]|| [(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType]!= 0;
  navigationItem3 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem3 setHidesBackButton:v12];

  navigationItem4 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem4 setLeftItemsSupplementBackButton:1];

  navigationItem5 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem5 setLeadingItemGroups:MEMORY[0x277CBEBF8]];

  array = [MEMORY[0x277CBEB18] array];
  if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]!= 2 || inlineSketchEditingState == 3)
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self isInSecureScreen])
    {
      quickNoteAllNotesBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteAllNotesBarButtonItem];
    }

    else
    {
      if ([(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType]!= 1)
      {
        goto LABEL_18;
      }

      quickNoteAllNotesBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self closeAuxiliaryWindowBarButtonItem];
    }
  }

  else
  {
    quickNoteAllNotesBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteCancelBarButtonItem];
  }

  v18 = quickNoteAllNotesBarButtonItem;
  [array addObject:quickNoteAllNotesBarButtonItem];

LABEL_18:
  navigationItem6 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  v20 = [array copy];
  [navigationItem6 setLeftBarButtonItems:v20 animated:animatedCopy];

  navigationItem7 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem7 setCenterItemGroups:MEMORY[0x277CBEBF8]];

  array2 = [MEMORY[0x277CBEB18] array];
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowUndoRedo])
  {
    usesUndoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    if (usesUndoRedoMenu)
    {
      undoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    }

    else
    {
      undoRedoMenu = 0;
    }

    undoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [undoBarButtonItem setMenu:undoRedoMenu];

    if (usesUndoRedoMenu)
    {
    }

    if ([(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu]&& ![(ICNoteEditorNavigationItemConfiguration *)self canUndo])
    {
      v26 = 0;
    }

    else
    {
      v26 = sel_undoAction_;
    }

    undoBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [undoBarButtonItem2 setAction:v26];

    LOBYTE(undoBarButtonItem2) = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    undoBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v29 = undoBarButtonItem3;
    if (undoBarButtonItem2)
    {
      v218[0] = undoBarButtonItem3;
      redoBarButtonItem = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:1];
      [array2 setArray:redoBarButtonItem];
    }

    else
    {
      v217[0] = undoBarButtonItem3;
      redoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
      v217[1] = redoBarButtonItem;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
      [array2 setArray:v31];
    }

    fixedSpaceItem = [MEMORY[0x277D751E0] fixedSpaceItem];
    [array2 addObject:fixedSpaceItem];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]== 2 && inlineSketchEditingState != 3)
  {
    quickNoteSaveBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteSaveBarButtonItem];
LABEL_45:
    v39 = quickNoteSaveBarButtonItem;
    [array2 addObject:quickNoteSaveBarButtonItem];

    goto LABEL_46;
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self lockState]&& inlineSketchEditingState != 3)
  {
    lockBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [array2 addObject:lockBarButtonItem];
  }

  if (![(ICNoteEditorNavigationItemConfiguration *)self isDeleted]&& inlineSketchEditingState != 3)
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self showsCalculatorModeButton])
    {
      calculatorModeItem = [(ICNoteEditorNavigationItemConfiguration *)self calculatorModeItem];
      [array2 addObject:calculatorModeItem];

      fixedSpaceItem2 = [MEMORY[0x277D751E0] fixedSpaceItem];
      [array2 addObject:fixedSpaceItem2];
    }

    collaborationBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];

    if (collaborationBarButtonItem)
    {
      collaborationBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];
      [array2 addObject:collaborationBarButtonItem2];
    }

    quickNoteSaveBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self shareBarButtonItem];
    goto LABEL_45;
  }

LABEL_46:
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array2, "count")}];
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  reverseObjectEnumerator = [array2 reverseObjectEnumerator];
  v42 = [reverseObjectEnumerator countByEnumeratingWithState:&v205 objects:v216 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v206;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v206 != v44)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [v40 addObject:*(*(&v205 + 1) + 8 * i)];
      }

      v43 = [reverseObjectEnumerator countByEnumeratingWithState:&v205 objects:v216 count:16];
    }

    while (v43);
  }

  navigationItem8 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem8 setRightBarButtonItems:v40 animated:animatedCopy];

  array3 = [MEMORY[0x277CBEB18] array];
  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& [(ICNoteEditorNavigationItemConfiguration *)self showsDoneWhileEditing]|| inlineSketchEditingState == 3)
  {
    doneBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self doneBarButtonItem];
    [array3 addObject:doneBarButtonItem];
  }

  v49 = [array3 copy];
  pinnedTrailingBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  [pinnedTrailingBarButtonItemGroup setBarButtonItems:v49];

  pinnedTrailingBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  navigationItem9 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem9 setPinnedTrailingGroup:pinnedTrailingBarButtonItemGroup2];

  inputAssistantItem = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
  v200 = animatedCopy;
  if (inputAssistantItem)
  {
    v54 = inputAssistantItem;
    if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing])
    {
    }

    else
    {
      quickNoteType = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteType];

      if (quickNoteType != 1)
      {
        goto LABEL_73;
      }
    }

    v197 = array3;
    array4 = [MEMORY[0x277CBEB18] array];
    if (![(ICNoteEditorNavigationItemConfiguration *)self usesOnlyTrailingInputAssistantItems])
    {
      tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
      [array4 addObject:tableBarButtonItem];

      styleBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
      [array4 addObject:styleBarButtonItem];
    }

    v59 = [array4 copy];
    inputAssistantLeadingBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    [inputAssistantLeadingBarButtonItemGroup setBarButtonItems:v59];

    inputAssistantItem2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
    leadingBarButtonGroups = [inputAssistantItem2 leadingBarButtonGroups];
    inputAssistantLeadingBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    v64 = [leadingBarButtonGroups containsObject:inputAssistantLeadingBarButtonItemGroup2];

    if ((v64 & 1) == 0)
    {
      inputAssistantItem3 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem3 _setMarginOverride:11.0];

      v195 = NSStringFromSelector(sel_leadingBarButtonGroups);
      inputAssistantItem4 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem4 willChangeValueForKey:v195];

      inputAssistantItem5 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      leadingBarButtonGroups2 = [inputAssistantItem5 leadingBarButtonGroups];
      inputAssistantLeadingBarButtonItemGroup3 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
      v70 = [leadingBarButtonGroups2 arrayByAddingObject:inputAssistantLeadingBarButtonItemGroup3];
      [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      v71 = array4;
      v72 = array2;
      v74 = v73 = array;
      [v74 setLeadingBarButtonGroups:v70];

      array = v73;
      array2 = v72;
      array4 = v71;

      inputAssistantItem6 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem6 didChangeValueForKey:v195];
    }

    array5 = [MEMORY[0x277CBEB18] array];
    if ([(ICNoteEditorNavigationItemConfiguration *)self usesOnlyTrailingInputAssistantItems])
    {
      styleBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
      [array5 addObject:styleBarButtonItem2];

      checklistBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
      [array5 addObject:checklistBarButtonItem];

      tableBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
      [array5 addObject:tableBarButtonItem2];

      mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
      [array5 addObject:mediaBarButtonItem];

      inlineSketchBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [array5 addObject:inlineSketchBarButtonItem];

      if (![(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
      {
        goto LABEL_70;
      }
    }

    else
    {
      checklistBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
      [array5 addObject:checklistBarButtonItem2];

      mediaBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
      [array5 addObject:mediaBarButtonItem2];

      inlineSketchBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [array5 addObject:inlineSketchBarButtonItem2];

      if (![(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
      {
LABEL_70:
        v86 = [array5 copy];
        inputAssistantTrailingBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
        [inputAssistantTrailingBarButtonItemGroup setBarButtonItems:v86];

        inputAssistantItem7 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
        trailingBarButtonGroups = [inputAssistantItem7 trailingBarButtonGroups];
        inputAssistantTrailingBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
        v91 = [trailingBarButtonGroups containsObject:inputAssistantTrailingBarButtonItemGroup2];

        if ((v91 & 1) == 0)
        {
          v92 = NSStringFromSelector(sel_trailingBarButtonGroups);
          inputAssistantItem8 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
          [inputAssistantItem8 willChangeValueForKey:v92];

          inputAssistantTrailingBarButtonItemGroup3 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
          v215 = inputAssistantTrailingBarButtonItemGroup3;
          v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
          inputAssistantItem9 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
          [inputAssistantItem9 setTrailingBarButtonGroups:v95];

          inputAssistantItem10 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
          [inputAssistantItem10 didChangeValueForKey:v92];
        }

        array3 = v197;
        goto LABEL_73;
      }
    }

    writingToolsBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
    [array5 addObject:writingToolsBarButtonItem];

    goto LABEL_70;
  }

LABEL_73:
  toolbarItemSource = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];

  if (toolbarItemSource)
  {
    array6 = [MEMORY[0x277CBEB18] array];
    if ([(ICNoteEditorNavigationItemConfiguration *)self isDeleted])
    {
      deleteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self deleteBarButtonItem];
      [array6 addObject:deleteBarButtonItem];

      moveBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
      [array6 addObject:moveBarButtonItem];

      flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
      v214 = flexibleSpaceItem;
      v103 = &v214;
    }

    else
    {
      if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& ![(ICNoteEditorNavigationItemConfiguration *)self isTableSelected])
      {
        v109 = MEMORY[0x277CBEBF8];
LABEL_82:
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v110 = array6;
        v111 = [v110 countByEnumeratingWithState:&v201 objects:v212 count:16];
        if (v111)
        {
          v112 = v111;
          v113 = *v202;
          do
          {
            for (j = 0; j != v112; ++j)
            {
              if (*v202 != v113)
              {
                objc_enumerationMutation(v110);
              }

              [*(*(&v201 + 1) + 8 * j) setTintColor:0];
            }

            v112 = [v110 countByEnumeratingWithState:&v201 objects:v212 count:16];
          }

          while (v112);
        }

        if ([(ICNoteEditorNavigationItemConfiguration *)self canShowContextualFormatBar])
        {
          isEditing = [(ICNoteEditorNavigationItemConfiguration *)self isEditing];
          v116 = MEMORY[0x277CBEB18];
          if (isEditing)
          {
            v192 = array;
            v193 = v109;
            v198 = array3;
            v191 = array2;
            styleBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
            checklistBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
            tableBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
            mediaBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
            inlineSketchBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
            v122 = [v116 arrayWithObjects:{styleBarButtonItem3, checklistBarButtonItem3, tableBarButtonItem3, mediaBarButtonItem3, inlineSketchBarButtonItem3, 0}];

            if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
            {
              writingToolsBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
              [v122 addObject:writingToolsBarButtonItem2];
            }

            contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
            v183 = [v122 copy];
            boldBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self boldBarButtonItem];
            v211[0] = boldBarButtonItem;
            italicBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self italicBarButtonItem];
            v211[1] = italicBarButtonItem;
            underlineBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self underlineBarButtonItem];
            v211[2] = underlineBarButtonItem;
            strikethroughBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self strikethroughBarButtonItem];
            v211[3] = strikethroughBarButtonItem;
            emphasisBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self emphasisBarButtonItem];
            v211[4] = emphasisBarButtonItem;
            linkBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self linkBarButtonItem];
            v211[5] = linkBarButtonItem;
            v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:6];
            [(ICNoteEditorNavigationItemConfiguration *)self leftIndentBarButtonItem];
            v182 = v190 = v122;
            v210[0] = v182;
            rightIndentBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self rightIndentBarButtonItem];
            v210[1] = rightIndentBarButtonItem;
            moveUpBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveUpBarButtonItem];
            v210[2] = moveUpBarButtonItem;
            moveDownBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveDownBarButtonItem];
            v210[3] = moveDownBarButtonItem;
            blockQuoteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItem];
            v210[4] = blockQuoteBarButtonItem;
            listSelectorBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorBarButtonItem];
            v210[5] = listSelectorBarButtonItem;
            v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v210 count:6];
            [contextualInputAccessoryView updateItemsWithStandardScope:v183 characterScope:v124 paragraphScope:v129];

            toolbarItemSource2 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
            formatBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self formatBarButtonItem];
            v209 = formatBarButtonItem;
            v132 = [MEMORY[0x277CBEA60] arrayWithObjects:&v209 count:1];
            [toolbarItemSource2 setToolbarItems:v132 animated:v200];

            array7 = v190;
            array2 = v191;
            array = v192;
            array3 = v198;
            v109 = v193;
          }

          else
          {
            array7 = [MEMORY[0x277CBEB18] array];
            if ([(ICNoteEditorNavigationItemConfiguration *)self isDeleted])
            {
              [array7 addObjectsFromArray:v110];
            }

            else
            {
              contextualInputAccessoryView2 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
              v138 = [v110 copy];
              [contextualInputAccessoryView2 updateSingleGroupItems:v138];

              formatBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self formatBarButtonItem];
              [array7 addObject:formatBarButtonItem2];
            }

            [array7 addObjectsFromArray:v109];
            toolbarItemSource3 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
            [toolbarItemSource3 setToolbarItems:array7 animated:v200];
          }
        }

        else
        {
          toolbarItemSource4 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
          v135 = [v110 arrayByAddingObjectsFromArray:v109];
          [toolbarItemSource4 setToolbarItems:v135 animated:v200];

          inputAccessoryToolbar = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];

          if (!inputAccessoryToolbar)
          {
LABEL_117:

            goto LABEL_118;
          }

          if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& ![(ICNoteEditorNavigationItemConfiguration *)self isTableSelected])
          {
            v199 = array3;
            if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]== 2)
            {
              v194 = v109;
              writingToolsBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
              if (writingToolsBarButtonItem3)
              {
                v142 = writingToolsBarButtonItem3;
                toolbarItemSource5 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
                toolbarItems = [toolbarItemSource5 toolbarItems];
                writingToolsBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
                v146 = [toolbarItems containsObject:writingToolsBarButtonItem4];

                if (v146)
                {
                  writingToolsBarButtonItem = self->_writingToolsBarButtonItem;
                  self->_writingToolsBarButtonItem = 0;
                }
              }

              toolbarItemSource6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
              toolbarItems2 = [toolbarItemSource6 toolbarItems];
              checklistBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
              v151 = [toolbarItems2 containsObject:checklistBarButtonItem4];

              if (v151)
              {
                checklistBarButtonItem = self->_checklistBarButtonItem;
                self->_checklistBarButtonItem = 0;
              }

              toolbarItemSource7 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
              toolbarItems3 = [toolbarItemSource7 toolbarItems];
              mediaBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
              v156 = [toolbarItems3 containsObject:mediaBarButtonItem4];

              v109 = v194;
              if (v156)
              {
                mediaBarButtonItem = self->_mediaBarButtonItem;
                self->_mediaBarButtonItem = 0;
              }

              toolbarItemSource8 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
              toolbarItems4 = [toolbarItemSource8 toolbarItems];
              inlineSketchBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
              v161 = [toolbarItems4 containsObject:inlineSketchBarButtonItem4];

              if (v161)
              {
                inlineSketchBarButtonItem = self->_inlineSketchBarButtonItem;
                self->_inlineSketchBarButtonItem = 0;
              }
            }

            array7 = [MEMORY[0x277CBEB18] array];
            flexibleSpaceItem2 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [array7 addObject:flexibleSpaceItem2];

            styleBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
            [array7 addObject:styleBarButtonItem4];

            flexibleSpaceItem3 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [array7 addObject:flexibleSpaceItem3];

            checklistBarButtonItem5 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
            [array7 addObject:checklistBarButtonItem5];

            flexibleSpaceItem4 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [array7 addObject:flexibleSpaceItem4];

            tableBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
            [array7 addObject:tableBarButtonItem4];

            flexibleSpaceItem5 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [array7 addObject:flexibleSpaceItem5];

            mediaBarButtonItem5 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
            [array7 addObject:mediaBarButtonItem5];

            flexibleSpaceItem6 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [array7 addObject:flexibleSpaceItem6];

            inlineSketchBarButtonItem5 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
            [array7 addObject:inlineSketchBarButtonItem5];

            if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
            {
              flexibleSpaceItem7 = [MEMORY[0x277D751E0] flexibleSpaceItem];
              [array7 addObject:flexibleSpaceItem7];

              writingToolsBarButtonItem5 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
              [array7 addObject:writingToolsBarButtonItem5];
            }

            v175 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:42.0];
            [array7 addObject:v175];

            flexibleSpaceItem8 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [array7 addObject:flexibleSpaceItem8];

            v177 = [MEMORY[0x277CBEA60] arrayWithArray:array7];
            inputAccessoryToolbar2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
            [inputAccessoryToolbar2 setItems:v177];

            array3 = v199;
          }

          else
          {
            array7 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
            [array7 setItems:MEMORY[0x277CBEBF8]];
          }
        }

        goto LABEL_117;
      }

      checklistBarButtonItem6 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
      [array6 addObject:checklistBarButtonItem6];

      mediaBarButtonItem6 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
      [array6 addObject:mediaBarButtonItem6];

      inlineSketchBarButtonItem6 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [array6 addObject:inlineSketchBarButtonItem6];

      if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
      {
        writingToolsBarButtonItem6 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
        [array6 addObject:writingToolsBarButtonItem6];
      }

      flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
      v213 = flexibleSpaceItem;
      v103 = &v213;
    }

    addNoteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    v103[1] = addNoteBarButtonItem;
    v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];

    goto LABEL_82;
  }

LABEL_118:
  pillOrnamentViewController = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
  [pillOrnamentViewController setToolbarItems:MEMORY[0x277CBEBF8]];

  pillOrnamentViewController2 = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
  [pillOrnamentViewController2 hide];
}

- (void)updateRegularAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v150[1] = *MEMORY[0x277D85DE8];
  navigationItem = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem setTitle:0];

  navigationItem2 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem2 setTitleView:0];

  navigationItem3 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  usesCustomBackButton = 1;
  [navigationItem3 setStyle:1];

  array = [MEMORY[0x277CBEB18] array];
  if (![(ICNoteEditorNavigationItemConfiguration *)self hidesBackButton])
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType])
    {
      usesCustomBackButton = 1;
    }

    else
    {
      usesCustomBackButton = [(ICNoteEditorNavigationItemConfiguration *)self usesCustomBackButton];
    }
  }

  navigationItem4 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem4 setHidesBackButton:usesCustomBackButton];

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesCustomBackButton]&& ![(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType])
  {
    v12 = objc_alloc(MEMORY[0x277D751F0]);
    customBackBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self customBackBarButtonItem];
    v150[0] = customBackBarButtonItem;
    addNoteBarButtonItemGroup = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:1];
    v14 = [v12 initWithBarButtonItems:addNoteBarButtonItemGroup representativeItem:0];

    [array addObject:v14];
  }

  navigationItem5 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem5 setLeftItemsSupplementBackButton:1];

  if (![(ICNoteEditorNavigationItemConfiguration *)self quickNoteType])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    if ([(ICNoteEditorNavigationItemConfiguration *)self isInSecureScreen])
    {
      quickNoteAllNotesBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteAllNotesBarButtonItem];
    }

    else
    {
      if ([(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType]!= 1)
      {
LABEL_14:
        if ([array2 count])
        {
          v19 = objc_alloc(MEMORY[0x277D751F0]);
          addNoteBarButtonItemGroup = [array2 copy];
          v20 = [v19 initWithBarButtonItems:addNoteBarButtonItemGroup representativeItem:0];

          [array addObject:v20];
        }

        goto LABEL_17;
      }

      quickNoteAllNotesBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self closeAuxiliaryWindowBarButtonItem];
    }

    v18 = quickNoteAllNotesBarButtonItem;
    [array2 addObject:quickNoteAllNotesBarButtonItem];

    goto LABEL_14;
  }

LABEL_17:
  if ([(ICNoteEditorNavigationItemConfiguration *)self showsAddNoteButtonOnLeadingEdge])
  {
    addNoteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    v149 = addNoteBarButtonItem;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
    addNoteBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItemGroup];
    [addNoteBarButtonItemGroup setBarButtonItems:v22];

    addNoteBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItemGroup];
    [array addObject:addNoteBarButtonItemGroup2];
  }

  if (![(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]&& [(ICNoteEditorNavigationItemConfiguration *)self canShowUndoRedo])
  {
    usesUndoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    undoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v26 = undoBarButtonItem;
    if (usesUndoRedoMenu)
    {
      v148 = undoBarButtonItem;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
    }

    else
    {
      v147[0] = undoBarButtonItem;
      addNoteBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
      v147[1] = addNoteBarButtonItemGroup;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
    }

    undoRedoBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoBarButtonItemGroup];
    [undoRedoBarButtonItemGroup setBarButtonItems:v27];

    if (!usesUndoRedoMenu)
    {

      v27 = addNoteBarButtonItemGroup;
    }

    usesUndoRedoMenu2 = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    if (usesUndoRedoMenu2)
    {
      undoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    }

    else
    {
      undoRedoMenu = 0;
    }

    undoBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [undoBarButtonItem2 setMenu:undoRedoMenu];

    if (usesUndoRedoMenu2)
    {
    }

    if ([(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu]&& ![(ICNoteEditorNavigationItemConfiguration *)self canUndo])
    {
      v32 = 0;
    }

    else
    {
      v32 = sel_undoAction_;
    }

    undoBarButtonItem3 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [undoBarButtonItem3 setAction:v32];

    v34 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:0.0];
    creatingFixedGroup = [v34 creatingFixedGroup];
    [array addObject:creatingFixedGroup];

    undoRedoBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoBarButtonItemGroup];
    [array addObject:undoRedoBarButtonItemGroup2];
  }

  v37 = [array copy];
  navigationItem6 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem6 setLeadingItemGroups:v37];

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament])
  {
    navigationItem7 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [navigationItem7 setCenterItemGroups:MEMORY[0x277CBEBF8]];

    navigationItem8 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [navigationItem8 setCustomizationIdentifier:0];
  }

  else
  {
    styleBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
    v146 = styleBarButtonItem;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
    styleBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItemGroup];
    [styleBarButtonItemGroup setBarButtonItems:v42];

    checklistBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
    v145 = checklistBarButtonItem;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
    checklistBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItemGroup];
    [checklistBarButtonItemGroup setBarButtonItems:v45];

    tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v144 = tableBarButtonItem;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
    tableBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItemGroup];
    [tableBarButtonItemGroup setBarButtonItems:v48];

    mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
    v143 = mediaBarButtonItem;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
    mediaBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemGroup];
    [mediaBarButtonItemGroup setBarButtonItems:v51];

    v53 = MEMORY[0x277CBEB18];
    styleBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItemGroup];
    checklistBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItemGroup];
    tableBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItemGroup];
    mediaBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemGroup];
    navigationItem8 = [v53 arrayWithObjects:{styleBarButtonItemGroup2, checklistBarButtonItemGroup2, tableBarButtonItemGroup2, mediaBarButtonItemGroup2, 0}];

    if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
    {
      writingToolsBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
      v142 = writingToolsBarButtonItem;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
      writingToolsButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsButtonItemGroup];
      [writingToolsButtonItemGroup setBarButtonItems:v59];

      writingToolsButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsButtonItemGroup];
      [navigationItem8 addObject:writingToolsButtonItemGroup2];
    }

    v62 = [navigationItem8 copy];
    navigationItem9 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [navigationItem9 setCenterItemGroups:v62];

    if ([(ICNoteEditorNavigationItemConfiguration *)self canCustomizeCenterItems])
    {
      v64 = @"ICNoteEditorViewControllerNavigationBarCustomizationID";
    }

    else
    {
      v64 = 0;
    }

    navigationItem10 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [navigationItem10 setCustomizationIdentifier:v64];
  }

  array3 = [MEMORY[0x277CBEB18] array];
  if (![(ICNoteEditorNavigationItemConfiguration *)self quickNoteType])
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self lockState])
    {
      lockBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
      [array3 addObject:lockBarButtonItem];
    }

    if ([(ICNoteEditorNavigationItemConfiguration *)self isDeleted])
    {
      moveBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
      [array3 addObject:moveBarButtonItem];

      deleteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self deleteBarButtonItem];
LABEL_55:
      v75 = deleteBarButtonItem;
      [array3 addObject:deleteBarButtonItem];

      goto LABEL_56;
    }

    shareBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self shareBarButtonItem];
    [array3 addObject:shareBarButtonItem];

    collaborationBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];

    if (collaborationBarButtonItem)
    {
      collaborationBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];
      [array3 addObject:collaborationBarButtonItem2];
    }

    if (![(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament])
    {
      inlineSketchBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [array3 addObject:inlineSketchBarButtonItem];
    }

    if ([(ICNoteEditorNavigationItemConfiguration *)self showsCalculatorModeButton])
    {
      v74 = [MEMORY[0x277D751E0] ic_itemWithFixedWidth:10.0];
      [array3 addObject:v74];

      deleteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self calculatorModeItem];
      goto LABEL_55;
    }
  }

LABEL_56:
  navigationItem11 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  v77 = [array3 copy];
  [navigationItem11 setRightBarButtonItems:v77 animated:animatedCopy];

  array4 = [MEMORY[0x277CBEB18] array];
  if (![(ICNoteEditorNavigationItemConfiguration *)self showsAddNoteButtonOnLeadingEdge])
  {
    addNoteBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    [array4 addObject:addNoteBarButtonItem2];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& [(ICNoteEditorNavigationItemConfiguration *)self showsDoneWhileEditing])
  {
    doneBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self doneBarButtonItem];
    [array4 addObject:doneBarButtonItem];
  }

  v81 = [array4 copy];
  pinnedTrailingBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  [pinnedTrailingBarButtonItemGroup setBarButtonItems:v81];

  pinnedTrailingBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  navigationItem12 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [navigationItem12 setPinnedTrailingGroup:pinnedTrailingBarButtonItemGroup2];

  inputAssistantItem = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];

  if (inputAssistantItem)
  {
    v138 = array3;
    v86 = animatedCopy;
    inputAssistantLeadingBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    [inputAssistantLeadingBarButtonItemGroup setBarButtonItems:MEMORY[0x277CBEBF8]];

    inputAssistantItem2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
    leadingBarButtonGroups = [inputAssistantItem2 leadingBarButtonGroups];
    inputAssistantLeadingBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    v91 = [leadingBarButtonGroups containsObject:inputAssistantLeadingBarButtonItemGroup2];

    if ((v91 & 1) == 0)
    {
      v92 = NSStringFromSelector(sel_leadingBarButtonGroups);
      inputAssistantItem3 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem3 willChangeValueForKey:v92];

      inputAssistantItem4 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      leadingBarButtonGroups2 = [inputAssistantItem4 leadingBarButtonGroups];
      inputAssistantLeadingBarButtonItemGroup3 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
      [leadingBarButtonGroups2 arrayByAddingObject:inputAssistantLeadingBarButtonItemGroup3];
      v97 = array4;
      v99 = v98 = array;
      inputAssistantItem5 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem5 setLeadingBarButtonGroups:v99];

      array = v98;
      array4 = v97;

      inputAssistantItem6 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem6 didChangeValueForKey:v92];
    }

    inputAssistantTrailingBarButtonItemGroup = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
    [inputAssistantTrailingBarButtonItemGroup setBarButtonItems:MEMORY[0x277CBEBF8]];

    inputAssistantItem7 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
    trailingBarButtonGroups = [inputAssistantItem7 trailingBarButtonGroups];
    inputAssistantTrailingBarButtonItemGroup2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
    v106 = [trailingBarButtonGroups containsObject:inputAssistantTrailingBarButtonItemGroup2];

    animatedCopy = v86;
    array3 = v138;
    if ((v106 & 1) == 0)
    {
      v107 = NSStringFromSelector(sel_trailingBarButtonGroups);
      inputAssistantItem8 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem8 willChangeValueForKey:v107];

      inputAssistantTrailingBarButtonItemGroup3 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
      v141 = inputAssistantTrailingBarButtonItemGroup3;
      v110 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
      inputAssistantItem9 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem9 setTrailingBarButtonGroups:v110];

      inputAssistantItem10 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [inputAssistantItem10 didChangeValueForKey:v107];
    }
  }

  inputAccessoryToolbar = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];

  if (inputAccessoryToolbar)
  {
    inputAccessoryToolbar2 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
    [inputAccessoryToolbar2 setItems:MEMORY[0x277CBEBF8]];
  }

  toolbarItemSource = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];

  if (toolbarItemSource)
  {
    toolbarItemSource2 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
    [toolbarItemSource2 setToolbarItems:MEMORY[0x277CBEBF8] animated:animatedCopy];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]&& [(ICNoteEditorNavigationItemConfiguration *)self canShowPillOrnament]&& ![(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState])
  {
    v132 = array4;
    flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v140[0] = flexibleSpaceItem;
    undoBarButtonItem4 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v140[1] = undoBarButtonItem4;
    v136 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[2] = v136;
    redoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
    v140[3] = redoBarButtonItem;
    v134 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[4] = v134;
    verticalSeparatorBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self verticalSeparatorBarButtonItem];
    v140[5] = verticalSeparatorBarButtonItem;
    v131 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[6] = v131;
    styleBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
    v140[7] = styleBarButtonItem2;
    v129 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[8] = v129;
    checklistBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
    v140[9] = checklistBarButtonItem2;
    v127 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[10] = v127;
    tableBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v140[11] = tableBarButtonItem2;
    v118 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[12] = v118;
    mediaBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
    v140[13] = mediaBarButtonItem2;
    v120 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[14] = v120;
    inlineSketchBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
    v140[15] = inlineSketchBarButtonItem2;
    flexibleSpaceItem2 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v140[16] = flexibleSpaceItem2;
    v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:17];
    [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
    v125 = v124 = array;
    [v125 setToolbarItems:v123];

    array = v124;
    array4 = v132;

    pillOrnamentViewController = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
    [pillOrnamentViewController show];
  }

  else
  {
    pillOrnamentViewController = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
    [pillOrnamentViewController hide];
  }
}

- (void)updateToolbarVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dataSource = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  noteEditorNavigationItemConfigurationIsToolbarHidden = [dataSource noteEditorNavigationItemConfigurationIsToolbarHidden];

  canShowToolbar = [(ICNoteEditorNavigationItemConfiguration *)self canShowToolbar];
  if (noteEditorNavigationItemConfigurationIsToolbarHidden == canShowToolbar)
  {
    v8 = canShowToolbar;
    delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
    [delegate noteEditorNavigationItemConfiguration:self setToolbarHidden:v8 ^ 1u animated:animatedCopy];
  }
}

- (UIBarButtonItemGroup)addNoteBarButtonItemGroup
{
  v11[1] = *MEMORY[0x277D85DE8];
  addNoteBarButtonItemGroup = self->_addNoteBarButtonItemGroup;
  if (!addNoteBarButtonItemGroup)
  {
    v4 = objc_alloc(MEMORY[0x277D751F0]);
    addNoteBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    v11[0] = addNoteBarButtonItem;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 initWithBarButtonItems:v6 representativeItem:0];
    v8 = self->_addNoteBarButtonItemGroup;
    self->_addNoteBarButtonItemGroup = v7;

    addNoteBarButtonItemGroup = self->_addNoteBarButtonItemGroup;
  }

  v9 = addNoteBarButtonItemGroup;

  return v9;
}

- (id)toolbarButtonConfiguration
{
  v2 = [MEMORY[0x277D755D0] configurationWithWeight:5];
  v3 = [MEMORY[0x277D755D0] configurationWithScale:3];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  return v4;
}

- (UIBarButtonItem)formatBarButtonItem
{
  formatBarButtonItem = self->_formatBarButtonItem;
  if (!formatBarButtonItem || ([(UIBarButtonItem *)formatBarButtonItem customView], v4 = objc_claimAutoreleasedReturnValue(), [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v4 != v5))
  {
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
    v8 = [v6 initWithCustomView:contextualInputAccessoryView];
    v9 = self->_formatBarButtonItem;
    self->_formatBarButtonItem = v8;
  }

  v10 = self->_formatBarButtonItem;

  return v10;
}

- (UIBarButtonItem)boldBarButtonItem
{
  boldBarButtonItem = self->_boldBarButtonItem;
  if (boldBarButtonItem)
  {
    v3 = boldBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"bold" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_boldAction_];
    v9 = self->_boldBarButtonItem;
    self->_boldBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Bold" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_boldBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_boldBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)italicBarButtonItem
{
  italicBarButtonItem = self->_italicBarButtonItem;
  if (italicBarButtonItem)
  {
    v3 = italicBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"italic" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_italicAction_];
    v9 = self->_italicBarButtonItem;
    self->_italicBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Italic" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_italicBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_italicBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)underlineBarButtonItem
{
  underlineBarButtonItem = self->_underlineBarButtonItem;
  if (underlineBarButtonItem)
  {
    v3 = underlineBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"underline" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_underlineAction_];
    v9 = self->_underlineBarButtonItem;
    self->_underlineBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Underline" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_underlineBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_underlineBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)strikethroughBarButtonItem
{
  strikethroughBarButtonItem = self->_strikethroughBarButtonItem;
  if (strikethroughBarButtonItem)
  {
    v3 = strikethroughBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"strikethrough" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_strikethroughAction_];
    v9 = self->_strikethroughBarButtonItem;
    self->_strikethroughBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Strikethrough" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_strikethroughBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_strikethroughBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)emphasisBarButtonItem
{
  emphasisBarButtonItem = self->_emphasisBarButtonItem;
  if (emphasisBarButtonItem)
  {
    v3 = emphasisBarButtonItem;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = 0x277D75000uLL;
    v7 = MEMORY[0x277D755B8];
    val = self;
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v9 = [v7 ic_systemImageNamed:@"highlighter.badge.ellipsis" withConfiguration:toolbarButtonConfiguration];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = *MEMORY[0x277D35D80];
    if (*MEMORY[0x277D35D80])
    {
      v12 = 1;
      do
      {
        v13 = ICColorForEmphasisColorType();
        [*(v6 + 1464) ic_makeCircularImageWithColor:v13 diameter:8.0];
        v15 = v14 = v6;
        v16 = [ICNoteEditorContextualMenuButtonConfigurationMenuState alloc];
        v17 = NSStringForEmphasisColorType();
        v18 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v16 initWithImage:v15 title:v17 context:v12];

        [array addObject:v18];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        [dictionary setObject:v9 forKeyedSubscript:v19];

        v6 = v14;
        ++v12;
        --v11;
      }

      while (v11);
    }

    objc_initWeak(&location, val);
    v20 = [ICNoteEditorContextualMenuButtonConfiguration alloc];
    v21 = *(v6 + 1464);
    toolbarButtonConfiguration2 = [(ICNoteEditorNavigationItemConfiguration *)val toolbarButtonConfiguration];
    v23 = [v21 ic_systemImageNamed:@"highlighter" withConfiguration:toolbarButtonConfiguration2];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__ICNoteEditorNavigationItemConfiguration_emphasisBarButtonItem__block_invoke;
    v39[3] = &unk_2781AD9D8;
    v24 = array;
    v40 = v24;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __64__ICNoteEditorNavigationItemConfiguration_emphasisBarButtonItem__block_invoke_2;
    v37[3] = &unk_2781ADA00;
    objc_copyWeak(&v38, &location);
    v25 = [(ICNoteEditorContextualMenuButtonConfiguration *)v20 initWithImage:v23 activeImageForContext:dictionary menuOptions:v24 defaultMenuOption:v39 stateChangedHandler:v37];

    v26 = [[ICNoteEditorContextualMenuButton alloc] initWithConfiguration:v25];
    [(ICNoteEditorNavigationItemConfiguration *)val setEmphasisMenuButton:v26];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [mainBundle localizedStringForKey:@"Highlight" value:&stru_282757698 table:0];
    emphasisMenuButton = [(ICNoteEditorNavigationItemConfiguration *)val emphasisMenuButton];
    [emphasisMenuButton setAccessibilityLabel:v28];

    emphasisMenuButton2 = [(ICNoteEditorNavigationItemConfiguration *)val emphasisMenuButton];
    [emphasisMenuButton2 setAccessibilityDelegate:val];

    v31 = objc_alloc(MEMORY[0x277D751E0]);
    emphasisMenuButton3 = [(ICNoteEditorNavigationItemConfiguration *)val emphasisMenuButton];
    v33 = [v31 initWithCustomView:emphasisMenuButton3];
    v34 = val->_emphasisBarButtonItem;
    val->_emphasisBarButtonItem = v33;

    v3 = val->_emphasisBarButtonItem;
    objc_destroyWeak(&v38);

    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __64__ICNoteEditorNavigationItemConfiguration_emphasisBarButtonItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ic_currentEmphasisColorTypeDefault() - 1;

  return [v1 objectAtIndexedSubscript:v2];
}

void __64__ICNoteEditorNavigationItemConfiguration_emphasisBarButtonItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 context];
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 emphasisBarButtonItem];
  [v5 emphasisAction:v4 colorType:v3];
}

- (UIBarButtonItem)linkBarButtonItem
{
  linkBarButtonItem = self->_linkBarButtonItem;
  if (linkBarButtonItem)
  {
    v3 = linkBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 ic_systemImageNamed:@"link" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_linkAction_];
    v9 = self->_linkBarButtonItem;
    self->_linkBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Link" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_linkBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_linkBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)moveUpBarButtonItem
{
  moveUpBarButtonItem = self->_moveUpBarButtonItem;
  if (moveUpBarButtonItem)
  {
    v3 = moveUpBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"arrow.up.to.line" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_moveUpAction_];
    v9 = self->_moveUpBarButtonItem;
    self->_moveUpBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Move Up" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_moveUpBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_moveUpBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)moveDownBarButtonItem
{
  moveDownBarButtonItem = self->_moveDownBarButtonItem;
  if (moveDownBarButtonItem)
  {
    v3 = moveDownBarButtonItem;
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"arrow.down.to.line" withConfiguration:toolbarButtonConfiguration];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_moveDownAction_];
    v9 = self->_moveDownBarButtonItem;
    self->_moveDownBarButtonItem = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Move Down" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_moveDownBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_moveDownBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)blockQuoteBarButtonItem
{
  blockQuoteBarButtonItem = self->_blockQuoteBarButtonItem;
  if (!blockQuoteBarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    blockQuoteBarButtonItemImage = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItemImage];
    v6 = [v4 initWithImage:blockQuoteBarButtonItemImage style:0 target:self action:sel_blockQuoteAction_];
    v7 = self->_blockQuoteBarButtonItem;
    self->_blockQuoteBarButtonItem = v6;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"Block Quote" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_blockQuoteBarButtonItem setAccessibilityLabel:v9];

    blockQuoteBarButtonItem = self->_blockQuoteBarButtonItem;
  }

  v10 = blockQuoteBarButtonItem;

  return v10;
}

id __71__ICNoteEditorNavigationItemConfiguration_blockQuoteBarButtonItemImage__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] colorWithWhite:1.05263158 alpha:0.95];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v2 = ;

  return v2;
}

- (UIBarButtonItem)listSelectorBarButtonItem
{
  v65[3] = *MEMORY[0x277D85DE8];
  listSelectorBarButtonItem = self->_listSelectorBarButtonItem;
  if (listSelectorBarButtonItem)
  {
    v3 = listSelectorBarButtonItem;
  }

  else
  {
    v5 = [ICNoteEditorContextualMenuButtonConfigurationMenuState alloc];
    v6 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v57 = [v6 ic_systemImageNamed:@"list.bullet" withConfiguration:toolbarButtonConfiguration];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v56 = [mainBundle localizedStringForKey:@"Bulleted" value:&stru_282757698 table:0];
    v50 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v5 initWithImage:v57 title:v56 context:100];
    v65[0] = v50;
    v7 = [ICNoteEditorContextualMenuButtonConfigurationMenuState alloc];
    v8 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration2 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v9 = [v8 ic_systemImageNamed:@"list.dash" withConfiguration:toolbarButtonConfiguration2];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v53 = [mainBundle2 localizedStringForKey:@"Dashed" value:&stru_282757698 table:0];
    v51 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v7 initWithImage:v9 title:v53 context:101];
    v65[1] = v51;
    v10 = [ICNoteEditorContextualMenuButtonConfigurationMenuState alloc];
    v11 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration3 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v13 = [v11 ic_systemImageNamed:@"list.number" withConfiguration:toolbarButtonConfiguration3];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle3 localizedStringForKey:@"Numbered" value:&stru_282757698 table:0];
    v16 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v10 initWithImage:v13 title:v15 context:102];
    v65[2] = v16;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];

    v63[0] = &unk_28277E550;
    v17 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration4 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v19 = [v17 ic_systemImageNamed:@"list.bullet.badge.ellipsis" withConfiguration:toolbarButtonConfiguration4];
    v64[0] = v19;
    v63[1] = &unk_28277E568;
    v20 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration5 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v22 = [v20 ic_systemImageNamed:@"list.dash.badge.ellipsis" withConfiguration:toolbarButtonConfiguration5];
    v64[1] = v22;
    v63[2] = &unk_28277E580;
    v23 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v25 = [v23 ic_systemImageNamed:@"list.number.badge.ellipsis" withConfiguration:toolbarButtonConfiguration6];
    v64[2] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];

    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [mainBundle4 localizedStringForKey:@"Bulleted" value:&stru_282757698 table:0];
    v29 = [v26 objectForKeyedSubscript:&unk_28277E550];
    [v29 setAccessibilityLabel:v28];

    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [mainBundle5 localizedStringForKey:@"Dashed" value:&stru_282757698 table:0];
    v32 = [v26 objectForKeyedSubscript:&unk_28277E568];
    [v32 setAccessibilityLabel:v31];

    mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [mainBundle6 localizedStringForKey:@"Numbered" value:&stru_282757698 table:0];
    v35 = [v26 objectForKeyedSubscript:&unk_28277E580];
    [v35 setAccessibilityLabel:v34];

    objc_initWeak(&location, self);
    v36 = [ICNoteEditorContextualMenuButtonConfiguration alloc];
    v37 = MEMORY[0x277D755B8];
    toolbarButtonConfiguration7 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v39 = [v37 ic_systemImageNamed:@"list.bullet" withConfiguration:toolbarButtonConfiguration7];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __68__ICNoteEditorNavigationItemConfiguration_listSelectorBarButtonItem__block_invoke;
    v60[3] = &unk_2781ADA00;
    objc_copyWeak(&v61, &location);
    v40 = [(ICNoteEditorContextualMenuButtonConfiguration *)v36 initWithImage:v39 activeImageForContext:v26 menuOptions:v52 defaultMenuOption:0 stateChangedHandler:v60];

    v41 = [[ICNoteEditorContextualMenuButton alloc] initWithConfiguration:v40];
    [(ICNoteEditorNavigationItemConfiguration *)self setListSelectorMenuButton:v41];

    mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
    v43 = [mainBundle7 localizedStringForKey:@"List Style" value:&stru_282757698 table:0];
    listSelectorMenuButton = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
    [listSelectorMenuButton setAccessibilityLabel:v43];

    v45 = objc_alloc(MEMORY[0x277D751E0]);
    listSelectorMenuButton2 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
    v47 = [v45 initWithCustomView:listSelectorMenuButton2];
    v48 = self->_listSelectorBarButtonItem;
    self->_listSelectorBarButtonItem = v47;

    v3 = self->_listSelectorBarButtonItem;
    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __68__ICNoteEditorNavigationItemConfiguration_listSelectorBarButtonItem__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained contextualInputAccessoryView];
  [v4 skipNextUpdate];

  if (v10)
  {
    v5 = [v10 context];
  }

  else
  {
    v5 = 3;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 delegate];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 listSelectorBarButtonItem];
  [v7 noteEditorNavigationItemConfiguration:v8 toggleListStyle:v5 withSender:v9];
}

- (UIBarButtonItem)closeAuxiliaryWindowBarButtonItem
{
  closeAuxiliaryWindowBarButtonItem = self->_closeAuxiliaryWindowBarButtonItem;
  if (!closeAuxiliaryWindowBarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Close" value:&stru_282757698 table:0];
    v7 = [v4 initWithTitle:v6 image:0 target:self action:sel_closeAuxiliaryWindowAction_ menu:0];
    v8 = self->_closeAuxiliaryWindowBarButtonItem;
    self->_closeAuxiliaryWindowBarButtonItem = v7;

    closeAuxiliaryWindowBarButtonItem = self->_closeAuxiliaryWindowBarButtonItem;
  }

  v9 = closeAuxiliaryWindowBarButtonItem;

  return v9;
}

- (UIBarButtonItem)customBackBarButtonItem
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self usesCustomBackButton])
  {
    customBackBarButtonItem = self->_customBackBarButtonItem;
    if (!customBackBarButtonItem)
    {
      v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:101 target:self action:sel_backAction_];
      v5 = self->_customBackBarButtonItem;
      self->_customBackBarButtonItem = v4;

      customBackBarButtonItem = self->_customBackBarButtonItem;
    }

    v6 = customBackBarButtonItem;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIBarButtonItem)deleteBarButtonItem
{
  deleteBarButtonItem = self->_deleteBarButtonItem;
  if (!deleteBarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Delete Note" value:&stru_282757698 table:0];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v8 = [v4 initWithTitle:v6 image:v7 target:self action:sel_deleteAction_ menu:0];
    v9 = self->_deleteBarButtonItem;
    self->_deleteBarButtonItem = v8;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle2 localizedStringForKey:@"Delete Note" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_deleteBarButtonItem setAccessibilityLabel:v11];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle3 localizedStringForKey:@"Double tap to delete the current note." value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_deleteBarButtonItem setAccessibilityHint:v13];

    deleteBarButtonItem = self->_deleteBarButtonItem;
  }

  v14 = deleteBarButtonItem;

  return v14;
}

- (UIBarButtonItem)doneBarButtonItem
{
  doneBarButtonItem = self->_doneBarButtonItem;
  if (!doneBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneAction_];
    v5 = self->_doneBarButtonItem;
    self->_doneBarButtonItem = v4;

    doneBarButtonItem = self->_doneBarButtonItem;
  }

  v6 = doneBarButtonItem;

  return v6;
}

- (UIBarButtonItem)moveBarButtonItem
{
  moveBarButtonItem = self->_moveBarButtonItem;
  if (!moveBarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Move Note" value:&stru_282757698 table:0];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
    v8 = [v4 initWithTitle:v6 image:v7 target:self action:sel_moveAction_ menu:0];
    v9 = self->_moveBarButtonItem;
    self->_moveBarButtonItem = v8;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle2 localizedStringForKey:@"Move Note" value:&stru_282757698 table:0];
    moveBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
    [moveBarButtonItem setAccessibilityLabel:v11];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [mainBundle3 localizedStringForKey:@"Double tap to move the current note." value:&stru_282757698 table:0];
    moveBarButtonItem2 = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
    [moveBarButtonItem2 setAccessibilityHint:v14];

    moveBarButtonItem = self->_moveBarButtonItem;
  }

  v16 = moveBarButtonItem;

  return v16;
}

- (UIBarButtonItem)quickNoteAllNotesBarButtonItem
{
  quickNoteAllNotesBarButtonItem = self->_quickNoteAllNotesBarButtonItem;
  if (!quickNoteAllNotesBarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"All Notes" value:&stru_282757698 table:0];
    v7 = [v4 initWithTitle:v6 image:0 target:self action:sel_quickNoteAllNotesAction_ menu:0];
    v8 = self->_quickNoteAllNotesBarButtonItem;
    self->_quickNoteAllNotesBarButtonItem = v7;

    quickNoteAllNotesBarButtonItem = self->_quickNoteAllNotesBarButtonItem;
  }

  v9 = quickNoteAllNotesBarButtonItem;

  return v9;
}

- (UIBarButtonItem)quickNoteCancelBarButtonItem
{
  quickNoteCancelBarButtonItem = self->_quickNoteCancelBarButtonItem;
  if (!quickNoteCancelBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_quickNoteCancelAction_];
    v5 = self->_quickNoteCancelBarButtonItem;
    self->_quickNoteCancelBarButtonItem = v4;

    quickNoteCancelBarButtonItem = self->_quickNoteCancelBarButtonItem;
  }

  v6 = quickNoteCancelBarButtonItem;

  return v6;
}

- (UIBarButtonItemGroup)undoRedoBarButtonItemGroup
{
  v14[2] = *MEMORY[0x277D85DE8];
  undoRedoBarButtonItemGroup = self->_undoRedoBarButtonItemGroup;
  if (undoRedoBarButtonItemGroup)
  {
    v3 = undoRedoBarButtonItemGroup;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:21 target:0 action:0];
    v6 = objc_alloc(MEMORY[0x277D751F0]);
    undoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v14[0] = undoBarButtonItem;
    redoBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
    v14[1] = redoBarButtonItem;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v10 = [v6 initWithBarButtonItems:v9 representativeItem:v5];
    v11 = self->_undoRedoBarButtonItemGroup;
    self->_undoRedoBarButtonItemGroup = v10;

    undoRedoMenu = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    [(UIBarButtonItemGroup *)self->_undoRedoBarButtonItemGroup setMenuRepresentation:undoRedoMenu];

    v3 = self->_undoRedoBarButtonItemGroup;
  }

  return v3;
}

- (UIBarButtonItem)sidebarButtonItem
{
  sidebarButtonItem = self->_sidebarButtonItem;
  if (!sidebarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Sidebar" value:&stru_282757698 table:0];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"sidebar.leading"];
    v8 = [v4 initWithTitle:v6 image:v7 target:self action:sel_sidebarAction_ menu:0];
    v9 = self->_sidebarButtonItem;
    self->_sidebarButtonItem = v8;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle2 localizedStringForKey:@"Sidebar" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_sidebarButtonItem setAccessibilityLabel:v11];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle3 localizedStringForKey:@"Double tap to toggle the sidebar" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_sidebarButtonItem setAccessibilityHint:v13];

    sidebarButtonItem = self->_sidebarButtonItem;
  }

  v14 = sidebarButtonItem;

  return v14;
}

- (UIBarButtonItem)calculatorModeItem
{
  v21[1] = *MEMORY[0x277D85DE8];
  calculatorModeItem = self->_calculatorModeItem;
  if (calculatorModeItem)
  {
    v3 = calculatorModeItem;
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__ICNoteEditorNavigationItemConfiguration_calculatorModeItem__block_invoke;
    v20[3] = &unk_2781ADA98;
    v20[4] = self;
    v19 = [MEMORY[0x277D753F0] elementWithUncachedProvider:v20];
    v5 = MEMORY[0x277D75710];
    v21[0] = v19;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v7 = [v5 menuWithChildren:v6];

    v8 = objc_alloc(MEMORY[0x277D751E0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle localizedStringForKey:@"Calculator Mode" value:&stru_282757698 table:0];
    v11 = [MEMORY[0x277D755B8] ic_systemImageNamed:@"calculator.fill"];
    v12 = [v8 initWithTitle:v10 image:v11 target:0 action:0 menu:v7];
    v13 = self->_calculatorModeItem;
    self->_calculatorModeItem = v12;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle2 localizedStringForKey:@"Calculator Mode" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_calculatorModeItem setAccessibilityLabel:v15];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"Double tap to pick a calculator mode" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_calculatorModeItem setAccessibilityHint:v17];

    v3 = self->_calculatorModeItem;
  }

  return v3;
}

void __61__ICNoteEditorNavigationItemConfiguration_calculatorModeItem__block_invoke(uint64_t a1, void *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ICNoteEditorNavigationItemConfiguration_calculatorModeItem__block_invoke_2;
  aBlock[3] = &unk_2781ADA70;
  aBlock[4] = *(a1 + 32);
  v2 = a2;
  v3 = _Block_copy(aBlock);
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v13 localizedStringForKey:@"Basic" value:&stru_282757698 table:0];
  v4 = v3[2](v3, v12, @"math.operators", 0);
  v15[0] = v4;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"Scientific" value:&stru_282757698 table:0];
  v7 = v3[2](v3, v6, @"function", 1);
  v15[1] = v7;
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"Math Notes" value:&stru_282757698 table:0];
  v10 = v3[2](v3, v9, @"apple.math.notes", 2);
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v2[2](v2, v11);
}

id __61__ICNoteEditorNavigationItemConfiguration_calculatorModeItem__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277D755B8] ic_systemImageNamed:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__ICNoteEditorNavigationItemConfiguration_calculatorModeItem__block_invoke_3;
  v15[3] = &unk_2781ADA48;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v11 = [v9 actionWithTitle:v7 image:v10 identifier:0 handler:v15];

  [v11 setState:a4 == 2];
  if (a4 == 1)
  {
    v12 = [MEMORY[0x277D35EA8] sharedManager];
    v13 = [v12 isCalculatorModeScientificAllowed];

    if ((v13 & 1) == 0)
    {
      [v11 setAttributes:1];
    }
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);

  return v11;
}

void __61__ICNoteEditorNavigationItemConfiguration_calculatorModeItem__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained presentingViewController];
  [v2 ic_hostedNotesUpdateCalculatorMode:*(a1 + 40)];
}

- (UIBarButtonItem)verticalSeparatorBarButtonItem
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  view = [presentingViewController view];
  [view ic_hairlineWidth];
  v7 = [v3 initWithFrame:{0.0, 0.0, v6, 12.0 * -2.0 + 44.0}];

  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [v7 setBackgroundColor:tertiaryLabelColor];

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7];
  verticalSeparatorBarButtonItem = self->_verticalSeparatorBarButtonItem;
  self->_verticalSeparatorBarButtonItem = v9;

  v11 = self->_verticalSeparatorBarButtonItem;
  v12 = v11;

  return v11;
}

void __58__ICNoteEditorNavigationItemConfiguration_mediaActionMenu__block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained delegate];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = ICMediaSourceTypeFromString(v4);

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 mediaBarButtonItem];
    [v5 noteEditorNavigationItemConfiguration:v6 insertMediaWithSourceType:v7 mediaBarButtonItem:v9];
  }
}

void __64__ICNoteEditorNavigationItemConfiguration_sidecarMenuController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMenus];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v6 = [v9 delegate];
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 mediaBarButtonItem];
    [v6 noteEditorNavigationItemConfiguration:v7 updateSidecarMenuFromMediaBarButtonItem:v8];
  }
}

void __64__ICNoteEditorNavigationItemConfiguration_sidecarMenuController__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 mediaBarButtonItem];
  [v6 noteEditorNavigationItemConfiguration:v7 insertSidecarItemWithMenuItems:v5 service:a3 mediaBarButtonItem:v8];
}

- (ICTableActionMenu)tableActionMenu
{
  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditingTable])
  {
    objc_initWeak(&location, self);
    v3 = [ICTableActionMenu alloc];
    tableAttachmentViewController = [(ICNoteEditorNavigationItemConfiguration *)self tableAttachmentViewController];
    presentingViewController = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
    tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ICNoteEditorNavigationItemConfiguration_tableActionMenu__block_invoke;
    v9[3] = &unk_2781ADAC0;
    objc_copyWeak(&v10, &location);
    v7 = [(ICTableActionMenu *)v3 initWithTableAttachmentViewController:tableAttachmentViewController presentingViewController:presentingViewController presentingBarButtonItem:tableBarButtonItem completion:v9];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__ICNoteEditorNavigationItemConfiguration_tableActionMenu__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained delegate];
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 tableBarButtonItem];
    [v3 noteEditorNavigationItemConfiguration:v4 startEditingFromBarButtonItem:v5];
  }
}

- (UIMenu)tableBarButtonItemMenu
{
  tableActionMenu = [(ICNoteEditorNavigationItemConfiguration *)self tableActionMenu];
  makeMenu = [tableActionMenu makeMenu];

  return makeMenu;
}

- (id)undoRedoButtonWithImageName:(id)name title:(id)title selector:(SEL)selector
{
  v8 = MEMORY[0x277D75230];
  titleCopy = title;
  nameCopy = name;
  plainButtonConfiguration = [v8 plainButtonConfiguration];
  [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy];

  [plainButtonConfiguration setImage:v12];
  v13 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  [v13 setShowsLargeContentViewer:1];
  [v13 setLargeContentTitle:titleCopy];

  [v13 setPointerInteractionEnabled:1];
  [v13 addTarget:self action:selector forControlEvents:0x2000];

  return v13;
}

void __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 undoBarButtonItem];
  [v1 undoAction:v2];
}

void __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 redoBarButtonItem];
  [v1 redoAction:v2];
}

void __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke_3(uint64_t a1, void (**a2)(void, void))
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 undoMenuItem];
  v8[0] = v5;
  v6 = [v3 redoMenuItem];
  v8[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  (a2)[2](v4, v7);
}

- (UIBarButtonItemGroup)inputAssistantLeadingBarButtonItemGroup
{
  inputAssistantLeadingBarButtonItemGroup = self->_inputAssistantLeadingBarButtonItemGroup;
  if (!inputAssistantLeadingBarButtonItemGroup)
  {
    v4 = objc_alloc(MEMORY[0x277D751F0]);
    v5 = [v4 initWithBarButtonItems:MEMORY[0x277CBEBF8] representativeItem:0];
    v6 = self->_inputAssistantLeadingBarButtonItemGroup;
    self->_inputAssistantLeadingBarButtonItemGroup = v5;

    inputAssistantLeadingBarButtonItemGroup = self->_inputAssistantLeadingBarButtonItemGroup;
  }

  v7 = inputAssistantLeadingBarButtonItemGroup;

  return v7;
}

- (UIBarButtonItemGroup)inputAssistantTrailingBarButtonItemGroup
{
  inputAssistantTrailingBarButtonItemGroup = self->_inputAssistantTrailingBarButtonItemGroup;
  if (!inputAssistantTrailingBarButtonItemGroup)
  {
    v4 = objc_alloc(MEMORY[0x277D751F0]);
    v5 = [v4 initWithBarButtonItems:MEMORY[0x277CBEBF8] representativeItem:0];
    v6 = self->_inputAssistantTrailingBarButtonItemGroup;
    self->_inputAssistantTrailingBarButtonItemGroup = v5;

    inputAssistantTrailingBarButtonItemGroup = self->_inputAssistantTrailingBarButtonItemGroup;
  }

  v7 = inputAssistantTrailingBarButtonItemGroup;

  return v7;
}

- (UIBarButtonItemGroup)styleBarButtonItemGroup
{
  v12[1] = *MEMORY[0x277D85DE8];
  styleBarButtonItemGroup = self->_styleBarButtonItemGroup;
  if (!styleBarButtonItemGroup)
  {
    v4 = MEMORY[0x277D751F0];
    hidesDefaultCenterItems = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    styleBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
    v12[0] = styleBarButtonItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDChangeStyle" inDefaultCustomization:!hidesDefaultCenterItems representativeItem:0 items:v7];
    v9 = self->_styleBarButtonItemGroup;
    self->_styleBarButtonItemGroup = v8;

    styleBarButtonItemGroup = self->_styleBarButtonItemGroup;
  }

  v10 = styleBarButtonItemGroup;

  return v10;
}

- (UIBarButtonItemGroup)checklistBarButtonItemGroup
{
  v12[1] = *MEMORY[0x277D85DE8];
  checklistBarButtonItemGroup = self->_checklistBarButtonItemGroup;
  if (!checklistBarButtonItemGroup)
  {
    v4 = MEMORY[0x277D751F0];
    hidesDefaultCenterItems = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    checklistBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
    v12[0] = checklistBarButtonItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDTodo" inDefaultCustomization:!hidesDefaultCenterItems representativeItem:0 items:v7];
    v9 = self->_checklistBarButtonItemGroup;
    self->_checklistBarButtonItemGroup = v8;

    checklistBarButtonItemGroup = self->_checklistBarButtonItemGroup;
  }

  v10 = checklistBarButtonItemGroup;

  return v10;
}

- (UIBarButtonItemGroup)tableBarButtonItemGroup
{
  v12[1] = *MEMORY[0x277D85DE8];
  tableBarButtonItemGroup = self->_tableBarButtonItemGroup;
  if (!tableBarButtonItemGroup)
  {
    v4 = MEMORY[0x277D751F0];
    hidesDefaultCenterItems = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    tableBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v12[0] = tableBarButtonItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDTable" inDefaultCustomization:!hidesDefaultCenterItems representativeItem:0 items:v7];
    v9 = self->_tableBarButtonItemGroup;
    self->_tableBarButtonItemGroup = v8;

    tableBarButtonItemGroup = self->_tableBarButtonItemGroup;
  }

  v10 = tableBarButtonItemGroup;

  return v10;
}

- (UIBarButtonItemGroup)mediaBarButtonItemGroup
{
  v12[1] = *MEMORY[0x277D85DE8];
  mediaBarButtonItemGroup = self->_mediaBarButtonItemGroup;
  if (!mediaBarButtonItemGroup)
  {
    v4 = MEMORY[0x277D751F0];
    hidesDefaultCenterItems = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    mediaBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
    v12[0] = mediaBarButtonItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDInsert" inDefaultCustomization:!hidesDefaultCenterItems representativeItem:0 items:v7];
    v9 = self->_mediaBarButtonItemGroup;
    self->_mediaBarButtonItemGroup = v8;

    mediaBarButtonItemGroup = self->_mediaBarButtonItemGroup;
  }

  v10 = mediaBarButtonItemGroup;

  return v10;
}

- (UIBarButtonItemGroup)writingToolsButtonItemGroup
{
  v12[1] = *MEMORY[0x277D85DE8];
  writingToolsButtonItemGroup = self->_writingToolsButtonItemGroup;
  if (!writingToolsButtonItemGroup)
  {
    v4 = MEMORY[0x277D751F0];
    hidesDefaultCenterItems = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    writingToolsBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
    v12[0] = writingToolsBarButtonItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDWritingTools" inDefaultCustomization:!hidesDefaultCenterItems representativeItem:0 items:v7];
    v9 = self->_writingToolsButtonItemGroup;
    self->_writingToolsButtonItemGroup = v8;

    writingToolsButtonItemGroup = self->_writingToolsButtonItemGroup;
  }

  v10 = writingToolsButtonItemGroup;

  return v10;
}

- (UIBarButtonItemGroup)inlineSketchButtonItemGroup
{
  v11[1] = *MEMORY[0x277D85DE8];
  inlineSketchButtonItemGroup = self->_inlineSketchButtonItemGroup;
  if (!inlineSketchButtonItemGroup)
  {
    v4 = MEMORY[0x277D751F0];
    inlineSketchBarButtonItem = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
    v11[0] = inlineSketchBarButtonItem;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 movableGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDInlineSketch" representativeItem:0 items:v6];
    v8 = self->_inlineSketchButtonItemGroup;
    self->_inlineSketchButtonItemGroup = v7;

    inlineSketchButtonItemGroup = self->_inlineSketchButtonItemGroup;
  }

  v9 = inlineSketchButtonItemGroup;

  return v9;
}

- (void)addNoteAction:(id)action event:(id)event
{
  eventCopy = event;
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self addNoteFromBarButtonItem:actionCopy event:eventCopy];
}

- (void)backAction:(id)action
{
  navigationController = [(ICNoteEditorNavigationItemConfiguration *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)writingToolsAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self showWritingToolsFromBarButtonItem:actionCopy];
}

- (void)boldAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleBIUS:1 fromBarButtonItem:actionCopy];
}

- (void)italicAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleBIUS:2 fromBarButtonItem:actionCopy];
}

- (void)underlineAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleBIUS:4 fromBarButtonItem:actionCopy];
}

- (void)strikethroughAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleBIUS:8 fromBarButtonItem:actionCopy];
}

- (void)emphasisAction:(id)action colorType:(int64_t)type
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self setEmphasis:type fromBarButtonItem:actionCopy];
}

- (void)linkAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self openLinkEditorWithSender:actionCopy];
}

- (void)rightIndentAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self rightIndentWithSender:actionCopy];
}

- (void)leftIndentAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self leftIndentWithSender:actionCopy];
}

- (void)moveUpAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self moveUpWithSender:actionCopy];
}

- (void)moveDownAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self moveDownWithSender:actionCopy];
}

- (void)blockQuoteAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleBlockQuoteWithSender:actionCopy];
}

- (void)checklistAction:(id)action
{
  actionCopy = action;
  contextualInputAccessoryView = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [contextualInputAccessoryView skipNextUpdate];

  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self addChecklistFromBarButtonItem:actionCopy];
}

- (void)closeAuxiliaryWindowAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self closeAuxiliaryWindowFromBarButtonItem:actionCopy];
}

- (void)deleteAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self deleteFromBarButtonItem:actionCopy];
}

- (void)doneAction:(id)action
{
  actionCopy = action;
  [(ICNoteEditorNavigationItemConfiguration *)self setInlineSketchEditingState:0];
  [(ICNoteEditorNavigationItemConfiguration *)self setEditing:0];
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self doneEditingFromBarButtonItem:actionCopy];
}

- (void)inlineSketchAction:(id)action
{
  actionCopy = action;
  inlineSketchEditingState = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState];
  v6 = inlineSketchEditingState != 3;
  if (inlineSketchEditingState == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  [(ICNoteEditorNavigationItemConfiguration *)self setInlineSketchEditingState:v7];
  [(ICNoteEditorNavigationItemConfiguration *)self setEditing:v6];
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self inlineSketchFromBarButtonItem:actionCopy];
}

- (void)lockAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleLockFromBarButtonItem:actionCopy];
}

- (void)moveAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self moveFromBarButtonItem:actionCopy];
}

- (void)photoLibraryAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self showPhotoLibraryFromBarButtonItem:actionCopy];
}

- (void)quickNoteAllNotesAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self quickNoteShowAllNotesFromBarButtonItem:actionCopy];
}

- (void)quickNoteCancelAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self quickNoteDidCancelFromBarButtonItem:actionCopy];
}

- (void)quickNoteSaveAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self quickNoteDidSaveFromBarButtonItem:actionCopy];
}

- (void)redoAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self redoFromBarButtonItem:actionCopy];
}

- (void)shareAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self shareFromBarButtonItem:actionCopy];
}

- (void)sidebarAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self toggleSidebarFromBarButtonItem:actionCopy];
}

- (void)styleAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self changeStyleFromBarButtonItem:actionCopy];
}

- (void)tableAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self addTableFromBarButtonItem:actionCopy];
}

- (void)undoAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [delegate noteEditorNavigationItemConfiguration:self undoFromBarButtonItem:actionCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self hash];
    v7 = v6 == [(ICNoteEditorNavigationItemConfiguration *)v5 hash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessibilityCustomContentFor:(id)for
{
  v15[1] = *MEMORY[0x277D85DE8];
  forCopy = for;
  emphasisMenuButton = [(ICNoteEditorNavigationItemConfiguration *)self emphasisMenuButton];

  if (emphasisMenuButton != forCopy)
  {

LABEL_3:
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_6;
  }

  emphasisAccessibilityCustomContentValue = [(ICNoteEditorNavigationItemConfiguration *)self emphasisAccessibilityCustomContentValue];
  v8 = [emphasisAccessibilityCustomContentValue length];

  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x277CB88D0];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle localizedStringForKey:@"Emphasis of selection" value:&stru_282757698 table:0];
  emphasisAccessibilityCustomContentValue2 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisAccessibilityCustomContentValue];
  v13 = [v9 customContentWithLabel:v11 value:emphasisAccessibilityCustomContentValue2];
  v15[0] = v13;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

LABEL_6:

  return v6;
}

- (ICNoteEditorNavigationItemConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end