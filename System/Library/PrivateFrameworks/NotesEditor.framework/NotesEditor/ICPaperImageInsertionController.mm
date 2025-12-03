@interface ICPaperImageInsertionController
- (BOOL)shouldAddImagesToPaper;
- (ICNoteEditorViewController)noteEditor;
- (ICPaperImageInsertionController)initWithNoteEditorViewController:(id)controller;
- (void)addImagesToPaperWithItemProviders:(id)providers;
@end

@implementation ICPaperImageInsertionController

- (ICPaperImageInsertionController)initWithNoteEditorViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ICPaperImageInsertionController;
  v5 = [(ICPaperImageInsertionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICPaperImageInsertionController *)v5 setNoteEditor:controllerCopy];
  }

  return v6;
}

- (BOOL)shouldAddImagesToPaper
{
  if (![MEMORY[0x277D75418] ic_isiPad])
  {
    return 0;
  }

  noteEditor = [(ICPaperImageInsertionController *)self noteEditor];
  note = [noteEditor note];
  textStorage = [note textStorage];
  ic_range = [textStorage ic_range];
  v8 = v7;

  noteEditor2 = [(ICPaperImageInsertionController *)self noteEditor];
  textViewVisibleRange = [noteEditor2 textViewVisibleRange];
  v12 = v11;

  if (textViewVisibleRange == ic_range + v8 && v12 == 0)
  {
    v13.length = 2;
  }

  else
  {
    v13.length = v12 + 1;
  }

  v13.location = textViewVisibleRange - ((textViewVisibleRange == ic_range + v8) & (v12 == 0));
  v40.location = ic_range;
  v40.length = v8;
  v14 = NSIntersectionRange(v13, v40);
  noteEditor3 = [(ICPaperImageInsertionController *)self noteEditor];
  textView = [noteEditor3 textView];
  [textView bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = v24;
  noteEditor4 = [(ICPaperImageInsertionController *)self noteEditor];
  note2 = [noteEditor4 note];
  textStorage2 = [note2 textStorage];
  v28 = *MEMORY[0x277D74060];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__ICPaperImageInsertionController_shouldAddImagesToPaper__block_invoke;
  v31[3] = &unk_2781AF1C8;
  v31[6] = ic_range;
  v31[7] = v8;
  v31[4] = &v36;
  v31[5] = &v32;
  v31[8] = v18;
  v31[9] = v20;
  v31[10] = v22;
  v31[11] = v24;
  [textStorage2 enumerateAttribute:v28 inRange:v14.location options:v14.length usingBlock:{0, v31}];

  v29 = v37[3] / v33[3] > 0.7;
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return v29;
}

void __57__ICPaperImageInsertionController_shouldAddImagesToPaper__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v15 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v15;
    if (isKindOfClass)
    {
      objc_opt_class();
      v9 = ICDynamicCast();
      [v9 bounds];
      *(*(*(a1 + 32) + 8) + 24) = v10 + *(*(*(a1 + 32) + 8) + 24);
      if (a3 + a4 == *(a1 + 56))
      {
        v11 = *(a1 + 88);
        [v9 bounds];
        v13 = v11 - v12;
        [v9 bounds];
        *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - (v13 - v14);
      }

      v7 = v15;
    }
  }
}

- (void)addImagesToPaperWithItemProviders:(id)providers
{
  v61 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  if ([providersCopy count])
  {
    noteEditor = [(ICPaperImageInsertionController *)self noteEditor];
    note = [noteEditor note];
    textStorage = [note textStorage];
    ic_range = [textStorage ic_range];
    v10 = v9;

    noteEditor2 = [(ICPaperImageInsertionController *)self noteEditor];
    textViewVisibleRange = [noteEditor2 textViewVisibleRange];
    v14 = v13;

    if (textViewVisibleRange == ic_range + v10 && v14 == 0)
    {
      v15.length = 2;
    }

    else
    {
      v15.length = v14 + 1;
    }

    v15.location = textViewVisibleRange - ((textViewVisibleRange == ic_range + v10) & (v14 == 0));
    v62.location = ic_range;
    v62.length = v10;
    v16 = NSIntersectionRange(v15, v62);
    noteEditor3 = [(ICPaperImageInsertionController *)self noteEditor];
    textView = [noteEditor3 textView];
    [textView bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v57 = 0;
    v58[0] = &v57;
    v58[1] = 0x3032000000;
    v58[2] = __Block_byref_object_copy__18;
    v58[3] = __Block_byref_object_dispose__18;
    v59 = 0;
    noteEditor4 = [(ICPaperImageInsertionController *)self noteEditor];
    note2 = [noteEditor4 note];
    textStorage2 = [note2 textStorage];
    v30 = *MEMORY[0x277D74060];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __69__ICPaperImageInsertionController_addImagesToPaperWithItemProviders___block_invoke;
    v56[3] = &unk_2781AF1F0;
    v56[4] = self;
    v56[5] = &v57;
    *&v56[6] = v20 + v24 * 0.5;
    *&v56[7] = v22 + v26 * 0.5;
    [textStorage2 enumerateAttribute:v30 inRange:v16.location options:v16.length usingBlock:{0, v56}];

    if (*(v58[0] + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        noteEditor5 = [(ICPaperImageInsertionController *)self noteEditor];
        note3 = [noteEditor5 note];
        managedObjectContext = [note3 managedObjectContext];

        if (managedObjectContext)
        {
          v34 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
          noteEditor6 = [(ICPaperImageInsertionController *)self noteEditor];
          note4 = [noteEditor6 note];
          noteEditor7 = [(ICPaperImageInsertionController *)self noteEditor];
          textView2 = [noteEditor7 textView];
          v39 = [(ICInlineDrawingUpgradeHelper *)v34 initWithNote:note4 managedObjectContext:managedObjectContext textView:textView2];

          attachment = [*(v58[0] + 40) attachment];
          v41 = [(ICInlineDrawingUpgradeHelper *)v39 upgradeWithAttachment:attachment itemProviders:providersCopy itemsAnchor:4];

          if (v41)
          {
            [MEMORY[0x277CD9FF0] begin];
            v42 = MEMORY[0x277CD9FF0];
            v50 = MEMORY[0x277D85DD0];
            v51 = 3221225472;
            v52 = __69__ICPaperImageInsertionController_addImagesToPaperWithItemProviders___block_invoke_17;
            v53 = &unk_2781ABEB8;
            selfCopy = self;
            v55 = v39;
            [v42 setCompletionBlock:&v50];
            [MEMORY[0x277CD9FF0] commit];
          }

          else
          {
            v47 = os_log_create("com.apple.notes", "SystemPaper");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              attachment2 = [*(v58[0] + 40) attachment];
              loggingDescription = [attachment2 loggingDescription];
              [(ICPaperImageInsertionController *)loggingDescription addImagesToPaperWithItemProviders:buf, v47, attachment2];
            }
          }
        }

        else
        {
          managedObjectContext = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
          {
            [ICPaperImageInsertionController addImagesToPaperWithItemProviders:managedObjectContext];
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = [ICSystemPaperDocumentHelper alloc];
          attachment3 = [*(v58[0] + 40) attachment];
          noteEditor8 = [(ICPaperImageInsertionController *)self noteEditor];
          textView3 = [noteEditor8 textView];
          managedObjectContext = [(ICSystemPaperDocumentHelper *)v43 initWithPaperAttachment:attachment3 textView:textView3];

          [managedObjectContext addWithItemProviders:providersCopy itemsAnchor:4];
        }

        else
        {
          managedObjectContext = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
          {
            [(ICPaperImageInsertionController *)v58 addImagesToPaperWithItemProviders:managedObjectContext];
          }
        }
      }
    }

    else
    {
      managedObjectContext = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2151A1000, managedObjectContext, OS_LOG_TYPE_DEFAULT, "Unable to find paper attachment to add image to", buf, 2u);
      }
    }

    _Block_object_dispose(&v57, 8);
  }
}

void __69__ICPaperImageInsertionController_addImagesToPaperWithItemProviders___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  obj = ICDynamicCast();

  if (obj)
  {
    v10 = *(*(a1 + 40) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    if (!v12)
    {
      objc_storeStrong(v11, obj);
    }

    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    v14 = [*(a1 + 32) noteEditor];
    v15 = [v14 textView];
    v16 = v15;
    if (IsTextKit2Enabled)
    {
      v17 = [v15 icTextLayoutManager];
      [v17 ic_rectForRange:{a3, a4}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v26 = [v15 layoutManager];
      v27 = [v26 glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
      v29 = v28;

      v30 = [*(a1 + 32) noteEditor];
      v31 = [v30 textView];
      v32 = [v31 layoutManager];
      v33 = [*(a1 + 32) noteEditor];
      v34 = [v33 textView];
      v35 = [v34 textContainer];
      [v32 boundingRectForGlyphRange:v27 inTextContainer:{v29, v35}];
      v19 = v36;
      v21 = v37;
      v23 = v38;
      v25 = v39;
    }

    v42.origin.x = v19;
    v42.origin.y = v21;
    v42.size.width = v23;
    v42.size.height = v25;
    if (CGRectGetMinY(v42) <= *(a1 + 56))
    {
      v43.origin.x = v19;
      v43.origin.y = v21;
      v43.size.width = v23;
      v43.size.height = v25;
      if (CGRectGetMaxY(v43) >= *(a1 + 56))
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
        *a5 = 1;
      }
    }
  }
}

void __69__ICPaperImageInsertionController_addImagesToPaperWithItemProviders___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) noteEditor];
  [v2 upgradeAllAttachmentsInNoteWithUpgradeHelper:*(a1 + 40)];
}

- (ICNoteEditorViewController)noteEditor
{
  WeakRetained = objc_loadWeakRetained(&self->_noteEditor);

  return WeakRetained;
}

- (void)addImagesToPaperWithItemProviders:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Tried to insert image into %@, but couldn't find a matching type.", &v3, 0xCu);
}

- (void)addImagesToPaperWithItemProviders:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2151A1000, log, OS_LOG_TYPE_ERROR, "Upgrading drawing failed for: %@", buf, 0xCu);
}

@end