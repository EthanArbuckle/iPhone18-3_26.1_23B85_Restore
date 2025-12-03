@interface WBTableProperties
+ (void)mapWordProperties:(void *)properties reader:(id)reader toProperties:(id)toProperties;
+ (void)readFrom:(id)from wrdProperties:(void *)properties tracked:(void *)tracked properties:(id)a6;
@end

@implementation WBTableProperties

+ (void)readFrom:(id)from wrdProperties:(void *)properties tracked:(void *)tracked properties:(id)a6
{
  fromCopy = from;
  v10 = a6;
  [v10 setResolveMode:0];
  [self mapWordProperties:properties reader:fromCopy toProperties:v10];
  if (tracked)
  {
    [v10 setResolveMode:1];
    [self mapWordProperties:tracked reader:fromCopy toProperties:v10];
  }

  [v10 setResolveMode:2];
}

+ (void)mapWordProperties:(void *)properties reader:(id)reader toProperties:(id)toProperties
{
  readerCopy = reader;
  toPropertiesCopy = toProperties;
  v9 = *(properties + 2);
  if ((v9 & 0x20) != 0)
  {
    TopBorderReference = WrdTableProperties::getTopBorderReference(properties);
    mutableTopBorder = [toPropertiesCopy mutableTopBorder];
    [WBBorder readFrom:TopBorderReference to:mutableTopBorder];

    v9 = *(properties + 2);
  }

  if ((v9 & 0x40) != 0)
  {
    LeftBorderReference = WrdTableProperties::getLeftBorderReference(properties);
    mutableLeftBorder = [toPropertiesCopy mutableLeftBorder];
    [WBBorder readFrom:LeftBorderReference to:mutableLeftBorder];

    v9 = *(properties + 2);
  }

  if ((v9 & 0x80) != 0)
  {
    BottomBorderReference = WrdTableProperties::getBottomBorderReference(properties);
    mutableBottomBorder = [toPropertiesCopy mutableBottomBorder];
    [WBBorder readFrom:BottomBorderReference to:mutableBottomBorder];

    v9 = *(properties + 2);
  }

  if ((v9 & 0x100) != 0)
  {
    RightBorderReference = WrdTableProperties::getRightBorderReference(properties);
    mutableRightBorder = [toPropertiesCopy mutableRightBorder];
    [WBBorder readFrom:RightBorderReference to:mutableRightBorder];

    v9 = *(properties + 2);
  }

  if ((v9 & 0x200) != 0)
  {
    InnerHorizontalBorderReference = WrdTableProperties::getInnerHorizontalBorderReference(properties);
    mutableInsideHorizontalBorder = [toPropertiesCopy mutableInsideHorizontalBorder];
    [WBBorder readFrom:InnerHorizontalBorderReference to:mutableInsideHorizontalBorder];

    v9 = *(properties + 2);
  }

  if ((v9 & 0x400) != 0)
  {
    InnerVerticalBorderReference = WrdTableProperties::getInnerVerticalBorderReference(properties);
    mutableInsideVerticalBorder = [toPropertiesCopy mutableInsideVerticalBorder];
    [WBBorder readFrom:InnerVerticalBorderReference to:mutableInsideVerticalBorder];

    v9 = *(properties + 2);
  }

  if ((v9 & 0x10) != 0)
  {
    ShadingReference = WrdTableProperties::getShadingReference(properties);
    mutableShading = [toPropertiesCopy mutableShading];
    [WBShading readFrom:ShadingReference to:mutableShading];
  }

  if ((*(properties + 27) & 0x10) != 0)
  {
    v24 = [readerCopy styleAtIndex:*(properties + 164) expectedType:3];
    if (v24)
    {
      [toPropertiesCopy setBaseStyle:v24];
    }
  }

  v25 = *(properties + 2);
  if ((v25 & 0x4000) != 0)
  {
    [toPropertiesCopy setJustification:*(properties + 32)];
    v25 = *(properties + 2);
  }

  if ((v25 & 0x40000000000) != 0)
  {
    [toPropertiesCopy setAlignment:*(properties + 60)];
    v25 = *(properties + 2);
  }

  if ((v25 & 0x200000000000000) != 0)
  {
    [toPropertiesCopy setWidth:*(properties + 168)];
    v25 = *(properties + 2);
  }

  if ((v25 & 0x8000) != 0)
  {
    [toPropertiesCopy setWidthType:*(properties + 33)];
    v25 = *(properties + 2);
  }

  if ((v25 & 0x400000000000000) != 0)
  {
    [toPropertiesCopy setIndent:*(properties + 169)];
    v25 = *(properties + 2);
  }

  if ((v25 & 0x10000) != 0)
  {
    [toPropertiesCopy setIndentType:*(properties + 34)];
  }

  if ((*(properties + 24) & 0x80) != 0)
  {
    [toPropertiesCopy setCellSpacing:*(properties + 181)];
  }

  v26 = *(properties + 2);
  if ((v26 & 0x8000000) != 0)
  {
    [toPropertiesCopy setCellSpacing:*(properties + 90)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x8000000000) != 0)
  {
    [toPropertiesCopy setVerticalAnchor:*(properties + 57)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x10000000000) != 0)
  {
    [toPropertiesCopy setHorizontalAnchor:*(properties + 58)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x400000000000) != 0)
  {
    [toPropertiesCopy setVerticalPosition:*(properties + 77)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x200000000000) != 0)
  {
    [toPropertiesCopy setHorizontalPosition:*(properties + 76)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x800000000000) != 0)
  {
    [toPropertiesCopy setLeftDistanceFromText:*(properties + 78)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x1000000000000) != 0)
  {
    [toPropertiesCopy setTopDistanceFromText:*(properties + 79)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x2000000000000) != 0)
  {
    [toPropertiesCopy setRightDistanceFromText:*(properties + 80)];
    v26 = *(properties + 2);
  }

  if ((v26 & 0x4000000000000) != 0)
  {
    [toPropertiesCopy setBottomDistanceFromText:*(properties + 81)];
  }

  if ((*(properties + 26) & 0x20) != 0)
  {
    [toPropertiesCopy setBiDirectional:*(properties + 388) != 0];
  }

  if (WrdTableProperties::doRevisionsExist(properties))
  {
    v27 = *(properties + 2);
    if ((v27 & 2) != 0)
    {
      [toPropertiesCopy setIndexToAuthorIDOfFormattingChange:*(properties + 166)];
      v27 = *(properties + 2);
    }

    if ((v27 & 4) != 0)
    {
      v28 = [self formattingChangeDate:*(properties + 15)];
      [toPropertiesCopy setFormattingChangeDate:v28];
    }

    if ([toPropertiesCopy isFormattingChangeDateOverridden] && objc_msgSend(toPropertiesCopy, "isIndexToAuthorIDOfFormattingChangeOverridden"))
    {
      document = [toPropertiesCopy document];
      formattingChangeDate = [toPropertiesCopy formattingChangeDate];
      [document addChangeTrackingEditAtDate:formattingChangeDate authorIndex:{objc_msgSend(toPropertiesCopy, "indexToAuthorIDOfFormattingChange")}];
    }
  }
}

@end