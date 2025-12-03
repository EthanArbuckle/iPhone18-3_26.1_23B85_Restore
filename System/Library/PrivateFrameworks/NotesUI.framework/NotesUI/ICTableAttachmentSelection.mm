@interface ICTableAttachmentSelection
- (BOOL)isEqual:(id)equal;
- (BOOL)removeColumns:(id)columns rows:(id)rows previousColumns:(id)previousColumns previousRows:(id)previousRows;
- (BOOL)valid;
- (ICTableAttachmentSelection)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)selectCellAtColumn:(id)column row:(id)row;
- (void)selectCellRangeAtColumns:(id)columns rows:(id)rows;
- (void)selectColumns:(id)columns;
- (void)selectRows:(id)rows;
- (void)setSelectionEqualTo:(id)to;
- (void)unselect;
@end

@implementation ICTableAttachmentSelection

- (ICTableAttachmentSelection)init
{
  v8.receiver = self;
  v8.super_class = ICTableAttachmentSelection;
  v2 = [(ICTableAttachmentSelection *)&v8 init];
  v3 = v2;
  if (v2)
  {
    columns = v2->_columns;
    v5 = MEMORY[0x1E695E0F0];
    v2->_type = 0;
    v2->_columns = v5;

    rows = v3->_rows;
    v3->_rows = v5;
  }

  return v3;
}

- (BOOL)valid
{
  type = [(ICTableAttachmentSelection *)self type];
  v4 = 0;
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        columns = [(ICTableAttachmentSelection *)self columns];
        break;
      case 3:
        columns = [(ICTableAttachmentSelection *)self rows];
        break;
      case 4:
        columns2 = [(ICTableAttachmentSelection *)self columns];
        if ([columns2 count])
        {
          rows = [(ICTableAttachmentSelection *)self rows];
          v4 = [rows count] != 0;
LABEL_11:

LABEL_17:
          return v4;
        }

        goto LABEL_16;
      default:
        return v4;
    }

    v8 = columns;
    v4 = [columns count] != 0;

    return v4;
  }

  if (!type)
  {
    return 1;
  }

  if (type == 1)
  {
    columns2 = [(ICTableAttachmentSelection *)self columns];
    if ([columns2 count] == 1)
    {
      rows = [(ICTableAttachmentSelection *)self rows];
      v4 = [rows count] == 1;
      goto LABEL_11;
    }

LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  return v4;
}

- (void)unselect
{
  if (![(ICTableAttachmentSelection *)self type])
  {
    rows = [(ICTableAttachmentSelection *)self rows];
    if ([rows count])
    {
    }

    else
    {
      columns = [(ICTableAttachmentSelection *)self columns];
      v5 = [columns count];

      if (!v5)
      {
        return;
      }
    }
  }

  [(ICTableAttachmentSelection *)self setType:0];
  v6 = MEMORY[0x1E695E0F0];
  [(ICTableAttachmentSelection *)self setColumns:MEMORY[0x1E695E0F0]];
  [(ICTableAttachmentSelection *)self setRows:v6];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];
}

- (void)selectCellAtColumn:(id)column row:(id)row
{
  v20[1] = *MEMORY[0x1E69E9840];
  columnCopy = column;
  rowCopy = row;
  v8 = rowCopy;
  if (!columnCopy || !rowCopy)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableAttachmentSelection selectCellAtColumn:row:]" simulateCrash:1 showAlert:0 format:@"We tried to select a cell without a row or column"];
  }

  if ([(ICTableAttachmentSelection *)self type]== 1)
  {
    rows = [(ICTableAttachmentSelection *)self rows];
    v20[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    if ([rows isEqualToArray:v10])
    {
      columns = [(ICTableAttachmentSelection *)self columns];
      v19 = columnCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      v13 = [columns isEqualToArray:v12];

      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  [(ICTableAttachmentSelection *)self setType:1];
  v18 = columnCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(ICTableAttachmentSelection *)self setColumns:v14];

  v17 = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [(ICTableAttachmentSelection *)self setRows:v15];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

LABEL_10:
}

- (void)selectColumns:(id)columns
{
  columnsCopy = columns;
  if ([(ICTableAttachmentSelection *)self type]== 2)
  {
    rows = [(ICTableAttachmentSelection *)self rows];
    if ([rows count])
    {
    }

    else
    {
      columns = [(ICTableAttachmentSelection *)self columns];
      v6 = [columns isEqualToArray:columnsCopy];

      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  [(ICTableAttachmentSelection *)self setType:2];
  [(ICTableAttachmentSelection *)self setColumns:columnsCopy];
  [(ICTableAttachmentSelection *)self setRows:MEMORY[0x1E695E0F0]];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

LABEL_6:
}

- (void)selectRows:(id)rows
{
  rowsCopy = rows;
  if ([(ICTableAttachmentSelection *)self type]== 3)
  {
    columns = [(ICTableAttachmentSelection *)self columns];
    if ([columns count])
    {
    }

    else
    {
      rows = [(ICTableAttachmentSelection *)self rows];
      v6 = [rows isEqualToArray:rowsCopy];

      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  [(ICTableAttachmentSelection *)self setType:3];
  [(ICTableAttachmentSelection *)self setColumns:MEMORY[0x1E695E0F0]];
  [(ICTableAttachmentSelection *)self setRows:rowsCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

LABEL_6:
}

- (void)selectCellRangeAtColumns:(id)columns rows:(id)rows
{
  columnsCopy = columns;
  rowsCopy = rows;
  if ([(ICTableAttachmentSelection *)self type]!= 4)
  {
    goto LABEL_6;
  }

  columns = [(ICTableAttachmentSelection *)self columns];
  if (([columns isEqualToArray:columnsCopy] & 1) == 0)
  {

    goto LABEL_6;
  }

  rows = [(ICTableAttachmentSelection *)self rows];
  v9 = [rows isEqualToArray:rowsCopy];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    [(ICTableAttachmentSelection *)self setType:4];
    [(ICTableAttachmentSelection *)self setColumns:columnsCopy];
    [(ICTableAttachmentSelection *)self setRows:rowsCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    type = [(ICTableAttachmentSelection *)self type];
    if (type == [v5 type])
    {
      columns = [(ICTableAttachmentSelection *)self columns];
      columns2 = [v5 columns];
      if ([columns isEqual:columns2])
      {
        rows = [(ICTableAttachmentSelection *)self rows];
        rows2 = [v5 rows];
        v11 = [rows isEqual:rows2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ICTableAttachmentSelection allocWithZone:](ICTableAttachmentSelection init];
  [(ICTableAttachmentSelection *)v5 setType:[(ICTableAttachmentSelection *)self type]];
  columns = [(ICTableAttachmentSelection *)self columns];
  v7 = [columns copyWithZone:zone];
  [(ICTableAttachmentSelection *)v5 setColumns:v7];

  rows = [(ICTableAttachmentSelection *)self rows];
  v9 = [rows copyWithZone:zone];
  [(ICTableAttachmentSelection *)v5 setRows:v9];

  [(ICTableAttachmentSelection *)v5 setMoving:[(ICTableAttachmentSelection *)self moving]];
  [(ICTableAttachmentSelection *)v5 setDraggingText:[(ICTableAttachmentSelection *)self draggingText]];
  return v5;
}

- (void)setSelectionEqualTo:(id)to
{
  toCopy = to;
  -[ICTableAttachmentSelection setType:](self, "setType:", [toCopy type]);
  columns = [toCopy columns];
  [(ICTableAttachmentSelection *)self setColumns:columns];

  rows = [toCopy rows];
  [(ICTableAttachmentSelection *)self setRows:rows];

  -[ICTableAttachmentSelection setMoving:](self, "setMoving:", [toCopy moving]);
  draggingText = [toCopy draggingText];

  [(ICTableAttachmentSelection *)self setDraggingText:draggingText];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];
}

- (BOOL)removeColumns:(id)columns rows:(id)rows previousColumns:(id)previousColumns previousRows:(id)previousRows
{
  v39[1] = *MEMORY[0x1E69E9840];
  columnsCopy = columns;
  rowsCopy = rows;
  previousColumnsCopy = previousColumns;
  previousRowsCopy = previousRows;
  columns = [(ICTableAttachmentSelection *)self columns];
  rows = [(ICTableAttachmentSelection *)self rows];
  v15 = [MEMORY[0x1E695DF70] arrayWithArray:columns];
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:rows];
  [v15 removeObjectsInArray:columnsCopy];
  [v16 removeObjectsInArray:rowsCopy];
  v17 = [v15 copy];
  [(ICTableAttachmentSelection *)self setColumns:v17];

  v18 = [v16 copy];
  [(ICTableAttachmentSelection *)self setRows:v18];

  columns2 = [(ICTableAttachmentSelection *)self columns];
  v20 = [columns2 count];

  if (!v20)
  {
    v35 = previousColumnsCopy;
    v21 = [previousColumnsCopy firstObjectCommonWithArray:columnsCopy];
    if (!v21)
    {
LABEL_9:

      previousColumnsCopy = v35;
      goto LABEL_10;
    }

    v22 = [v35 indexOfObject:v21];
    if (v22)
    {
      v23 = [v35 objectAtIndexedSubscript:v22 - 1];
      v39[0] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    }

    else
    {
      v23 = [v35 mutableCopy];
      [v23 removeObjectsInArray:columnsCopy];
      if (![v23 count])
      {
LABEL_8:

        goto LABEL_9;
      }

      v24 = [v23 subarrayWithRange:{0, 1}];
    }

    v25 = v24;
    [(ICTableAttachmentSelection *)self setColumns:v24];

    goto LABEL_8;
  }

LABEL_10:
  rows2 = [(ICTableAttachmentSelection *)self rows];
  v27 = [rows2 count];

  if (!v27)
  {
    v36 = previousColumnsCopy;
    v28 = [previousRowsCopy firstObjectCommonWithArray:rowsCopy];
    if (!v28)
    {
LABEL_18:

      previousColumnsCopy = v36;
      goto LABEL_19;
    }

    v29 = [previousRowsCopy indexOfObject:v28];
    if (v29)
    {
      v30 = [previousRowsCopy objectAtIndexedSubscript:v29 - 1];
      v38 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    }

    else
    {
      v30 = [previousRowsCopy mutableCopy];
      [v30 removeObjectsInArray:rowsCopy];
      if (![v30 count])
      {
LABEL_17:

        goto LABEL_18;
      }

      v31 = [v30 subarrayWithRange:{0, 1}];
    }

    v32 = v31;
    [(ICTableAttachmentSelection *)self setRows:v31];

    goto LABEL_17;
  }

LABEL_19:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

  LOBYTE(defaultCenter) = [(ICTableAttachmentSelection *)self valid];
  return defaultCenter;
}

@end