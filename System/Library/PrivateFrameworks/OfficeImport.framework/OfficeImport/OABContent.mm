@interface OABContent
+ (void)readFromContainer:(id)container toDrawable:(id)drawable state:(id)state;
+ (void)readFromContentObject:(id)object content:(EshContent *)content toDrawable:(id)drawable state:(id)state;
+ (void)readFromContentObject:(id)object toDrawable:(id)drawable state:(id)state;
@end

@implementation OABContent

+ (void)readFromContainer:(id)container toDrawable:(id)drawable state:(id)state
{
  containerCopy = container;
  drawableCopy = drawable;
  stateCopy = state;
  eshGroup = [containerCopy eshGroup];
  if (eshGroup)
  {
    v11 = eshGroup + 272;
  }

  else
  {
    v11 = 0;
  }

  if (!eshGroup)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OABContent readFromContainer:toDrawable:state:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABContent.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:39 isFatal:0 description:"invalid nil value for '%{public}s'", "srcContentPtr"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [self readFromContentObject:containerCopy content:v11 toDrawable:drawableCopy state:stateCopy];
}

+ (void)readFromContentObject:(id)object toDrawable:(id)drawable state:(id)state
{
  objectCopy = object;
  drawableCopy = drawable;
  stateCopy = state;
  eshObject = [objectCopy eshObject];
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"+[OABContent readFromContentObject:toDrawable:state:]", v11}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABContent.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:49 isFatal:0 description:"invalid nil value for '%{public}s'", "srcContentPtr"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v11 = 0;
  }

  [self readFromContentObject:objectCopy content:v11 toDrawable:drawableCopy state:stateCopy];
}

+ (void)readFromContentObject:(id)object content:(EshContent *)content toDrawable:(id)drawable state:(id)state
{
  objectCopy = object;
  drawableCopy = drawable;
  stateCopy = state;
  v32 = 0uLL;
  v10 = (*(content->var0 + 2))(content);
  *&v11 = EshContentProperties::getBounds(v10, &v32).n128_u64[0];
  v13 = v32.n128_u32[0];
  v12 = v32.n128_i32[1];
  v14 = v32.n128_u32[2];
  v15 = v32.n128_u32[3];
  drawableProperties = [drawableCopy drawableProperties];
  v17 = objc_alloc_init(OADOrientedBounds);
  [drawableProperties setOrientedBounds:v17];
  v18 = (*(content->var0 + 4))(content);
  if (EshContentLocks::isAspectRatioSet(v18))
  {
    [drawableProperties setAspectRatioLocked:EshContentLocks::getAspectRatio(v18)];
  }

  HIDWORD(v19) = HIDWORD(v33);
  *&v19 = v33;
  [(OADOrientedBounds *)v17 setRotation:v19, objectCopy];
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
  v25 = (*(content->var0 + 2))(content);
  if (EshContentProperties::isWrdInlineSet(v25))
  {
    v26 = (*(content->var0 + 2))(content);
    [drawableProperties setWrdInline:EshContentProperties::getWrdInline(v26)];
  }

  v27 = (*(content->var0 + 2))(content);
  ShapeID = EshContentProperties::getShapeID(v27);
  [stateCopy setDrawable:drawableCopy forShapeId:ShapeID];
  [stateCopy setContentObject:v30 forId:ShapeID];
  [drawableCopy setId:ShapeID];
}

@end