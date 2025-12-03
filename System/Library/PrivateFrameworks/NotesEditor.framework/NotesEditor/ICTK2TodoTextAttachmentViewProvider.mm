@interface ICTK2TodoTextAttachmentViewProvider
- (BOOL)selectedRangesIntersectWithRange:(_NSRange)range;
- (ICNAEventReporter)eventReporter;
- (ICTK2TextView)textView;
- (ICTK2TodoTextAttachment)todoTextAttachment;
- (ICTTTextStorage)textStorage;
- (ICTextController)textController;
- (ICTodoButton)todoButton;
- (void)dealloc;
- (void)didPressTodoButton:(id)button;
- (void)eventReporterLostSession:(id)session;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ICTK2TodoTextAttachmentViewProvider

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D36990]);
  textView = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  textDragInteraction = [textView textDragInteraction];
  delegate = [textDragInteraction delegate];
  v29 = [v3 initWithDragDelegate:delegate];

  [v29 addTarget:self action:sel_didPressTodoButton_ forControlEvents:64];
  todoTextAttachment = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  todo = [todoTextAttachment todo];

  uuid = [todo uuid];

  if (uuid)
  {
    textView2 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    note = [textView2 note];
    [v29 setNote:note];

    textController = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
    trackedToDoParagraphs = [textController trackedToDoParagraphs];
    uuid2 = [todo uuid];
    v15 = [trackedToDoParagraphs objectForKeyedSubscript:uuid2];
    [v29 setTrackedParagraph:v15];
  }

  [v29 setDone:objc_msgSend(todo animated:{"done"), 0}];
  todoTextAttachment2 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  [todoTextAttachment2 foregroundAlpha];
  if (v17 == 0.0)
  {
    v17 = 1.0;
  }

  [v29 ic_setAlpha:v17];

  todoTextAttachment3 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  highlightColor = [todoTextAttachment3 highlightColor];
  [v29 setHighlightColor:highlightColor];

  todoTextAttachment4 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v21 = NSStringFromSelector(sel_highlightColor);
  [todoTextAttachment4 ic_addObserver:self forKeyPath:v21 context:&compoundliteral_8];

  todoTextAttachment5 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v23 = NSStringFromSelector(sel_foregroundAlpha);
  [todoTextAttachment5 ic_addObserver:self forKeyPath:v23 context:&compoundliteral_8];

  objc_opt_class();
  textView3 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  textContainer = [textView3 textContainer];
  v26 = ICDynamicCast();
  insideSiriSnippet = [v26 insideSiriSnippet];

  if (insideSiriSnippet)
  {
    iCTintColor = [MEMORY[0x277D75348] ICTintColor];
    [v29 setOverrideTintColor:iCTintColor];
  }

  [(NSTextAttachmentViewProvider *)self setView:v29];
}

- (void)dealloc
{
  todoTextAttachment = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v4 = NSStringFromSelector(sel_highlightColor);
  [todoTextAttachment ic_removeObserver:self forKeyPath:v4 context:&compoundliteral_8];

  todoTextAttachment2 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v6 = NSStringFromSelector(sel_foregroundAlpha);
  [todoTextAttachment2 ic_removeObserver:self forKeyPath:v6 context:&compoundliteral_8];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v8.receiver = self;
  v8.super_class = ICTK2TodoTextAttachmentViewProvider;
  [(NSTextAttachmentViewProvider *)&v8 dealloc];
}

- (ICTodoButton)todoButton
{
  objc_opt_class();
  view = [(NSTextAttachmentViewProvider *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (ICTTTextStorage)textStorage
{
  objc_opt_class();
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = ICDynamicCast();
  textContentStorage = [v4 textContentStorage];

  objc_opt_class();
  textStorage = [textContentStorage textStorage];
  v7 = ICDynamicCast();

  return v7;
}

- (ICTextController)textController
{
  objc_opt_class();
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = ICDynamicCast();
  textContentStorage = [v4 textContentStorage];

  objc_opt_class();
  textStorage = [textContentStorage textStorage];
  v7 = ICDynamicCast();
  styler = [v7 styler];

  return styler;
}

- (ICTK2TextView)textView
{
  objc_opt_class();
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = ICDynamicCast();

  objc_opt_class();
  textContainer = [v4 textContainer];
  v6 = ICDynamicCast();

  tk2TextView = [v6 tk2TextView];

  return tk2TextView;
}

- (ICTK2TodoTextAttachment)todoTextAttachment
{
  objc_opt_class();
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  v4 = ICDynamicCast();

  return v4;
}

- (void)didPressTodoButton:(id)button
{
  buttonCopy = button;
  textView = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  isDraggingChecklistItem = [textView isDraggingChecklistItem];

  if ((isDraggingChecklistItem & 1) == 0)
  {
    textView2 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    delegate = [textView2 delegate];
    textView3 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    v10 = [delegate textViewShouldBeginEditing:textView3];

    objc_opt_class();
    textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
    v12 = ICDynamicCast();

    todoTextAttachment = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
    todo = [todoTextAttachment todo];

    uuid = [todo uuid];
    v16 = [v12 trackedTodoParagraphForTrackingUUID:uuid];

    if (!v16)
    {
      v62 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [(ICTK2TodoTextAttachmentViewProvider *)todo didPressTodoButton:v62];
      }

      textController = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
      textStorage = [(ICTK2TodoTextAttachmentViewProvider *)self textStorage];
      textStorage2 = [(ICTK2TodoTextAttachmentViewProvider *)self textStorage];
      ic_range = [textStorage2 ic_range];
      [textController updateTrackedAttributesInTextStorage:textStorage range:ic_range changeInLength:{v64, 0}];
      goto LABEL_25;
    }

    characterRange = [v16 characterRange];
    if (!v10)
    {
LABEL_27:

      goto LABEL_28;
    }

    v19 = characterRange;
    v20 = v18;
    isDone = [buttonCopy isDone];
    textController2 = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
    textStorage3 = [(ICTK2TodoTextAttachmentViewProvider *)self textStorage];
    v69 = isDone;
    v68 = v20;
    LODWORD(v20) = [textController2 setDone:isDone ^ 1 range:v19 inTextStorage:{v20, textStorage3}];

    v70 = v20;
    if (v20)
    {
      v65 = v12;
      textView4 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      [textView4 layoutIfNeeded];

      textView5 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      textStorage4 = [textView5 textStorage];
      v67 = v19;
      v27 = [textStorage4 attribute:*MEMORY[0x277D74118] atIndex:v19 effectiveRange:0];

      objc_opt_class();
      v66 = v27;
      textLists = [v27 textLists];
      firstObject = [textLists firstObject];
      markerTextAttachment = [firstObject markerTextAttachment];
      v31 = ICDynamicCast();

      objc_opt_class();
      textLayoutManager2 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
      v33 = ICDynamicCast();

      [v33 setSuppressLocationUpdatesForRecycledViewProviders:1];
      textView6 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      containerViewForAttachments = [textView6 containerViewForAttachments];
      location = [(ICTK2TextAttachmentViewProvider *)self location];
      v37 = [v33 viewProviderForTextAttachment:v31 parentView:containerViewForAttachments location:location];

      [v33 setSuppressLocationUpdatesForRecycledViewProviders:0];
      todoButton = [v37 todoButton];
      [todoButton setDone:v69 animated:0];

      todoButton2 = [v37 todoButton];
      [todoButton2 setDone:v69 ^ 1 animated:1];

      [buttonCopy wasPressed];
      textView7 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      icDelegate = [textView7 icDelegate];
      LOBYTE(containerViewForAttachments) = objc_opt_respondsToSelector();

      if (containerViewForAttachments)
      {
        textView8 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
        icDelegate2 = [textView8 icDelegate];
        [icDelegate2 didInvokeAnalyticsChecklistActionChecked:v69 ^ 1];
      }

      v19 = v67;
      v12 = v65;
    }

    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    isMenuVisible = [mEMORY[0x277D75718] isMenuVisible];

    if (isMenuVisible)
    {
      mEMORY[0x277D75718]2 = [MEMORY[0x277D75718] sharedMenuController];
      [mEMORY[0x277D75718]2 setMenuVisible:0 animated:1];
    }

    textView9 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    if ([textView9 isFirstResponder])
    {
      v48 = [(ICTK2TodoTextAttachmentViewProvider *)self selectedRangesIntersectWithRange:v19, v68];

      if (v48)
      {
        goto LABEL_17;
      }

      if (v19 <= v68 + v19 - 1)
      {
        v49 = v68 + v19 - 1;
      }

      else
      {
        v49 = v19;
      }

      textView9 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      [textView9 setSelectedRange:{v49, 0}];
    }

LABEL_17:
    if (v70)
    {
      textView10 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      delegate2 = [textView10 delegate];
      v52 = objc_opt_respondsToSelector();

      if (v52)
      {
        textView11 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
        delegate3 = [textView11 delegate];
        textView12 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
        [delegate3 textViewDidChange:textView12];
      }

      objc_opt_class();
      textView13 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      textController = ICDynamicCast();

      if (!textController)
      {
        goto LABEL_26;
      }

      eventReporter = [(ICTK2TodoTextAttachmentViewProvider *)self eventReporter];
      textController3 = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __58__ICTK2TodoTextAttachmentViewProvider_didPressTodoButton___block_invoke;
      v71[3] = &unk_2781AD098;
      v72 = eventReporter;
      textStorage = eventReporter;
      [textController3 autoSortChecklistIfNecessaryForTrackedParagraph:v16 textView:textController analyticsHandler:v71];

      dispatchMainAfterDelay();
      textStorage2 = v72;
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = objc_alloc(MEMORY[0x277D35978]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    textView = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    v7 = [v3 initWithSubTrackerName:v5 view:textView];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v6 object:object];
}

- (BOOL)selectedRangesIntersectWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  textView = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  ic_selectedRanges = [textView ic_selectedRanges];

  v7 = [ic_selectedRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(ic_selectedRanges);
        }

        rangeValue = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v13.location = rangeValue;
        v13.length = v12;
        if (v12 || (rangeValue >= location ? (v14 = rangeValue - location >= length) : (v14 = 1), v14))
        {
          v23.location = location;
          v23.length = length;
          if (!NSIntersectionRange(v23, v13).length)
          {
            continue;
          }
        }

        v15 = 1;
        goto LABEL_17;
      }

      v8 = [ic_selectedRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  pathCopy = path;
  if (([(ICTK2TodoTextAttachmentViewProvider *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/ICTK2TodoTextAttachmentViewProvider.m"]& 1) != 0)
  {
    v13 = [(ICTK2TodoTextAttachmentViewProvider *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_8 && (v13 & 1) == 0)
    {
      todoTextAttachment = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];

      if (todoTextAttachment == objectCopy)
      {
        todoButton = [(ICTK2TodoTextAttachmentViewProvider *)self todoButton];
        todoTextAttachment2 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
        [todoTextAttachment2 foregroundAlpha];
        if (v17 == 0.0)
        {
          v17 = 1.0;
        }

        [todoButton ic_setAlpha:v17];

        todoTextAttachment3 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
        highlightColor = [todoTextAttachment3 highlightColor];
        todoButton2 = [(ICTK2TodoTextAttachmentViewProvider *)self todoButton];
        [todoButton2 setHighlightColor:highlightColor];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = ICTK2TodoTextAttachmentViewProvider;
    [(ICTK2TodoTextAttachmentViewProvider *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)didPressTodoButton:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 uuid];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "No tracked paragraph found for uuid: %@. Attempting to recover, but checklist button press will be ignored.", &v4, 0xCu);
}

@end