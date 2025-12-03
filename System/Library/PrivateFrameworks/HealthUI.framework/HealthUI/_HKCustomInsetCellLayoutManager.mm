@interface _HKCustomInsetCellLayoutManager
- (CGRect)accessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
- (CGRect)accessoryStartingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
- (CGRect)contentEndingRectForCell:(id)cell forDisplayOfDeleteConfirmation:(BOOL)confirmation;
- (CGRect)contentEndingRectForCell:(id)cell forNewEditingState:(BOOL)state;
- (CGRect)contentRectForCell:(id)cell forState:(unint64_t)state;
- (CGRect)contentStartingRectForCell:(id)cell forDisplayOfDeleteConfirmation:(BOOL)confirmation;
- (CGRect)contentStartingRectForCell:(id)cell forNewEditingState:(BOOL)state;
- (CGRect)editControlEndingRectForCell:(id)cell forNewEditingState:(BOOL)state;
- (CGRect)editControlStartingRectForCell:(id)cell forNewEditingState:(BOOL)state;
- (CGRect)editingAccessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
- (CGRect)editingAccessoryStartingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
@end

@implementation _HKCustomInsetCellLayoutManager

- (CGRect)contentRectForCell:(id)cell forState:(unint64_t)state
{
  cellCopy = cell;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentRectForCell:cellCopy forState:state];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([cellCopy hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [cellCopy frame];
    v18 = v17 - v16;
  }

  else
  {
    [cellCopy frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [cellCopy frame];
    v23 = v22 - v18;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v23 - v24;
  }

  v25 = v16;
  v26 = v12 + v8;
  v27 = v18;
  v28 = v10 - v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  v20.receiver = self;
  v20.super_class = _HKCustomInsetCellLayoutManager;
  cellCopy = cell;
  [(UITableViewCellLayoutManager *)&v20 textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LODWORD(sizingCopy) = [cellCopy hk_isLeftToRight];

  if (sizingCopy)
  {
    MaxX = width - v9;
  }

  else
  {
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    MaxX = CGRectGetMaxX(v21);
    v9 = v9 - (MaxX - v13);
  }

  v17 = v9;
  v18 = v11;
  v19 = v15;
  result.size.height = v19;
  result.size.width = MaxX;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)editControlStartingRectForCell:(id)cell forNewEditingState:(BOOL)state
{
  v18.receiver = self;
  v18.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 editControlStartingRectForCell:cell forNewEditingState:state];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13 + v8;
  v15 = v6;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGRect)editControlEndingRectForCell:(id)cell forNewEditingState:(BOOL)state
{
  v18.receiver = self;
  v18.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 editControlEndingRectForCell:cell forNewEditingState:state];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13 + v8;
  v15 = v6;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGRect)accessoryStartingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 accessoryStartingRectForCell:cell forNewEditingState:state showingDeleteConfirmation:confirmation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v15 = v14 + v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v17 = v13 - v16;
  v18 = v7;
  v19 = v15;
  v20 = v11;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)accessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 accessoryEndingRectForCell:cell forNewEditingState:state showingDeleteConfirmation:confirmation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v15 = v14 + v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v17 = v13 - v16;
  v18 = v7;
  v19 = v15;
  v20 = v11;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)editingAccessoryStartingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 editingAccessoryStartingRectForCell:cell forNewEditingState:state showingDeleteConfirmation:confirmation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v15 = v14 + v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v17 = v13 - v16;
  v18 = v7;
  v19 = v15;
  v20 = v11;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)editingAccessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 editingAccessoryEndingRectForCell:cell forNewEditingState:state showingDeleteConfirmation:confirmation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v15 = v14 + v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v17 = v13 - v16;
  v18 = v7;
  v19 = v15;
  v20 = v11;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)contentStartingRectForCell:(id)cell forNewEditingState:(BOOL)state
{
  stateCopy = state;
  cellCopy = cell;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentStartingRectForCell:cellCopy forNewEditingState:stateCopy];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([cellCopy hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [cellCopy frame];
    v18 = v17 - v16;
  }

  else
  {
    [cellCopy frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [cellCopy frame];
    v23 = v22 - v18;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v23 - v24;
  }

  v25 = v16;
  v26 = v12 + v8;
  v27 = v18;
  v28 = v10 - v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)contentEndingRectForCell:(id)cell forNewEditingState:(BOOL)state
{
  stateCopy = state;
  cellCopy = cell;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentEndingRectForCell:cellCopy forNewEditingState:stateCopy];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([cellCopy hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [cellCopy frame];
    v18 = v17 - v16;
  }

  else
  {
    [cellCopy frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [cellCopy frame];
    v23 = v22 - v18;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v23 - v24;
  }

  v25 = v16;
  v26 = v12 + v8;
  v27 = v18;
  v28 = v10 - v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)contentStartingRectForCell:(id)cell forDisplayOfDeleteConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  cellCopy = cell;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentStartingRectForCell:cellCopy forDisplayOfDeleteConfirmation:confirmationCopy];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([cellCopy hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [cellCopy frame];
    v18 = v17 - v16;
  }

  else
  {
    [cellCopy frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [cellCopy frame];
    v23 = v22 - v18;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v23 - v24;
  }

  v25 = v16;
  v26 = v12 + v8;
  v27 = v18;
  v28 = v10 - v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)contentEndingRectForCell:(id)cell forDisplayOfDeleteConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  cellCopy = cell;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentEndingRectForCell:cellCopy forDisplayOfDeleteConfirmation:confirmationCopy];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([cellCopy _shouldReverseLayoutDirection])
  {
    [cellCopy frame];
    v16 = v15;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v16 - v17;
    [cellCopy frame];
    v20 = v19 - v18;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v22 = v20 - v21;
  }

  else
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v22 = v23;
    [cellCopy frame];
    v18 = v24 - v22;
  }

  v25 = v22;
  v26 = v12 + v8;
  v27 = v18;
  v28 = v10 - v14;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

@end