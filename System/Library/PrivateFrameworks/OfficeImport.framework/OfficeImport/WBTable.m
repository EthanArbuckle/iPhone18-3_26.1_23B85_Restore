@interface WBTable
+ (BOOL)isTableFloating:(const void *)a3 tracked:(const void *)a4;
+ (BOOL)tryToReadRowFrom:(id)a3 textRuns:(id)a4 to:(id)a5;
+ (void)initPropertiesFrom:(id)a3 to:(id)a4 in:(id)a5;
+ (void)readFrom:(id)a3 textRuns:(id)a4 table:(id)a5;
+ (void)readRowFrom:(id)a3 textRuns:(id)a4 to:(id)a5;
@end

@implementation WBTable

+ (void)readFrom:(id)a3 textRuns:(id)a4 table:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  [WBTable initPropertiesFrom:v7 to:v8 in:v9];
  [WBTable readRowFrom:v9 textRuns:v7 to:v8];
}

+ (BOOL)tryToReadRowFrom:(id)a3 textRuns:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 lastObject];
  v12 = [v11 pointerValue];

  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  v15 = [v10 properties];
  v16 = [v15 isBaseStyleOverridden];
  if ((v14[27] & 0x10) != 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if ((*(v17 + 6) & 0x10000000) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 ^ 1;
  }

  if (((v16 ^ 1) & 1) == 0 && (*(v17 + 6) & 0x10000000) != 0)
  {
    v19 = [v8 styleAtIndex:*(v17 + 164) expectedType:3];
    v20 = [v15 baseStyle];
    v18 = v19 == v20;
  }

  v21 = [v8 lastRowParagraphProperties];
  if (!v18)
  {
    goto LABEL_81;
  }

  v22 = v21;
  if (([a1 isTableFloating:v13 tracked:v14] & 1) == 0 && (objc_msgSend(v15, "isTableFloating") & 1) == 0)
  {
    if (!v22 || [v9 count] < 2)
    {
      goto LABEL_58;
    }

    v26 = [v9 objectAtIndex:0];
    v27 = [v26 pointerValue];

    v28 = *(v27 + 24);
    v29 = *(v28 + 16);
    v30 = *(v22 + 16);
    if ((v29 & 0x2000000) != 0)
    {
      if ((v30 & 0x2000000) == 0 || *(v28 + 298) != *(v22 + 298))
      {
        goto LABEL_81;
      }
    }

    else if ((v30 & 0x2000000) != 0)
    {
      goto LABEL_81;
    }

    if ((v29 & 0x200000) != 0)
    {
      if ((v30 & 0x200000) == 0 || *(v28 + 228) != *(v22 + 228))
      {
        goto LABEL_81;
      }
    }

    else if ((v30 & 0x200000) != 0)
    {
      goto LABEL_81;
    }

    if ((v29 & 0x800000) != 0)
    {
      if ((v30 & 0x800000) == 0 || *(v28 + 152) != *(v22 + 152))
      {
        goto LABEL_81;
      }
    }

    else if ((v30 & 0x800000) != 0)
    {
      goto LABEL_81;
    }

    if ((v29 & 0x100000) != 0)
    {
      if ((v30 & 0x100000) == 0 || *(v28 + 224) != *(v22 + 224))
      {
        goto LABEL_81;
      }
    }

    else if ((v30 & 0x100000) != 0)
    {
      goto LABEL_81;
    }

    if ((v29 & 0x1000000) != 0)
    {
      if ((v30 & 0x1000000) != 0 && *(v28 + 156) == *(v22 + 156))
      {
        goto LABEL_58;
      }
    }

    else if ((v30 & 0x1000000) == 0)
    {
LABEL_58:
      [a1 readRowFrom:v8 textRuns:v9 to:v10];
      v39 = 1;
      goto LABEL_82;
    }

LABEL_81:
    v39 = 0;
    goto LABEL_82;
  }

  if ((v14[21] & 0x40) != 0)
  {
    v23 = v14;
  }

  else
  {
    v23 = v13;
  }

  if ((v23[21] & 0x40) != 0)
  {
    goto LABEL_19;
  }

  if ([v15 isVerticalPositionOverridden])
  {
    if ((v23[21] & 0x40) == 0)
    {
LABEL_21:
      v25 = 1;
      goto LABEL_28;
    }

LABEL_19:
    if ([v15 isVerticalPositionOverridden])
    {
      v24 = *(v23 + 77);
      v25 = [v15 verticalPosition] != v24;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v25 = 0;
LABEL_28:
  if ((v14[20] & 0x80) != 0)
  {
    v31 = v14;
  }

  else
  {
    v31 = v13;
  }

  if ((v31[20] & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ([v15 isVerticalAnchorOverridden])
  {
    if ((v31[20] & 0x80) == 0)
    {
LABEL_36:
      v33 = 1;
      goto LABEL_38;
    }

LABEL_34:
    if ([v15 isVerticalAnchorOverridden])
    {
      v32 = *(v31 + 57);
      v33 = v32 != [v15 verticalAnchor];
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v33 = 0;
LABEL_38:
  if ((v14[21] & 0x20) != 0)
  {
    v34 = v14;
  }

  else
  {
    v34 = v13;
  }

  if ((v34[21] & 0x20) != 0)
  {
    goto LABEL_44;
  }

  if ([v15 isHorizontalPositionOverridden])
  {
    if ((v34[21] & 0x20) == 0)
    {
LABEL_46:
      v36 = 0;
      goto LABEL_48;
    }

LABEL_44:
    if ([v15 isHorizontalPositionOverridden])
    {
      v35 = *(v34 + 76);
      v36 = [v15 horizontalPosition] == v35;
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v36 = 1;
LABEL_48:
  if (v14[21])
  {
    v13 = v14;
  }

  if ((v13[21] & 1) == 0)
  {
    if (![v15 isHorizontalAnchorOverridden])
    {
      v38 = 1;
      goto LABEL_56;
    }

    if ((v13[21] & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  if (![v15 isHorizontalAnchorOverridden])
  {
    goto LABEL_81;
  }

  v37 = *(v13 + 58);
  v38 = v37 == [v15 horizontalAnchor];
LABEL_56:
  v39 = 0;
  if ((v36 & ~(v25 || v33) & 1) != 0 && v38)
  {
    goto LABEL_58;
  }

LABEL_82:

  return v39;
}

+ (void)initPropertiesFrom:(id)a3 to:(id)a4 in:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v16 lastObject];
  v10 = [v9 pointerValue];

  v11 = *(v10 + 40);
  v12 = *(v10 + 48);
  v13 = [v7 properties];
  [WBTableProperties readFrom:v8 wrdProperties:v11 tracked:v12 properties:v13];
  [v13 setResolveMode:0];
  [v13 clearShading];
  [v13 setResolveMode:1];
  [v13 clearShading];
  [v13 setResolveMode:2];
  if ([v16 count] >= 2)
  {
    v14 = [v16 objectAtIndex:0];
    v15 = [v14 pointerValue];

    [v8 setLastRowParagraphProperties:(*(**(v15 + 24) + 24))(*(v15 + 24))];
  }
}

+ (void)readRowFrom:(id)a3 textRuns:(id)a4 to:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 addRow];
  +[WBTableRow readFrom:textRuns:to:index:row:](WBTableRow, "readFrom:textRuns:to:index:row:", v10, v7, v8, [v8 rowCount], v9);
}

+ (BOOL)isTableFloating:(const void *)a3 tracked:(const void *)a4
{
  v4 = *(a4 + 2);
  if ((v4 & 0x10000000000) != 0)
  {
    if (*(a4 + 58))
    {
      return 1;
    }
  }

  else if ((*(a3 + 21) & 1) != 0 && *(a3 + 58))
  {
    return 1;
  }

  if ((v4 & 0x8000000000) != 0)
  {
    v5 = *(a4 + 57);
  }

  else
  {
    if ((*(a3 + 20) & 0x80) == 0)
    {
      goto LABEL_11;
    }

    v5 = *(a3 + 57);
  }

  if (v5 != 2)
  {
    return 1;
  }

LABEL_11:
  if ((v4 & 0x200000000000) != 0)
  {
    if (!*(a4 + 76))
    {
      goto LABEL_14;
    }

    return 1;
  }

  if ((*(a3 + 21) & 0x20) != 0 && *(a3 + 76))
  {
    return 1;
  }

LABEL_14:
  result = ((v4 & 0x400000000000) != 0 || (a4 = a3, (*(a3 + 21) & 0x40) != 0)) && *(a4 + 77) != 0;
  return result;
}

@end