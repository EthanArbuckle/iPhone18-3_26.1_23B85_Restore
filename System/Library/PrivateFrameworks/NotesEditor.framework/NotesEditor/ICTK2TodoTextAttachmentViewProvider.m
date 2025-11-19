@interface ICTK2TodoTextAttachmentViewProvider
- (BOOL)selectedRangesIntersectWithRange:(_NSRange)a3;
- (ICNAEventReporter)eventReporter;
- (ICTK2TextView)textView;
- (ICTK2TodoTextAttachment)todoTextAttachment;
- (ICTTTextStorage)textStorage;
- (ICTextController)textController;
- (ICTodoButton)todoButton;
- (void)dealloc;
- (void)didPressTodoButton:(id)a3;
- (void)eventReporterLostSession:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ICTK2TodoTextAttachmentViewProvider

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D36990]);
  v4 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  v5 = [v4 textDragInteraction];
  v6 = [v5 delegate];
  v29 = [v3 initWithDragDelegate:v6];

  [v29 addTarget:self action:sel_didPressTodoButton_ forControlEvents:64];
  v7 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v8 = [v7 todo];

  v9 = [v8 uuid];

  if (v9)
  {
    v10 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    v11 = [v10 note];
    [v29 setNote:v11];

    v12 = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
    v13 = [v12 trackedToDoParagraphs];
    v14 = [v8 uuid];
    v15 = [v13 objectForKeyedSubscript:v14];
    [v29 setTrackedParagraph:v15];
  }

  [v29 setDone:objc_msgSend(v8 animated:{"done"), 0}];
  v16 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  [v16 foregroundAlpha];
  if (v17 == 0.0)
  {
    v17 = 1.0;
  }

  [v29 ic_setAlpha:v17];

  v18 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v19 = [v18 highlightColor];
  [v29 setHighlightColor:v19];

  v20 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v21 = NSStringFromSelector(sel_highlightColor);
  [v20 ic_addObserver:self forKeyPath:v21 context:&compoundliteral_8];

  v22 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v23 = NSStringFromSelector(sel_foregroundAlpha);
  [v22 ic_addObserver:self forKeyPath:v23 context:&compoundliteral_8];

  objc_opt_class();
  v24 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  v25 = [v24 textContainer];
  v26 = ICDynamicCast();
  v27 = [v26 insideSiriSnippet];

  if (v27)
  {
    v28 = [MEMORY[0x277D75348] ICTintColor];
    [v29 setOverrideTintColor:v28];
  }

  [(NSTextAttachmentViewProvider *)self setView:v29];
}

- (void)dealloc
{
  v3 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v4 = NSStringFromSelector(sel_highlightColor);
  [v3 ic_removeObserver:self forKeyPath:v4 context:&compoundliteral_8];

  v5 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
  v6 = NSStringFromSelector(sel_foregroundAlpha);
  [v5 ic_removeObserver:self forKeyPath:v6 context:&compoundliteral_8];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = ICTK2TodoTextAttachmentViewProvider;
  [(NSTextAttachmentViewProvider *)&v8 dealloc];
}

- (ICTodoButton)todoButton
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (ICTTTextStorage)textStorage
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = ICDynamicCast();
  v5 = [v4 textContentStorage];

  objc_opt_class();
  v6 = [v5 textStorage];
  v7 = ICDynamicCast();

  return v7;
}

- (ICTextController)textController
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = ICDynamicCast();
  v5 = [v4 textContentStorage];

  objc_opt_class();
  v6 = [v5 textStorage];
  v7 = ICDynamicCast();
  v8 = [v7 styler];

  return v8;
}

- (ICTK2TextView)textView
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v4 = ICDynamicCast();

  objc_opt_class();
  v5 = [v4 textContainer];
  v6 = ICDynamicCast();

  v7 = [v6 tk2TextView];

  return v7;
}

- (ICTK2TodoTextAttachment)todoTextAttachment
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v4 = ICDynamicCast();

  return v4;
}

- (void)didPressTodoButton:(id)a3
{
  v4 = a3;
  v5 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  v6 = [v5 isDraggingChecklistItem];

  if ((v6 & 1) == 0)
  {
    v7 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    v8 = [v7 delegate];
    v9 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    v10 = [v8 textViewShouldBeginEditing:v9];

    objc_opt_class();
    v11 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
    v12 = ICDynamicCast();

    v13 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
    v14 = [v13 todo];

    v15 = [v14 uuid];
    v16 = [v12 trackedTodoParagraphForTrackingUUID:v15];

    if (!v16)
    {
      v62 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [(ICTK2TodoTextAttachmentViewProvider *)v14 didPressTodoButton:v62];
      }

      v57 = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
      v60 = [(ICTK2TodoTextAttachmentViewProvider *)self textStorage];
      v61 = [(ICTK2TodoTextAttachmentViewProvider *)self textStorage];
      v63 = [v61 ic_range];
      [v57 updateTrackedAttributesInTextStorage:v60 range:v63 changeInLength:{v64, 0}];
      goto LABEL_25;
    }

    v17 = [v16 characterRange];
    if (!v10)
    {
LABEL_27:

      goto LABEL_28;
    }

    v19 = v17;
    v20 = v18;
    v21 = [v4 isDone];
    v22 = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
    v23 = [(ICTK2TodoTextAttachmentViewProvider *)self textStorage];
    v69 = v21;
    v68 = v20;
    LODWORD(v20) = [v22 setDone:v21 ^ 1 range:v19 inTextStorage:{v20, v23}];

    v70 = v20;
    if (v20)
    {
      v65 = v12;
      v24 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      [v24 layoutIfNeeded];

      v25 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      v26 = [v25 textStorage];
      v67 = v19;
      v27 = [v26 attribute:*MEMORY[0x277D74118] atIndex:v19 effectiveRange:0];

      objc_opt_class();
      v66 = v27;
      v28 = [v27 textLists];
      v29 = [v28 firstObject];
      v30 = [v29 markerTextAttachment];
      v31 = ICDynamicCast();

      objc_opt_class();
      v32 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
      v33 = ICDynamicCast();

      [v33 setSuppressLocationUpdatesForRecycledViewProviders:1];
      v34 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      v35 = [v34 containerViewForAttachments];
      v36 = [(ICTK2TextAttachmentViewProvider *)self location];
      v37 = [v33 viewProviderForTextAttachment:v31 parentView:v35 location:v36];

      [v33 setSuppressLocationUpdatesForRecycledViewProviders:0];
      v38 = [v37 todoButton];
      [v38 setDone:v69 animated:0];

      v39 = [v37 todoButton];
      [v39 setDone:v69 ^ 1 animated:1];

      [v4 wasPressed];
      v40 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      v41 = [v40 icDelegate];
      LOBYTE(v35) = objc_opt_respondsToSelector();

      if (v35)
      {
        v42 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
        v43 = [v42 icDelegate];
        [v43 didInvokeAnalyticsChecklistActionChecked:v69 ^ 1];
      }

      v19 = v67;
      v12 = v65;
    }

    v44 = [MEMORY[0x277D75718] sharedMenuController];
    v45 = [v44 isMenuVisible];

    if (v45)
    {
      v46 = [MEMORY[0x277D75718] sharedMenuController];
      [v46 setMenuVisible:0 animated:1];
    }

    v47 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    if ([v47 isFirstResponder])
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

      v47 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      [v47 setSelectedRange:{v49, 0}];
    }

LABEL_17:
    if (v70)
    {
      v50 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      v51 = [v50 delegate];
      v52 = objc_opt_respondsToSelector();

      if (v52)
      {
        v53 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
        v54 = [v53 delegate];
        v55 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
        [v54 textViewDidChange:v55];
      }

      objc_opt_class();
      v56 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
      v57 = ICDynamicCast();

      if (!v57)
      {
        goto LABEL_26;
      }

      v58 = [(ICTK2TodoTextAttachmentViewProvider *)self eventReporter];
      v59 = [(ICTK2TodoTextAttachmentViewProvider *)self textController];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __58__ICTK2TodoTextAttachmentViewProvider_didPressTodoButton___block_invoke;
      v71[3] = &unk_2781AD098;
      v72 = v58;
      v60 = v58;
      [v59 autoSortChecklistIfNecessaryForTrackedParagraph:v16 textView:v57 analyticsHandler:v71];

      dispatchMainAfterDelay();
      v61 = v72;
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
    v6 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
    v7 = [v3 initWithSubTrackerName:v5 view:v6];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (BOOL)selectedRangesIntersectWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(ICTK2TodoTextAttachmentViewProvider *)self textView];
  v6 = [v5 ic_selectedRanges];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v13.location = v11;
        v13.length = v12;
        if (v12 || (v11 >= location ? (v14 = v11 - location >= length) : (v14 = 1), v14))
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

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  if (([(ICTK2TodoTextAttachmentViewProvider *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/ICTK2TodoTextAttachmentViewProvider.m"]& 1) != 0)
  {
    v13 = [(ICTK2TodoTextAttachmentViewProvider *)self ic_shouldIgnoreObserveValue:v11 ofObject:v10 forKeyPath:v12];

    if (a6 == &compoundliteral_8 && (v13 & 1) == 0)
    {
      v14 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];

      if (v14 == v10)
      {
        v15 = [(ICTK2TodoTextAttachmentViewProvider *)self todoButton];
        v16 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
        [v16 foregroundAlpha];
        if (v17 == 0.0)
        {
          v17 = 1.0;
        }

        [v15 ic_setAlpha:v17];

        v18 = [(ICTK2TodoTextAttachmentViewProvider *)self todoTextAttachment];
        v19 = [v18 highlightColor];
        v20 = [(ICTK2TodoTextAttachmentViewProvider *)self todoButton];
        [v20 setHighlightColor:v19];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = ICTK2TodoTextAttachmentViewProvider;
    [(ICTK2TodoTextAttachmentViewProvider *)&v21 observeValueForKeyPath:v12 ofObject:v10 change:v11 context:a6];
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