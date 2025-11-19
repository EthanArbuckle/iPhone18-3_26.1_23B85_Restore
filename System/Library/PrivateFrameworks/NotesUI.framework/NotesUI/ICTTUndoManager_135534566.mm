@interface ICTTUndoManager_135534566
- (BOOL)_shouldIgnoreUndoRedoBecauseWritingToolsIsActiveWithOpenGroup;
- (ICTTTextStorage)textStorage;
- (ICTTUndoManager_135534566)initWithTextStorage:(id)a3;
- (void)redo;
- (void)undo;
@end

@implementation ICTTUndoManager_135534566

- (ICTTUndoManager_135534566)initWithTextStorage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICTTUndoManager_135534566;
  v5 = [(ICTTUndoManager_135534566 *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textStorage, v4);
  }

  return v6;
}

- (void)undo
{
  if (![(ICTTUndoManager_135534566 *)self _shouldIgnoreUndoRedoBecauseWritingToolsIsActiveWithOpenGroup])
  {
    v3.receiver = self;
    v3.super_class = ICTTUndoManager_135534566;
    [(ICTTUndoManager_135534566 *)&v3 undo];
  }
}

- (void)redo
{
  if (![(ICTTUndoManager_135534566 *)self _shouldIgnoreUndoRedoBecauseWritingToolsIsActiveWithOpenGroup])
  {
    v3.receiver = self;
    v3.super_class = ICTTUndoManager_135534566;
    [(ICTTUndoManager_135534566 *)&v3 redo];
  }
}

- (BOOL)_shouldIgnoreUndoRedoBecauseWritingToolsIsActiveWithOpenGroup
{
  v3 = [(ICTTUndoManager_135534566 *)self textStorage];
  if ([v3 isUndoCoalescingForWritingTools])
  {
    v4 = [(ICTTUndoManager_135534566 *)self groupingLevel]> 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICTTTextStorage)textStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_textStorage);

  return WeakRetained;
}

@end