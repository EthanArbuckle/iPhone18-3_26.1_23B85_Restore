@interface ICTableCellMergeableStringDelegate
- (BOOL)wantsUndoCommands;
- (ICTableCellMergeableStringDelegate)init;
- (ICTableCellMergeableStringDelegate)initWithTableCellChangeObserver:(id)observer columnID:(id)d rowID:(id)iD;
- (ICTableCellMergeableStringObserving)changeObserver;
- (void)addUndoCommand:(id)command;
- (void)beginEditing;
- (void)edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length;
- (void)endEditing;
@end

@implementation ICTableCellMergeableStringDelegate

- (ICTableCellMergeableStringDelegate)init
{
  [(ICTableCellMergeableStringDelegate *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableCellMergeableStringDelegate)initWithTableCellChangeObserver:(id)observer columnID:(id)d rowID:(id)iD
{
  observerCopy = observer;
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = ICTableCellMergeableStringDelegate;
  v11 = [(ICTableCellMergeableStringDelegate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_changeObserver, observerCopy);
    objc_storeStrong(&v12->_columnID, d);
    objc_storeStrong(&v12->_rowID, iD);
    array = [MEMORY[0x1E695DF70] array];
    undoCommands = v12->_undoCommands;
    v12->_undoCommands = array;
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
    undoCommands = [(ICTableCellMergeableStringDelegate *)self undoCommands];
    v4 = [undoCommands count];

    if (v4)
    {
      changeObserver = [(ICTableCellMergeableStringDelegate *)self changeObserver];
      undoHelper = [changeObserver undoHelper];

      coalescingUndoGroupForStringDelegate = [undoHelper coalescingUndoGroupForStringDelegate];
      v8 = [coalescingUndoGroupForStringDelegate objectForKey:self];

      if (!v8)
      {
        tableSelection = [undoHelper tableSelection];
        if ([tableSelection type] == 1)
        {
          v10 = objc_alloc_init(ICTableAttachmentSelection);

          columnID = [(ICTableCellMergeableStringDelegate *)self columnID];
          rowID = [(ICTableCellMergeableStringDelegate *)self rowID];
          [(ICTableAttachmentSelection *)v10 selectCellAtColumn:columnID row:rowID];

          tableSelection = v10;
        }

        v13 = [ICTableCellEditingUndoGroup alloc];
        columnID2 = [(ICTableCellMergeableStringDelegate *)self columnID];
        rowID2 = [(ICTableCellMergeableStringDelegate *)self rowID];
        undoTarget = [undoHelper undoTarget];
        v8 = [(ICTableCellEditingUndoGroup *)v13 initWithColumn:columnID2 row:rowID2 selection:tableSelection undoTarget:undoTarget];

        coalescingUndoGroupForStringDelegate2 = [undoHelper coalescingUndoGroupForStringDelegate];
        [coalescingUndoGroupForStringDelegate2 setObject:v8 forKey:self];

        undoManager = [undoHelper undoManager];
        undoTarget2 = [undoHelper undoTarget];
        [undoManager registerUndoWithTarget:undoTarget2 selector:sel_applyUndoGroup_ object:v8];

        undoManager2 = [undoHelper undoManager];
        v21 = __ICLocalizedFrameworkString_impl(@"Typing", @"Typing", 0, 1);
        [undoManager2 setActionName:v21];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      undoCommands2 = [(ICTableCellMergeableStringDelegate *)self undoCommands];
      v23 = [undoCommands2 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(undoCommands2);
            }

            [(ICTTMergeableStringUndoGroup *)v8 addCommand:*(*(&v28 + 1) + 8 * v26++)];
          }

          while (v24 != v26);
          v24 = [undoCommands2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v24);
      }

      undoCommands3 = [(ICTableCellMergeableStringDelegate *)self undoCommands];
      [undoCommands3 removeAllObjects];
    }
  }
}

- (void)edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  changeObserver = [(ICTableCellMergeableStringDelegate *)self changeObserver];
  columnID = [(ICTableCellMergeableStringDelegate *)self columnID];
  rowID = [(ICTableCellMergeableStringDelegate *)self rowID];
  [changeObserver tableCellWasEditedAtColumnID:columnID rowID:rowID edited:edited range:location changeInLength:{length, length}];
}

- (void)addUndoCommand:(id)command
{
  commandCopy = command;
  [(ICTableCellMergeableStringDelegate *)self beginEditing];
  undoCommands = [(ICTableCellMergeableStringDelegate *)self undoCommands];
  [undoCommands addObject:commandCopy];

  [(ICTableCellMergeableStringDelegate *)self endEditing];
}

- (BOOL)wantsUndoCommands
{
  changeObserver = [(ICTableCellMergeableStringDelegate *)self changeObserver];
  undoHelper = [changeObserver undoHelper];

  if ([undoHelper shouldPreventUndoCommands])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    changeObserver2 = [(ICTableCellMergeableStringDelegate *)self changeObserver];
    v5 = [changeObserver2 shouldPreventUndoCommands] ^ 1;
  }

  return v5;
}

- (ICTableCellMergeableStringObserving)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end