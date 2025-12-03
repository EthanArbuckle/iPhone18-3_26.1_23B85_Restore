@interface WBTableCellStyleProperties
+ (void)readFrom:(void *)from properties:(id)properties;
+ (void)write:(id)write to:(void *)to;
@end

@implementation WBTableCellStyleProperties

+ (void)readFrom:(void *)from properties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy setResolveMode:0];
  v5 = *(from + 2);
  if ((v5 & 0x20) != 0)
  {
    TopBorderReference = WrdTableProperties::getTopBorderReference(from);
    mutableTopBorder = [propertiesCopy mutableTopBorder];
    [WBBorder readFrom:TopBorderReference to:mutableTopBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x40) != 0)
  {
    LeftBorderReference = WrdTableProperties::getLeftBorderReference(from);
    mutableLeftBorder = [propertiesCopy mutableLeftBorder];
    [WBBorder readFrom:LeftBorderReference to:mutableLeftBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x80) != 0)
  {
    BottomBorderReference = WrdTableProperties::getBottomBorderReference(from);
    mutableBottomBorder = [propertiesCopy mutableBottomBorder];
    [WBBorder readFrom:BottomBorderReference to:mutableBottomBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x100) != 0)
  {
    RightBorderReference = WrdTableProperties::getRightBorderReference(from);
    mutableRightBorder = [propertiesCopy mutableRightBorder];
    [WBBorder readFrom:RightBorderReference to:mutableRightBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x10) != 0)
  {
    ShadingReference = WrdTableProperties::getShadingReference(from);
    mutableShading = [propertiesCopy mutableShading];
    [WBShading readFrom:ShadingReference to:mutableShading];

    v5 = *(from + 2);
  }

  if ((v5 & 0x1000) != 0)
  {
    DiagonalUpBorderReference = WrdTableProperties::getDiagonalUpBorderReference(from);
    mutableDiagonalUpBorder = [propertiesCopy mutableDiagonalUpBorder];
    [WBBorder readFrom:DiagonalUpBorderReference to:mutableDiagonalUpBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x800) != 0)
  {
    DiagonalDownBorderReference = WrdTableProperties::getDiagonalDownBorderReference(from);
    mutableDiagonalDownBorder = [propertiesCopy mutableDiagonalDownBorder];
    [WBBorder readFrom:DiagonalDownBorderReference to:mutableDiagonalDownBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x200) != 0)
  {
    InnerHorizontalBorderReference = WrdTableProperties::getInnerHorizontalBorderReference(from);
    mutableInsideHorizontalBorder = [propertiesCopy mutableInsideHorizontalBorder];
    [WBBorder readFrom:InnerHorizontalBorderReference to:mutableInsideHorizontalBorder];

    v5 = *(from + 2);
  }

  if ((v5 & 0x400) != 0)
  {
    InnerVerticalBorderReference = WrdTableProperties::getInnerVerticalBorderReference(from);
    mutableInsideVerticalBorder = [propertiesCopy mutableInsideVerticalBorder];
    [WBBorder readFrom:InnerVerticalBorderReference to:mutableInsideVerticalBorder];
  }

  [propertiesCopy setResolveMode:2];
}

+ (void)write:(id)write to:(void *)to
{
  writeCopy = write;
  if ([writeCopy isTopBorderOverridden])
  {
    topBorder = [writeCopy topBorder];
    [WBBorder write:topBorder to:WrdTableProperties::getTopBorderReference(to)];
  }

  if ([writeCopy isLeftBorderOverridden])
  {
    leftBorder = [writeCopy leftBorder];
    [WBBorder write:leftBorder to:WrdTableProperties::getLeftBorderReference(to)];
  }

  if ([writeCopy isBottomBorderOverridden])
  {
    bottomBorder = [writeCopy bottomBorder];
    [WBBorder write:bottomBorder to:WrdTableProperties::getBottomBorderReference(to)];
  }

  if ([writeCopy isRightBorderOverridden])
  {
    rightBorder = [writeCopy rightBorder];
    [WBBorder write:rightBorder to:WrdTableProperties::getRightBorderReference(to)];
  }

  if ([writeCopy isShadingOverridden])
  {
    shading = [writeCopy shading];
    [WBShading write:shading to:WrdTableProperties::getShadingReference(to)];
  }

  if ([writeCopy isDiagonalUpBorderOverridden])
  {
    diagonalUpBorder = [writeCopy diagonalUpBorder];
    [WBBorder write:diagonalUpBorder to:WrdTableProperties::getDiagonalUpBorderReference(to)];
  }

  if ([writeCopy isDiagonalDownBorderOverridden])
  {
    diagonalDownBorder = [writeCopy diagonalDownBorder];
    [WBBorder write:diagonalDownBorder to:WrdTableProperties::getDiagonalDownBorderReference(to)];
  }

  if ([writeCopy isInsideHorizontalBorderOverridden])
  {
    insideHorizontalBorder = [writeCopy insideHorizontalBorder];
    [WBBorder write:insideHorizontalBorder to:WrdTableProperties::getInnerHorizontalBorderReference(to)];
  }

  if ([writeCopy isInsideVerticalBorderOverridden])
  {
    insideVerticalBorder = [writeCopy insideVerticalBorder];
    [WBBorder write:insideVerticalBorder to:WrdTableProperties::getInnerVerticalBorderReference(to)];
  }
}

@end