@interface _HKCustomInsetCellLayoutManager
- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)contentEndingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4;
- (CGRect)contentEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4;
- (CGRect)contentStartingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4;
- (CGRect)contentStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)editControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)editControlStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)editingAccessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)editingAccessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5;
@end

@implementation _HKCustomInsetCellLayoutManager

- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentRectForCell:v6 forState:a4];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([v6 hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [v6 frame];
    v18 = v17 - v16;
  }

  else
  {
    [v6 frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [v6 frame];
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

- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5
{
  v5 = a5;
  v20.receiver = self;
  v20.super_class = _HKCustomInsetCellLayoutManager;
  v7 = a3;
  [(UITableViewCellLayoutManager *)&v20 textRectForCell:v7 rowWidth:v5 forSizing:a4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LODWORD(v5) = [v7 hk_isLeftToRight];

  if (v5)
  {
    MaxX = a4 - v9;
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

- (CGRect)editControlStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v18.receiver = self;
  v18.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 editControlStartingRectForCell:a3 forNewEditingState:a4];
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

- (CGRect)editControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v18.receiver = self;
  v18.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 editControlEndingRectForCell:a3 forNewEditingState:a4];
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

- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 accessoryStartingRectForCell:a3 forNewEditingState:a4 showingDeleteConfirmation:a5];
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

- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 accessoryEndingRectForCell:a3 forNewEditingState:a4 showingDeleteConfirmation:a5];
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

- (CGRect)editingAccessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 editingAccessoryStartingRectForCell:a3 forNewEditingState:a4 showingDeleteConfirmation:a5];
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

- (CGRect)editingAccessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v21.receiver = self;
  v21.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v21 editingAccessoryEndingRectForCell:a3 forNewEditingState:a4 showingDeleteConfirmation:a5];
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

- (CGRect)contentStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentStartingRectForCell:v6 forNewEditingState:v4];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([v6 hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [v6 frame];
    v18 = v17 - v16;
  }

  else
  {
    [v6 frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [v6 frame];
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

- (CGRect)contentEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentEndingRectForCell:v6 forNewEditingState:v4];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([v6 hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [v6 frame];
    v18 = v17 - v16;
  }

  else
  {
    [v6 frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [v6 frame];
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

- (CGRect)contentStartingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentStartingRectForCell:v6 forDisplayOfDeleteConfirmation:v4];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([v6 hk_isLeftToRight])
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v16 = v15;
    [v6 frame];
    v18 = v17 - v16;
  }

  else
  {
    [v6 frame];
    v20 = v19;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v20 - v21;
    [v6 frame];
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

- (CGRect)contentEndingRectForCell:(id)a3 forDisplayOfDeleteConfirmation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v29.receiver = self;
  v29.super_class = _HKCustomInsetCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v29 contentEndingRectForCell:v6 forDisplayOfDeleteConfirmation:v4];
  v8 = v7;
  v10 = v9;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v12 = v11;
  [(_HKCustomInsetCellLayoutManager *)self topInset];
  v14 = v13;
  if ([v6 _shouldReverseLayoutDirection])
  {
    [v6 frame];
    v16 = v15;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v18 = v16 - v17;
    [v6 frame];
    v20 = v19 - v18;
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v22 = v20 - v21;
  }

  else
  {
    [(_HKCustomInsetCellLayoutManager *)self textLabelLeftInset];
    v22 = v23;
    [v6 frame];
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