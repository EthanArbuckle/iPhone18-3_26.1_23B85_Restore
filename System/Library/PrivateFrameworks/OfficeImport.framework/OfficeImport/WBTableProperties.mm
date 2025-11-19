@interface WBTableProperties
+ (void)mapWordProperties:(void *)a3 reader:(id)a4 toProperties:(id)a5;
+ (void)readFrom:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 properties:(id)a6;
@end

@implementation WBTableProperties

+ (void)readFrom:(id)a3 wrdProperties:(void *)a4 tracked:(void *)a5 properties:(id)a6
{
  v11 = a3;
  v10 = a6;
  [v10 setResolveMode:0];
  [a1 mapWordProperties:a4 reader:v11 toProperties:v10];
  if (a5)
  {
    [v10 setResolveMode:1];
    [a1 mapWordProperties:a5 reader:v11 toProperties:v10];
  }

  [v10 setResolveMode:2];
}

+ (void)mapWordProperties:(void *)a3 reader:(id)a4 toProperties:(id)a5
{
  v31 = a4;
  v8 = a5;
  v9 = *(a3 + 2);
  if ((v9 & 0x20) != 0)
  {
    TopBorderReference = WrdTableProperties::getTopBorderReference(a3);
    v11 = [v8 mutableTopBorder];
    [WBBorder readFrom:TopBorderReference to:v11];

    v9 = *(a3 + 2);
  }

  if ((v9 & 0x40) != 0)
  {
    LeftBorderReference = WrdTableProperties::getLeftBorderReference(a3);
    v13 = [v8 mutableLeftBorder];
    [WBBorder readFrom:LeftBorderReference to:v13];

    v9 = *(a3 + 2);
  }

  if ((v9 & 0x80) != 0)
  {
    BottomBorderReference = WrdTableProperties::getBottomBorderReference(a3);
    v15 = [v8 mutableBottomBorder];
    [WBBorder readFrom:BottomBorderReference to:v15];

    v9 = *(a3 + 2);
  }

  if ((v9 & 0x100) != 0)
  {
    RightBorderReference = WrdTableProperties::getRightBorderReference(a3);
    v17 = [v8 mutableRightBorder];
    [WBBorder readFrom:RightBorderReference to:v17];

    v9 = *(a3 + 2);
  }

  if ((v9 & 0x200) != 0)
  {
    InnerHorizontalBorderReference = WrdTableProperties::getInnerHorizontalBorderReference(a3);
    v19 = [v8 mutableInsideHorizontalBorder];
    [WBBorder readFrom:InnerHorizontalBorderReference to:v19];

    v9 = *(a3 + 2);
  }

  if ((v9 & 0x400) != 0)
  {
    InnerVerticalBorderReference = WrdTableProperties::getInnerVerticalBorderReference(a3);
    v21 = [v8 mutableInsideVerticalBorder];
    [WBBorder readFrom:InnerVerticalBorderReference to:v21];

    v9 = *(a3 + 2);
  }

  if ((v9 & 0x10) != 0)
  {
    ShadingReference = WrdTableProperties::getShadingReference(a3);
    v23 = [v8 mutableShading];
    [WBShading readFrom:ShadingReference to:v23];
  }

  if ((*(a3 + 27) & 0x10) != 0)
  {
    v24 = [v31 styleAtIndex:*(a3 + 164) expectedType:3];
    if (v24)
    {
      [v8 setBaseStyle:v24];
    }
  }

  v25 = *(a3 + 2);
  if ((v25 & 0x4000) != 0)
  {
    [v8 setJustification:*(a3 + 32)];
    v25 = *(a3 + 2);
  }

  if ((v25 & 0x40000000000) != 0)
  {
    [v8 setAlignment:*(a3 + 60)];
    v25 = *(a3 + 2);
  }

  if ((v25 & 0x200000000000000) != 0)
  {
    [v8 setWidth:*(a3 + 168)];
    v25 = *(a3 + 2);
  }

  if ((v25 & 0x8000) != 0)
  {
    [v8 setWidthType:*(a3 + 33)];
    v25 = *(a3 + 2);
  }

  if ((v25 & 0x400000000000000) != 0)
  {
    [v8 setIndent:*(a3 + 169)];
    v25 = *(a3 + 2);
  }

  if ((v25 & 0x10000) != 0)
  {
    [v8 setIndentType:*(a3 + 34)];
  }

  if ((*(a3 + 24) & 0x80) != 0)
  {
    [v8 setCellSpacing:*(a3 + 181)];
  }

  v26 = *(a3 + 2);
  if ((v26 & 0x8000000) != 0)
  {
    [v8 setCellSpacing:*(a3 + 90)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x8000000000) != 0)
  {
    [v8 setVerticalAnchor:*(a3 + 57)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x10000000000) != 0)
  {
    [v8 setHorizontalAnchor:*(a3 + 58)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x400000000000) != 0)
  {
    [v8 setVerticalPosition:*(a3 + 77)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x200000000000) != 0)
  {
    [v8 setHorizontalPosition:*(a3 + 76)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x800000000000) != 0)
  {
    [v8 setLeftDistanceFromText:*(a3 + 78)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x1000000000000) != 0)
  {
    [v8 setTopDistanceFromText:*(a3 + 79)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x2000000000000) != 0)
  {
    [v8 setRightDistanceFromText:*(a3 + 80)];
    v26 = *(a3 + 2);
  }

  if ((v26 & 0x4000000000000) != 0)
  {
    [v8 setBottomDistanceFromText:*(a3 + 81)];
  }

  if ((*(a3 + 26) & 0x20) != 0)
  {
    [v8 setBiDirectional:*(a3 + 388) != 0];
  }

  if (WrdTableProperties::doRevisionsExist(a3))
  {
    v27 = *(a3 + 2);
    if ((v27 & 2) != 0)
    {
      [v8 setIndexToAuthorIDOfFormattingChange:*(a3 + 166)];
      v27 = *(a3 + 2);
    }

    if ((v27 & 4) != 0)
    {
      v28 = [a1 formattingChangeDate:*(a3 + 15)];
      [v8 setFormattingChangeDate:v28];
    }

    if ([v8 isFormattingChangeDateOverridden] && objc_msgSend(v8, "isIndexToAuthorIDOfFormattingChangeOverridden"))
    {
      v29 = [v8 document];
      v30 = [v8 formattingChangeDate];
      [v29 addChangeTrackingEditAtDate:v30 authorIndex:{objc_msgSend(v8, "indexToAuthorIDOfFormattingChange")}];
    }
  }
}

@end