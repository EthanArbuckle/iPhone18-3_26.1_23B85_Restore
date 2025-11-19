@interface ICTableCellEditingUndoGroup
- (ICTableCellEditingUndoGroup)init;
- (ICTableCellEditingUndoGroup)initWithColumn:(id)a3 row:(id)a4 selection:(id)a5 undoTarget:(id)a6;
@end

@implementation ICTableCellEditingUndoGroup

- (ICTableCellEditingUndoGroup)init
{
  [(ICTableCellEditingUndoGroup *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableCellEditingUndoGroup)initWithColumn:(id)a3 row:(id)a4 selection:(id)a5 undoTarget:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ICTableCellEditingUndoGroup;
  v15 = [(ICTTMergeableStringUndoGroup *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_columnID, a3);
    objc_storeStrong(&v16->_rowID, a4);
    v17 = [v13 copy];
    tableSelection = v16->_tableSelection;
    v16->_tableSelection = v17;

    objc_storeStrong(&v16->_undoTarget, a6);
  }

  return v16;
}

@end