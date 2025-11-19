@interface OADPresetShapeGeometry
- (id)description;
- (id)equivalentCustomGeometry;
- (id)escherEquivalentCustomGeometry;
- (id)oa12EquivalentCustomGeometry;
@end

@implementation OADPresetShapeGeometry

- (id)equivalentCustomGeometry
{
  if (self->super.mIsEscher)
  {
    [(OADPresetShapeGeometry *)self escherEquivalentCustomGeometry];
  }

  else
  {
    [(OADPresetShapeGeometry *)self oa12EquivalentCustomGeometry];
  }
  v3 = ;
  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->super.mAdjustValues keyEnumerator];
    for (i = 0; ; i = v6)
    {
      v6 = [v4 nextObject];

      if (!v6)
      {
        break;
      }

      v7 = [v6 unsignedIntValue];
      [v3 setAdjustValue:-[OADShapeGeometry adjustValueAtIndex:](self atIndex:{"adjustValueAtIndex:", v7), v7}];
    }

    v8 = v3;
  }

  return v3;
}

- (id)escherEquivalentCustomGeometry
{
  EshGeometryProperties::EshGeometryProperties(v10);
  if (EshShapeLib::cloneShapeProperties(LOWORD(self->mType), v10, v3))
  {
    EshGeometryProperties::addImpliedSegments(v10);
    v4 = objc_alloc_init(OADCustomShapeGeometry);
    [(OADShapeGeometry *)v4 setIsEscher:1];
    Vertices = EshGeometryProperties::getVertices(v10);
    [OABShapeGeometry readFromPathCommands:EshGeometryProperties::getSegments(v10) pathParams:Vertices toGeometry:v4];
    [OABShapeGeometry readFromFormulas:EshGeometryProperties::getFormulas(v10) toGeometry:v4];
    if (EshGeometryProperties::isInscribesSet(v10))
    {
      [OABShapeGeometry readFromTextBoxRects:EshGeometryProperties::getInscribes(v10) toGeometry:v4];
    }

    v9 = v11;
    [(OADCustomShapeGeometry *)v4 setGeometryCoordSpace:&v9];
    v8 = v13;
    [OABShapeGeometry readFromLimo:&v8 toGeometry:v4];
    for (i = 0; i != 10; ++i)
    {
      [(OADShapeGeometry *)v4 setAdjustValue:v12[i] atIndex:i];
    }
  }

  else
  {
    v4 = 0;
  }

  EshGeometryProperties::~EshGeometryProperties(v10);

  return v4;
}

- (id)oa12EquivalentCustomGeometry
{
  v2 = [OAXGeometry stringWritingShapeType:self->mType];
  v3 = +[TCBundleResourceManager instance];
  v4 = [v3 xmlDocumentForResource:v2 ofType:@"xml" inPackage:@"OAShapeTypes"];
  if (v4)
  {
    v5 = OCXGetRootElement(v4);
    v6 = [[OAXDrawingState alloc] initWithClient:0];
    v7 = [OAXGeometry readCustomGeometryFromXmlNode:v5 hasImplicitFormulas:1 drawingState:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADPresetShapeGeometry;
  v2 = [(OADShapeGeometry *)&v4 description];

  return v2;
}

@end