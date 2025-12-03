@interface ICiOSTableAccessibilityElement
- (CGRect)accessibilityFrame;
- (ICTableAccessibilityController)tableAXController;
- (ICiOSTableAccessibilityElement)initWithTableAccessibilityController:(id)controller parentAttachmentView:(id)view;
- (ICiOSTableAttachmentView)parentAttachmentView;
- (id)accessibilityDataTableCellElementForRow:(unint64_t)row column:(unint64_t)column;
- (id)accessibilityElements;
- (id)accessibilityHeaderElementsForColumn:(unint64_t)column;
- (id)accessibilityHeaderElementsForRow:(unint64_t)row;
- (unint64_t)accessibilityColumnCount;
- (unint64_t)accessibilityRowCount;
@end

@implementation ICiOSTableAccessibilityElement

- (ICiOSTableAccessibilityElement)initWithTableAccessibilityController:(id)controller parentAttachmentView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = ICiOSTableAccessibilityElement;
  v8 = [(ICiOSTableAccessibilityElement *)&v11 initWithAccessibilityContainer:viewCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_tableAXController, controllerCopy);
    objc_storeWeak(&v9->_parentAttachmentView, viewCopy);
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  parentAttachmentView = [(ICiOSTableAccessibilityElement *)self parentAttachmentView];
  [parentAttachmentView accessibilityFrame];
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
  array = [MEMORY[0x277CBEB18] array];
  tableAXController = [(ICiOSTableAccessibilityElement *)self tableAXController];
  selectedColumnIDs = [tableAXController selectedColumnIDs];

  tableAXController2 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  selectedRowIDs = [tableAXController2 selectedRowIDs];

  if ([selectedRowIDs count])
  {
    v8 = [selectedColumnIDs count] == 0;
  }

  else
  {
    v8 = 0;
  }

  if ([selectedRowIDs count])
  {
    v48 = 0;
  }

  else
  {
    v48 = [selectedColumnIDs count] != 0;
  }

  tableAXController3 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  firstObject = [selectedColumnIDs firstObject];
  v53 = [tableAXController3 columnIndexForColumnID:firstObject];

  tableAXController4 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  firstObject2 = [selectedRowIDs firstObject];
  v51 = [tableAXController4 rowIndexForRowID:firstObject2];

  tableAXController5 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v47 = selectedColumnIDs;
  lastObject = [selectedColumnIDs lastObject];
  v52 = [tableAXController5 columnIndexForColumnID:lastObject];

  tableAXController6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  lastObject2 = [selectedRowIDs lastObject];
  v50 = [tableAXController6 rowIndexForRowID:lastObject2];

  tableAXController7 = [(ICiOSTableAccessibilityElement *)self tableAXController];
  rowCount = [tableAXController7 rowCount];

  if (rowCount)
  {
    v19 = 0;
    v49 = v8;
    do
    {
      if (v19 == v51 && v8)
      {
        tableAXController8 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        startSelectionKnob = [tableAXController8 startSelectionKnob];
        [array ic_addNonNilObject:startSelectionKnob];
      }

      tableAXController9 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      columnCount = [tableAXController9 columnCount];

      if (columnCount)
      {
        v25 = 0;
        do
        {
          if (v53 == v25 && (v19 == v51 || v48))
          {
            tableAXController10 = [(ICiOSTableAccessibilityElement *)self tableAXController];
            startSelectionKnob2 = [tableAXController10 startSelectionKnob];
            v28 = [array containsObject:startSelectionKnob2];

            if ((v28 & 1) == 0)
            {
              tableAXController11 = [(ICiOSTableAccessibilityElement *)self tableAXController];
              startSelectionKnob3 = [tableAXController11 startSelectionKnob];
              [array ic_addNonNilObject:startSelectionKnob3];
            }
          }

          tableAXController12 = [(ICiOSTableAccessibilityElement *)self tableAXController];
          v32 = [tableAXController12 cellElementForColumnIndex:v25 rowIndex:v19];

          [array addObject:v32];
          if (v52 == v25 && (v19 == v50 || v48))
          {
            tableAXController13 = [(ICiOSTableAccessibilityElement *)self tableAXController];
            endSelectionKnob = [tableAXController13 endSelectionKnob];
            v35 = [array containsObject:endSelectionKnob];

            if ((v35 & 1) == 0)
            {
              tableAXController14 = [(ICiOSTableAccessibilityElement *)self tableAXController];
              endSelectionKnob2 = [tableAXController14 endSelectionKnob];
              [array ic_addNonNilObject:endSelectionKnob2];
            }
          }

          ++v25;
          tableAXController15 = [(ICiOSTableAccessibilityElement *)self tableAXController];
          columnCount2 = [tableAXController15 columnCount];
        }

        while (v25 < columnCount2);
      }

      v8 = v49;
      if (v19 == v50 && v49)
      {
        tableAXController16 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        endSelectionKnob3 = [tableAXController16 endSelectionKnob];
        [array ic_addNonNilObject:endSelectionKnob3];
      }

      ++v19;
      tableAXController17 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      rowCount2 = [tableAXController17 rowCount];
    }

    while (v19 < rowCount2);
  }

  v45 = [array copy];

  return v45;
}

- (id)accessibilityDataTableCellElementForRow:(unint64_t)row column:(unint64_t)column
{
  tableAXController = [(ICiOSTableAccessibilityElement *)self tableAXController];
  v7 = [tableAXController cellElementForColumnIndex:column rowIndex:row];

  return v7;
}

- (unint64_t)accessibilityRowCount
{
  tableAXController = [(ICiOSTableAccessibilityElement *)self tableAXController];
  rowCount = [tableAXController rowCount];

  return rowCount;
}

- (unint64_t)accessibilityColumnCount
{
  tableAXController = [(ICiOSTableAccessibilityElement *)self tableAXController];
  columnCount = [tableAXController columnCount];

  return columnCount;
}

- (id)accessibilityHeaderElementsForRow:(unint64_t)row
{
  v17[1] = *MEMORY[0x277D85DE8];
  tableAXController = [(ICiOSTableAccessibilityElement *)self tableAXController];
  if ([tableAXController rowCount] <= row)
  {

    columnCount = 0;
  }

  else
  {
    tableAXController2 = [(ICiOSTableAccessibilityElement *)self tableAXController];
    columnCount = [tableAXController2 columnCount];

    if (columnCount)
    {
      tableAXController3 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v9 = [tableAXController3 columnIDForColumnIndex:0];

      tableAXController4 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v11 = [tableAXController4 rowIDForRowIndex:row];

      tableAXController5 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v13 = [tableAXController5 isHeaderCellAtColumnID:v9 rowID:v11];

      columnCount = 0;
      if (v13)
      {
        tableAXController6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        v15 = [tableAXController6 cellElementForColumnIndex:0 rowIndex:row];
        v17[0] = v15;
        columnCount = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      }
    }
  }

  return columnCount;
}

- (id)accessibilityHeaderElementsForColumn:(unint64_t)column
{
  v17[1] = *MEMORY[0x277D85DE8];
  tableAXController = [(ICiOSTableAccessibilityElement *)self tableAXController];
  if ([tableAXController columnCount] <= column)
  {

    rowCount = 0;
  }

  else
  {
    tableAXController2 = [(ICiOSTableAccessibilityElement *)self tableAXController];
    rowCount = [tableAXController2 rowCount];

    if (rowCount)
    {
      tableAXController3 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v9 = [tableAXController3 rowIDForRowIndex:0];

      tableAXController4 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v11 = [tableAXController4 columnIDForColumnIndex:column];

      tableAXController5 = [(ICiOSTableAccessibilityElement *)self tableAXController];
      v13 = [tableAXController5 isHeaderCellAtColumnID:v11 rowID:v9];

      rowCount = 0;
      if (v13)
      {
        tableAXController6 = [(ICiOSTableAccessibilityElement *)self tableAXController];
        v15 = [tableAXController6 cellElementForColumnIndex:column rowIndex:0];
        v17[0] = v15;
        rowCount = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      }
    }
  }

  return rowCount;
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