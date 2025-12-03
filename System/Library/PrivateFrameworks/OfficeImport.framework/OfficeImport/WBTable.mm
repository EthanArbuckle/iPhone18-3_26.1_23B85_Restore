@interface WBTable
+ (BOOL)isTableFloating:(const void *)floating tracked:(const void *)tracked;
+ (BOOL)tryToReadRowFrom:(id)from textRuns:(id)runs to:(id)to;
+ (void)initPropertiesFrom:(id)from to:(id)to in:(id)in;
+ (void)readFrom:(id)from textRuns:(id)runs table:(id)table;
+ (void)readRowFrom:(id)from textRuns:(id)runs to:(id)to;
@end

@implementation WBTable

+ (void)readFrom:(id)from textRuns:(id)runs table:(id)table
{
  fromCopy = from;
  runsCopy = runs;
  tableCopy = table;
  [WBTable initPropertiesFrom:runsCopy to:tableCopy in:fromCopy];
  [WBTable readRowFrom:fromCopy textRuns:runsCopy to:tableCopy];
}

+ (BOOL)tryToReadRowFrom:(id)from textRuns:(id)runs to:(id)to
{
  fromCopy = from;
  runsCopy = runs;
  toCopy = to;
  lastObject = [runsCopy lastObject];
  pointerValue = [lastObject pointerValue];

  v13 = *(pointerValue + 40);
  v14 = *(pointerValue + 48);
  properties = [toCopy properties];
  isBaseStyleOverridden = [properties isBaseStyleOverridden];
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
    v18 = isBaseStyleOverridden ^ 1;
  }

  if (((isBaseStyleOverridden ^ 1) & 1) == 0 && (*(v17 + 6) & 0x10000000) != 0)
  {
    v19 = [fromCopy styleAtIndex:*(v17 + 164) expectedType:3];
    baseStyle = [properties baseStyle];
    v18 = v19 == baseStyle;
  }

  lastRowParagraphProperties = [fromCopy lastRowParagraphProperties];
  if (!v18)
  {
    goto LABEL_81;
  }

  v22 = lastRowParagraphProperties;
  if (([self isTableFloating:v13 tracked:v14] & 1) == 0 && (objc_msgSend(properties, "isTableFloating") & 1) == 0)
  {
    if (!v22 || [runsCopy count] < 2)
    {
      goto LABEL_58;
    }

    v26 = [runsCopy objectAtIndex:0];
    pointerValue2 = [v26 pointerValue];

    v28 = *(pointerValue2 + 24);
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
      [self readRowFrom:fromCopy textRuns:runsCopy to:toCopy];
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

  if ([properties isVerticalPositionOverridden])
  {
    if ((v23[21] & 0x40) == 0)
    {
LABEL_21:
      v25 = 1;
      goto LABEL_28;
    }

LABEL_19:
    if ([properties isVerticalPositionOverridden])
    {
      v24 = *(v23 + 77);
      v25 = [properties verticalPosition] != v24;
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

  if ([properties isVerticalAnchorOverridden])
  {
    if ((v31[20] & 0x80) == 0)
    {
LABEL_36:
      v33 = 1;
      goto LABEL_38;
    }

LABEL_34:
    if ([properties isVerticalAnchorOverridden])
    {
      v32 = *(v31 + 57);
      v33 = v32 != [properties verticalAnchor];
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

  if ([properties isHorizontalPositionOverridden])
  {
    if ((v34[21] & 0x20) == 0)
    {
LABEL_46:
      v36 = 0;
      goto LABEL_48;
    }

LABEL_44:
    if ([properties isHorizontalPositionOverridden])
    {
      v35 = *(v34 + 76);
      v36 = [properties horizontalPosition] == v35;
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
    if (![properties isHorizontalAnchorOverridden])
    {
      v38 = 1;
      goto LABEL_56;
    }

    if ((v13[21] & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  if (![properties isHorizontalAnchorOverridden])
  {
    goto LABEL_81;
  }

  v37 = *(v13 + 58);
  v38 = v37 == [properties horizontalAnchor];
LABEL_56:
  v39 = 0;
  if ((v36 & ~(v25 || v33) & 1) != 0 && v38)
  {
    goto LABEL_58;
  }

LABEL_82:

  return v39;
}

+ (void)initPropertiesFrom:(id)from to:(id)to in:(id)in
{
  fromCopy = from;
  toCopy = to;
  inCopy = in;
  lastObject = [fromCopy lastObject];
  pointerValue = [lastObject pointerValue];

  v11 = *(pointerValue + 40);
  v12 = *(pointerValue + 48);
  properties = [toCopy properties];
  [WBTableProperties readFrom:inCopy wrdProperties:v11 tracked:v12 properties:properties];
  [properties setResolveMode:0];
  [properties clearShading];
  [properties setResolveMode:1];
  [properties clearShading];
  [properties setResolveMode:2];
  if ([fromCopy count] >= 2)
  {
    v14 = [fromCopy objectAtIndex:0];
    pointerValue2 = [v14 pointerValue];

    [inCopy setLastRowParagraphProperties:(*(**(pointerValue2 + 24) + 24))(*(pointerValue2 + 24))];
  }
}

+ (void)readRowFrom:(id)from textRuns:(id)runs to:(id)to
{
  fromCopy = from;
  runsCopy = runs;
  toCopy = to;
  addRow = [toCopy addRow];
  +[WBTableRow readFrom:textRuns:to:index:row:](WBTableRow, "readFrom:textRuns:to:index:row:", fromCopy, runsCopy, toCopy, [toCopy rowCount], addRow);
}

+ (BOOL)isTableFloating:(const void *)floating tracked:(const void *)tracked
{
  v4 = *(tracked + 2);
  if ((v4 & 0x10000000000) != 0)
  {
    if (*(tracked + 58))
    {
      return 1;
    }
  }

  else if ((*(floating + 21) & 1) != 0 && *(floating + 58))
  {
    return 1;
  }

  if ((v4 & 0x8000000000) != 0)
  {
    v5 = *(tracked + 57);
  }

  else
  {
    if ((*(floating + 20) & 0x80) == 0)
    {
      goto LABEL_11;
    }

    v5 = *(floating + 57);
  }

  if (v5 != 2)
  {
    return 1;
  }

LABEL_11:
  if ((v4 & 0x200000000000) != 0)
  {
    if (!*(tracked + 76))
    {
      goto LABEL_14;
    }

    return 1;
  }

  if ((*(floating + 21) & 0x20) != 0 && *(floating + 76))
  {
    return 1;
  }

LABEL_14:
  result = ((v4 & 0x400000000000) != 0 || (tracked = floating, (*(floating + 21) & 0x40) != 0)) && *(tracked + 77) != 0;
  return result;
}

@end