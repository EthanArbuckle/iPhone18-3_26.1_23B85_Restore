@interface WBTableRowProperties
+ (void)mapProperties:(id)properties toWordProperties:(void *)wordProperties;
+ (void)mapWordProperties:(void *)properties toProperties:(id)toProperties;
+ (void)readFrom:(id)from wrdProperties:(void *)properties tracked:(void *)tracked properties:(id)a6;
+ (void)write:(id)write properties:(id)properties wrdProperties:(void *)wrdProperties tracked:(void *)tracked;
@end

@implementation WBTableRowProperties

+ (void)readFrom:(id)from wrdProperties:(void *)properties tracked:(void *)tracked properties:(id)a6
{
  fromCopy = from;
  v10 = a6;
  v11 = v10;
  if (properties && v10)
  {
    tableProperties = [v10 tableProperties];
    if (tableProperties)
    {
      [WBTableProperties readFrom:fromCopy wrdProperties:properties tracked:tracked properties:tableProperties];
    }

    [v11 setResolveMode:0];
    [self mapWordProperties:properties toProperties:v11];
    if (tracked && WrdTableProperties::WrdTablePropertiesOverridden::isAnythingOverridden((tracked + 16)))
    {
      [v11 setResolveMode:1];
      [self mapWordProperties:tracked toProperties:v11];
    }

    [v11 setResolveMode:2];
  }
}

+ (void)write:(id)write properties:(id)properties wrdProperties:(void *)wrdProperties tracked:(void *)tracked
{
  writeCopy = write;
  propertiesCopy = properties;
  v11 = propertiesCopy;
  if (propertiesCopy && wrdProperties)
  {
    tableProperties = [propertiesCopy tableProperties];
    if (tableProperties)
    {
      [WBTableProperties write:writeCopy properties:tableProperties wrdProperties:wrdProperties tracked:tracked];
    }

    [v11 setResolveMode:0];
    [self mapProperties:v11 toWordProperties:wrdProperties];
    [v11 setResolveMode:2];
  }
}

+ (void)mapWordProperties:(void *)properties toProperties:(id)toProperties
{
  toPropertiesCopy = toProperties;
  v6 = *(properties + 2);
  v10 = toPropertiesCopy;
  if ((v6 & 0x800000000000000) != 0)
  {
    [toPropertiesCopy setWidthBefore:*(properties + 170)];
    v6 = *(properties + 2);
    toPropertiesCopy = v10;
  }

  if ((v6 & 0x20000) != 0)
  {
    [toPropertiesCopy setWidthBeforeType:*(properties + 35)];
    v6 = *(properties + 2);
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    [v10 setWidthAfter:*(properties + 171)];
    v6 = *(properties + 2);
  }

  if ((v6 & 0x40000) != 0)
  {
    [v10 setWidthAfterType:*(properties + 36)];
  }

  if ((*(properties + 26) & 0x10) != 0)
  {
    [v10 setHeader:*(properties + 387) != 0];
  }

  v7 = v10;
  if ((*(properties + 21) & 0x10) != 0)
  {
    v8 = *(properties + 75);
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

+ (void)mapProperties:(id)properties toWordProperties:(void *)wordProperties
{
  propertiesCopy = properties;
  if ([propertiesCopy isWidthBeforeOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellBefore(wordProperties, [propertiesCopy widthBefore]);
  }

  if ([propertiesCopy isWidthBeforeTypeOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellBeforeUnit(wordProperties, [propertiesCopy widthBeforeType]);
  }

  if ([propertiesCopy isWidthAfterOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellAfter(wordProperties, [propertiesCopy widthAfter]);
  }

  if ([propertiesCopy isWidthAfterTypeOverridden])
  {
    WrdTableProperties::setWidthOfInvisibleCellAfterUnit(wordProperties, [propertiesCopy widthAfterType]);
  }

  if ([propertiesCopy isHeaderOverridden])
  {
    WrdTableProperties::setTableHeader(wordProperties, [propertiesCopy header]);
  }

  if ([propertiesCopy isHeightOverridden])
  {
    height = [propertiesCopy height];
  }

  else
  {
    height = 1;
  }

  isHeightTypeOverridden = [propertiesCopy isHeightTypeOverridden];
  if (isHeightTypeOverridden)
  {
    isHeightTypeOverridden = [propertiesCopy heightType];
  }

  if (!isHeightTypeOverridden && height > 0 || isHeightTypeOverridden == 1 && height < 0)
  {
    height = -height;
  }

  WrdTableProperties::setRowHeight(wordProperties, height);
  WrdTableProperties::setDefaultTableLeftCellPaddingUnit(wordProperties, 3);
  WrdTableProperties::setDefaultTableRightCellPaddingUnit(wordProperties, 3);
  WrdTableProperties::setHalfOfGapBetweenTextInAdjColOfTableRow(wordProperties, 108);
  WrdTableProperties::setDefaultTableLeftCellPadding(wordProperties, 108);
  WrdTableProperties::setDefaultTableRightCellPadding(wordProperties, 108);
  WrdTableProperties::setCantSplit(wordProperties, 1);
}

@end