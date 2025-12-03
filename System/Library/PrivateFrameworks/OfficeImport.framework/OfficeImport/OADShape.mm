@interface OADShape
- (BOOL)isTextBox;
- (OADShape)init;
- (id)description;
- (id)geometry;
- (int)type;
- (void)createPresetGeometryWithShapeType:(int)type;
- (void)flattenProperties;
- (void)removeUnnecessaryOverrides;
@end

@implementation OADShape

- (OADShape)init
{
  v3 = objc_opt_class();
  v8.receiver = self;
  v8.super_class = OADShape;
  v4 = [(OADDrawable *)&v8 initWithPropertiesClass:v3];
  if (v4)
  {
    v5 = objc_alloc_init(OADTextBody);
    mTextBody = v4->mTextBody;
    v4->mTextBody = v5;
  }

  return v4;
}

- (void)removeUnnecessaryOverrides
{
  [(OADTextBody *)self->mTextBody removeUnnecessaryOverrides];
  v3.receiver = self;
  v3.super_class = OADShape;
  [(OADDrawable *)&v3 removeUnnecessaryOverrides];
}

- (int)type
{
  geometry = [(OADShape *)self geometry];
  type = [geometry type];

  return type;
}

- (id)geometry
{
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    geometry = mGeometry;
  }

  else if (self->super.mMasterGraphic)
  {
    objc_opt_class();
    geometry = [(OADGraphic *)self->super.mMasterGraphic geometry];
  }

  else
  {
    geometry = 0;
  }

  return geometry;
}

- (void)flattenProperties
{
  [(OADTextBody *)self->mTextBody flattenProperties];
  shapeProperties = [(OADShape *)self shapeProperties];
  [shapeProperties flatten];
}

- (void)createPresetGeometryWithShapeType:(int)type
{
  v3 = *&type;
  if (self->mGeometry)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADShape createPresetGeometryWithShapeType:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADShape.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:90 isFatal:0 description:"A geometry already exists"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = objc_alloc_init(OADPresetShapeGeometry);
  mGeometry = self->mGeometry;
  self->mGeometry = &v7->super;

  v9 = self->mGeometry;

  [(OADShapeGeometry *)v9 setType:v3];
}

- (BOOL)isTextBox
{
  if ([(OADShape *)self type]== 202)
  {
    return 1;
  }

  shapeProperties = [(OADShape *)self shapeProperties];
  isTextBox = [shapeProperties isTextBox];

  return isTextBox;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADShape;
  v2 = [(OADGraphic *)&v4 description];

  return v2;
}

@end