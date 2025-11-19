@interface WBTableCellBodyProperties
+ (void)mapProperties:(id)a3 toWordProperties:(void *)a4 index:(unint64_t)a5;
+ (void)mapWordProperties:(void *)a3 toProperties:(id)a4 index:(unint64_t)a5;
+ (void)readFrom:(void *)a3 tracked:(void *)a4 properties:(id)a5 index:(unint64_t)a6;
+ (void)write:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 index:(unint64_t)a6;
@end

@implementation WBTableCellBodyProperties

+ (void)readFrom:(void *)a3 tracked:(void *)a4 properties:(id)a5 index:(unint64_t)a6
{
  v12 = a5;
  if (a3 && v12)
  {
    [v12 setResolveMode:0];
    [a1 mapWordProperties:a3 toProperties:v12 index:a6];
    PositionOfCell = WrdTableProperties::getPositionOfCell(a3, (a6 + 1));
    [v12 setWidth:{(PositionOfCell - WrdTableProperties::getPositionOfCell(a3, a6))}];
    if (a4)
    {
      [v12 setResolveMode:1];
      [a1 mapWordProperties:a4 toProperties:v12 index:a6];
      if ((*(a4 + 23) & 0x40) != 0)
      {
        v11 = WrdTableProperties::getPositionOfCell(a4, (a6 + 1));
        [v12 setWidth:{(v11 - WrdTableProperties::getPositionOfCell(a4, a6))}];
      }
    }

    [v12 setResolveMode:2];
  }
}

+ (void)write:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 index:(unint64_t)a6
{
  v10 = a3;
  if (v10 && a4)
  {
    [v10 setResolveMode:0];
    [a1 mapProperties:v10 toWordProperties:a4 index:a6];
    if (a5)
    {
      [v10 setResolveMode:1];
      [a1 mapProperties:v10 toWordProperties:a5 index:a6];
    }

    [v10 setResolveMode:2];
  }
}

+ (void)mapWordProperties:(void *)a3 toProperties:(id)a4 index:(unint64_t)a5
{
  v5 = a5;
  v33 = a4;
  TableCellDescriptorReference = WrdTableProperties::getTableCellDescriptorReference(a3, v5);
  [v33 setPosition:v5];
  v9 = *(TableCellDescriptorReference + 8);
  if ((v9 & 2) != 0)
  {
    TopBorderReference = WrdTableCellDescriptor::getTopBorderReference(TableCellDescriptorReference);
    v11 = [v33 mutableTopBorder];
    [WBBorder readFrom:TopBorderReference to:v11];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 4) != 0)
  {
    LeftBorderReference = WrdTableCellDescriptor::getLeftBorderReference(TableCellDescriptorReference);
    v13 = [v33 mutableLeftBorder];
    [WBBorder readFrom:LeftBorderReference to:v13];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 8) != 0)
  {
    BottomBorderReference = WrdTableCellDescriptor::getBottomBorderReference(TableCellDescriptorReference);
    v15 = [v33 mutableBottomBorder];
    [WBBorder readFrom:BottomBorderReference to:v15];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x10) != 0)
  {
    RightBorderReference = WrdTableCellDescriptor::getRightBorderReference(TableCellDescriptorReference);
    v17 = [v33 mutableRightBorder];
    [WBBorder readFrom:RightBorderReference to:v17];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if (v9)
  {
    ShadingReference = WrdTableCellDescriptor::getShadingReference(TableCellDescriptorReference);
    v19 = [v33 mutableShading];
    [WBShading readFrom:ShadingReference to:v19];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x40) != 0)
  {
    DiagonalUpBorderReference = WrdTableCellDescriptor::getDiagonalUpBorderReference(TableCellDescriptorReference);
    v21 = [v33 mutableDiagonalUpBorder];
    [WBBorder readFrom:DiagonalUpBorderReference to:v21];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x20) != 0)
  {
    DiagonalDownBorderReference = WrdTableCellDescriptor::getDiagonalDownBorderReference(TableCellDescriptorReference);
    v23 = [v33 mutableDiagonalDownBorder];
    [WBBorder readFrom:DiagonalDownBorderReference to:v23];

    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x2000) != 0)
  {
    [v33 setWidthType:*(TableCellDescriptorReference + 76)];
    v9 = *(TableCellDescriptorReference + 8);
  }

  v24 = v33;
  if ((v9 & 0x1000000) != 0)
  {
    [v33 setTopMargin:*(TableCellDescriptorReference + 116)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = v33;
  }

  if ((v9 & 0x8000) != 0)
  {
    [v24 setTopMarginType:*(TableCellDescriptorReference + 84)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = v33;
  }

  if ((v9 & 0x2000000) != 0)
  {
    [v24 setBottomMargin:*(TableCellDescriptorReference + 118)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = v33;
  }

  if ((v9 & 0x10000) != 0)
  {
    [v24 setBottomMarginType:*(TableCellDescriptorReference + 88)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = v33;
  }

  if ((v9 & 0x800000) != 0)
  {
    [v24 setLeftMargin:*(TableCellDescriptorReference + 114)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = v33;
  }

  if ((v9 & 0x4000) != 0)
  {
    [v24 setLeftMarginType:*(TableCellDescriptorReference + 80)];
    v9 = *(TableCellDescriptorReference + 8);
    v24 = v33;
  }

  if ((v9 & 0x4000000) != 0)
  {
    [v24 setRightMargin:*(TableCellDescriptorReference + 120)];
    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x20000) != 0)
  {
    [v33 setRightMarginType:*(TableCellDescriptorReference + 92)];
    v9 = *(TableCellDescriptorReference + 8);
  }

  if ((v9 & 0x1000) != 0)
  {
    [v33 setVerticalAlignment:*(TableCellDescriptorReference + 72)];
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

      [v33 setTextDirection:v28];
    }

    else
    {
      [v33 setTextDirection:0];
    }
  }

  v29 = *(TableCellDescriptorReference + 12);
  if ((v29 & 0x10) != 0)
  {
    [v33 setVerticallyMergedCell:(*(TableCellDescriptorReference + 130) >> 5) & 1];
    v29 = *(TableCellDescriptorReference + 12);
  }

  if ((v29 & 0x20) != 0)
  {
    [v33 setFirstInSetOfVerticallyMergedCells:(*(TableCellDescriptorReference + 130) >> 6) & 1];
  }

  if (WrdTableProperties::doRevisionsExist(a3))
  {
    if ((*(a3 + 16) & 2) != 0)
    {
      [v33 setIndexToAuthorIDOfFormattingChange:*(a3 + 166)];
    }

    [v33 setFormattingChanged:1];
    if ((*(a3 + 16) & 4) != 0)
    {
      v30 = [a1 formattingChangeDate:*(a3 + 15)];
      [v33 setFormattingChangeDate:v30];
    }

    if ([v33 isFormattingChangeDateOverridden] && objc_msgSend(v33, "isIndexToAuthorIDOfFormattingChangeOverridden"))
    {
      v31 = [v33 document];
      v32 = [v33 formattingChangeDate];
      [v31 addChangeTrackingEditAtDate:v32 authorIndex:{objc_msgSend(v33, "indexToAuthorIDOfFormattingChange")}];
    }
  }
}

+ (void)mapProperties:(id)a3 toWordProperties:(void *)a4 index:(unint64_t)a5
{
  v5 = a5;
  v24 = a3;
  WrdTableProperties::setPositionOfCell(a4, (v5 + 1), [v24 position]);
  TableCellDescriptorReference = WrdTableProperties::getTableCellDescriptorReference(a4, v5);
  if ([v24 isShadingOverridden])
  {
    ShadingReference = WrdTableCellDescriptor::getShadingReference(TableCellDescriptorReference);
    v9 = [v24 shading];
    [WBShading write:v9 to:ShadingReference];
  }

  if ([v24 isTopBorderOverridden])
  {
    TopBorderReference = WrdTableCellDescriptor::getTopBorderReference(TableCellDescriptorReference);
    v11 = [v24 topBorder];
    [WBBorder write:v11 to:TopBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x80u;
  }

  if ([v24 isLeftBorderOverridden])
  {
    LeftBorderReference = WrdTableCellDescriptor::getLeftBorderReference(TableCellDescriptorReference);
    v13 = [v24 leftBorder];
    [WBBorder write:v13 to:LeftBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x100u;
  }

  if ([v24 isBottomBorderOverridden])
  {
    BottomBorderReference = WrdTableCellDescriptor::getBottomBorderReference(TableCellDescriptorReference);
    v15 = [v24 bottomBorder];
    [WBBorder write:v15 to:BottomBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x200u;
  }

  if ([v24 isRightBorderOverridden])
  {
    RightBorderReference = WrdTableCellDescriptor::getRightBorderReference(TableCellDescriptorReference);
    v17 = [v24 rightBorder];
    [WBBorder write:v17 to:RightBorderReference];

    *(TableCellDescriptorReference + 2) |= 0x400u;
  }

  if ([v24 isDiagonalDownBorderOverridden])
  {
    DiagonalDownBorderReference = WrdTableCellDescriptor::getDiagonalDownBorderReference(TableCellDescriptorReference);
    v19 = [v24 diagonalDownBorder];
    [WBBorder write:v19 to:DiagonalDownBorderReference];
  }

  if ([v24 isDiagonalUpBorderOverridden])
  {
    DiagonalUpBorderReference = WrdTableCellDescriptor::getDiagonalUpBorderReference(TableCellDescriptorReference);
    v21 = [v24 diagonalUpBorder];
    [WBBorder write:v21 to:DiagonalUpBorderReference];
  }

  WrdTableCellDescriptor::setWidth(TableCellDescriptorReference, [v24 width]);
  if ([v24 isWidthTypeOverridden])
  {
    WrdTableCellDescriptor::setWidthUnit(TableCellDescriptorReference, [v24 widthType]);
  }

  if ([v24 isTopMarginOverridden])
  {
    WrdTableCellDescriptor::setTopPadding(TableCellDescriptorReference, [v24 topMargin]);
  }

  if ([v24 isTopMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setTopPaddingUnit(TableCellDescriptorReference, [v24 topMarginType]);
  }

  if ([v24 isLeftMarginOverridden])
  {
    WrdTableCellDescriptor::setLeftPadding(TableCellDescriptorReference, [v24 leftMargin]);
  }

  if ([v24 isLeftMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setLeftPaddingUnit(TableCellDescriptorReference, [v24 leftMarginType]);
  }

  if ([v24 isBottomMarginOverridden])
  {
    WrdTableCellDescriptor::setBottomPadding(TableCellDescriptorReference, [v24 bottomMargin]);
  }

  if ([v24 isBottomMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setBottomPaddingUnit(TableCellDescriptorReference, [v24 bottomMarginType]);
  }

  if ([v24 isRightMarginOverridden])
  {
    WrdTableCellDescriptor::setRightPadding(TableCellDescriptorReference, [v24 rightMargin]);
  }

  if ([v24 isRightMarginTypeOverridden])
  {
    WrdTableCellDescriptor::setRightPaddingUnit(TableCellDescriptorReference, [v24 rightMarginType]);
  }

  if ([v24 isVerticalAlignmentOverridden])
  {
    WrdTableCellDescriptor::setVerticalCellAlignment(TableCellDescriptorReference, [v24 verticalAlignment]);
  }

  if ([v24 isVerticallyMergedCellOverridden])
  {
    WrdTableCellDescriptor::setIsVerticallyMergedCell(TableCellDescriptorReference, [v24 verticallyMergedCell]);
  }

  if ([v24 isFirstInSetOfVerticallyMergedCellsOverridden])
  {
    WrdTableCellDescriptor::setIsFirstInSetOfVerticallyMergedCells(TableCellDescriptorReference, [v24 firstInSetOfVerticallyMergedCells]);
  }

  if ([v24 isFormattingChangedOverridden])
  {
    WrdTableProperties::setRevisionMark(a4, [v24 formattingChanged]);
  }

  if ([v24 isIndexToAuthorIDOfFormattingChangeOverridden])
  {
    WrdTableProperties::setAuthorIDForRevision(a4, [v24 indexToAuthorIDOfFormattingChange]);
  }

  if ([v24 isFormattingChangeDateOverridden])
  {
    v22 = [v24 formattingChangeDate];
    [v22 tc_copyToWordDate:WrdTableProperties::getDttmRevisionMarkReference(a4)];
  }

  if ([v24 isTextDirectionOverridden])
  {
    v23 = [v24 textDirection];
    if (v23 > 3)
    {
      if (v23 != 4)
      {
        if (v23 != 5)
        {
          goto LABEL_55;
        }

        WrdTableCellDescriptor::setRotateFont(TableCellDescriptorReference, 1);
      }
    }

    else
    {
      if (v23)
      {
        if (v23 == 2)
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