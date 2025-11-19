@interface WBTableCellStyleProperties
+ (void)readFrom:(void *)a3 properties:(id)a4;
+ (void)write:(id)a3 to:(void *)a4;
@end

@implementation WBTableCellStyleProperties

+ (void)readFrom:(void *)a3 properties:(id)a4
{
  v24 = a4;
  [v24 setResolveMode:0];
  v5 = *(a3 + 2);
  if ((v5 & 0x20) != 0)
  {
    TopBorderReference = WrdTableProperties::getTopBorderReference(a3);
    v7 = [v24 mutableTopBorder];
    [WBBorder readFrom:TopBorderReference to:v7];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x40) != 0)
  {
    LeftBorderReference = WrdTableProperties::getLeftBorderReference(a3);
    v9 = [v24 mutableLeftBorder];
    [WBBorder readFrom:LeftBorderReference to:v9];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x80) != 0)
  {
    BottomBorderReference = WrdTableProperties::getBottomBorderReference(a3);
    v11 = [v24 mutableBottomBorder];
    [WBBorder readFrom:BottomBorderReference to:v11];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x100) != 0)
  {
    RightBorderReference = WrdTableProperties::getRightBorderReference(a3);
    v13 = [v24 mutableRightBorder];
    [WBBorder readFrom:RightBorderReference to:v13];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x10) != 0)
  {
    ShadingReference = WrdTableProperties::getShadingReference(a3);
    v15 = [v24 mutableShading];
    [WBShading readFrom:ShadingReference to:v15];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x1000) != 0)
  {
    DiagonalUpBorderReference = WrdTableProperties::getDiagonalUpBorderReference(a3);
    v17 = [v24 mutableDiagonalUpBorder];
    [WBBorder readFrom:DiagonalUpBorderReference to:v17];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x800) != 0)
  {
    DiagonalDownBorderReference = WrdTableProperties::getDiagonalDownBorderReference(a3);
    v19 = [v24 mutableDiagonalDownBorder];
    [WBBorder readFrom:DiagonalDownBorderReference to:v19];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x200) != 0)
  {
    InnerHorizontalBorderReference = WrdTableProperties::getInnerHorizontalBorderReference(a3);
    v21 = [v24 mutableInsideHorizontalBorder];
    [WBBorder readFrom:InnerHorizontalBorderReference to:v21];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x400) != 0)
  {
    InnerVerticalBorderReference = WrdTableProperties::getInnerVerticalBorderReference(a3);
    v23 = [v24 mutableInsideVerticalBorder];
    [WBBorder readFrom:InnerVerticalBorderReference to:v23];
  }

  [v24 setResolveMode:2];
}

+ (void)write:(id)a3 to:(void *)a4
{
  v14 = a3;
  if ([v14 isTopBorderOverridden])
  {
    v5 = [v14 topBorder];
    [WBBorder write:v5 to:WrdTableProperties::getTopBorderReference(a4)];
  }

  if ([v14 isLeftBorderOverridden])
  {
    v6 = [v14 leftBorder];
    [WBBorder write:v6 to:WrdTableProperties::getLeftBorderReference(a4)];
  }

  if ([v14 isBottomBorderOverridden])
  {
    v7 = [v14 bottomBorder];
    [WBBorder write:v7 to:WrdTableProperties::getBottomBorderReference(a4)];
  }

  if ([v14 isRightBorderOverridden])
  {
    v8 = [v14 rightBorder];
    [WBBorder write:v8 to:WrdTableProperties::getRightBorderReference(a4)];
  }

  if ([v14 isShadingOverridden])
  {
    v9 = [v14 shading];
    [WBShading write:v9 to:WrdTableProperties::getShadingReference(a4)];
  }

  if ([v14 isDiagonalUpBorderOverridden])
  {
    v10 = [v14 diagonalUpBorder];
    [WBBorder write:v10 to:WrdTableProperties::getDiagonalUpBorderReference(a4)];
  }

  if ([v14 isDiagonalDownBorderOverridden])
  {
    v11 = [v14 diagonalDownBorder];
    [WBBorder write:v11 to:WrdTableProperties::getDiagonalDownBorderReference(a4)];
  }

  if ([v14 isInsideHorizontalBorderOverridden])
  {
    v12 = [v14 insideHorizontalBorder];
    [WBBorder write:v12 to:WrdTableProperties::getInnerHorizontalBorderReference(a4)];
  }

  if ([v14 isInsideVerticalBorderOverridden])
  {
    v13 = [v14 insideVerticalBorder];
    [WBBorder write:v13 to:WrdTableProperties::getInnerVerticalBorderReference(a4)];
  }
}

@end