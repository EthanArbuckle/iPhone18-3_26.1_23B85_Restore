@interface CMDiagramMapper
+ (int)diagramTypeFromString:(id)a3;
- (CMDiagramMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 parent:(id)a6;
- (id)copyDiagramMapperForId:(id)a3;
- (id)identifierFromLayoutTypeId:(id)a3;
- (id)styleMatrix;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramMapper

- (id)styleMatrix
{
  v2 = [(CMMapper *)self parent];
  if (v2)
  {
    v3 = v2;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = [v3 parent];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v5 = [v3 styleMatrix];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

- (CMDiagramMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 parent:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CMDiagramMapper;
  v15 = [(CMDrawableMapper *)&v20 initWithParent:v14];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->mDiagram, a3);
    objc_storeStrong(&v16->mDrawingContext, a4);
    objc_storeStrong(&v16->super.mOrientedBounds, a5);
    v17 = objc_alloc_init(CMDrawableStyle);
    mStyle = v16->super.mStyle;
    v16->super.mStyle = v17;
  }

  return v16;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  mStyle = self->super.mStyle;
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawableStyle *)mStyle addPositionProperties:?];
  v9 = [OIXMLElement elementWithType:3];
  [v6 addChild:v9];
  v10 = self->super.mStyle;
  v20.receiver = self;
  v20.super_class = CMDiagramMapper;
  [(CMMapper *)&v20 addStyleUsingGlobalCacheTo:v9 style:v10];
  v11 = v9;

  v12 = [(ODDDiagram *)self->mDiagram documentPoint];
  v13 = [v12 children];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v12 propertySet];
    v16 = [v15 layoutTypeId];

    v17 = [(CMDiagramMapper *)self identifierFromLayoutTypeId:v16];
    v18 = [(CMDiagramMapper *)self copyDiagramMapperForId:v17];
    v19 = v18;
    if (v18)
    {
      [v18 mapAt:v11 withState:v7];
    }
  }
}

- (id)identifierFromLayoutTypeId:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"urn:microsoft.com/office/officeart/2005/8/layout/"])
  {
    v4 = [v3 rangeOfString:@"#"];
    if (v5)
    {
      v6 = [v3 substringToIndex:v4];

      v3 = v6;
    }

    v7 = [v3 substringFromIndex:{objc_msgSend(@"urn:microsoft.com/office/officeart/2005/8/layout/", "length")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyDiagramMapperForId:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = [CMDiagramMapper diagramTypeFromString:v4]- 1;
  v7 = off_2799C5608;
  switch(v6)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v7 = off_2799C5648;
      goto LABEL_3;
    case 2:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramSegmentedPieMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:v4 parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setDrawArrows:0];
      break;
    case 3:
      v7 = off_2799C5610;
      goto LABEL_3;
    case 4:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramChevronMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:v4 parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setIsHChevron:1];
      break;
    case 5:
    case 6:
    case 7:
    case 8:
      v7 = off_2799C5650;
      goto LABEL_3;
    case 9:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramSegmentedPieMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:v4 parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setDrawArrows:1];
      break;
    case 10:
      v7 = off_2799C5658;
      goto LABEL_3;
    case 11:
      v7 = off_2799C5618;
      goto LABEL_3;
    case 12:
      v7 = off_2799C5660;
      goto LABEL_3;
    case 14:
      v7 = off_2799C5638;
      goto LABEL_3;
    case 15:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramPyramidMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:v4 parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setIsFlipped:1];
      break;
    case 16:
      v7 = off_2799C5640;
      goto LABEL_3;
    case 17:
      v7 = off_2799C5668;
LABEL_3:
      v5 = [objc_alloc(*v7) initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:v4 parent:self];
      break;
    default:
      break;
  }

  return v5;
}

+ (int)diagramTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"arrow4"])
  {
    v4 = 2;
  }

  else if ([v3 hasPrefix:@"arrow"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"hList1"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"lProcess2") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"hList3"))
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"pyramid1"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"pyramid3"])
  {
    v4 = 16;
  }

  else if ([v3 hasPrefix:@"hierarchy"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"orgChart1"))
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"pyramid4"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"chevron1"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"hChevron3"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"cycle1"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"cycle2"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"cycle5"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"cycle7"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"cycle8"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"chart3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"hProcess3"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"default"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"process1") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"bProcess4"))
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"venn1"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end