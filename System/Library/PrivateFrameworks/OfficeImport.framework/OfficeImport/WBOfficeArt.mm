@interface WBOfficeArt
+ (void)readFrom:(id)a3 at:(int)a4 textRun:(WrdCharacterTextRun *)a5 paragraph:(id)a6 to:(id)a7;
+ (void)setShapeAddress:(const WrdFileShapeAddress *)a3 toDrawable:(id)a4;
@end

@implementation WBOfficeArt

+ (void)readFrom:(id)a3 at:(int)a4 textRun:(WrdCharacterTextRun *)a5 paragraph:(id)a6 to:(id)a7
{
  v35 = a3;
  v12 = a6;
  v13 = a7;
  if (v13)
  {
    var4 = a5->var4;
    var5 = a5->var5;
    v16 = [WDCharacterProperties alloc];
    v17 = [v12 document];
    v18 = [(WDCharacterProperties *)v16 initWithDocument:v17];

    v19 = [v12 document];
    [WBCharacterProperties readFrom:v35 wrdProperties:var4 tracked:var5 document:v19 properties:v18];

    [v13 setProperties:v18];
    [v13 checkForFloating:v12];
    if (a5->var1 == 2)
    {
      v20 = [v35 fileShapeAddressHeaderTable];
    }

    else
    {
      v20 = [v35 fileShapeAddressTable];
    }

    FileShapeAddressByCp = WrdFileShapeAddressTable::getFileShapeAddressByCp(v20, a4);
    WrdFileShapeAddress::WrdFileShapeAddress(&v36, FileShapeAddressByCp);
    v22 = [v35 drawableForShapeId:v36.var2];
    if (v22)
    {
      [v13 setDrawable:v22];
      objc_opt_class();
      v23 = [v22 clientData];
      v24 = [v23 anchor];
      [a1 setShapeAddress:&v36 toDrawable:v22];
      if (([v13 isFloating] & 1) == 0)
      {
        [v24 bounds];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = [v22 drawableProperties];
        v34 = [v33 orientedBounds];
        [v34 setBounds:{v26, v28, v30, v32}];

        [v23 clearAnchor];
      }
    }
  }
}

+ (void)setShapeAddress:(const WrdFileShapeAddress *)a3 toDrawable:(id)a4
{
  v22 = a4;
  objc_opt_class();
  v5 = [v22 clientData];
  v6 = [v5 anchor];
  v7 = v6;
  if (a3->var7 < 4u)
  {
    [v6 setRelativeHorizontalPosition:?];
  }

  if (a3->var8 <= 3u)
  {
    [v7 setRelativeVerticalPosition:?];
  }

  if (a3->var9 <= 5u)
  {
    [v7 setTextWrappingMode:?];
  }

  if (a3->var10 <= 3u)
  {
    [v7 setTextWrappingModeType:?];
  }

  var3 = a3->var3;
  var4 = a3->var4;
  var5 = a3->var5;
  var6 = a3->var6;
  v12 = [v22 drawableProperties];
  v13 = [v12 orientedBounds];
  [v13 rotation];
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