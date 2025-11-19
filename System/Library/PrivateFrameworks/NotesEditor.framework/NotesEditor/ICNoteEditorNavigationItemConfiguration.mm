@interface ICNoteEditorNavigationItemConfiguration
- (BOOL)canShowToolbar;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateAnimated:(BOOL)a3;
- (BOOL)usesUndoRedoMenu;
- (ICMediaActionMenu)mediaActionMenu;
- (ICNoteEditorContextualInputAccessoryView)contextualInputAccessoryView;
- (ICNoteEditorNavigationItemConfiguration)initWithDataSource:(id)a3 delegate:(id)a4;
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
- (id)accessibilityCustomContentFor:(id)a3;
- (id)toolbarButtonConfiguration;
- (id)toolbarItemSource;
- (id)undoRedoButtonWithImageName:(id)a3 title:(id)a4 selector:(SEL)a5;
- (unint64_t)hash;
- (void)addNoteAction:(id)a3 event:(id)a4;
- (void)backAction:(id)a3;
- (void)blockQuoteAction:(id)a3;
- (void)boldAction:(id)a3;
- (void)checklistAction:(id)a3;
- (void)closeAuxiliaryWindowAction:(id)a3;
- (void)dealloc;
- (void)deleteAction:(id)a3;
- (void)doneAction:(id)a3;
- (void)emphasisAction:(id)a3 colorType:(int64_t)a4;
- (void)inlineSketchAction:(id)a3;
- (void)italicAction:(id)a3;
- (void)leftIndentAction:(id)a3;
- (void)linkAction:(id)a3;
- (void)lockAction:(id)a3;
- (void)moveAction:(id)a3;
- (void)moveDownAction:(id)a3;
- (void)moveUpAction:(id)a3;
- (void)performInlineSketchAnimation:(id)a3;
- (void)photoLibraryAction:(id)a3;
- (void)quickNoteAllNotesAction:(id)a3;
- (void)quickNoteCancelAction:(id)a3;
- (void)quickNoteSaveAction:(id)a3;
- (void)redoAction:(id)a3;
- (void)reset;
- (void)rightIndentAction:(id)a3;
- (void)setForceHideToolbar:(BOOL)a3;
- (void)shareAction:(id)a3;
- (void)sidebarAction:(id)a3;
- (void)strikethroughAction:(id)a3;
- (void)styleAction:(id)a3;
- (void)tableAction:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)underlineAction:(id)a3;
- (void)undoAction:(id)a3;
- (void)updateBlockQuoteBarButtonItemImage;
- (void)updateCompactAnimated:(BOOL)a3;
- (void)updateEnabled;
- (void)updateFormatBarButtonsForChangeInTextView:(id)a3;
- (void)updateMenus;
- (void)updateRegularAnimated:(BOOL)a3;
- (void)updateSelectionInTextView:(id)a3;
- (void)updateTitlesAndImages;
- (void)updateToolbarVisibilityAnimated:(BOOL)a3;
- (void)writingToolsAction:(id)a3;
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"Create a note";
    }

    else
    {
      v8 = @"New Note";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_282757698 table:0];

    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.pencil"];
    v12 = [v10 initWithTitle:v9 image:v11 target:self action:sel_addNoteAction_event_ menu:0];
    v13 = self->_addNoteBarButtonItem;
    self->_addNoteBarButtonItem = v12;

    [(UIBarButtonItem *)self->_addNoteBarButtonItem setSpringLoaded:1];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"New note" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_addNoteBarButtonItem setAccessibilityLabel:v15];

    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Double tap to compose a new note." value:&stru_282757698 table:0];
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

  v12 = [(ICNoteEditorNavigationItemConfiguration *)self checklistAccessibilityValue];
  v13 = [v12 hash];
  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
    v13 = [v14 hash];
  }

  v71 = [(ICNoteEditorNavigationItemConfiguration *)self indentationAccessibilityValue];
  if (![v71 hash])
  {
    v15 = [MEMORY[0x277CBEB68] null];
    [v15 hash];
  }

  v69 = v13;
  v67 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisAccessibilityCustomContentValue];
  if (![v67 hash])
  {
    v16 = [MEMORY[0x277CBEB68] null];
    [v16 hash];
  }

  v64 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];
  if (![v64 hash])
  {
    v17 = [MEMORY[0x277CBEB68] null];
    [v17 hash];
  }

  v18 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
  if (![v18 hash])
  {
    [MEMORY[0x277CBEB68] null];
    v20 = v19 = v18;
    [v20 hash];

    v18 = v19;
  }

  v61 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  if (![v61 hash])
  {
    v21 = [MEMORY[0x277CBEB68] null];
    [v21 hash];
  }

  v22 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
  if (![v22 hash])
  {
    v23 = [MEMORY[0x277CBEB68] null];
    [v23 hash];
  }

  v24 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
  if (![v24 hash])
  {
    [MEMORY[0x277CBEB68] null];
    v33 = v32 = v12;
    [v33 hash];

    v12 = v32;
  }

  v34 = ICHashWithHashKeys(v9, v25, v26, v27, v28, v29, v30, v31, v69);

  return v34;
}

- (NSString)checklistAccessibilityValue
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationChecklistAccessibilityValue:self];

  return v4;
}

- (ICNoteEditorNavigationItemConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NSString)indentationAccessibilityValue
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationIndentationAccessibilityValue:self];

  return v4;
}

- (NSString)emphasisAccessibilityCustomContentValue
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationEmphasisAccessibilityCustomContentValue:self];

  return v4;
}

- (UIBarButtonItem)collaborationBarButtonItem
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationCollaborationBarButtonItem:self];

  return v4;
}

- (UITextInputAssistantItem)inputAssistantItem
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationInputAssistantItem:self];

  return v4;
}

- (ICNoteEditorContextualInputAccessoryView)contextualInputAccessoryView
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationContextualInputAccessoryView:self];

  return v4;
}

- (UIToolbar)inputAccessoryToolbar
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationInputAccessoryToolbar:self];

  return v4;
}

- (id)toolbarItemSource
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationToolbarItemSource:self];

  return v4;
}

- (UINavigationController)navigationController
{
  v2 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  v3 = [v2 navigationController];

  return v3;
}

- (UIViewController)presentingViewController
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationPresentingViewController:self];

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
  v2 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  v3 = [v2 navigationItem];

  return v3;
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"Share this note";
    }

    else
    {
      v8 = @"Share";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_282757698 table:0];

    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
    v12 = [v10 initWithTitle:v9 image:v11 target:self action:sel_shareAction_ menu:0];
    v13 = self->_shareBarButtonItem;
    self->_shareBarButtonItem = v12;

    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Share" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_shareBarButtonItem setAccessibilityLabel:v15];

    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Double tap to add people to the current note" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"checklist" withConfiguration:v6];

    LODWORD(v6) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    if (v6)
    {
      v10 = @"Make a checklist";
    }

    else
    {
      v10 = @"Checklist";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_282757698 table:0];

    v12 = [[ICNoteEditorPillOrnamentBarButtonItem alloc] initWithTitle:v11 image:v7 target:self action:sel_checklistAction_ menu:0];
    v13 = self->_checklistBarButtonItem;
    self->_checklistBarButtonItem = v12;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_checklistBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Checklist" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_checklistBarButtonItem setAccessibilityLabel:v15];

    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Double tap to add a checklist to the current note." value:&stru_282757698 table:0];
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
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    if (v6)
    {
      v10 = @"Drawing tools";
    }

    else
    {
      v10 = @"Handwriting";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_282757698 table:0];

    v12 = [[ICNoteEditorPillOrnamentBarButtonItem alloc] initWithTitle:v11 image:v7 target:self action:sel_inlineSketchAction_ menu:0];
    v13 = self->_inlineSketchBarButtonItem;
    self->_inlineSketchBarButtonItem = v12;

    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_inlineSketchBarButtonItem setUsedInPillOrnament:[(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Handwriting" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_inlineSketchBarButtonItem setAccessibilityLabel:v15];

    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Double tap to toggle the ink picker" value:&stru_282757698 table:0];
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
      v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
      v7 = [v5 systemImageNamed:@"apple.writing.tools" withConfiguration:v6];

      LODWORD(v6) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = v8;
      if (v6)
      {
        v10 = @"Use Writing Tools";
      }

      else
      {
        v10 = @"Writing Tools";
      }

      v11 = [v8 localizedStringForKey:v10 value:&stru_282757698 table:0];

      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v11 image:v7 target:self action:sel_writingToolsAction_ menu:0];
      v13 = self->_writingToolsBarButtonItem;
      self->_writingToolsBarButtonItem = v12;

      v14 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [v14 localizedStringForKey:@"Writing Tools" value:&stru_282757698 table:0];
      [(UIBarButtonItem *)self->_writingToolsBarButtonItem setAccessibilityLabel:v15];

      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v16 localizedStringForKey:@"Double tap to open the Writing Tools popover." value:&stru_282757698 table:0];
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
      v6 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
      v7 = [(ICNoteEditorPillOrnamentViewController *)v5 initWithRootViewController:v6];
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
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self canAddNote];
  v4 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
  [v4 setEnabled:v3];

  v5 = [(ICNoteEditorNavigationItemConfiguration *)self canUseWritingTools];
  v6 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
  [v6 setEnabled:v5];

  v7 = [(ICNoteEditorNavigationItemConfiguration *)self canAddChecklist];
  v8 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
  [v8 setEnabled:v7];

  v9 = [(ICNoteEditorNavigationItemConfiguration *)self canInlineSketch];
  v10 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
  [v10 setEnabled:v9];

  v11 = [(ICNoteEditorNavigationItemConfiguration *)self canAddMedia];
  v12 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v12 setEnabled:v11];

  v13 = [(ICNoteEditorNavigationItemConfiguration *)self canSaveQuickNote];
  v14 = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteSaveBarButtonItem];
  [v14 setEnabled:v13];

  v15 = [(ICNoteEditorNavigationItemConfiguration *)self canRedo];
  v16 = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
  [v16 setEnabled:v15];

  v17 = [(ICNoteEditorNavigationItemConfiguration *)self canShare];
  v18 = [(ICNoteEditorNavigationItemConfiguration *)self shareBarButtonItem];
  [v18 setEnabled:v17];

  v19 = [(ICNoteEditorNavigationItemConfiguration *)self canChangeStyle];
  v20 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
  [v20 setEnabled:v19];

  v21 = [(ICNoteEditorNavigationItemConfiguration *)self canAddTable];
  v22 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
  [v22 setEnabled:v21];

  v23 = [(ICNoteEditorNavigationItemConfiguration *)self canUndo]|| [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
  v24 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
  [v24 setEnabled:v23];

  v25 = [(ICNoteEditorNavigationItemConfiguration *)self canAddLink];
  v26 = [(ICNoteEditorNavigationItemConfiguration *)self linkBarButtonItem];
  [v26 setEnabled:v25];

  LODWORD(v25) = [(ICNoteEditorNavigationItemConfiguration *)self canUndo];
  v27 = [(ICNoteEditorNavigationItemConfiguration *)self undoMenuItem];
  [v27 setIc_disabled:v25 ^ 1];

  LODWORD(v25) = [(ICNoteEditorNavigationItemConfiguration *)self canRedo];
  v28 = [(ICNoteEditorNavigationItemConfiguration *)self redoMenuItem];
  [v28 setIc_disabled:v25 ^ 1];
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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Redo" value:&stru_282757698 table:0];

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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"textformat.alt" withConfiguration:v6];

    LODWORD(v6) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    if (v6)
    {
      v10 = @"Choose a style to apply to text";
    }

    else
    {
      v10 = @"Format";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_282757698 table:0];

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
    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Format" value:&stru_282757698 table:0];
    [(ICNoteEditorPillOrnamentBarButtonItem *)self->_styleBarButtonItem setAccessibilityLabel:v17];

    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 localizedStringForKey:@"Double tap to choose a style to apply to text." value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"table" withConfiguration:v6];

    LODWORD(v6) = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = v8;
    if (v6)
    {
      v10 = @"Add a table";
    }

    else
    {
      v10 = @"Table";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_282757698 table:0];

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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Undo" value:&stru_282757698 table:0];

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
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemMenu];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sel_photoLibraryAction_;
  }

  v5 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v5 setAction:v4];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemMenu];
  v7 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v7 setMenu:v6];

  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditingTable])
  {
    v8 = 0;
  }

  else
  {
    v8 = sel_tableAction_;
  }

  v9 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
  [v9 setAction:v8];

  v10 = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  if (v10)
  {
    v11 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItemMenu];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
  [v12 setMenu:v11];

  if (v10)
  {
  }

  v13 = [(ICNoteEditorNavigationItemConfiguration *)self usesStyleMenu];
  v14 = [(ICNoteEditorNavigationItemConfiguration *)self styleSelectorViewController];
  v15 = v14;
  if (v13)
  {
    [v14 makeInlineMenu];
  }

  else
  {
    [v14 makeShortcutMenu];
  }
  v22 = ;

  v16 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
  [v16 setMenu:v22];

  objc_opt_class();
  v17 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
  v18 = [v17 customView];
  v19 = ICDynamicCast();

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu])
  {
    v20 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    [v19 setMenu:v20];
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
      v5 = [(ICNoteEditorNavigationItemConfiguration *)self mediaActionMenu];
      v6 = [v5 makeMenu];

      goto LABEL_8;
    }

    v3 = [(ICNoteEditorNavigationItemConfiguration *)self mediaActionMenu];
    if ([v3 hasSidecarMenuItems])
    {

      goto LABEL_6;
    }

    IsAudioTranscriptionEnabled = ICInternalSettingsIsAudioTranscriptionEnabled();

    if (IsAudioTranscriptionEnabled)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (ICMediaActionMenu)mediaActionMenu
{
  objc_initWeak(&location, self);
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self lockState];
  v4 = [ICMediaActionMenu alloc];
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self isInSecureScreen];
  v6 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  v7 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  v8 = [(ICNoteEditorNavigationItemConfiguration *)self presentingSourceView];
  v9 = [(ICNoteEditorNavigationItemConfiguration *)self sidecarMenuController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__ICNoteEditorNavigationItemConfiguration_mediaActionMenu__block_invoke;
  v12[3] = &unk_2781ADAC0;
  objc_copyWeak(&v13, &location);
  v10 = [(ICMediaActionMenu *)v4 initWithIsPasswordProtected:v3 != 0 isInSecureScreen:v5 presentingViewController:v6 presentingBarButtonItem:v7 presentingSourceView:v8 sidecarMenuController:v9 completion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

- (UIView)presentingSourceView
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationPresentingSourceView:self];

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

  v5 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  [(ICSidecarInsertMenuController *)self->_sidecarMenuController setPresentingViewController:v5];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self presentingSourceView];
  [(ICSidecarInsertMenuController *)self->_sidecarMenuController setPresentingSourceView:v6];

  v7 = self->_sidecarMenuController;

  return v7;
}

- (ICStyleSelectorViewController)styleSelectorViewController
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationStyleSelectorViewController:self];

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
    v7 = self;
    v8 = [v6 mainBundle];
    v9 = [v8 localizedStringForKey:@"Undo" value:&stru_282757698 table:0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke;
    v23[3] = &unk_2781AC800;
    v23[4] = v7;
    v10 = [v5 ic_actionWithTitle:v9 imageName:@"arrow.uturn.backward" handler:v23];
    [(ICNoteEditorNavigationItemConfiguration *)v7 setUndoMenuItem:v10];

    v11 = MEMORY[0x277D750C8];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"Redo" value:&stru_282757698 table:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke_2;
    v22[3] = &unk_2781AC800;
    v22[4] = v7;
    v14 = [v11 ic_actionWithTitle:v13 imageName:@"arrow.uturn.forward" handler:v22];
    [(ICNoteEditorNavigationItemConfiguration *)v7 setRedoMenuItem:v14];

    v15 = MEMORY[0x277D75710];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__ICNoteEditorNavigationItemConfiguration_undoRedoMenu__block_invoke_3;
    v21[3] = &unk_2781ADA98;
    v21[4] = v7;
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
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self checklistAccessibilityValue];
  v4 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
  [v4 setAccessibilityValue:v3];

  v5 = [(ICNoteEditorNavigationItemConfiguration *)self indentationAccessibilityValue];
  v6 = [(ICNoteEditorNavigationItemConfiguration *)self leftIndentBarButtonItem];
  [v6 setAccessibilityValue:v5];

  v7 = [(ICNoteEditorNavigationItemConfiguration *)self indentationAccessibilityValue];
  v8 = [(ICNoteEditorNavigationItemConfiguration *)self rightIndentBarButtonItem];
  [v8 setAccessibilityValue:v7];

  [(ICNoteEditorNavigationItemConfiguration *)self updateBlockQuoteBarButtonItemImage];
  v9 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState];
  v93 = 0;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      v10 = MEMORY[0x277D755B8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
      v93 = [v10 imageNamed:@"pencil.tip.crop.circle.fill" inBundle:v11 withConfiguration:v12];

      v13 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchAnimationSelectorDelayer];
      [v13 cancelPreviousFireRequests];
      goto LABEL_12;
    }

    v15 = MEMORY[0x277D755B8];
LABEL_10:
    v13 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v93 = [v15 systemImageNamed:@"pencil.tip.crop.circle" withConfiguration:v13];
    goto LABEL_12;
  }

  if (v9 == 2)
  {
    v17 = MEMORY[0x277D755B8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v93 = [v17 imageNamed:@"pencil.tip.crop.circle.fill" inBundle:v18 withConfiguration:v19];

    v13 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchAnimationSelectorDelayer];
    [v13 requestFire];
    goto LABEL_12;
  }

  if (v9 != 3)
  {
    goto LABEL_13;
  }

  v14 = [(ICNoteEditorNavigationItemConfiguration *)self isCompact];
  v15 = MEMORY[0x277D755B8];
  if (v14)
  {
    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
  v93 = [v15 imageNamed:@"pencil.tip.crop.circle.on" inBundle:v13 withConfiguration:v16];

LABEL_12:
LABEL_13:
  v20 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
  [v20 setImage:v93];

  v21 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemMenu];

  v22 = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
  v23 = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = v23;
  v25 = @"Open the photo library";
  v26 = @"Add files, media, and more";
  if (!v22)
  {
    v25 = @"Photo Library";
    v26 = @"Attachments";
  }

  if (v21)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v21)
  {
    v28 = @"paperclip";
  }

  else
  {
    v28 = @"photo.on.rectangle";
  }

  if (v21)
  {
    v29 = @"Attachments";
  }

  else
  {
    v29 = @"Photo Library";
  }

  if (v21)
  {
    v30 = @"Double tap to add a photo or scan a document into the current note.";
  }

  else
  {
    v30 = @"Double tap to add a photo into the current note.";
  }

  v31 = [v23 localizedStringForKey:v27 value:&stru_282757698 table:0];

  v32 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v32 setTitle:v31];

  v33 = MEMORY[0x277D755B8];
  v34 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
  v35 = [v33 systemImageNamed:v28 withConfiguration:v34];
  v36 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v36 setImage:v35];

  v37 = [MEMORY[0x277CCA8D8] mainBundle];
  v38 = [v37 localizedStringForKey:v29 value:&stru_282757698 table:0];
  v39 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v39 setAccessibilityLabel:v38];

  v40 = [MEMORY[0x277CCA8D8] mainBundle];
  v41 = [v40 localizedStringForKey:v30 value:&stru_282757698 table:0];
  v42 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
  [v42 setAccessibilityHint:v41];

  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditingTable])
  {
    v43 = [MEMORY[0x277CCA8D8] mainBundle];
    v44 = [v43 localizedStringForKey:@"Table Actions" value:&stru_282757698 table:0];
    v45 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v45 setTitle:v44];

    v46 = MEMORY[0x277D755B8];
    v47 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v48 = [v46 systemImageNamed:@"table.badge.more" withConfiguration:v47];
    v49 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v49 setImage:v48];

    v50 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v50 setImageInsets:{0.0, -5.0, 0.0, -5.0}];

    v51 = [MEMORY[0x277CCA8D8] mainBundle];
    v52 = [v51 localizedStringForKey:@"Table Actions" value:&stru_282757698 table:0];
    v53 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v53 setAccessibilityLabel:v52];

    v54 = [MEMORY[0x277CCA8D8] mainBundle];
    v55 = [v54 localizedStringForKey:@"Double tap to show the table actions menu." value:&stru_282757698 table:0];
    v56 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v56 setAccessibilityHint:v55];
  }

  else
  {
    v57 = [(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament];
    v58 = [MEMORY[0x277CCA8D8] mainBundle];
    v59 = v58;
    if (v57)
    {
      v60 = @"Add a table";
    }

    else
    {
      v60 = @"Table";
    }

    v54 = [v58 localizedStringForKey:v60 value:&stru_282757698 table:0];

    v61 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v61 setTitle:v54];

    v62 = MEMORY[0x277D755B8];
    v63 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v64 = [v62 systemImageNamed:@"table" withConfiguration:v63];
    v65 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v65 setImage:v64];

    v66 = *MEMORY[0x277D768C8];
    v67 = *(MEMORY[0x277D768C8] + 8);
    v68 = *(MEMORY[0x277D768C8] + 16);
    v69 = *(MEMORY[0x277D768C8] + 24);
    v70 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v70 setImageInsets:{v66, v67, v68, v69}];

    v71 = [MEMORY[0x277CCA8D8] mainBundle];
    v72 = [v71 localizedStringForKey:@"Table" value:&stru_282757698 table:0];
    v73 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v73 setAccessibilityLabel:v72];

    v55 = [MEMORY[0x277CCA8D8] mainBundle];
    v56 = [v55 localizedStringForKey:@"Double tap to add a table to the current note." value:&stru_282757698 table:0];
    v74 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    [v74 setAccessibilityHint:v56];
  }

  v75 = [(ICNoteEditorNavigationItemConfiguration *)self lockState];
  if (v75 <= 2)
  {
    v76 = off_2781ADB08[v75];
    v77 = off_2781ADB20[v75];
    v78 = off_2781ADB38[v75];
    v79 = MEMORY[0x277D755B8];
    v80 = off_2781ADB50[v75];
    v81 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v82 = [v79 systemImageNamed:v76 withConfiguration:v81];
    v83 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [v83 setImage:v82];

    v84 = [MEMORY[0x277CCA8D8] mainBundle];
    v85 = [v84 localizedStringForKey:v77 value:&stru_282757698 table:0];
    v86 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [v86 setTitle:v85];

    v87 = [MEMORY[0x277CCA8D8] mainBundle];
    v88 = [v87 localizedStringForKey:v78 value:&stru_282757698 table:0];
    v89 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [v89 setAccessibilityLabel:v88];

    v90 = [MEMORY[0x277CCA8D8] mainBundle];
    v91 = [v90 localizedStringForKey:v80 value:&stru_282757698 table:0];
    v92 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [v92 setAccessibilityHint:v91];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"decrease.indent" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_leftIndentAction_];
    v9 = self->_leftIndentBarButtonItem;
    self->_leftIndentBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Outdent" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"increase.indent" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_rightIndentAction_];
    v9 = self->_rightIndentBarButtonItem;
    self->_rightIndentBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Indent" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_rightIndentBarButtonItem setAccessibilityLabel:v11];

    v3 = self->_rightIndentBarButtonItem;
  }

  return v3;
}

- (void)updateBlockQuoteBarButtonItemImage
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItemImage];
  [(UIBarButtonItem *)self->_blockQuoteBarButtonItem setImage:v3];
}

- (UIImage)blockQuoteBarButtonItemImage
{
  v10[2] = *MEMORY[0x277D85DE8];
  blockQuoteBarButtonItem = self->_blockQuoteBarButtonItem;
  if (blockQuoteBarButtonItem && [(UIBarButtonItem *)blockQuoteBarButtonItem isSelected])
  {
    v3 = [MEMORY[0x277D75348] systemBackgroundColor];
    v10[0] = v3;
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    v5 = [v4 colorWithAlphaComponent:0.6];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_7];
    v9 = v3;
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

    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"Locked" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_lockBarButtonItem setAccessibilityLabel:v7];

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"Double tap to open your locked notes" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_lockBarButtonItem setAccessibilityHint:v9];

    lockBarButtonItem = self->_lockBarButtonItem;
  }

  v10 = lockBarButtonItem;

  return v10;
}

- (ICNoteEditorNavigationItemConfiguration)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ICNoteEditorNavigationItemConfiguration;
  v8 = [(ICNavigationItemConfiguration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v9->_showsDoneWhileEditing = 1;
    v9->_usesMediaMenu = 1;
    v9->_canShowContextualFormatBar = 1;
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel_updateTitlesAndImages name:*MEMORY[0x277D765F0] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v9 selector:sel_updateBlockQuoteBarButtonItemImage name:*MEMORY[0x277D76460] object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNoteEditorNavigationItemConfiguration;
  [(ICNoteEditorNavigationItemConfiguration *)&v4 dealloc];
}

- (UIWindowScene)presentingWindowScene
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationPresentingWindowScene:self];

  return v4;
}

- (void)setForceHideToolbar:(BOOL)a3
{
  forceHideToolbar = self->_forceHideToolbar;
  self->_forceHideToolbar = a3;
  if (forceHideToolbar != a3)
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateToolbarVisibilityAnimated:1];
  }
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  v3 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteEditorNavigationItemConfigurationTableAttachmentViewController:self];

  return v4;
}

- (BOOL)updateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNavigationItemConfiguration *)self needsUpdate];
  if (v5)
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateToolbarVisibilityAnimated:v3];
    if ([(ICNoteEditorNavigationItemConfiguration *)self isCompact])
    {
      [(ICNoteEditorNavigationItemConfiguration *)self updateCompactAnimated:v3];
    }

    else
    {
      [(ICNoteEditorNavigationItemConfiguration *)self updateRegularAnimated:v3];
    }

    [(ICNoteEditorNavigationItemConfiguration *)self updateEnabled];
    [(ICNoteEditorNavigationItemConfiguration *)self updateMenus];
    [(ICNoteEditorNavigationItemConfiguration *)self updateTitlesAndImages];
    v7.receiver = self;
    v7.super_class = ICNoteEditorNavigationItemConfiguration;
    LOBYTE(v5) = [(ICNavigationItemConfiguration *)&v7 updateAnimated:v3];
  }

  return v5;
}

- (void)textViewDidChange:(id)a3
{
  v5 = a3;
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowContextualFormatBar])
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateFormatBarButtonsForChangeInTextView:v5];
    v4 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
    [v4 updateFromTextViewDidChange:v5];
  }
}

- (void)updateSelectionInTextView:(id)a3
{
  v5 = a3;
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowContextualFormatBar])
  {
    [(ICNoteEditorNavigationItemConfiguration *)self updateFormatBarButtonsForChangeInTextView:v5];
    v4 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
    [v4 updateFromSelectionInTextView:v5];
  }
}

- (void)updateFormatBarButtonsForChangeInTextView:(id)a3
{
  v4 = a3;
  v5 = [v4 currentBIUSForStyleSelector];
  v6 = [(ICNoteEditorNavigationItemConfiguration *)self boldBarButtonItem];
  [v6 setSelected:v5 & 1];

  v7 = [(ICNoteEditorNavigationItemConfiguration *)self italicBarButtonItem];
  [v7 setSelected:(v5 >> 1) & 1];

  v8 = [(ICNoteEditorNavigationItemConfiguration *)self underlineBarButtonItem];
  [v8 setSelected:(v5 >> 2) & 1];

  v9 = [(ICNoteEditorNavigationItemConfiguration *)self strikethroughBarButtonItem];
  [v9 setSelected:(v5 >> 3) & 1];

  v10 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisMenuButton];
  v11 = [v4 currentEmphasisColorsForStyleSelector];
  [v10 setActiveContexts:v11];

  v22 = [v4 currentParagraphStyleForStyleSelector];
  v12 = [v22 isBlockQuote];
  v13 = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItem];
  [v13 setSelected:v12];

  [(ICNoteEditorNavigationItemConfiguration *)self updateBlockQuoteBarButtonItemImage];
  v14 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
  v15 = [v4 currentListStylesForStyleSelector];

  [v14 setActiveContexts:v15];
  LODWORD(v4) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  v16 = [(ICNoteEditorNavigationItemConfiguration *)self leftIndentBarButtonItem];
  [v16 setEnabled:v4 ^ 1];

  LODWORD(v4) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  v17 = [(ICNoteEditorNavigationItemConfiguration *)self rightIndentBarButtonItem];
  [v17 setEnabled:v4 ^ 1];

  LODWORD(v4) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  v18 = [(ICNoteEditorNavigationItemConfiguration *)self moveUpBarButtonItem];
  [v18 setEnabled:v4 ^ 1];

  LODWORD(v4) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  v19 = [(ICNoteEditorNavigationItemConfiguration *)self moveDownBarButtonItem];
  [v19 setEnabled:v4 ^ 1];

  LODWORD(v4) = [(ICNoteEditorNavigationItemConfiguration *)self isEditingTable];
  v20 = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItem];
  [v20 setEnabled:v4 ^ 1];

  v21 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
  [v21 setEnabled:{-[ICNoteEditorNavigationItemConfiguration isEditingTable](self, "isEditingTable") ^ 1}];
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

- (void)performInlineSketchAnimation:(id)a3
{
  v4 = MEMORY[0x277D75D18];
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
  v6 = [v5 ic_view];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ICNoteEditorNavigationItemConfiguration_performInlineSketchAnimation___block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [v4 transitionWithView:v6 duration:5242880 options:v7 animations:0 completion:0.5];
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

- (void)updateCompactAnimated:(BOOL)a3
{
  v4 = a3;
  v218[1] = *MEMORY[0x277D85DE8];
  v6 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState];
  if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]== 2 && v6 != 3)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v3 localizedStringForKey:@"New Quick Note" value:&stru_282757698 table:0];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v9 setTitle:v8];

  if (v7)
  {
  }

  v10 = [(ICNoteEditorNavigationItemConfiguration *)self isDeleted];
  v11 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v11 setStyle:v10];

  v12 = [(ICNoteEditorNavigationItemConfiguration *)self hidesBackButton]|| [(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType]!= 0;
  v13 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v13 setHidesBackButton:v12];

  v14 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v14 setLeftItemsSupplementBackButton:1];

  v15 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v15 setLeadingItemGroups:MEMORY[0x277CBEBF8]];

  v16 = [MEMORY[0x277CBEB18] array];
  if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]!= 2 || v6 == 3)
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self isInSecureScreen])
    {
      v17 = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteAllNotesBarButtonItem];
    }

    else
    {
      if ([(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType]!= 1)
      {
        goto LABEL_18;
      }

      v17 = [(ICNoteEditorNavigationItemConfiguration *)self closeAuxiliaryWindowBarButtonItem];
    }
  }

  else
  {
    v17 = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteCancelBarButtonItem];
  }

  v18 = v17;
  [v16 addObject:v17];

LABEL_18:
  v19 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  v20 = [v16 copy];
  [v19 setLeftBarButtonItems:v20 animated:v4];

  v21 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v21 setCenterItemGroups:MEMORY[0x277CBEBF8]];

  v22 = [MEMORY[0x277CBEB18] array];
  if ([(ICNoteEditorNavigationItemConfiguration *)self canShowUndoRedo])
  {
    v23 = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    if (v23)
    {
      v24 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    }

    else
    {
      v24 = 0;
    }

    v25 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [v25 setMenu:v24];

    if (v23)
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

    v27 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [v27 setAction:v26];

    LOBYTE(v27) = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    v28 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v29 = v28;
    if (v27)
    {
      v218[0] = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:1];
      [v22 setArray:v30];
    }

    else
    {
      v217[0] = v28;
      v30 = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
      v217[1] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
      [v22 setArray:v31];
    }

    v32 = [MEMORY[0x277D751E0] fixedSpaceItem];
    [v22 addObject:v32];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]== 2 && v6 != 3)
  {
    v33 = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteSaveBarButtonItem];
LABEL_45:
    v39 = v33;
    [v22 addObject:v33];

    goto LABEL_46;
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self lockState]&& v6 != 3)
  {
    v34 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
    [v22 addObject:v34];
  }

  if (![(ICNoteEditorNavigationItemConfiguration *)self isDeleted]&& v6 != 3)
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self showsCalculatorModeButton])
    {
      v35 = [(ICNoteEditorNavigationItemConfiguration *)self calculatorModeItem];
      [v22 addObject:v35];

      v36 = [MEMORY[0x277D751E0] fixedSpaceItem];
      [v22 addObject:v36];
    }

    v37 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];

    if (v37)
    {
      v38 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];
      [v22 addObject:v38];
    }

    v33 = [(ICNoteEditorNavigationItemConfiguration *)self shareBarButtonItem];
    goto LABEL_45;
  }

LABEL_46:
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v41 = [v22 reverseObjectEnumerator];
  v42 = [v41 countByEnumeratingWithState:&v205 objects:v216 count:16];
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
          objc_enumerationMutation(v41);
        }

        [v40 addObject:*(*(&v205 + 1) + 8 * i)];
      }

      v43 = [v41 countByEnumeratingWithState:&v205 objects:v216 count:16];
    }

    while (v43);
  }

  v46 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v46 setRightBarButtonItems:v40 animated:v4];

  v47 = [MEMORY[0x277CBEB18] array];
  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& [(ICNoteEditorNavigationItemConfiguration *)self showsDoneWhileEditing]|| v6 == 3)
  {
    v48 = [(ICNoteEditorNavigationItemConfiguration *)self doneBarButtonItem];
    [v47 addObject:v48];
  }

  v49 = [v47 copy];
  v50 = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  [v50 setBarButtonItems:v49];

  v51 = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  v52 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v52 setPinnedTrailingGroup:v51];

  v53 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
  v200 = v4;
  if (v53)
  {
    v54 = v53;
    if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing])
    {
    }

    else
    {
      v55 = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteType];

      if (v55 != 1)
      {
        goto LABEL_73;
      }
    }

    v197 = v47;
    v56 = [MEMORY[0x277CBEB18] array];
    if (![(ICNoteEditorNavigationItemConfiguration *)self usesOnlyTrailingInputAssistantItems])
    {
      v57 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
      [v56 addObject:v57];

      v58 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
      [v56 addObject:v58];
    }

    v59 = [v56 copy];
    v60 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    [v60 setBarButtonItems:v59];

    v61 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
    v62 = [v61 leadingBarButtonGroups];
    v63 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    v64 = [v62 containsObject:v63];

    if ((v64 & 1) == 0)
    {
      v65 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v65 _setMarginOverride:11.0];

      v195 = NSStringFromSelector(sel_leadingBarButtonGroups);
      v66 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v66 willChangeValueForKey:v195];

      v67 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      v68 = [v67 leadingBarButtonGroups];
      v69 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
      v70 = [v68 arrayByAddingObject:v69];
      [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      v71 = v56;
      v72 = v22;
      v74 = v73 = v16;
      [v74 setLeadingBarButtonGroups:v70];

      v16 = v73;
      v22 = v72;
      v56 = v71;

      v75 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v75 didChangeValueForKey:v195];
    }

    v76 = [MEMORY[0x277CBEB18] array];
    if ([(ICNoteEditorNavigationItemConfiguration *)self usesOnlyTrailingInputAssistantItems])
    {
      v77 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
      [v76 addObject:v77];

      v78 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
      [v76 addObject:v78];

      v79 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
      [v76 addObject:v79];

      v80 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
      [v76 addObject:v80];

      v81 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [v76 addObject:v81];

      if (![(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
      {
        goto LABEL_70;
      }
    }

    else
    {
      v82 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
      [v76 addObject:v82];

      v83 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
      [v76 addObject:v83];

      v84 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [v76 addObject:v84];

      if (![(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
      {
LABEL_70:
        v86 = [v76 copy];
        v87 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
        [v87 setBarButtonItems:v86];

        v88 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
        v89 = [v88 trailingBarButtonGroups];
        v90 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
        v91 = [v89 containsObject:v90];

        if ((v91 & 1) == 0)
        {
          v92 = NSStringFromSelector(sel_trailingBarButtonGroups);
          v93 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
          [v93 willChangeValueForKey:v92];

          v94 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
          v215 = v94;
          v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
          v96 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
          [v96 setTrailingBarButtonGroups:v95];

          v97 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
          [v97 didChangeValueForKey:v92];
        }

        v47 = v197;
        goto LABEL_73;
      }
    }

    v85 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
    [v76 addObject:v85];

    goto LABEL_70;
  }

LABEL_73:
  v98 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];

  if (v98)
  {
    v99 = [MEMORY[0x277CBEB18] array];
    if ([(ICNoteEditorNavigationItemConfiguration *)self isDeleted])
    {
      v100 = [(ICNoteEditorNavigationItemConfiguration *)self deleteBarButtonItem];
      [v99 addObject:v100];

      v101 = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
      [v99 addObject:v101];

      v102 = [MEMORY[0x277D751E0] flexibleSpaceItem];
      v214 = v102;
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
        v110 = v99;
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
          v115 = [(ICNoteEditorNavigationItemConfiguration *)self isEditing];
          v116 = MEMORY[0x277CBEB18];
          if (v115)
          {
            v192 = v16;
            v193 = v109;
            v198 = v47;
            v191 = v22;
            v117 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
            v118 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
            v119 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
            v120 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
            v121 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
            v122 = [v116 arrayWithObjects:{v117, v118, v119, v120, v121, 0}];

            if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
            {
              v123 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
              [v122 addObject:v123];
            }

            v196 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
            v183 = [v122 copy];
            v189 = [(ICNoteEditorNavigationItemConfiguration *)self boldBarButtonItem];
            v211[0] = v189;
            v188 = [(ICNoteEditorNavigationItemConfiguration *)self italicBarButtonItem];
            v211[1] = v188;
            v187 = [(ICNoteEditorNavigationItemConfiguration *)self underlineBarButtonItem];
            v211[2] = v187;
            v186 = [(ICNoteEditorNavigationItemConfiguration *)self strikethroughBarButtonItem];
            v211[3] = v186;
            v185 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisBarButtonItem];
            v211[4] = v185;
            v184 = [(ICNoteEditorNavigationItemConfiguration *)self linkBarButtonItem];
            v211[5] = v184;
            v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:6];
            [(ICNoteEditorNavigationItemConfiguration *)self leftIndentBarButtonItem];
            v182 = v190 = v122;
            v210[0] = v182;
            v181 = [(ICNoteEditorNavigationItemConfiguration *)self rightIndentBarButtonItem];
            v210[1] = v181;
            v125 = [(ICNoteEditorNavigationItemConfiguration *)self moveUpBarButtonItem];
            v210[2] = v125;
            v126 = [(ICNoteEditorNavigationItemConfiguration *)self moveDownBarButtonItem];
            v210[3] = v126;
            v127 = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItem];
            v210[4] = v127;
            v128 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorBarButtonItem];
            v210[5] = v128;
            v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v210 count:6];
            [v196 updateItemsWithStandardScope:v183 characterScope:v124 paragraphScope:v129];

            v130 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
            v131 = [(ICNoteEditorNavigationItemConfiguration *)self formatBarButtonItem];
            v209 = v131;
            v132 = [MEMORY[0x277CBEA60] arrayWithObjects:&v209 count:1];
            [v130 setToolbarItems:v132 animated:v200];

            v133 = v190;
            v22 = v191;
            v16 = v192;
            v47 = v198;
            v109 = v193;
          }

          else
          {
            v133 = [MEMORY[0x277CBEB18] array];
            if ([(ICNoteEditorNavigationItemConfiguration *)self isDeleted])
            {
              [v133 addObjectsFromArray:v110];
            }

            else
            {
              v137 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
              v138 = [v110 copy];
              [v137 updateSingleGroupItems:v138];

              v139 = [(ICNoteEditorNavigationItemConfiguration *)self formatBarButtonItem];
              [v133 addObject:v139];
            }

            [v133 addObjectsFromArray:v109];
            v140 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
            [v140 setToolbarItems:v133 animated:v200];
          }
        }

        else
        {
          v134 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
          v135 = [v110 arrayByAddingObjectsFromArray:v109];
          [v134 setToolbarItems:v135 animated:v200];

          v136 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];

          if (!v136)
          {
LABEL_117:

            goto LABEL_118;
          }

          if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& ![(ICNoteEditorNavigationItemConfiguration *)self isTableSelected])
          {
            v199 = v47;
            if ([(ICNoteEditorNavigationItemConfiguration *)self quickNoteType]== 2)
            {
              v194 = v109;
              v141 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
              if (v141)
              {
                v142 = v141;
                v143 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
                v144 = [v143 toolbarItems];
                v145 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
                v146 = [v144 containsObject:v145];

                if (v146)
                {
                  writingToolsBarButtonItem = self->_writingToolsBarButtonItem;
                  self->_writingToolsBarButtonItem = 0;
                }
              }

              v148 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
              v149 = [v148 toolbarItems];
              v150 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
              v151 = [v149 containsObject:v150];

              if (v151)
              {
                checklistBarButtonItem = self->_checklistBarButtonItem;
                self->_checklistBarButtonItem = 0;
              }

              v153 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
              v154 = [v153 toolbarItems];
              v155 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
              v156 = [v154 containsObject:v155];

              v109 = v194;
              if (v156)
              {
                mediaBarButtonItem = self->_mediaBarButtonItem;
                self->_mediaBarButtonItem = 0;
              }

              v158 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
              v159 = [v158 toolbarItems];
              v160 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
              v161 = [v159 containsObject:v160];

              if (v161)
              {
                inlineSketchBarButtonItem = self->_inlineSketchBarButtonItem;
                self->_inlineSketchBarButtonItem = 0;
              }
            }

            v133 = [MEMORY[0x277CBEB18] array];
            v163 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [v133 addObject:v163];

            v164 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
            [v133 addObject:v164];

            v165 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [v133 addObject:v165];

            v166 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
            [v133 addObject:v166];

            v167 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [v133 addObject:v167];

            v168 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
            [v133 addObject:v168];

            v169 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [v133 addObject:v169];

            v170 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
            [v133 addObject:v170];

            v171 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [v133 addObject:v171];

            v172 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
            [v133 addObject:v172];

            if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
            {
              v173 = [MEMORY[0x277D751E0] flexibleSpaceItem];
              [v133 addObject:v173];

              v174 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
              [v133 addObject:v174];
            }

            v175 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:42.0];
            [v133 addObject:v175];

            v176 = [MEMORY[0x277D751E0] flexibleSpaceItem];
            [v133 addObject:v176];

            v177 = [MEMORY[0x277CBEA60] arrayWithArray:v133];
            v178 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
            [v178 setItems:v177];

            v47 = v199;
          }

          else
          {
            v133 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
            [v133 setItems:MEMORY[0x277CBEBF8]];
          }
        }

        goto LABEL_117;
      }

      v104 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
      [v99 addObject:v104];

      v105 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
      [v99 addObject:v105];

      v106 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [v99 addObject:v106];

      if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
      {
        v107 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
        [v99 addObject:v107];
      }

      v102 = [MEMORY[0x277D751E0] flexibleSpaceItem];
      v213 = v102;
      v103 = &v213;
    }

    v108 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    v103[1] = v108;
    v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];

    goto LABEL_82;
  }

LABEL_118:
  v179 = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
  [v179 setToolbarItems:MEMORY[0x277CBEBF8]];

  v180 = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
  [v180 hide];
}

- (void)updateRegularAnimated:(BOOL)a3
{
  v4 = a3;
  v150[1] = *MEMORY[0x277D85DE8];
  v6 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v6 setTitle:0];

  v7 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v7 setTitleView:0];

  v8 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  v9 = 1;
  [v8 setStyle:1];

  v10 = [MEMORY[0x277CBEB18] array];
  if (![(ICNoteEditorNavigationItemConfiguration *)self hidesBackButton])
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(ICNoteEditorNavigationItemConfiguration *)self usesCustomBackButton];
    }
  }

  v11 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v11 setHidesBackButton:v9];

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesCustomBackButton]&& ![(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType])
  {
    v12 = objc_alloc(MEMORY[0x277D751F0]);
    v13 = [(ICNoteEditorNavigationItemConfiguration *)self customBackBarButtonItem];
    v150[0] = v13;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:1];
    v14 = [v12 initWithBarButtonItems:v3 representativeItem:0];

    [v10 addObject:v14];
  }

  v15 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v15 setLeftItemsSupplementBackButton:1];

  if (![(ICNoteEditorNavigationItemConfiguration *)self quickNoteType])
  {
    v16 = [MEMORY[0x277CBEB18] array];
    if ([(ICNoteEditorNavigationItemConfiguration *)self isInSecureScreen])
    {
      v17 = [(ICNoteEditorNavigationItemConfiguration *)self quickNoteAllNotesBarButtonItem];
    }

    else
    {
      if ([(ICNoteEditorNavigationItemConfiguration *)self auxiliaryWindowType]!= 1)
      {
LABEL_14:
        if ([v16 count])
        {
          v19 = objc_alloc(MEMORY[0x277D751F0]);
          v3 = [v16 copy];
          v20 = [v19 initWithBarButtonItems:v3 representativeItem:0];

          [v10 addObject:v20];
        }

        goto LABEL_17;
      }

      v17 = [(ICNoteEditorNavigationItemConfiguration *)self closeAuxiliaryWindowBarButtonItem];
    }

    v18 = v17;
    [v16 addObject:v17];

    goto LABEL_14;
  }

LABEL_17:
  if ([(ICNoteEditorNavigationItemConfiguration *)self showsAddNoteButtonOnLeadingEdge])
  {
    v21 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    v149 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
    v3 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItemGroup];
    [v3 setBarButtonItems:v22];

    v23 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItemGroup];
    [v10 addObject:v23];
  }

  if (![(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]&& [(ICNoteEditorNavigationItemConfiguration *)self canShowUndoRedo])
  {
    v24 = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    v25 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v26 = v25;
    if (v24)
    {
      v148 = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
    }

    else
    {
      v147[0] = v25;
      v3 = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
      v147[1] = v3;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
    }

    v28 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoBarButtonItemGroup];
    [v28 setBarButtonItems:v27];

    if (!v24)
    {

      v27 = v3;
    }

    v29 = [(ICNoteEditorNavigationItemConfiguration *)self usesUndoRedoMenu];
    if (v29)
    {
      v30 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    }

    else
    {
      v30 = 0;
    }

    v31 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [v31 setMenu:v30];

    if (v29)
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

    v33 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    [v33 setAction:v32];

    v34 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:0.0];
    v35 = [v34 creatingFixedGroup];
    [v10 addObject:v35];

    v36 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoBarButtonItemGroup];
    [v10 addObject:v36];
  }

  v37 = [v10 copy];
  v38 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v38 setLeadingItemGroups:v37];

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament])
  {
    v39 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [v39 setCenterItemGroups:MEMORY[0x277CBEBF8]];

    v40 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [v40 setCustomizationIdentifier:0];
  }

  else
  {
    v41 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
    v146 = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
    v43 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItemGroup];
    [v43 setBarButtonItems:v42];

    v44 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
    v145 = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
    v46 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItemGroup];
    [v46 setBarButtonItems:v45];

    v47 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v144 = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
    v49 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItemGroup];
    [v49 setBarButtonItems:v48];

    v50 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
    v143 = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
    v52 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemGroup];
    [v52 setBarButtonItems:v51];

    v53 = MEMORY[0x277CBEB18];
    v54 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItemGroup];
    v55 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItemGroup];
    v56 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItemGroup];
    v57 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItemGroup];
    v40 = [v53 arrayWithObjects:{v54, v55, v56, v57, 0}];

    if ([(ICNoteEditorNavigationItemConfiguration *)self canShowWritingTools])
    {
      v58 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
      v142 = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
      v60 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsButtonItemGroup];
      [v60 setBarButtonItems:v59];

      v61 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsButtonItemGroup];
      [v40 addObject:v61];
    }

    v62 = [v40 copy];
    v63 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [v63 setCenterItemGroups:v62];

    if ([(ICNoteEditorNavigationItemConfiguration *)self canCustomizeCenterItems])
    {
      v64 = @"ICNoteEditorViewControllerNavigationBarCustomizationID";
    }

    else
    {
      v64 = 0;
    }

    v65 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
    [v65 setCustomizationIdentifier:v64];
  }

  v66 = [MEMORY[0x277CBEB18] array];
  if (![(ICNoteEditorNavigationItemConfiguration *)self quickNoteType])
  {
    if ([(ICNoteEditorNavigationItemConfiguration *)self lockState])
    {
      v67 = [(ICNoteEditorNavigationItemConfiguration *)self lockBarButtonItem];
      [v66 addObject:v67];
    }

    if ([(ICNoteEditorNavigationItemConfiguration *)self isDeleted])
    {
      v68 = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
      [v66 addObject:v68];

      v69 = [(ICNoteEditorNavigationItemConfiguration *)self deleteBarButtonItem];
LABEL_55:
      v75 = v69;
      [v66 addObject:v69];

      goto LABEL_56;
    }

    v70 = [(ICNoteEditorNavigationItemConfiguration *)self shareBarButtonItem];
    [v66 addObject:v70];

    v71 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];

    if (v71)
    {
      v72 = [(ICNoteEditorNavigationItemConfiguration *)self collaborationBarButtonItem];
      [v66 addObject:v72];
    }

    if (![(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament])
    {
      v73 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
      [v66 addObject:v73];
    }

    if ([(ICNoteEditorNavigationItemConfiguration *)self showsCalculatorModeButton])
    {
      v74 = [MEMORY[0x277D751E0] ic_itemWithFixedWidth:10.0];
      [v66 addObject:v74];

      v69 = [(ICNoteEditorNavigationItemConfiguration *)self calculatorModeItem];
      goto LABEL_55;
    }
  }

LABEL_56:
  v76 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  v77 = [v66 copy];
  [v76 setRightBarButtonItems:v77 animated:v4];

  v78 = [MEMORY[0x277CBEB18] array];
  if (![(ICNoteEditorNavigationItemConfiguration *)self showsAddNoteButtonOnLeadingEdge])
  {
    v79 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    [v78 addObject:v79];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self isEditing]&& [(ICNoteEditorNavigationItemConfiguration *)self showsDoneWhileEditing])
  {
    v80 = [(ICNoteEditorNavigationItemConfiguration *)self doneBarButtonItem];
    [v78 addObject:v80];
  }

  v81 = [v78 copy];
  v82 = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  [v82 setBarButtonItems:v81];

  v83 = [(ICNoteEditorNavigationItemConfiguration *)self pinnedTrailingBarButtonItemGroup];
  v84 = [(ICNoteEditorNavigationItemConfiguration *)self navigationItem];
  [v84 setPinnedTrailingGroup:v83];

  v85 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];

  if (v85)
  {
    v138 = v66;
    v86 = v4;
    v87 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    [v87 setBarButtonItems:MEMORY[0x277CBEBF8]];

    v88 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
    v89 = [v88 leadingBarButtonGroups];
    v90 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
    v91 = [v89 containsObject:v90];

    if ((v91 & 1) == 0)
    {
      v92 = NSStringFromSelector(sel_leadingBarButtonGroups);
      v93 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v93 willChangeValueForKey:v92];

      v94 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      v95 = [v94 leadingBarButtonGroups];
      v96 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantLeadingBarButtonItemGroup];
      [v95 arrayByAddingObject:v96];
      v97 = v78;
      v99 = v98 = v10;
      v100 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v100 setLeadingBarButtonGroups:v99];

      v10 = v98;
      v78 = v97;

      v101 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v101 didChangeValueForKey:v92];
    }

    v102 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
    [v102 setBarButtonItems:MEMORY[0x277CBEBF8]];

    v103 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
    v104 = [v103 trailingBarButtonGroups];
    v105 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
    v106 = [v104 containsObject:v105];

    v4 = v86;
    v66 = v138;
    if ((v106 & 1) == 0)
    {
      v107 = NSStringFromSelector(sel_trailingBarButtonGroups);
      v108 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v108 willChangeValueForKey:v107];

      v109 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantTrailingBarButtonItemGroup];
      v141 = v109;
      v110 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
      v111 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v111 setTrailingBarButtonGroups:v110];

      v112 = [(ICNoteEditorNavigationItemConfiguration *)self inputAssistantItem];
      [v112 didChangeValueForKey:v107];
    }
  }

  v113 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];

  if (v113)
  {
    v114 = [(ICNoteEditorNavigationItemConfiguration *)self inputAccessoryToolbar];
    [v114 setItems:MEMORY[0x277CBEBF8]];
  }

  v115 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];

  if (v115)
  {
    v116 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarItemSource];
    [v116 setToolbarItems:MEMORY[0x277CBEBF8] animated:v4];
  }

  if ([(ICNoteEditorNavigationItemConfiguration *)self usesPillOrnament]&& [(ICNoteEditorNavigationItemConfiguration *)self canShowPillOrnament]&& ![(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState])
  {
    v132 = v78;
    v139 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v140[0] = v139;
    v137 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v140[1] = v137;
    v136 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[2] = v136;
    v135 = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
    v140[3] = v135;
    v134 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[4] = v134;
    v133 = [(ICNoteEditorNavigationItemConfiguration *)self verticalSeparatorBarButtonItem];
    v140[5] = v133;
    v131 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[6] = v131;
    v130 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
    v140[7] = v130;
    v129 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[8] = v129;
    v128 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
    v140[9] = v128;
    v127 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[10] = v127;
    v126 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v140[11] = v126;
    v118 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[12] = v118;
    v119 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
    v140[13] = v119;
    v120 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:16.0];
    v140[14] = v120;
    v121 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
    v140[15] = v121;
    v122 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v140[16] = v122;
    v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:17];
    [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
    v125 = v124 = v10;
    [v125 setToolbarItems:v123];

    v10 = v124;
    v78 = v132;

    v117 = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
    [v117 show];
  }

  else
  {
    v117 = [(ICNoteEditorNavigationItemConfiguration *)self pillOrnamentViewController];
    [v117 hide];
  }
}

- (void)updateToolbarVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self dataSource];
  v6 = [v5 noteEditorNavigationItemConfigurationIsToolbarHidden];

  v7 = [(ICNoteEditorNavigationItemConfiguration *)self canShowToolbar];
  if (v6 == v7)
  {
    v8 = v7;
    v9 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
    [v9 noteEditorNavigationItemConfiguration:self setToolbarHidden:v8 ^ 1u animated:v3];
  }
}

- (UIBarButtonItemGroup)addNoteBarButtonItemGroup
{
  v11[1] = *MEMORY[0x277D85DE8];
  addNoteBarButtonItemGroup = self->_addNoteBarButtonItemGroup;
  if (!addNoteBarButtonItemGroup)
  {
    v4 = objc_alloc(MEMORY[0x277D751F0]);
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self addNoteBarButtonItem];
    v11[0] = v5;
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
    v7 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
    v8 = [v6 initWithCustomView:v7];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"bold" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_boldAction_];
    v9 = self->_boldBarButtonItem;
    self->_boldBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Bold" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"italic" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_italicAction_];
    v9 = self->_italicBarButtonItem;
    self->_italicBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Italic" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"underline" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_underlineAction_];
    v9 = self->_underlineBarButtonItem;
    self->_underlineBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Underline" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"strikethrough" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_strikethroughAction_];
    v9 = self->_strikethroughBarButtonItem;
    self->_strikethroughBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Strikethrough" value:&stru_282757698 table:0];
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
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = 0x277D75000uLL;
    v7 = MEMORY[0x277D755B8];
    val = self;
    v8 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v9 = [v7 ic_systemImageNamed:@"highlighter.badge.ellipsis" withConfiguration:v8];

    v10 = [MEMORY[0x277CBEB38] dictionary];
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

        [v5 addObject:v18];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        [v10 setObject:v9 forKeyedSubscript:v19];

        v6 = v14;
        ++v12;
        --v11;
      }

      while (v11);
    }

    objc_initWeak(&location, val);
    v20 = [ICNoteEditorContextualMenuButtonConfiguration alloc];
    v21 = *(v6 + 1464);
    v22 = [(ICNoteEditorNavigationItemConfiguration *)val toolbarButtonConfiguration];
    v23 = [v21 ic_systemImageNamed:@"highlighter" withConfiguration:v22];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__ICNoteEditorNavigationItemConfiguration_emphasisBarButtonItem__block_invoke;
    v39[3] = &unk_2781AD9D8;
    v24 = v5;
    v40 = v24;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __64__ICNoteEditorNavigationItemConfiguration_emphasisBarButtonItem__block_invoke_2;
    v37[3] = &unk_2781ADA00;
    objc_copyWeak(&v38, &location);
    v25 = [(ICNoteEditorContextualMenuButtonConfiguration *)v20 initWithImage:v23 activeImageForContext:v10 menuOptions:v24 defaultMenuOption:v39 stateChangedHandler:v37];

    v26 = [[ICNoteEditorContextualMenuButton alloc] initWithConfiguration:v25];
    [(ICNoteEditorNavigationItemConfiguration *)val setEmphasisMenuButton:v26];

    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [v27 localizedStringForKey:@"Highlight" value:&stru_282757698 table:0];
    v29 = [(ICNoteEditorNavigationItemConfiguration *)val emphasisMenuButton];
    [v29 setAccessibilityLabel:v28];

    v30 = [(ICNoteEditorNavigationItemConfiguration *)val emphasisMenuButton];
    [v30 setAccessibilityDelegate:val];

    v31 = objc_alloc(MEMORY[0x277D751E0]);
    v32 = [(ICNoteEditorNavigationItemConfiguration *)val emphasisMenuButton];
    v33 = [v31 initWithCustomView:v32];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 ic_systemImageNamed:@"link" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_linkAction_];
    v9 = self->_linkBarButtonItem;
    self->_linkBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Link" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"arrow.up.to.line" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_moveUpAction_];
    v9 = self->_moveUpBarButtonItem;
    self->_moveUpBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Move Up" value:&stru_282757698 table:0];
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
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v7 = [v5 systemImageNamed:@"arrow.down.to.line" withConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:self action:sel_moveDownAction_];
    v9 = self->_moveDownBarButtonItem;
    self->_moveDownBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Move Down" value:&stru_282757698 table:0];
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self blockQuoteBarButtonItemImage];
    v6 = [v4 initWithImage:v5 style:0 target:self action:sel_blockQuoteAction_];
    v7 = self->_blockQuoteBarButtonItem;
    self->_blockQuoteBarButtonItem = v6;

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"Block Quote" value:&stru_282757698 table:0];
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
    v59 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v57 = [v6 ic_systemImageNamed:@"list.bullet" withConfiguration:v59];
    v58 = [MEMORY[0x277CCA8D8] mainBundle];
    v56 = [v58 localizedStringForKey:@"Bulleted" value:&stru_282757698 table:0];
    v50 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v5 initWithImage:v57 title:v56 context:100];
    v65[0] = v50;
    v7 = [ICNoteEditorContextualMenuButtonConfigurationMenuState alloc];
    v8 = MEMORY[0x277D755B8];
    v55 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v9 = [v8 ic_systemImageNamed:@"list.dash" withConfiguration:v55];
    v54 = [MEMORY[0x277CCA8D8] mainBundle];
    v53 = [v54 localizedStringForKey:@"Dashed" value:&stru_282757698 table:0];
    v51 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v7 initWithImage:v9 title:v53 context:101];
    v65[1] = v51;
    v10 = [ICNoteEditorContextualMenuButtonConfigurationMenuState alloc];
    v11 = MEMORY[0x277D755B8];
    v12 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v13 = [v11 ic_systemImageNamed:@"list.number" withConfiguration:v12];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Numbered" value:&stru_282757698 table:0];
    v16 = [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)v10 initWithImage:v13 title:v15 context:102];
    v65[2] = v16;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];

    v63[0] = &unk_28277E550;
    v17 = MEMORY[0x277D755B8];
    v18 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v19 = [v17 ic_systemImageNamed:@"list.bullet.badge.ellipsis" withConfiguration:v18];
    v64[0] = v19;
    v63[1] = &unk_28277E568;
    v20 = MEMORY[0x277D755B8];
    v21 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v22 = [v20 ic_systemImageNamed:@"list.dash.badge.ellipsis" withConfiguration:v21];
    v64[1] = v22;
    v63[2] = &unk_28277E580;
    v23 = MEMORY[0x277D755B8];
    v24 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v25 = [v23 ic_systemImageNamed:@"list.number.badge.ellipsis" withConfiguration:v24];
    v64[2] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];

    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [v27 localizedStringForKey:@"Bulleted" value:&stru_282757698 table:0];
    v29 = [v26 objectForKeyedSubscript:&unk_28277E550];
    [v29 setAccessibilityLabel:v28];

    v30 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [v30 localizedStringForKey:@"Dashed" value:&stru_282757698 table:0];
    v32 = [v26 objectForKeyedSubscript:&unk_28277E568];
    [v32 setAccessibilityLabel:v31];

    v33 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [v33 localizedStringForKey:@"Numbered" value:&stru_282757698 table:0];
    v35 = [v26 objectForKeyedSubscript:&unk_28277E580];
    [v35 setAccessibilityLabel:v34];

    objc_initWeak(&location, self);
    v36 = [ICNoteEditorContextualMenuButtonConfiguration alloc];
    v37 = MEMORY[0x277D755B8];
    v38 = [(ICNoteEditorNavigationItemConfiguration *)self toolbarButtonConfiguration];
    v39 = [v37 ic_systemImageNamed:@"list.bullet" withConfiguration:v38];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __68__ICNoteEditorNavigationItemConfiguration_listSelectorBarButtonItem__block_invoke;
    v60[3] = &unk_2781ADA00;
    objc_copyWeak(&v61, &location);
    v40 = [(ICNoteEditorContextualMenuButtonConfiguration *)v36 initWithImage:v39 activeImageForContext:v26 menuOptions:v52 defaultMenuOption:0 stateChangedHandler:v60];

    v41 = [[ICNoteEditorContextualMenuButton alloc] initWithConfiguration:v40];
    [(ICNoteEditorNavigationItemConfiguration *)self setListSelectorMenuButton:v41];

    v42 = [MEMORY[0x277CCA8D8] mainBundle];
    v43 = [v42 localizedStringForKey:@"List Style" value:&stru_282757698 table:0];
    v44 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
    [v44 setAccessibilityLabel:v43];

    v45 = objc_alloc(MEMORY[0x277D751E0]);
    v46 = [(ICNoteEditorNavigationItemConfiguration *)self listSelectorMenuButton];
    v47 = [v45 initWithCustomView:v46];
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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Close" value:&stru_282757698 table:0];
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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Delete Note" value:&stru_282757698 table:0];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v8 = [v4 initWithTitle:v6 image:v7 target:self action:sel_deleteAction_ menu:0];
    v9 = self->_deleteBarButtonItem;
    self->_deleteBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Delete Note" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_deleteBarButtonItem setAccessibilityLabel:v11];

    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"Double tap to delete the current note." value:&stru_282757698 table:0];
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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Move Note" value:&stru_282757698 table:0];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
    v8 = [v4 initWithTitle:v6 image:v7 target:self action:sel_moveAction_ menu:0];
    v9 = self->_moveBarButtonItem;
    self->_moveBarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Move Note" value:&stru_282757698 table:0];
    v12 = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
    [v12 setAccessibilityLabel:v11];

    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 localizedStringForKey:@"Double tap to move the current note." value:&stru_282757698 table:0];
    v15 = [(ICNoteEditorNavigationItemConfiguration *)self moveBarButtonItem];
    [v15 setAccessibilityHint:v14];

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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"All Notes" value:&stru_282757698 table:0];
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
    v7 = [(ICNoteEditorNavigationItemConfiguration *)self undoBarButtonItem];
    v14[0] = v7;
    v8 = [(ICNoteEditorNavigationItemConfiguration *)self redoBarButtonItem];
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v10 = [v6 initWithBarButtonItems:v9 representativeItem:v5];
    v11 = self->_undoRedoBarButtonItemGroup;
    self->_undoRedoBarButtonItemGroup = v10;

    v12 = [(ICNoteEditorNavigationItemConfiguration *)self undoRedoMenu];
    [(UIBarButtonItemGroup *)self->_undoRedoBarButtonItemGroup setMenuRepresentation:v12];

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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Sidebar" value:&stru_282757698 table:0];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"sidebar.leading"];
    v8 = [v4 initWithTitle:v6 image:v7 target:self action:sel_sidebarAction_ menu:0];
    v9 = self->_sidebarButtonItem;
    self->_sidebarButtonItem = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Sidebar" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_sidebarButtonItem setAccessibilityLabel:v11];

    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"Double tap to toggle the sidebar" value:&stru_282757698 table:0];
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
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedStringForKey:@"Calculator Mode" value:&stru_282757698 table:0];
    v11 = [MEMORY[0x277D755B8] ic_systemImageNamed:@"calculator.fill"];
    v12 = [v8 initWithTitle:v10 image:v11 target:0 action:0 menu:v7];
    v13 = self->_calculatorModeItem;
    self->_calculatorModeItem = v12;

    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Calculator Mode" value:&stru_282757698 table:0];
    [(UIBarButtonItem *)self->_calculatorModeItem setAccessibilityLabel:v15];

    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Double tap to pick a calculator mode" value:&stru_282757698 table:0];
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
  v4 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
  v5 = [v4 view];
  [v5 ic_hairlineWidth];
  v7 = [v3 initWithFrame:{0.0, 0.0, v6, 12.0 * -2.0 + 44.0}];

  v8 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [v7 setBackgroundColor:v8];

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
    v4 = [(ICNoteEditorNavigationItemConfiguration *)self tableAttachmentViewController];
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self presentingViewController];
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ICNoteEditorNavigationItemConfiguration_tableActionMenu__block_invoke;
    v9[3] = &unk_2781ADAC0;
    objc_copyWeak(&v10, &location);
    v7 = [(ICTableActionMenu *)v3 initWithTableAttachmentViewController:v4 presentingViewController:v5 presentingBarButtonItem:v6 completion:v9];
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
  v2 = [(ICNoteEditorNavigationItemConfiguration *)self tableActionMenu];
  v3 = [v2 makeMenu];

  return v3;
}

- (id)undoRedoButtonWithImageName:(id)a3 title:(id)a4 selector:(SEL)a5
{
  v8 = MEMORY[0x277D75230];
  v9 = a4;
  v10 = a3;
  v11 = [v8 plainButtonConfiguration];
  [v11 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:v10];

  [v11 setImage:v12];
  v13 = [MEMORY[0x277D75220] buttonWithConfiguration:v11 primaryAction:0];
  [v13 setShowsLargeContentViewer:1];
  [v13 setLargeContentTitle:v9];

  [v13 setPointerInteractionEnabled:1];
  [v13 addTarget:self action:a5 forControlEvents:0x2000];

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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self styleBarButtonItem];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDChangeStyle" inDefaultCustomization:!v5 representativeItem:0 items:v7];
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self checklistBarButtonItem];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDTodo" inDefaultCustomization:!v5 representativeItem:0 items:v7];
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self tableBarButtonItem];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDTable" inDefaultCustomization:!v5 representativeItem:0 items:v7];
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self mediaBarButtonItem];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDInsert" inDefaultCustomization:!v5 representativeItem:0 items:v7];
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self hidesDefaultCenterItems];
    v6 = [(ICNoteEditorNavigationItemConfiguration *)self writingToolsBarButtonItem];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v4 optionalGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDWritingTools" inDefaultCustomization:!v5 representativeItem:0 items:v7];
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
    v5 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchBarButtonItem];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 movableGroupWithCustomizationIdentifier:@"ICNoteEditorViewControllerNavigationBarCustomizationIDInlineSketch" representativeItem:0 items:v6];
    v8 = self->_inlineSketchButtonItemGroup;
    self->_inlineSketchButtonItemGroup = v7;

    inlineSketchButtonItemGroup = self->_inlineSketchButtonItemGroup;
  }

  v9 = inlineSketchButtonItemGroup;

  return v9;
}

- (void)addNoteAction:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v8 noteEditorNavigationItemConfiguration:self addNoteFromBarButtonItem:v7 event:v6];
}

- (void)backAction:(id)a3
{
  v4 = [(ICNoteEditorNavigationItemConfiguration *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)writingToolsAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self showWritingToolsFromBarButtonItem:v4];
}

- (void)boldAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self toggleBIUS:1 fromBarButtonItem:v4];
}

- (void)italicAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self toggleBIUS:2 fromBarButtonItem:v4];
}

- (void)underlineAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self toggleBIUS:4 fromBarButtonItem:v4];
}

- (void)strikethroughAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self toggleBIUS:8 fromBarButtonItem:v4];
}

- (void)emphasisAction:(id)a3 colorType:(int64_t)a4
{
  v6 = a3;
  v7 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v7 skipNextUpdate];

  v8 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v8 noteEditorNavigationItemConfiguration:self setEmphasis:a4 fromBarButtonItem:v6];
}

- (void)linkAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self openLinkEditorWithSender:v4];
}

- (void)rightIndentAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self rightIndentWithSender:v4];
}

- (void)leftIndentAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self leftIndentWithSender:v4];
}

- (void)moveUpAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self moveUpWithSender:v4];
}

- (void)moveDownAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self moveDownWithSender:v4];
}

- (void)blockQuoteAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self toggleBlockQuoteWithSender:v4];
}

- (void)checklistAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self contextualInputAccessoryView];
  [v5 skipNextUpdate];

  v6 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v6 noteEditorNavigationItemConfiguration:self addChecklistFromBarButtonItem:v4];
}

- (void)closeAuxiliaryWindowAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self closeAuxiliaryWindowFromBarButtonItem:v4];
}

- (void)deleteAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self deleteFromBarButtonItem:v4];
}

- (void)doneAction:(id)a3
{
  v4 = a3;
  [(ICNoteEditorNavigationItemConfiguration *)self setInlineSketchEditingState:0];
  [(ICNoteEditorNavigationItemConfiguration *)self setEditing:0];
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self doneEditingFromBarButtonItem:v4];
}

- (void)inlineSketchAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self inlineSketchEditingState];
  v6 = v5 != 3;
  if (v5 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  [(ICNoteEditorNavigationItemConfiguration *)self setInlineSketchEditingState:v7];
  [(ICNoteEditorNavigationItemConfiguration *)self setEditing:v6];
  v8 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v8 noteEditorNavigationItemConfiguration:self inlineSketchFromBarButtonItem:v4];
}

- (void)lockAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self toggleLockFromBarButtonItem:v4];
}

- (void)moveAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self moveFromBarButtonItem:v4];
}

- (void)photoLibraryAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self showPhotoLibraryFromBarButtonItem:v4];
}

- (void)quickNoteAllNotesAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self quickNoteShowAllNotesFromBarButtonItem:v4];
}

- (void)quickNoteCancelAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self quickNoteDidCancelFromBarButtonItem:v4];
}

- (void)quickNoteSaveAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self quickNoteDidSaveFromBarButtonItem:v4];
}

- (void)redoAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self redoFromBarButtonItem:v4];
}

- (void)shareAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self shareFromBarButtonItem:v4];
}

- (void)sidebarAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self toggleSidebarFromBarButtonItem:v4];
}

- (void)styleAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self changeStyleFromBarButtonItem:v4];
}

- (void)tableAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self addTableFromBarButtonItem:v4];
}

- (void)undoAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self delegate];
  [v5 noteEditorNavigationItemConfiguration:self undoFromBarButtonItem:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (id)accessibilityCustomContentFor:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisMenuButton];

  if (v5 != v4)
  {

LABEL_3:
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_6;
  }

  v7 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisAccessibilityCustomContentValue];
  v8 = [v7 length];

  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x277CB88D0];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"Emphasis of selection" value:&stru_282757698 table:0];
  v12 = [(ICNoteEditorNavigationItemConfiguration *)self emphasisAccessibilityCustomContentValue];
  v13 = [v9 customContentWithLabel:v11 value:v12];
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