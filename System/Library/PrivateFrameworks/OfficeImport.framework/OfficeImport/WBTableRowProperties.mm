@interface WBTableRowProperties
+ (void)mapProperties:(id)a3 toWordProperties:(void *)a4;
+ (void)mapWordProperties:(void *)a3 toProperties:(id)a4;
+ (void)readFrom:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 properties:(id)a6;
+ (void)write:(id)a3 properties:(id)a4 wrdProperties:(void *)a5 tracked:(void *)a6;
@end

@implementation WBTableRowProperties

+ (void)readFrom:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 properties:(id)a6
{
  v13 = a3;
  v10 = a6;
  v11 = v10;
  if (a4 && v10)
  {
    v12 = [v10 tableProperties];
    if (v12)
    {
      [WBTableProperties readFrom:v13 wrdProperties:a4 tracked:a5 properties:v12];
    }

    [v11 setResolveMode:0];
    [a1 mapWordProperties:a4 toProperties:v11];
    if (a5 && WrdTableProperties::WrdTablePropertiesOverridden::isAnythingOverridden((a5 + 16)))
    {
      [v11 setResolveMode:1];
      [a1 mapWordProperties:a5 toProperties:v11];
    }

    [v11 setResolveMode:2];
  }
}

+ (void)write:(id)a3 properties:(id)a4 wrdProperties:(void *)a5 tracked:(void *)a6
{
  v13 = a3;
  v10 = a4;
  v11 = v10;
  if (v10 && a5)
  {
    v12 = [v10 tableProperties];
    if (v12)
    {
      [WBTableProperties write:v13 properties:v12 wrdProperties:a5 tracked:a6];
    }

    [v11 setResolveMode:0];
    [a1 mapProperties:v11 toWordProperties:a5];
    [v11 setResolveMode:2];
  }
}

+ (void)mapWordProperties:(void *)a3 toProperties:(id)a4
{
  v5 = a4;
  v6 = *(a3 + 2);
  v10 = v5;
  if ((v6 & 0x800000000000000) != 0)
  {
    [v5 setWidthBefore:*(a3 + 170)];
    v6 = *(a3 + 2);
    v5 = v10;
  }

  if ((v6 & 0x20000) != 0)
  {
    [v5 setWidthBeforeType:*(a3 + 35)];
    v6 = *(a3 + 2);
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    [v10 setWidthAfter:*(a3 + 171)];
    v6 = *(a3 + 2);
  }

  if ((v6 & 0x40000) != 0)
  {
    [v10 setWidthAfterType:*(a3 + 36)];
  }

  if ((*(a3 + 26) & 0x10) != 0)
  {
    [v10 setHeader:*(a3 + 387) != 0];
  }

  v7 = v10;
  if ((*(a3 + 21) & 0x10) != 0)
  {
    v8 = *(a3 + 75);
    [v10 setHeightType:v8 >= 0];
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    [v10 setHeight:v9];
    v7 = v10;
  }
}

+ (void)mapProperties:(id)a3 toWordProperties:(void *)a4
{
  v7 = a3;
  if ([v7 isWidthBeforeOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellBefore(a4, [v7 widthBefore]);
  }

  if ([v7 isWidthBeforeTypeOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellBeforeUnit(a4, [v7 widthBeforeType]);
  }

  if ([v7 isWidthAfterOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellAfter(a4, [v7 widthAfter]);
  }

  if ([v7 isWidthAfterTypeOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellAfterUnit(a4, [v7 widthAfterType]);
  }

  if ([v7 isHeaderOverridden])
  {
    WrdTableProperties::setTableHeader(a4, [v7 header]);
  }

  if ([v7 isHeightOverridden])
  {
    v5 = [v7 height];
  }

  else
  {
    v5 = 1;
  }

  v6 = [v7 isHeightTypeOverridden];
  if (v6)
  {
    v6 = [v7 heightType];
  }

  if (!v6 && v5 > 0 || v6 == 1 && v5 < 0)
  {
    v5 = -v5;
  }

  WrdTableProperties::setRowHeight(a4, v5);
  WrdTableProperties::setDefaultTableLeftCellPaddingUnit(a4, 3);
  WrdTableProperties::setDefaultTableRightCellPaddingUnit(a4, 3);
  WrdTableProperties::setHalfOfGapBetweenTextInAdjColOfTableRow(a4, 108);
  WrdTableProperties::setDefaultTableLeftCellPadding(a4, 108);
  WrdTableProperties::setDefaultTableRightCellPadding(a4, 108);
  WrdTableProperties::setCantSplit(a4, 1);
}

@end