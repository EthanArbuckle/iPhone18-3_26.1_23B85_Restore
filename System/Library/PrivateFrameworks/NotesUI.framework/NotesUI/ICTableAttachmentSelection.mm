@interface ICTableAttachmentSelection
- (BOOL)isEqual:(id)a3;
- (BOOL)removeColumns:(id)a3 rows:(id)a4 previousColumns:(id)a5 previousRows:(id)a6;
- (BOOL)valid;
- (ICTableAttachmentSelection)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)selectCellAtColumn:(id)a3 row:(id)a4;
- (void)selectCellRangeAtColumns:(id)a3 rows:(id)a4;
- (void)selectColumns:(id)a3;
- (void)selectRows:(id)a3;
- (void)setSelectionEqualTo:(id)a3;
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
  v3 = [(ICTableAttachmentSelection *)self type];
  v4 = 0;
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v7 = [(ICTableAttachmentSelection *)self columns];
        break;
      case 3:
        v7 = [(ICTableAttachmentSelection *)self rows];
        break;
      case 4:
        v5 = [(ICTableAttachmentSelection *)self columns];
        if ([v5 count])
        {
          v6 = [(ICTableAttachmentSelection *)self rows];
          v4 = [v6 count] != 0;
LABEL_11:

LABEL_17:
          return v4;
        }

        goto LABEL_16;
      default:
        return v4;
    }

    v8 = v7;
    v4 = [v7 count] != 0;

    return v4;
  }

  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    v5 = [(ICTableAttachmentSelection *)self columns];
    if ([v5 count] == 1)
    {
      v6 = [(ICTableAttachmentSelection *)self rows];
      v4 = [v6 count] == 1;
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
    v3 = [(ICTableAttachmentSelection *)self rows];
    if ([v3 count])
    {
    }

    else
    {
      v4 = [(ICTableAttachmentSelection *)self columns];
      v5 = [v4 count];

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
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];
}

- (void)selectCellAtColumn:(id)a3 row:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableAttachmentSelection selectCellAtColumn:row:]" simulateCrash:1 showAlert:0 format:@"We tried to select a cell without a row or column"];
  }

  if ([(ICTableAttachmentSelection *)self type]== 1)
  {
    v9 = [(ICTableAttachmentSelection *)self rows];
    v20[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    if ([v9 isEqualToArray:v10])
    {
      v11 = [(ICTableAttachmentSelection *)self columns];
      v19 = v6;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      v13 = [v11 isEqualToArray:v12];

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
  v18 = v6;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(ICTableAttachmentSelection *)self setColumns:v14];

  v17 = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [(ICTableAttachmentSelection *)self setRows:v15];

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

LABEL_10:
}

- (void)selectColumns:(id)a3
{
  v8 = a3;
  if ([(ICTableAttachmentSelection *)self type]== 2)
  {
    v4 = [(ICTableAttachmentSelection *)self rows];
    if ([v4 count])
    {
    }

    else
    {
      v5 = [(ICTableAttachmentSelection *)self columns];
      v6 = [v5 isEqualToArray:v8];

      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  [(ICTableAttachmentSelection *)self setType:2];
  [(ICTableAttachmentSelection *)self setColumns:v8];
  [(ICTableAttachmentSelection *)self setRows:MEMORY[0x1E695E0F0]];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

LABEL_6:
}

- (void)selectRows:(id)a3
{
  v8 = a3;
  if ([(ICTableAttachmentSelection *)self type]== 3)
  {
    v4 = [(ICTableAttachmentSelection *)self columns];
    if ([v4 count])
    {
    }

    else
    {
      v5 = [(ICTableAttachmentSelection *)self rows];
      v6 = [v5 isEqualToArray:v8];

      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  [(ICTableAttachmentSelection *)self setType:3];
  [(ICTableAttachmentSelection *)self setColumns:MEMORY[0x1E695E0F0]];
  [(ICTableAttachmentSelection *)self setRows:v8];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

LABEL_6:
}

- (void)selectCellRangeAtColumns:(id)a3 rows:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([(ICTableAttachmentSelection *)self type]!= 4)
  {
    goto LABEL_6;
  }

  v7 = [(ICTableAttachmentSelection *)self columns];
  if (([v7 isEqualToArray:v11] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(ICTableAttachmentSelection *)self rows];
  v9 = [v8 isEqualToArray:v6];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    [(ICTableAttachmentSelection *)self setType:4];
    [(ICTableAttachmentSelection *)self setColumns:v11];
    [(ICTableAttachmentSelection *)self setRows:v6];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = [(ICTableAttachmentSelection *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(ICTableAttachmentSelection *)self columns];
      v8 = [v5 columns];
      if ([v7 isEqual:v8])
      {
        v9 = [(ICTableAttachmentSelection *)self rows];
        v10 = [v5 rows];
        v11 = [v9 isEqual:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ICTableAttachmentSelection allocWithZone:](ICTableAttachmentSelection init];
  [(ICTableAttachmentSelection *)v5 setType:[(ICTableAttachmentSelection *)self type]];
  v6 = [(ICTableAttachmentSelection *)self columns];
  v7 = [v6 copyWithZone:a3];
  [(ICTableAttachmentSelection *)v5 setColumns:v7];

  v8 = [(ICTableAttachmentSelection *)self rows];
  v9 = [v8 copyWithZone:a3];
  [(ICTableAttachmentSelection *)v5 setRows:v9];

  [(ICTableAttachmentSelection *)v5 setMoving:[(ICTableAttachmentSelection *)self moving]];
  [(ICTableAttachmentSelection *)v5 setDraggingText:[(ICTableAttachmentSelection *)self draggingText]];
  return v5;
}

- (void)setSelectionEqualTo:(id)a3
{
  v4 = a3;
  -[ICTableAttachmentSelection setType:](self, "setType:", [v4 type]);
  v5 = [v4 columns];
  [(ICTableAttachmentSelection *)self setColumns:v5];

  v6 = [v4 rows];
  [(ICTableAttachmentSelection *)self setRows:v6];

  -[ICTableAttachmentSelection setMoving:](self, "setMoving:", [v4 moving]);
  v7 = [v4 draggingText];

  [(ICTableAttachmentSelection *)self setDraggingText:v7];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];
}

- (BOOL)removeColumns:(id)a3 rows:(id)a4 previousColumns:(id)a5 previousRows:(id)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v37 = a6;
  v13 = [(ICTableAttachmentSelection *)self columns];
  v14 = [(ICTableAttachmentSelection *)self rows];
  v15 = [MEMORY[0x1E695DF70] arrayWithArray:v13];
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:v14];
  [v15 removeObjectsInArray:v10];
  [v16 removeObjectsInArray:v11];
  v17 = [v15 copy];
  [(ICTableAttachmentSelection *)self setColumns:v17];

  v18 = [v16 copy];
  [(ICTableAttachmentSelection *)self setRows:v18];

  v19 = [(ICTableAttachmentSelection *)self columns];
  v20 = [v19 count];

  if (!v20)
  {
    v35 = v12;
    v21 = [v12 firstObjectCommonWithArray:v10];
    if (!v21)
    {
LABEL_9:

      v12 = v35;
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
      [v23 removeObjectsInArray:v10];
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
  v26 = [(ICTableAttachmentSelection *)self rows];
  v27 = [v26 count];

  if (!v27)
  {
    v36 = v12;
    v28 = [v37 firstObjectCommonWithArray:v11];
    if (!v28)
    {
LABEL_18:

      v12 = v36;
      goto LABEL_19;
    }

    v29 = [v37 indexOfObject:v28];
    if (v29)
    {
      v30 = [v37 objectAtIndexedSubscript:v29 - 1];
      v38 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    }

    else
    {
      v30 = [v37 mutableCopy];
      [v30 removeObjectsInArray:v11];
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
  v33 = [MEMORY[0x1E696AD88] defaultCenter];
  [v33 postNotificationName:@"ICTableAttachmentSelectionDidChangeNotification" object:self];

  LOBYTE(v33) = [(ICTableAttachmentSelection *)self valid];
  return v33;
}

@end