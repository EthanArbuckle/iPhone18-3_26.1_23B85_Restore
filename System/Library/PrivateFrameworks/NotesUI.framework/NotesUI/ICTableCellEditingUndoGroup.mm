@interface ICTableCellEditingUndoGroup
- (ICTableCellEditingUndoGroup)init;
- (ICTableCellEditingUndoGroup)initWithColumn:(id)column row:(id)row selection:(id)selection undoTarget:(id)target;
@end

@implementation ICTableCellEditingUndoGroup

- (ICTableCellEditingUndoGroup)init
{
  [(ICTableCellEditingUndoGroup *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableCellEditingUndoGroup)initWithColumn:(id)column row:(id)row selection:(id)selection undoTarget:(id)target
{
  columnCopy = column;
  rowCopy = row;
  selectionCopy = selection;
  targetCopy = target;
  v20.receiver = self;
  v20.super_class = ICTableCellEditingUndoGroup;
  v15 = [(ICTTMergeableStringUndoGroup *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_columnID, column);
    objc_storeStrong(&v16->_rowID, row);
    v17 = [selectionCopy copy];
    tableSelection = v16->_tableSelection;
    v16->_tableSelection = v17;

    objc_storeStrong(&v16->_undoTarget, target);
  }

  return v16;
}

@end