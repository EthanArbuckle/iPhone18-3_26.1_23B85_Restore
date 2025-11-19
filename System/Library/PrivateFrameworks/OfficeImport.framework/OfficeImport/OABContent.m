@interface OABContent
+ (void)readFromContainer:(id)a3 toDrawable:(id)a4 state:(id)a5;
+ (void)readFromContentObject:(id)a3 content:(EshContent *)a4 toDrawable:(id)a5 state:(id)a6;
+ (void)readFromContentObject:(id)a3 toDrawable:(id)a4 state:(id)a5;
@end

@implementation OABContent

+ (void)readFromContainer:(id)a3 toDrawable:(id)a4 state:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 eshGroup];
  if (v10)
  {
    v11 = v10 + 272;
  }

  else
  {
    v11 = 0;
  }

  if (!v10)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OABContent readFromContainer:toDrawable:state:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABContent.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:39 isFatal:0 description:"invalid nil value for '%{public}s'", "srcContentPtr"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [a1 readFromContentObject:v14 content:v11 toDrawable:v8 state:v9];
}

+ (void)readFromContentObject:(id)a3 toDrawable:(id)a4 state:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 eshObject];
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"+[OABContent readFromContentObject:toDrawable:state:]", v11}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABContent.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:49 isFatal:0 description:"invalid nil value for '%{public}s'", "srcContentPtr"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v11 = 0;
  }

  [a1 readFromContentObject:v14 content:v11 toDrawable:v8 state:v9];
}

+ (void)readFromContentObject:(id)a3 content:(EshContent *)a4 toDrawable:(id)a5 state:(id)a6
{
  v29 = a3;
  v9 = a5;
  v31 = a6;
  v32 = 0uLL;
  v10 = (*(a4->var0 + 2))(a4);
  *&v11 = EshContentProperties::getBounds(v10, &v32).n128_u64[0];
  v13 = v32.n128_u32[0];
  v12 = v32.n128_i32[1];
  v14 = v32.n128_u32[2];
  v15 = v32.n128_u32[3];
  v16 = [v9 drawableProperties];
  v17 = objc_alloc_init(OADOrientedBounds);
  [v16 setOrientedBounds:v17];
  v18 = (*(a4->var0 + 4))(a4);
  if (EshContentLocks::isAspectRatioSet(v18))
  {
    [v16 setAspectRatioLocked:EshContentLocks::getAspectRatio(v18)];
  }

  HIDWORD(v19) = HIDWORD(v33);
  *&v19 = v33;
  [(OADOrientedBounds *)v17 setRotation:v19, v29];
  [(OADOrientedBounds *)v17 setFlipX:v34];
  [(OADOrientedBounds *)v17 setFlipY:v35];
  [(OADOrientedBounds *)v17 rotation];
  v20 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  v21 = v13;
  v22 = v12;
  v23 = (v14 - v13);
  v24 = (v15 - v12);
  if (v20)
  {
    v21 = NSTransposedRectWithSameCenter(v21, v22, v23, v24);
  }

  [(OADOrientedBounds *)v17 setBounds:v21, v22, v23, v24];
  v25 = (*(a4->var0 + 2))(a4);
  if (EshContentProperties::isWrdInlineSet(v25))
  {
    v26 = (*(a4->var0 + 2))(a4);
    [v16 setWrdInline:EshContentProperties::getWrdInline(v26)];
  }

  v27 = (*(a4->var0 + 2))(a4);
  ShapeID = EshContentProperties::getShapeID(v27);
  [v31 setDrawable:v9 forShapeId:ShapeID];
  [v31 setContentObject:v30 forId:ShapeID];
  [v9 setId:ShapeID];
}

@end