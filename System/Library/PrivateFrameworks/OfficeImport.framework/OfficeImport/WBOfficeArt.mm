@interface WBOfficeArt
+ (void)readFrom:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph to:(id)to;
+ (void)setShapeAddress:(const WrdFileShapeAddress *)address toDrawable:(id)drawable;
@end

@implementation WBOfficeArt

+ (void)readFrom:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph to:(id)to
{
  fromCopy = from;
  paragraphCopy = paragraph;
  toCopy = to;
  if (toCopy)
  {
    var4 = run->var4;
    var5 = run->var5;
    v16 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v18 = [(WDCharacterProperties *)v16 initWithDocument:document];

    document2 = [paragraphCopy document];
    [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document2 properties:v18];

    [toCopy setProperties:v18];
    [toCopy checkForFloating:paragraphCopy];
    if (run->var1 == 2)
    {
      fileShapeAddressHeaderTable = [fromCopy fileShapeAddressHeaderTable];
    }

    else
    {
      fileShapeAddressHeaderTable = [fromCopy fileShapeAddressTable];
    }

    FileShapeAddressByCp = WrdFileShapeAddressTable::getFileShapeAddressByCp(fileShapeAddressHeaderTable, at);
    WrdFileShapeAddress::WrdFileShapeAddress(&v36, FileShapeAddressByCp);
    v22 = [fromCopy drawableForShapeId:v36.var2];
    if (v22)
    {
      [toCopy setDrawable:v22];
      objc_opt_class();
      clientData = [v22 clientData];
      anchor = [clientData anchor];
      [self setShapeAddress:&v36 toDrawable:v22];
      if (([toCopy isFloating] & 1) == 0)
      {
        [anchor bounds];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        drawableProperties = [v22 drawableProperties];
        orientedBounds = [drawableProperties orientedBounds];
        [orientedBounds setBounds:{v26, v28, v30, v32}];

        [clientData clearAnchor];
      }
    }
  }
}

+ (void)setShapeAddress:(const WrdFileShapeAddress *)address toDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  clientData = [drawableCopy clientData];
  anchor = [clientData anchor];
  v7 = anchor;
  if (address->var7 < 4u)
  {
    [anchor setRelativeHorizontalPosition:?];
  }

  if (address->var8 <= 3u)
  {
    [v7 setRelativeVerticalPosition:?];
  }

  if (address->var9 <= 5u)
  {
    [v7 setTextWrappingMode:?];
  }

  if (address->var10 <= 3u)
  {
    [v7 setTextWrappingModeType:?];
  }

  var3 = address->var3;
  var4 = address->var4;
  var5 = address->var5;
  var6 = address->var6;
  drawableProperties = [drawableCopy drawableProperties];
  orientedBounds = [drawableProperties orientedBounds];
  [orientedBounds rotation];
  v14 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  v15 = var3 / 20.0;
  v16 = var4 / 20.0;
  v17 = (var5 - var3) / 20.0;
  v18 = (var6 - var4) / 20.0;

  if (v14)
  {
    v15 = NSTransposedRectWithSameCenter(var3 / 20.0, var4 / 20.0, (var5 - var3) / 20.0, (var6 - var4) / 20.0);
    v16 = v19;
    v17 = v20;
    v18 = v21;
  }

  [v7 setBounds:{v15, v16, v17, v18}];
}

@end