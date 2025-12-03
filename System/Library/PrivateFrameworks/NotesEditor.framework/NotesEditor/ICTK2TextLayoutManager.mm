@interface ICTK2TextLayoutManager
- (Class)viewProviderClassForTextAttachment:(id)attachment;
- (ICAttachmentViewDelegate)attachmentViewDelegate;
- (ICTK2TextController)textController;
- (ICTK2TextLayoutManager)init;
- (NSDictionary)trackedToDoParagraphs;
- (NSTextContentStorage)textContentStorage;
- (_NSRange)characterRangeForBoundingRect:(CGRect)rect;
- (_NSRange)rangeForAttachment:(id)attachment withTextAttachment:(id *)textAttachment;
- (id)existingAttachmentViewForIdentifier:(id)identifier;
- (id)existingAttachmentViewProviderForIdentifier:(id)identifier;
- (id)paragraphStyleForCharacterIndex:(unint64_t)index;
- (id)renderingAttributesForLink:(id)link atLocation:(id)location;
- (id)tableViewControllerForAttachment:(id)attachment createIfNeeded:(BOOL)needed;
- (id)todoButtonAtCharacterIndex:(unint64_t)index;
- (id)todoButtonForTrackedParagraph:(id)paragraph;
- (id)todoButtonsForCharacterRange:(_NSRange)range;
- (id)trackedTodoParagraphAtIndex:(unint64_t)index;
- (id)trackedTodoParagraphForTrackingUUID:(id)d;
- (id)viewProviderForTextAttachment:(id)attachment parentView:(id)view location:(id)location ignoreCache:(BOOL)cache;
- (int64_t)characterIndexForPoint:(CGPoint)point;
- (unint64_t)lineCountForCharacterRange:(_NSRange)range;
- (void)attachmentPreferredSizeDidChange:(id)change;
- (void)attachmentWillBeDeleted:(id)deleted;
- (void)clearCachedViewProvidersMatchingPredicate:(id)predicate;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)enumerateAttachmentViewsInRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateInlineAttachmentViewsInRange:(_NSRange)range usingBlock:(id)block;
- (void)invalidateLayoutForRange:(id)range;
- (void)invalidateLayoutForRanges:(id)ranges;
- (void)noteEditorControllerSelectionDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadInlineAttachments;
- (void)setAttachmentViewDelegate:(id)delegate;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setNeedsLayout;
- (void)setTextContainer:(id)container;
- (void)setTextContentManager:(id)manager;
- (void)updateExistingTodoViewProviderForTrackedParagraph:(id)paragraph;
- (void)updateParentForTableAttachmentViewController:(id)controller;
- (void)zoomFactorOrInsetsDidChange;
@end

@implementation ICTK2TextLayoutManager

- (ICTK2TextLayoutManager)init
{
  v9.receiver = self;
  v9.super_class = ICTK2TextLayoutManager;
  v2 = [(ICTK2TextLayoutManager *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tableAttachmentViewControllers = v2->_tableAttachmentViewControllers;
    v2->_tableAttachmentViewControllers = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    viewProviderCache = v2->_viewProviderCache;
    v2->_viewProviderCache = dictionary2;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_attachmentPreferredSizeDidChange_ name:*MEMORY[0x277D35B78] object:0];
    [defaultCenter addObserver:v2 selector:sel_attachmentWillBeDeleted_ name:*MEMORY[0x277D35C28] object:0];
    [defaultCenter addObserver:v2 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
    [defaultCenter addObserver:v2 selector:sel_noteEditorControllerSelectionDidChange_ name:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:0];
  }

  return v2;
}

- (NSTextContentStorage)textContentStorage
{
  objc_opt_class();
  textContentManager = [(ICTK2TextLayoutManager *)self textContentManager];
  v4 = ICDynamicCast();

  return v4;
}

- (void)setNeedsLayout
{
  objc_opt_class();
  textContainer = [(ICTK2TextLayoutManager *)self textContainer];
  v5 = ICDynamicCast();

  tk2TextView = [v5 tk2TextView];
  [tk2TextView setNeedsLayout];
}

- (ICAttachmentViewDelegate)attachmentViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentViewDelegate);

  return WeakRetained;
}

- (void)zoomFactorOrInsetsDidChange
{
  v28 = *MEMORY[0x277D85DE8];
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];

  v5 = *MEMORY[0x277D74060];
  ic_range = [textStorage ic_range];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __53__ICTK2TextLayoutManager_zoomFactorOrInsetsDidChange__block_invoke;
  v26[3] = &unk_2781AD568;
  v26[4] = self;
  [textStorage enumerateAttribute:v5 inRange:ic_range options:v7 usingBlock:{0, v26}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  textContentStorage2 = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage2 = [textContentStorage2 textStorage];
  ic_range2 = [textStorage2 ic_range];
  v12 = [(ICTK2TextLayoutManager *)self todoButtonsForCharacterRange:ic_range2, v11];

  v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        trackedParagraph = [*(*(&v22 + 1) + 8 * v16) trackedParagraph];
        paragraph = [trackedParagraph paragraph];
        todoTrackingUUID = [paragraph todoTrackingUUID];
        uUIDString = [todoTrackingUUID UUIDString];

        viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
        [viewProviderCache ic_removeObjectForNonNilKey:uUIDString];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v14);
  }
}

void __53__ICTK2TextLayoutManager_zoomFactorOrInsetsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) tableViewControllerForAttachment:v4 createIfNeeded:0];
    [v3 zoomFactorOrInsetsDidChange];
  }
}

- (NSDictionary)trackedToDoParagraphs
{
  textController = [(ICTK2TextLayoutManager *)self textController];
  trackedToDoParagraphs = [textController trackedToDoParagraphs];

  return trackedToDoParagraphs;
}

- (ICTK2TextController)textController
{
  objc_opt_class();
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v5 = ICDynamicCast();

  objc_opt_class();
  styler = [v5 styler];
  v7 = ICDynamicCast();

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICTK2TextLayoutManager;
  [(ICTK2TextLayoutManager *)&v4 dealloc];
}

- (void)setTextContentManager:(id)manager
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  tableAttachmentViewControllers = [(ICTK2TextLayoutManager *)self tableAttachmentViewControllers];
  allValues = [tableAttachmentViewControllers allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 willMoveToParentViewController:0];
        [v11 removeFromParentViewController];
      }

      v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  tableAttachmentViewControllers2 = [(ICTK2TextLayoutManager *)self tableAttachmentViewControllers];
  [tableAttachmentViewControllers2 removeAllObjects];

  [(ICTK2TextLayoutManager *)self clearCachedViewProvidersMatchingPredicate:0];
  v13.receiver = self;
  v13.super_class = ICTK2TextLayoutManager;
  [(ICTK2TextLayoutManager *)&v13 setTextContentManager:managerCopy];
}

- (void)setAttachmentViewDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_attachmentViewDelegate, delegateCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
  allValues = [viewProviderCache allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        view = [v11 view];
        v13 = ICDynamicCast();

        [v13 setDelegate:delegateCopy];
        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)setTextContainer:(id)container
{
  containerCopy = container;
  v5 = ICKeyPathFromSelectors();
  v6 = [(ICTK2TextLayoutManager *)self textContainer:sel_editorController];

  if (v6)
  {
    textContainer = [(ICTK2TextLayoutManager *)self textContainer];
    [textContainer ic_removeObserver:self forKeyPath:v5 context:&compoundliteral_1];
  }

  v9.receiver = self;
  v9.super_class = ICTK2TextLayoutManager;
  [(ICTK2TextLayoutManager *)&v9 setTextContainer:containerCopy];
  textContainer2 = [(ICTK2TextLayoutManager *)self textContainer];
  [textContainer2 ic_addObserver:self forKeyPath:v5 context:&compoundliteral_1];
}

- (void)invalidateLayoutForRanges:(id)ranges
{
  v18 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICTK2TextLayoutManager *)rangesCopy invalidateLayoutForRanges:v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = rangesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12.receiver = self;
        v12.super_class = ICTK2TextLayoutManager;
        [(ICTK2TextLayoutManager *)&v12 invalidateLayoutForRange:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    [(ICTK2TextLayoutManager *)self setNeedsLayout];
  }
}

- (void)invalidateLayoutForRange:(id)range
{
  rangeCopy = range;
  v5 = rangeCopy;
  if (rangeCopy)
  {
    v8 = rangeCopy;
    isEmpty = [rangeCopy isEmpty];
    v5 = v8;
    if ((isEmpty & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
      [(ICTK2TextLayoutManager *)self invalidateLayoutForRanges:v7];

      v5 = v8;
    }
  }
}

- (id)renderingAttributesForLink:(id)link atLocation:(id)location
{
  v5 = MEMORY[0x277D36708];
  locationCopy = location;
  defaultLinkTextAttributes = [v5 defaultLinkTextAttributes];
  v8 = [defaultLinkTextAttributes mutableCopy];

  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];

  documentRange = [(ICTK2TextLayoutManager *)self documentRange];
  location = [documentRange location];
  v13 = [(ICTK2TextLayoutManager *)self offsetFromLocation:location toLocation:locationCopy];

  mEMORY[0x277D04328] = [MEMORY[0x277D04328] sharedController];
  v15 = [mEMORY[0x277D04328] preferredTextAttributesForLinkAtCharacterIndex:v13 ofStorage:textStorage];

  v16 = [v15 mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;

  v20 = [textStorage attribute:*MEMORY[0x277D36008] atIndex:v13 effectiveRange:0];
  [v20 floatValue];
  v22 = v21;

  objc_opt_class();
  v23 = *MEMORY[0x277D740C0];
  v24 = [v19 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  v25 = ICDynamicCast();

  v26 = fabs(v22);
  if (v26 >= 0.00999999978)
  {
    preferredDefaultFontColor = [MEMORY[0x277D75348] preferredDefaultFontColor];
    v28 = [v25 ic_colorBlendedWithColor:preferredDefaultFontColor fraction:v26];

    v29 = v22 * 0.6 + 1.0;
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    v25 = [v28 colorWithAlphaComponent:{fmin(v29, 1.0)}];
  }

  objc_opt_class();
  textContainer = [(ICTK2TextLayoutManager *)self textContainer];
  v31 = ICDynamicCast();

  tk2TextView = [v31 tk2TextView];
  traitCollection = [tk2TextView traitCollection];

  if (traitCollection)
  {
    v34 = [v25 resolvedColorWithTraitCollection:traitCollection];

    v25 = v34;
  }

  [v19 ic_setNonNilObject:v25 forKey:v23];
  if (v22 <= -0.1)
  {
    v35 = &unk_28277E508;
  }

  else
  {
    v35 = &unk_28277E4F0;
  }

  v36 = *MEMORY[0x277D741F0];
  [v19 ic_setNonNilObject:v35 forKey:*MEMORY[0x277D741F0]];
  v37 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:v13 effectiveRange:0];
  if (v37)
  {
    [v19 removeObjectForKey:v36];
  }

  v38 = [v19 copy];

  return v38;
}

- (id)existingAttachmentViewProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
    v6 = [viewProviderCache objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "Requesting existing attachment view provider for nil identifier", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)existingAttachmentViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(ICTK2TextLayoutManager *)self existingAttachmentViewProviderForIdentifier:identifierCopy];
    view = [v5 view];

    if (!view)
    {
      tableAttachmentViewControllers = [(ICTK2TextLayoutManager *)self tableAttachmentViewControllers];
      v8 = [tableAttachmentViewControllers objectForKeyedSubscript:identifierCopy];
      view = [v8 view];
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_2151A1000, v9, OS_LOG_TYPE_INFO, "Requesting existing attachment view for nil identifier", v11, 2u);
    }

    view = 0;
  }

  return view;
}

- (id)tableViewControllerForAttachment:(id)attachment createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  attachmentCopy = attachment;
  v7 = attachmentCopy;
  if (!attachmentCopy)
  {
    viewIdentifier = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(viewIdentifier, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, viewIdentifier, OS_LOG_TYPE_INFO, "Requesting table view controller for nil text attachment", buf, 2u);
    }

    goto LABEL_12;
  }

  viewIdentifier = [attachmentCopy viewIdentifier];
  if (!viewIdentifier)
  {
    v15 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_2151A1000, v15, OS_LOG_TYPE_INFO, "Requesting table view controller for nil identifier", v17, 2u);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_15;
  }

  tableAttachmentViewControllers = [(ICTK2TextLayoutManager *)self tableAttachmentViewControllers];
  v10 = [tableAttachmentViewControllers objectForKeyedSubscript:viewIdentifier];

  if (!v10 && neededCopy)
  {
    textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
    attributedString = [textContentStorage attributedString];
    v13 = [attributedString ic_containsTextAttachment:v7];

    if (v13)
    {
      v10 = [(ICTableAttachmentViewController *)[ICiOSTableAttachmentViewController alloc] initWithTextAttachment:v7 forManualRendering:0 textLayoutManager:self];
      tableAttachmentViewControllers2 = [(ICTK2TextLayoutManager *)self tableAttachmentViewControllers];
      [tableAttachmentViewControllers2 setObject:v10 forKeyedSubscript:viewIdentifier];
    }

    else
    {
      v10 = 0;
    }
  }

  [(ICTK2TextLayoutManager *)self updateParentForTableAttachmentViewController:v10];
LABEL_15:

  return v10;
}

- (_NSRange)rangeForAttachment:(id)attachment withTextAttachment:(id *)textAttachment
{
  attachmentCopy = attachment;
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v9 = [textStorage ic_rangeForAttachment:attachmentCopy withTextAttachment:textAttachment];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)enumerateAttachmentViewsInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v10 = *MEMORY[0x277D74060];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ICTK2TextLayoutManager_enumerateAttachmentViewsInRange_usingBlock___block_invoke;
  v12[3] = &unk_2781ACCA8;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [textStorage enumerateAttribute:v10 inRange:location options:length usingBlock:{0, v12}];
}

void __69__ICTK2TextLayoutManager_enumerateAttachmentViewsInRange_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = v17;
  if (isKindOfClass)
  {
    v11 = v17;
    objc_opt_class();
    v12 = *(a1 + 32);
    v13 = [v11 viewIdentifier];
    v14 = [v12 existingAttachmentViewForIdentifier:v13];
    v15 = ICDynamicCast();

    if (v15)
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, v15, v11, a3, a4, a5);
      }
    }

    v10 = v17;
  }
}

- (void)enumerateInlineAttachmentViewsInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v10 = *MEMORY[0x277D74060];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ICTK2TextLayoutManager_enumerateInlineAttachmentViewsInRange_usingBlock___block_invoke;
  v12[3] = &unk_2781ACCA8;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [textStorage enumerateAttribute:v10 inRange:location options:length usingBlock:{0, v12}];
}

void __75__ICTK2TextLayoutManager_enumerateInlineAttachmentViewsInRange_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = v17;
  if (isKindOfClass)
  {
    v11 = v17;
    objc_opt_class();
    v12 = *(a1 + 32);
    v13 = [v11 viewIdentifier];
    v14 = [v12 existingAttachmentViewForIdentifier:v13];
    v15 = ICDynamicCast();

    if (v15)
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, v15, v11, a3, a4, a5);
      }
    }

    v10 = v17;
  }
}

- (id)paragraphStyleForCharacterIndex:(unint64_t)index
{
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v6 = [textStorage attribute:*MEMORY[0x277D35DA8] atIndex:index effectiveRange:0];

  return v6;
}

- (id)trackedTodoParagraphForTrackingUUID:(id)d
{
  dCopy = d;
  trackedToDoParagraphs = [(ICTK2TextLayoutManager *)self trackedToDoParagraphs];
  v6 = [trackedToDoParagraphs ic_objectForNonNilKey:dCopy];

  return v6;
}

- (id)trackedTodoParagraphAtIndex:(unint64_t)index
{
  v4 = [(ICTK2TextLayoutManager *)self paragraphStyleForCharacterIndex:index];
  todoTrackingUUID = [v4 todoTrackingUUID];
  v6 = [(ICTK2TextLayoutManager *)self trackedTodoParagraphForTrackingUUID:todoTrackingUUID];

  return v6;
}

- (id)todoButtonForTrackedParagraph:(id)paragraph
{
  paragraph = [paragraph paragraph];
  todoTrackingUUID = [paragraph todoTrackingUUID];
  uUIDString = [todoTrackingUUID UUIDString];

  objc_opt_class();
  v7 = [(ICTK2TextLayoutManager *)self existingAttachmentViewForIdentifier:uUIDString];
  v8 = ICDynamicCast();

  return v8;
}

- (id)todoButtonAtCharacterIndex:(unint64_t)index
{
  v3 = [(ICTK2TextLayoutManager *)self todoButtonsForCharacterRange:index, 0];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)todoButtonsForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x277CBEB18] array];
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v9 = *MEMORY[0x277D35DA8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __55__ICTK2TextLayoutManager_todoButtonsForCharacterRange___block_invoke;
  v16 = &unk_2781ACAF8;
  selfCopy = self;
  v18 = array;
  v10 = array;
  [textStorage ic_enumerateUnclampedAttribute:v9 inRange:location options:length usingBlock:{0, &v13}];

  v11 = [v10 copy];

  return v11;
}

void __55__ICTK2TextLayoutManager_todoButtonsForCharacterRange___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) trackedTodoParagraphAtIndex:?];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) todoButtonForTrackedParagraph:v4];
  [v2 ic_addNonNilObject:v3];
}

- (unint64_t)lineCountForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  documentRange = [(ICTK2TextLayoutManager *)self documentRange];
  location = [documentRange location];
  v8 = [(ICTK2TextLayoutManager *)self locationFromLocation:location withOffset:location];

  v9 = [(ICTK2TextLayoutManager *)self locationFromLocation:v8 withOffset:length];
  v10 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v8 endLocation:v9];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0xBFF0000000000000;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__ICTK2TextLayoutManager_lineCountForCharacterRange___block_invoke;
  v14[3] = &unk_2781AD518;
  v11 = v10;
  v15 = v11;
  v16 = v18;
  v17 = &v19;
  [(ICTK2TextLayoutManager *)self enumerateTextSegmentsInRange:v11 type:0 options:0 usingBlock:v14];
  v12 = v20[3];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __53__ICTK2TextLayoutManager_lineCountForCharacterRange___block_invoke(void *a1, void *a2, double a3, double a4)
{
  result = [a2 intersectsWithTextRange:a1[4]];
  if (result)
  {
    v7 = *(a1[5] + 8);
    if (*(v7 + 24) != a4)
    {
      ++*(*(a1[6] + 8) + 24);
      v7 = *(a1[5] + 8);
    }

    *(v7 + 24) = a4;
  }

  return result;
}

- (_NSRange)characterRangeForBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  documentRange = [(ICTK2TextLayoutManager *)self documentRange];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__ICTK2TextLayoutManager_characterRangeForBoundingRect___block_invoke;
  v15[3] = &unk_2781AD540;
  *&v15[6] = x;
  *&v15[7] = y;
  *&v15[8] = width;
  *&v15[9] = height;
  v15[4] = &v22;
  v15[5] = &v16;
  [(ICTK2TextLayoutManager *)self enumerateTextSegmentsInRange:documentRange type:0 options:0 usingBlock:v15];

  if (v23[5] && v17[5])
  {
    documentRange2 = [(ICTK2TextLayoutManager *)self documentRange];
    location = [documentRange2 location];
    v11 = [(ICTK2TextLayoutManager *)self offsetFromLocation:location toLocation:v23[5]];

    v12 = [(ICTK2TextLayoutManager *)self offsetFromLocation:v23[5] toLocation:v17[5]];
  }

  else
  {
    v12 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  v13 = v11;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

BOOL __56__ICTK2TextLayoutManager_characterRangeForBoundingRect___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 56);
  v11 = v10 + *(a1 + 72);
  if (a5 >= v10 && a5 <= v11)
  {
    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v13 = [v8 location];
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    v16 = [v8 endLocation];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  return a5 <= v11;
}

- (int64_t)characterIndexForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_opt_class();
  textContainer = [(ICTK2TextLayoutManager *)self textContainer];
  v7 = ICDynamicCast();
  tk2TextView = [v7 tk2TextView];

  [tk2TextView textContainerInset];
  v10 = x - v9;
  [tk2TextView textContainerInset];
  v12 = y - v11;
  v13 = [(ICTK2TextLayoutManager *)self textLayoutFragmentForPosition:v10, v12];
  [v13 layoutFragmentFrame];
  v15 = v10 - v14;
  v17 = v12 - v16;
  v18 = [v13 textLineFragmentForVerticalOffset:0 requiresExactMatch:v17];
  [v18 typographicBounds];
  v21 = [v18 characterIndexForPoint:{v15 - v19, v17 - v20}];
  rangeInElement = [v13 rangeInElement];
  v23 = [(ICTK2TextLayoutManager *)self ic_rangeForTextRange:rangeInElement];

  return v23 + v21;
}

- (void)reloadInlineAttachments
{
  v3 = [MEMORY[0x277CBEB58] set];
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  ic_range = [textStorage ic_range];
  v8 = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__ICTK2TextLayoutManager_reloadInlineAttachments__block_invoke;
  v13 = &unk_2781AD590;
  selfCopy = self;
  v15 = v3;
  v9 = v3;
  [(ICTK2TextLayoutManager *)self enumerateInlineAttachmentViewsInRange:ic_range usingBlock:v8, &v10];

  [(ICTK2TextLayoutManager *)self invalidateLayoutForRanges:v9, v10, v11, v12, v13, selfCopy];
}

void __49__ICTK2TextLayoutManager_reloadInlineAttachments__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [*(a1 + 32) ic_textRangeForRange:{a4, a5}];
  [*(a1 + 40) ic_addNonNilObject:v6];
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  v34 = *MEMORY[0x277D85DE8];
  finderCopy = finder;
  objc_storeStrong(&self->_highlightPatternRegexFinder, finder);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
  allValues = [viewProviderCache allValues];

  v8 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        objc_opt_class();
        v12 = ICDynamicCast();
        [v12 setHighlightPatternRegexFinder:finderCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  ic_range = [textStorage ic_range];
  v17 = v16;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__ICTK2TextLayoutManager_setHighlightPatternRegexFinder___block_invoke;
  v27[3] = &unk_2781ACCF8;
  v18 = finderCopy;
  v28 = v18;
  [(ICTK2TextLayoutManager *)self enumerateAttachmentViewsInRange:ic_range usingBlock:v17, v27];

  textContentStorage2 = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage2 = [textContentStorage2 textStorage];
  ic_range2 = [textStorage2 ic_range];
  v23 = v22;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__ICTK2TextLayoutManager_setHighlightPatternRegexFinder___block_invoke_2;
  v25[3] = &unk_2781AD5B8;
  v26 = v18;
  v24 = v18;
  [(ICTK2TextLayoutManager *)self enumerateInlineAttachmentViewsInRange:ic_range2 usingBlock:v23, v25];
}

- (void)attachmentPreferredSizeDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  object = [changeCopy object];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    if ([v6 ic_isModernNoteType])
    {
      v22 = changeCopy;
      mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
      workerManagedObjectContext = [mEMORY[0x277D35F30] workerManagedObjectContext];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __59__ICTK2TextLayoutManager_attachmentPreferredSizeDidChange___block_invoke;
      v35[3] = &unk_2781AC5B0;
      v36 = workerManagedObjectContext;
      v37 = v6;
      v38 = v7;
      v10 = workerManagedObjectContext;
      [v10 performBlockAndWait:v35];
    }

    else
    {
      if (![v6 ic_isAttachmentType])
      {
        v21 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2151A1000, v21, OS_LOG_TYPE_INFO, "Ignoring preferred size change notification for unknown type", buf, 2u);
        }

        goto LABEL_9;
      }

      v22 = changeCopy;
      [v7 addObject:v6];
    }

    v11 = [MEMORY[0x277CBEB58] set];
    v12 = [MEMORY[0x277CBEB58] set];
    textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
    textStorage = [textContentStorage textStorage];

    *buf = 0;
    v32 = buf;
    v33 = 0x2020000000;
    v34 = 0;
    ic_range = [textStorage ic_range];
    v17 = v16;
    v18 = *MEMORY[0x277D74060];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__ICTK2TextLayoutManager_attachmentPreferredSizeDidChange___block_invoke_63;
    v25[3] = &unk_2781AD5E0;
    v26 = v7;
    v19 = v11;
    v27 = v19;
    v20 = v12;
    v28 = v20;
    selfCopy = self;
    v30 = buf;
    [textStorage enumerateAttribute:v18 inRange:ic_range options:v17 usingBlock:{0, v25}];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__ICTK2TextLayoutManager_attachmentPreferredSizeDidChange___block_invoke_2;
    v23[3] = &unk_2781AD608;
    v21 = v19;
    v24 = v21;
    [(ICTK2TextLayoutManager *)self clearCachedViewProvidersMatchingPredicate:v23];
    [(ICTK2TextLayoutManager *)self invalidateLayoutForRanges:v20];

    _Block_object_dispose(buf, 8);
    changeCopy = v22;
LABEL_9:

    goto LABEL_10;
  }

  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "Ignoring preferred size change notification with nil object ID", buf, 2u);
  }

LABEL_10:
}

void __59__ICTK2TextLayoutManager_attachmentPreferredSizeDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 attachments];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 48);
        v9 = [*(*(&v10 + 1) + 8 * v7) objectID];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __59__ICTK2TextLayoutManager_attachmentPreferredSizeDidChange___block_invoke_63(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v9 = a2;
  objc_opt_class();
  v15 = ICDynamicCast();

  v10 = [v15 attachment];
  v11 = [v10 objectID];

  if (v11 && [*(a1 + 32) containsObject:v11])
  {
    if ([v15 supportsMultiplePresentationSizes])
    {
      [*(a1 + 40) addObject:v15];
      v12 = *(a1 + 48);
      v13 = [*(a1 + 56) ic_textRangeForRange:{a3, a4}];
      [v12 ic_addNonNilObject:v13];
    }

    v14 = ++*(*(*(a1 + 64) + 8) + 24);
    *a5 = v14 == [*(a1 + 32) count];
  }
}

uint64_t __59__ICTK2TextLayoutManager_attachmentPreferredSizeDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 textAttachment];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)attachmentWillBeDeleted:(id)deleted
{
  deletedCopy = deleted;
  objc_opt_class();
  object = [deletedCopy object];

  v5 = ICDynamicCast();
  identifier = [v5 identifier];

  if (identifier)
  {
    v8 = identifier;
    performBlockOnMainThread();
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "Ignoring attachment deleted notification with nil identifier", buf, 2u);
    }
  }
}

void __50__ICTK2TextLayoutManager_attachmentWillBeDeleted___block_invoke(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__ICTK2TextLayoutManager_attachmentWillBeDeleted___block_invoke_2;
  v15[3] = &unk_2781AD608;
  v16 = v2;
  [v4 clearCachedViewProvidersMatchingPredicate:v15];
  v5 = [*(v3 - 1) tableAttachmentViewControllers];
  v6 = [v5 objectForKeyedSubscript:*v3];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__ICTK2TextLayoutManager_attachmentWillBeDeleted___block_invoke_cold_1(v3, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = [*(a1 + 32) tableAttachmentViewControllers];
    [v14 removeObjectForKey:*(a1 + 40)];

    [v6 willMoveToParentViewController:0];
    [v6 removeFromParentViewController];
  }
}

uint64_t __50__ICTK2TextLayoutManager_attachmentWillBeDeleted___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 textAttachment];

  v5 = ICDynamicCast();

  v6 = [v5 viewIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  return v7;
}

- (void)contentSizeCategoryDidChange:(id)change
{
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];

  v6 = *MEMORY[0x277D74060];
  ic_range = [textStorage ic_range];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ICTK2TextLayoutManager_contentSizeCategoryDidChange___block_invoke;
  v9[3] = &unk_2781AD568;
  v9[4] = self;
  [textStorage enumerateAttribute:v6 inRange:ic_range options:v8 usingBlock:{0, v9}];
}

void __55__ICTK2TextLayoutManager_contentSizeCategoryDidChange___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = *(a1 + 32);
    if (isKindOfClass)
    {
      v5 = [v4 tableViewControllerForAttachment:v7 createIfNeeded:0];
    }

    else
    {
      v6 = [v7 viewIdentifier];
      v5 = [v4 existingAttachmentViewForIdentifier:v6];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    [v5 contentSizeCategoryDidChange];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)noteEditorControllerSelectionDidChange:(id)change
{
  v16[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  textContainer = [(ICTK2TextLayoutManager *)self textContainer];
  v5 = ICDynamicCast();

  tk2TextView = [v5 tk2TextView];
  selectedRange = [tk2TextView selectedRange];
  v9 = v8;

  textController = [(ICTK2TextLayoutManager *)self textController];
  textContentStorage = [(ICTK2TextLayoutManager *)self textContentStorage];
  textStorage = [textContentStorage textStorage];
  v13 = [MEMORY[0x277CCAE60] valueWithRange:{selectedRange, v9}];
  v16[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  tk2TextView2 = [v5 tk2TextView];
  [textController updateAttachmentsSelectionStateInTextStorage:textStorage forSelectedRanges:v14 textView:tk2TextView2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([(ICTK2TextLayoutManager *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/ICTK2TextLayoutManager.m"]& 1) != 0)
  {
    v13 = [(ICTK2TextLayoutManager *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];
    if (context == &compoundliteral_1 && (v13 & 1) == 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      tableAttachmentViewControllers = [(ICTK2TextLayoutManager *)self tableAttachmentViewControllers];
      allValues = [tableAttachmentViewControllers allValues];

      v16 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(allValues);
            }

            [(ICTK2TextLayoutManager *)self updateParentForTableAttachmentViewController:*(*(&v20 + 1) + 8 * v19++)];
          }

          while (v17 != v19);
          v17 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v17);
      }
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = ICTK2TextLayoutManager;
    [(ICTK2TextLayoutManager *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (Class)viewProviderClassForTextAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  v5 = MEMORY[0x277D74270];
  fileType = [attachmentCopy fileType];
  v7 = [v5 textAttachmentViewProviderClassForFileType:fileType];

  if (!v7)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
LABEL_2:
    v4 = objc_opt_class();
    goto LABEL_5;
  }

  v4 = v7;
LABEL_5:
  v8 = v4;

  return v8;
}

- (id)viewProviderForTextAttachment:(id)attachment parentView:(id)view location:(id)location ignoreCache:(BOOL)cache
{
  attachmentCopy = attachment;
  viewCopy = view;
  locationCopy = location;
  if (attachmentCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      viewIdentifier = [attachmentCopy viewIdentifier];
      if (!viewIdentifier)
      {
        v34 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *v42 = 0;
          _os_log_impl(&dword_2151A1000, v34, OS_LOG_TYPE_INFO, "Requesting view provider for nil identifier", v42, 2u);
        }

        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }

      if (cache)
      {
        goto LABEL_15;
      }

      if (ICInternalSettingsIsViewProviderCacheDisabled())
      {
        goto LABEL_15;
      }

      viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
      v14 = [viewProviderCache objectForKeyedSubscript:viewIdentifier];

      if (!v14)
      {
        goto LABEL_15;
      }

      v16 = locationCopy;
      textAttachment = [v14 textAttachment];
      v18 = textAttachment;
      if (textAttachment == attachmentCopy)
      {
      }

      else
      {
        v19 = [(ICTK2TextLayoutManager *)self canReuseMismatchedViewProviderForTextAttachment:attachmentCopy];

        if (!v19)
        {
          v20 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [ICTK2TextLayoutManager viewProviderForTextAttachment:parentView:location:ignoreCache:];
          }

          locationCopy = v16;
LABEL_15:
          v21 = [(ICTK2TextLayoutManager *)self viewProviderClassForTextAttachment:attachmentCopy];
          v22 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [ICTK2TextLayoutManager viewProviderForTextAttachment:v21 parentView:viewIdentifier location:v22 ignoreCache:?];
          }

          v41 = locationCopy;
          v14 = [[v21 alloc] initWithTextAttachment:attachmentCopy parentView:viewCopy textLayoutManager:self location:locationCopy];
          highlightPatternRegexFinder = [(ICTK2TextLayoutManager *)self highlightPatternRegexFinder];
          objc_opt_class();
          v24 = ICDynamicCast();
          [v24 setHighlightPatternRegexFinder:highlightPatternRegexFinder];

          objc_opt_class();
          textContainer = [(ICTK2TextLayoutManager *)self textContainer];
          v26 = ICDynamicCast();

          tk2TextView = [v26 tk2TextView];

          if (tk2TextView)
          {
            objc_opt_class();
            [attachmentCopy attachment];
            v28 = v40 = viewCopy;
            v29 = ICDynamicCast();
            documentMergeController = [v29 documentMergeController];
            tk2TextView2 = [v26 tk2TextView];
            [documentMergeController addTextView:tk2TextView2];

            viewCopy = v40;
          }

          if (!cache)
          {
            viewProviderCache2 = [(ICTK2TextLayoutManager *)self viewProviderCache];
            [viewProviderCache2 setObject:v14 forKeyedSubscript:viewIdentifier];
          }

          locationCopy = v41;
LABEL_22:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_30;
          }

          if ([(ICTK2TextLayoutManager *)self canReuseMismatchedViewProviderForTextAttachment:attachmentCopy])
          {
            [v14 setValue:attachmentCopy forKey:@"textAttachment"];
          }

          objc_opt_class();
          view = [v14 view];
          v34 = ICDynamicCast();

          todo = [attachmentCopy todo];
          -[NSObject setDone:](v34, "setDone:", [todo done]);
          trackedToDoParagraphs = [(ICTK2TextLayoutManager *)self trackedToDoParagraphs];
          uuid = [todo uuid];
          v38 = [trackedToDoParagraphs ic_objectForNonNilKey:uuid];
          [v34 setTrackedParagraph:v38];

          goto LABEL_29;
        }
      }

      if ([(ICTK2TextLayoutManager *)self suppressLocationUpdatesForRecycledViewProviders])
      {
        locationCopy = v16;
      }

      else
      {
        locationCopy = v16;
        if (objc_opt_respondsToSelector())
        {
          [v14 setUpdatedLocationForRecycledViewProvider:v16];
        }
      }

      goto LABEL_22;
    }
  }

  viewIdentifier = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(viewIdentifier, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2151A1000, viewIdentifier, OS_LOG_TYPE_INFO, "Requesting view provider for nil text attachment", buf, 2u);
  }

  v14 = 0;
LABEL_30:

  return v14;
}

- (void)updateExistingTodoViewProviderForTrackedParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  paragraph = [paragraphCopy paragraph];
  todo = [paragraph todo];

  viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
  uuid = [todo uuid];
  uUIDString = [uuid UUIDString];
  v9 = [viewProviderCache objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    textAttachment = [v9 textAttachment];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_opt_class();
      view = [v9 view];
      v13 = ICDynamicCast();

      [v13 setDone:{objc_msgSend(todo, "done")}];
      [v13 setTrackedParagraph:paragraphCopy];
    }
  }
}

- (void)updateParentForTableAttachmentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  textContainer = [(ICTK2TextLayoutManager *)self textContainer];
  v5 = ICDynamicCast();

  tk2TextView = [v5 tk2TextView];
  editorContainer = [tk2TextView editorContainer];

  if (controllerCopy)
  {
    if (editorContainer)
    {
      parentViewController = [controllerCopy parentViewController];

      if (parentViewController != editorContainer)
      {
        [editorContainer addChildViewController:controllerCopy];
        [controllerCopy didMoveToParentViewController:editorContainer];
      }
    }
  }
}

- (void)clearCachedViewProvidersMatchingPredicate:(id)predicate
{
  v25 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v18 = [MEMORY[0x277CBEB58] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(ICTK2TextLayoutManager *)self viewProviderCache];
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          viewProviderCache = [(ICTK2TextLayoutManager *)self viewProviderCache];
          v11 = [viewProviderCache objectForKeyedSubscript:v9];
          v12 = predicateCopy[2](predicateCopy, v11);

          if (v12)
          {
            [v18 addObject:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v13 = os_log_create("com.apple.notes", "UI");
    viewProviderCache3 = v18;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICTK2TextLayoutManager clearCachedViewProvidersMatchingPredicate:];
    }

    viewProviderCache2 = [(ICTK2TextLayoutManager *)self viewProviderCache];
    allObjects = [v18 allObjects];
    [viewProviderCache2 removeObjectsForKeys:allObjects];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICTK2TextLayoutManager clearCachedViewProvidersMatchingPredicate:v17];
    }

    viewProviderCache3 = [(ICTK2TextLayoutManager *)self viewProviderCache];
    [viewProviderCache3 removeAllObjects];
  }
}

- (void)invalidateLayoutForRanges:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Invalidating text layout for %lu ranges", v3, 0xCu);
}

- (void)viewProviderForTextAttachment:(NSObject *)a3 parentView:location:ignoreCache:.cold.2(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_2151A1000, a3, OS_LOG_TYPE_DEBUG, "Creating new view provider of type %@ for attachment %@", v6, 0x16u);
}

@end