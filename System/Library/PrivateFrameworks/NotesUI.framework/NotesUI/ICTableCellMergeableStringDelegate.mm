@interface ICTableCellMergeableStringDelegate
- (BOOL)wantsUndoCommands;
- (ICTableCellMergeableStringDelegate)init;
- (ICTableCellMergeableStringDelegate)initWithTableCellChangeObserver:(id)a3 columnID:(id)a4 rowID:(id)a5;
- (ICTableCellMergeableStringObserving)changeObserver;
- (void)addUndoCommand:(id)a3;
- (void)beginEditing;
- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (void)endEditing;
@end

@implementation ICTableCellMergeableStringDelegate

- (ICTableCellMergeableStringDelegate)init
{
  [(ICTableCellMergeableStringDelegate *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableCellMergeableStringDelegate)initWithTableCellChangeObserver:(id)a3 columnID:(id)a4 rowID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ICTableCellMergeableStringDelegate;
  v11 = [(ICTableCellMergeableStringDelegate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_changeObserver, v8);
    objc_storeStrong(&v12->_columnID, a4);
    objc_storeStrong(&v12->_rowID, a5);
    v13 = [MEMORY[0x1E695DF70] array];
    undoCommands = v12->_undoCommands;
    v12->_undoCommands = v13;
  }

  return v12;
}

- (void)beginEditing
{
  v3 = [(ICTableCellMergeableStringDelegate *)self editingCount]+ 1;

  [(ICTableCellMergeableStringDelegate *)self setEditingCount:v3];
}

- (void)endEditing
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(ICTableCellMergeableStringDelegate *)self editingCount])
  {
    [(ICTableCellMergeableStringDelegate *)self setEditingCount:[(ICTableCellMergeableStringDelegate *)self editingCount]- 1];
  }

  if (![(ICTableCellMergeableStringDelegate *)self editingCount])
  {
    v3 = [(ICTableCellMergeableStringDelegate *)self undoCommands];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(ICTableCellMergeableStringDelegate *)self changeObserver];
      v6 = [v5 undoHelper];

      v7 = [v6 coalescingUndoGroupForStringDelegate];
      v8 = [v7 objectForKey:self];

      if (!v8)
      {
        v9 = [v6 tableSelection];
        if ([v9 type] == 1)
        {
          v10 = objc_alloc_init(ICTableAttachmentSelection);

          v11 = [(ICTableCellMergeableStringDelegate *)self columnID];
          v12 = [(ICTableCellMergeableStringDelegate *)self rowID];
          [(ICTableAttachmentSelection *)v10 selectCellAtColumn:v11 row:v12];

          v9 = v10;
        }

        v13 = [ICTableCellEditingUndoGroup alloc];
        v14 = [(ICTableCellMergeableStringDelegate *)self columnID];
        v15 = [(ICTableCellMergeableStringDelegate *)self rowID];
        v16 = [v6 undoTarget];
        v8 = [(ICTableCellEditingUndoGroup *)v13 initWithColumn:v14 row:v15 selection:v9 undoTarget:v16];

        v17 = [v6 coalescingUndoGroupForStringDelegate];
        [v17 setObject:v8 forKey:self];

        v18 = [v6 undoManager];
        v19 = [v6 undoTarget];
        [v18 registerUndoWithTarget:v19 selector:sel_applyUndoGroup_ object:v8];

        v20 = [v6 undoManager];
        v21 = __ICLocalizedFrameworkString_impl(@"Typing", @"Typing", 0, 1);
        [v20 setActionName:v21];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v22 = [(ICTableCellMergeableStringDelegate *)self undoCommands];
      v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v29;
        do
        {
          v26 = 0;
          do
          {
            if (*v29 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(ICTTMergeableStringUndoGroup *)v8 addCommand:*(*(&v28 + 1) + 8 * v26++)];
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v24);
      }

      v27 = [(ICTableCellMergeableStringDelegate *)self undoCommands];
      [v27 removeAllObjects];
    }
  }
}

- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v12 = [(ICTableCellMergeableStringDelegate *)self changeObserver];
  v10 = [(ICTableCellMergeableStringDelegate *)self columnID];
  v11 = [(ICTableCellMergeableStringDelegate *)self rowID];
  [v12 tableCellWasEditedAtColumnID:v10 rowID:v11 edited:a3 range:location changeInLength:{length, a5}];
}

- (void)addUndoCommand:(id)a3
{
  v4 = a3;
  [(ICTableCellMergeableStringDelegate *)self beginEditing];
  v5 = [(ICTableCellMergeableStringDelegate *)self undoCommands];
  [v5 addObject:v4];

  [(ICTableCellMergeableStringDelegate *)self endEditing];
}

- (BOOL)wantsUndoCommands
{
  v3 = [(ICTableCellMergeableStringDelegate *)self changeObserver];
  v4 = [v3 undoHelper];

  if ([v4 shouldPreventUndoCommands])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(ICTableCellMergeableStringDelegate *)self changeObserver];
    v5 = [v6 shouldPreventUndoCommands] ^ 1;
  }

  return v5;
}

- (ICTableCellMergeableStringObserving)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end