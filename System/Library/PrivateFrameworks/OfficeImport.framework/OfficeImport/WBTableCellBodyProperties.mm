@interface WBTableCellBodyProperties
+ (void)mapProperties:(id)properties toWordProperties:(void *)wordProperties index:(unint64_t)index;
+ (void)mapWordProperties:(void *)properties toProperties:(id)toProperties index:(unint64_t)index;
+ (void)readFrom:(void *)from tracked:(void *)tracked properties:(id)properties index:(unint64_t)index;
+ (void)write:(id)write wrdProperties:(void *)properties tracked:(void *)tracked index:(unint64_t)index;
@end

@implementation WBTableCellBodyProperties

+ (void)readFrom:(void *)from tracked:(void *)tracked properties:(id)properties index:(unint64_t)index
{
  propertiesCopy = properties;
  if (from && propertiesCopy)
  {
    [propertiesCopy setResolveMode:0];
    [self mapWordProperties:from toProperties:propertiesCopy index:index];
    PositionOfCell = WrdTableProperties::getPositionOfCell(from, (index + 1));
    [propertiesCopy setWidth:{(PositionOfCell - WrdTableProperties::getPositionOfCell(from, index))}];
    if (tracked)
    {
      [propertiesCopy setResolveMode:1];
      [self mapWordProperties:tracked toProperties:propertiesCopy index:index];
      if ((*(tracked + 23) & 0x40) != 0)
      {
        v11 = WrdTableProperties::getPositionOfCell(tracked, (index + 1));
        [propertiesCopy setWidth:{(v11 - WrdTableProperties::getPositionOfCell(tracked, index))}];
      }
    }

    [propertiesCopy setResolveMode:2];
  }
}

+ (void)write:(id)write wrdProperties:(void *)properties tracked:(void *)tracked index:(unint64_t)index
{
  writeCopy = write;
  if (writeCopy && properties)
  {
    [writeCopy setResolveMode:0];
    [self mapProperties:writeCopy toWordProperties:properties index:index];
    if (tracked)
    {
      [writeCopy setResolveMode:1];
      [self mapProperties:writeCopy toWordProperties:tracked index:index];
    }

    [writeCopy setResolveMode:2];
  }
}

+ (void)mapWordProperties:(void *)properties toProperties:(id)toProperties index:(unint64_t)index
{
  indexCopy = index;
  toPropertiesCopy = toProperties;
  TableCellDescriptorReference = WrdTableProperties::getTableCellDescriptorReference(properties, indexCopy);
  [toPropertiesCopy setPosition:indexCopy];
  v9 = *(TableCellDescriptorReference + 8);
  if ((v9 & 2) != 0)
  {
    TopBorderReference = WrdTableCellDescriptor::getTopBorderReference(TableCellDescriptorReference);
    mutableTopBorder = [toPropertiesCopy mutableTopBorder];
    [WBBorder readFrom:TopBorderReference to:mutableTopBorder];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 4) != 0)
  {
    LeftBorderReference = WrdTableCellDescriptor::getLeftBorderReference(TableCellDescriptorReference);
    mutableLeftBorder = [toPropertiesCopy mutableLeftBorder];
    [WBBorder readFrom:LeftBorderReference to:mutableLeftBorder];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 8) != 0)
  {
    BottomBorderReference = WrdTableCellDescriptor::getBottomBorderReference(TableCellDescriptorReference);
    mutableBottomBorder = [toPropertiesCopy mutableBottomBorder];
    [WBBorder readFrom:BottomBorderReference to:mutableBottomBorder];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x10) != 0)
  {
    RightBorderReference = WrdTableCellDescriptor::getRightBorderReference(TableCellDescriptorReference);
    mutableRightBorder = [toPropertiesCopy mutableRightBorder];
    [WBBorder readFrom:RightBorderReference to:mutableRightBorder];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if (v9)
  {
    ShadingReference = WrdTableCellDescriptor::getShadingReference(TableCellDescriptorReference);
    mutableShading = [toPropertiesCopy mutableShading];
    [WBShading readFrom:ShadingReference to:mutableShading];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x40) != 0)
  {
    DiagonalUpBorderReference = WrdTableCellDescriptor::getDiagonalUpBorderReference(TableCellDescriptorReference);
    mutableDiagonalUpBorder = [toPropertiesCopy mutableDiagonalUpBorder];
    [WBBorder readFrom:DiagonalUpBorderReference to:mutableDiagonalUpBorder];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x20) != 0)
  {
    DiagonalDownBorderReference = WrdTableCellDescriptor::getDiagonalDownBorderReference(TableCellDescriptorReference);
    mutableDiagonalDownBorder = [toPropertiesCopy mutableDiagonalDownBorder];
    [WBBorder readFrom:DiagonalDownBorderReference to:mutableDiagonalDownBorder];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x2000) != 0)
  {
    [toPropertiesCopy setWidthType:*(TableCellDescriptorReference + 76)];
    v9 = *(TableCellDescriptorReference + 8);
  }

  v24 = toPropertiesCopy;
  if ((v9 & 0x1000000) != 0)
  {
    [toPropertiesCopy setTopMargin:*(TableCellDescriptorReference + 116)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = toPropertiesCopy;
  }

  if ((v9 & 0x8000) != 0)
  {
    [v24 setTopMarginType:*(TableCellDescriptorReference + 84)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = toPropertiesCopy;
  }

  if ((v9 & 0x2000000) != 0)
  {
    [v24 setBottomMargin:*(TableCellDescriptorReference + 118)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = toPropertiesCopy;
  }

  if ((v9 & 0x10000) != 0)
  {
    [v24 setBottomMarginType:*(TableCellDescriptorReference + 88)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = toPropertiesCopy;
  }

  if ((v9 & 0x800000) != 0)
  {
    [v24 setLeftMargin:*(TableCellDescriptorReference + 114)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = toPropertiesCopy;
  }

  if ((v9 & 0x4000) != 0)
  {
    [v24 setLeftMarginType:*(TableCellDescriptorReference + 80)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = toPropertiesCopy;
  }

  if ((v9 & 0x4000000) != 0)
  {
    [v24 setRightMargin:*(TableCellDescriptorReference + 120)];
    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x20000) != 0)
  {
    [toPropertiesCopy setRightMarginType:*(TableCellDescriptorReference + 92)];
    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x1000) != 0)
  {
    [toPropertiesCopy setVerticalAlignment:*(TableCellDescriptorReference + 72)];
  }

  if ((*(TableCellDescriptorReference + 12) & 0xE) != 0)
  {
    v25 = *(TableCellDescriptorReference + 130);
    if ((~v25 & 0xC) != 0)
    {
      if ((v25 & 0x10) != 0)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      if ((v25 & 0x10) != 0)
      {
        v27 = 5;
      }

      else
      {
        v27 = 4;
      }

      if ((v25 & 4) != 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      [toPropertiesCopy setTextDirection:v28];
    }

    else
    {
      [toPropertiesCopy setTextDirection:0];
    }
  }

  v29 = *(TableCellDescriptorReference + 12);
  if ((v29 & 0x10) != 0)
  {
    [toPropertiesCopy setVerticallyMergedCell:(*(TableCellDescriptorReference + 130) >> 5) & 1];
    v29 = *(TableCellDescriptorReference + 12);
  }

  if ((v29 & 0x20) != 0)
  {
    [toPropertiesCopy setFirstInSetOfVerticallyMergedCells:(*(TableCellDescriptorReference + 130) >> 6) & 1];
  }

  if (WrdTableProperties::doRevisionsExist(properties))
  {
    if ((*(properties + 16) & 2) != 0)
    {
      [toPropertiesCopy setIndexToAuthorIDOfFormattingChange:*(properties + 166)];
    }

    [toPropertiesCopy setFormattingChanged:1];
    if ((*(properties + 16) & 4) != 0)
    {
      v30 = [self formattingChangeDate:*(properties + 15)];
      [toPropertiesCopy setFormattingChangeDate:v30];
    }

    if ([toPropertiesCopy isFormattingChangeDateOverridden] && objc_msgSend(toPropertiesCopy, "isIndexToAuthorIDOfFormattingChangeOverridden"))
    {
      document = [toPropertiesCopy document];
      formattingChangeDate = [toPropertiesCopy formattingChangeDate];
      [document addChangeTrackingEditAtDate:formattingChangeDate authorIndex:{objc_msgSend(toPropertiesCopy, "indexToAuthorIDOfFormattingChange")}];
    }
  }
}

+ (void)mapProperties:(id)properties toWordProperties:(void *)wordProperties index:(unint64_t)index
{
  indexCopy = index;
  propertiesCopy = properties;
  WrdTableProperties::setPositionOfCell(wordProperties, (indexCopy + 1), [propertiesCopy position]);
  TableCellDescriptorReference = WrdTableProperties::getTableCellDescriptorReference(wordProperties, indexCopy);
  if ([propertiesCopy isShadingOverridden])
  {
    ShadingReference = WrdTableCellDescriptor::getShadingReference(TableCellDescriptorReference);
    shading = [propertiesCopy shading];
    [WBShading write:shading to:ShadingReference];
  }

  if ([propertiesCopy isTopBorderOverridden])
  {
    TopBorderReference = WrdTableCellDescriptor::getTopBorderReference(TableCellDescriptorReference);
    topBorder = [propertiesCopy topBorder];
    [WBBorder write:topBorder to:TopBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x80u;
  }

  if ([propertiesCopy isLeftBorderOverridden])
  {
    LeftBorderReference = WrdTableCellDescriptor::getLeftBorderReference(TableCellDescriptorReference);
    leftBorder = [propertiesCopy leftBorder];
    [WBBorder write:leftBorder to:LeftBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x100u;
  }

  if ([propertiesCopy isBottomBorderOverridden])
  {
    BottomBorderReference = WrdTableCellDescriptor::getBottomBorderReference(TableCellDescriptorReference);
    bottomBorder = [propertiesCopy bottomBorder];
    [WBBorder write:bottomBorder to:BottomBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x200u;
  }

  if ([propertiesCopy isRightBorderOverridden])
  {
    RightBorderReference = WrdTableCellDescriptor::getRightBorderReference(TableCellDescriptorReference);
    rightBorder = [propertiesCopy rightBorder];
    [WBBorder write:rightBorder to:RightBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x400u;
  }

  if ([propertiesCopy isDiagonalDownBorderOverridden])
  {
    DiagonalDownBorderReference = WrdTableCellDescriptor::getDiagonalDownBorderReference(TableCellDescriptorReference);
    diagonalDownBorder = [propertiesCopy diagonalDownBorder];
    [WBBorder write:diagonalDownBorder to:DiagonalDownBorderReference];
  }

  if ([propertiesCopy isDiagonalUpBorderOverridden])
  {
    DiagonalUpBorderReference = WrdTableCellDescriptor::getDiagonalUpBorderReference(TableCellDescriptorReference);
    diagonalUpBorder = [propertiesCopy diagonalUpBorder];
    [WBBorder write:diagonalUpBorder to:DiagonalUpBorderReference];
  }

  WrdTableCellDescriptor::setWidth(TableCellDescriptorReference, [propertiesCopy width]);
  if ([propertiesCopy isWidthTypeOverridden])
  {
    WrdTableCellDescriptor::setWidthUnit(TableCellDescriptorReference, [propertiesCopy widthType]);
  }

  if ([propertiesCopy isTopMarginOverridden])
  {
    WrdTableCellDescriptor::setTopPadding(TableCellDescriptorReference, [propertiesCopy topMargin]);
  }

  if ([propertiesCopy isTopMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setTopPaddingUnit(TableCellDescriptorReference, [propertiesCopy topMarginType]);
  }

  if ([propertiesCopy isLeftMarginOverridden])
  {
    WrdTableCellDescriptor::setLeftPadding(TableCellDescriptorReference, [propertiesCopy leftMargin]);
  }

  if ([propertiesCopy isLeftMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setLeftPaddingUnit(TableCellDescriptorReference, [propertiesCopy leftMarginType]);
  }

  if ([propertiesCopy isBottomMarginOverridden])
  {
    WrdTableCellDescriptor::setBottomPadding(TableCellDescriptorReference, [propertiesCopy bottomMargin]);
  }

  if ([propertiesCopy isBottomMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setBottomPaddingUnit(TableCellDescriptorReference, [propertiesCopy bottomMarginType]);
  }

  if ([propertiesCopy isRightMarginOverridden])
  {
    WrdTableCellDescriptor::setRightPadding(TableCellDescriptorReference, [propertiesCopy rightMargin]);
  }

  if ([propertiesCopy isRightMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setRightPaddingUnit(TableCellDescriptorReference, [propertiesCopy rightMarginType]);
  }

  if ([propertiesCopy isVerticalAlignmentOverridden])
  {
    WrdTableCellDescriptor::setVerticalCellAlignment(TableCellDescriptorReference, [propertiesCopy verticalAlignment]);
  }

  if ([propertiesCopy isVerticallyMergedCellOverridden])
  {
    WrdTableCellDescriptor::setIsVerticallyMergedCell(TableCellDescriptorReference, [propertiesCopy verticallyMergedCell]);
  }

  if ([propertiesCopy isFirstInSetOfVerticallyMergedCellsOverridden])
  {
    WrdTableCellDescriptor::setIsFirstInSetOfVerticallyMergedCells(TableCellDescriptorReference, [propertiesCopy firstInSetOfVerticallyMergedCells]);
  }

  if ([propertiesCopy isFormattingChangedOverridden])
  {
    WrdTableProperties::setRevisionMark(wordProperties, [propertiesCopy formattingChanged]);
  }

  if ([propertiesCopy isIndexToAuthorIDOfFormattingChangeOverridden])
  {
    WrdTableProperties::setAuthorIDForRevision(wordProperties, [propertiesCopy indexToAuthorIDOfFormattingChange]);
  }

  if ([propertiesCopy isFormattingChangeDateOverridden])
  {
    formattingChangeDate = [propertiesCopy formattingChangeDate];
    [formattingChangeDate tc_copyToWordDate:WrdTableProperties::getDttmRevisionMarkReference(wordProperties)];
  }

  if ([propertiesCopy isTextDirectionOverridden])
  {
    textDirection = [propertiesCopy textDirection];
    if (textDirection > 3)
    {
      if (textDirection != 4)
      {
        if (textDirection != 5)
        {
          goto LABEL_55;
        }

        WrdTableCellDescriptor::setRotateFont(TableCellDescriptorReference, 1);
      }
    }

    else
    {
      if (textDirection)
      {
        if (textDirection == 2)
        {
          WrdTableCellDescriptor::setRotateFont(TableCellDescriptorReference, 1);
        }

        goto LABEL_55;
      }

      WrdTableCellDescriptor::setBottomToTopTextFlow(TableCellDescriptorReference, 1);
    }

    WrdTableCellDescriptor::setVerticalTextFlow(TableCellDescriptorReference, 1);
  }

LABEL_55:
}

@end