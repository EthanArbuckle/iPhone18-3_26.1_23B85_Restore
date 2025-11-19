@interface ICiOSTableAccessibilityElement
- (CGRect)accessibilityFrame;
- (ICTableAccessibilityController)tableAXController;
- (ICiOSTableAccessibilityElement)initWithTableAccessibilityController:(id)a3 parentAttachmentView:(id)a4;
- (ICiOSTableAttachmentView)parentAttachmentView;
- (id)accessibilityDataTableCellElementForRow:(unint64_t)a3 column:(unint64_t)a4;
- (id)accessibilityElements;
- (id)accessibilityHeaderElementsForColumn:(unint64_t)a3;
- (id)accessibilityHeaderElementsForRow:(unint64_t)a3;
- (unint64_t)accessibilityColumnCount;
- (unint64_t)accessibilityRowCount;
@end

@implementation ICiOSTableAccessibilityElement

- (ICiOSTableAccessibilityElement)initWithTableAccessibilityController:(id)a3 parentAttachmentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICiOSTableAccessibilityElement;
  v8 = [(ICiOSTableAccessibilityElement *)&v11 initWithAccessibilityContainer:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_tableAXController, v6);
    objc_storeWeak(&v9->_parentAttachmentView, v7);
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  v2 = [(ICiOSTableAccessibilityElement *)self parentAttachmentView];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v5 = [v4 selectedColumnIDs];

  v6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v7 = [v6 selectedRowIDs];

  if ([v7 count])
  {
    v8 = [v5 count] == 0;
  }

  else
  {
    v8 = 0;
  }

  if ([v7 count])
  {
    v48 = 0;
  }

  else
  {
    v48 = [v5 count] != 0;
  }

  v9 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v10 = [v5 firstObject];
  v53 = [v9 columnIndexForColumnID:v10];

  v11 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v12 = [v7 firstObject];
  v51 = [v11 rowIndexForRowID:v12];

  v13 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v47 = v5;
  v14 = [v5 lastObject];
  v52 = [v13 columnIndexForColumnID:v14];

  v15 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v16 = [v7 lastObject];
  v50 = [v15 rowIndexForRowID:v16];

  v17 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v18 = [v17 rowCount];

  if (v18)
  {
    v19 = 0;
    v49 = v8;
    do
    {
      if (v19 == v51 && v8)
      {
        v21 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        v22 = [v21 startSelectionKnob];
        [v3 ic_addNonNilObject:v22];
      }

      v23 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v24 = [v23 columnCount];

      if (v24)
      {
        v25 = 0;
        do
        {
          if (v53 == v25 && (v19 == v51 || v48))
          {
            v26 = [(ICiOSTableAccessibilityElement *)self tableAXController];
            v27 = [v26 startSelectionKnob];
            v28 = [v3 containsObject:v27];

            if ((v28 & 1) == 0)
            {
              v29 = [(ICiOSTableAccessibilityElement *)self tableAXController];
              v30 = [v29 startSelectionKnob];
              [v3 ic_addNonNilObject:v30];
            }
          }

          v31 = [(ICiOSTableAccessibilityElement *)self tableAXController];
          v32 = [v31 cellElementForColumnIndex:v25 rowIndex:v19];

          [v3 addObject:v32];
          if (v52 == v25 && (v19 == v50 || v48))
          {
            v33 = [(ICiOSTableAccessibilityElement *)self tableAXController];
            v34 = [v33 endSelectionKnob];
            v35 = [v3 containsObject:v34];

            if ((v35 & 1) == 0)
            {
              v36 = [(ICiOSTableAccessibilityElement *)self tableAXController];
              v37 = [v36 endSelectionKnob];
              [v3 ic_addNonNilObject:v37];
            }
          }

          ++v25;
          v38 = [(ICiOSTableAccessibilityElement *)self tableAXController];
          v39 = [v38 columnCount];
        }

        while (v25 < v39);
      }

      v8 = v49;
      if (v19 == v50 && v49)
      {
        v41 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        v42 = [v41 endSelectionKnob];
        [v3 ic_addNonNilObject:v42];
      }

      ++v19;
      v43 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v44 = [v43 rowCount];
    }

    while (v19 < v44);
  }

  v45 = [v3 copy];

  return v45;
}

- (id)accessibilityDataTableCellElementForRow:(unint64_t)a3 column:(unint64_t)a4
{
  v6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v7 = [v6 cellElementForColumnIndex:a4 rowIndex:a3];

  return v7;
}

- (unint64_t)accessibilityRowCount
{
  v2 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v3 = [v2 rowCount];

  return v3;
}

- (unint64_t)accessibilityColumnCount
{
  v2 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v3 = [v2 columnCount];

  return v3;
}

- (id)accessibilityHeaderElementsForRow:(unint64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  if ([v5 rowCount] <= a3)
  {

    v7 = 0;
  }

  else
  {
    v6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
    v7 = [v6 columnCount];

    if (v7)
    {
      v8 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v9 = [v8 columnIDForColumnIndex:0];

      v10 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v11 = [v10 rowIDForRowIndex:a3];

      v12 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v13 = [v12 isHeaderCellAtColumnID:v9 rowID:v11];

      v7 = 0;
      if (v13)
      {
        v14 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        v15 = [v14 cellElementForColumnIndex:0 rowIndex:a3];
        v17[0] = v15;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      }
    }
  }

  return v7;
}

- (id)accessibilityHeaderElementsForColumn:(unint64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  if ([v5 columnCount] <= a3)
  {

    v7 = 0;
  }

  else
  {
    v6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
    v7 = [v6 rowCount];

    if (v7)
    {
      v8 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v9 = [v8 rowIDForRowIndex:0];

      v10 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v11 = [v10 columnIDForColumnIndex:a3];

      v12 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v13 = [v12 isHeaderCellAtColumnID:v11 rowID:v9];

      v7 = 0;
      if (v13)
      {
        v14 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        v15 = [v14 cellElementForColumnIndex:a3 rowIndex:0];
        v17[0] = v15;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      }
    }
  }

  return v7;
}

- (ICTableAccessibilityController)tableAXController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAXController);

  return WeakRetained;
}

- (ICiOSTableAttachmentView)parentAttachmentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAttachmentView);

  return WeakRetained;
}

@end