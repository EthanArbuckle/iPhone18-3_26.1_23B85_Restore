@interface CMDiagramMapper
+ (int)diagramTypeFromString:(id)string;
- (CMDiagramMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds parent:(id)parent;
- (id)copyDiagramMapperForId:(id)id;
- (id)identifierFromLayoutTypeId:(id)id;
- (id)styleMatrix;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramMapper

- (id)styleMatrix
{
  parent = [(CMMapper *)self parent];
  if (parent)
  {
    v3 = parent;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      parent2 = [v3 parent];

      v3 = parent2;
      if (!parent2)
      {
        goto LABEL_5;
      }
    }

    styleMatrix = [v3 styleMatrix];
  }

  else
  {
LABEL_5:
    styleMatrix = 0;
  }

  return styleMatrix;
}

- (CMDiagramMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds parent:(id)parent
{
  diagramCopy = diagram;
  contextCopy = context;
  boundsCopy = bounds;
  parentCopy = parent;
  v20.receiver = self;
  v20.super_class = CMDiagramMapper;
  v15 = [(CMDrawableMapper *)&v20 initWithParent:parentCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->mDiagram, diagram);
    objc_storeStrong(&v16->mDrawingContext, context);
    objc_storeStrong(&v16->super.mOrientedBounds, bounds);
    v17 = objc_alloc_init(CMDrawableStyle);
    mStyle = v16->super.mStyle;
    v16->super.mStyle = v17;
  }

  return v16;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  mStyle = self->super.mStyle;
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawableStyle *)mStyle addPositionProperties:?];
  v9 = [OIXMLElement elementWithType:3];
  [atCopy addChild:v9];
  v10 = self->super.mStyle;
  v20.receiver = self;
  v20.super_class = CMDiagramMapper;
  [(CMMapper *)&v20 addStyleUsingGlobalCacheTo:v9 style:v10];
  v11 = v9;

  documentPoint = [(ODDDiagram *)self->mDiagram documentPoint];
  children = [documentPoint children];
  v14 = [children count];

  if (v14)
  {
    propertySet = [documentPoint propertySet];
    layoutTypeId = [propertySet layoutTypeId];

    v17 = [(CMDiagramMapper *)self identifierFromLayoutTypeId:layoutTypeId];
    v18 = [(CMDiagramMapper *)self copyDiagramMapperForId:v17];
    v19 = v18;
    if (v18)
    {
      [v18 mapAt:v11 withState:stateCopy];
    }
  }
}

- (id)identifierFromLayoutTypeId:(id)id
{
  idCopy = id;
  if ([idCopy hasPrefix:@"urn:microsoft.com/office/officeart/2005/8/layout/"])
  {
    v4 = [idCopy rangeOfString:@"#"];
    if (v5)
    {
      v6 = [idCopy substringToIndex:v4];

      idCopy = v6;
    }

    v7 = [idCopy substringFromIndex:{objc_msgSend(@"urn:microsoft.com/office/officeart/2005/8/layout/", "length")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyDiagramMapperForId:(id)id
{
  idCopy = id;
  v5 = 0;
  v6 = [CMDiagramMapper diagramTypeFromString:idCopy]- 1;
  v7 = off_2799C5608;
  switch(v6)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v7 = off_2799C5648;
      goto LABEL_3;
    case 2:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramSegmentedPieMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:idCopy parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setDrawArrows:0];
      break;
    case 3:
      v7 = off_2799C5610;
      goto LABEL_3;
    case 4:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramChevronMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:idCopy parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setIsHChevron:1];
      break;
    case 5:
    case 6:
    case 7:
    case 8:
      v7 = off_2799C5650;
      goto LABEL_3;
    case 9:
      v5 = [(CMDiagramShapeMapper *)[CMDiagramSegmentedPieMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:idCopy parent:self];
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
      v5 = [(CMDiagramShapeMapper *)[CMDiagramPyramidMapper alloc] initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:idCopy parent:self];
      [(CMDiagramSegmentedPieMapper *)v5 setIsFlipped:1];
      break;
    case 16:
      v7 = off_2799C5640;
      goto LABEL_3;
    case 17:
      v7 = off_2799C5668;
LABEL_3:
      v5 = [objc_alloc(*v7) initWithOddDiagram:self->mDiagram drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds identifier:idCopy parent:self];
      break;
    default:
      break;
  }

  return v5;
}

+ (int)diagramTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"arrow4"])
  {
    v4 = 2;
  }

  else if ([stringCopy hasPrefix:@"arrow"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"hList1"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"lProcess2") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"hList3"))
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"pyramid1"])
  {
    v4 = 15;
  }

  else if ([stringCopy isEqualToString:@"pyramid3"])
  {
    v4 = 16;
  }

  else if ([stringCopy hasPrefix:@"hierarchy"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"orgChart1"))
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"pyramid4"])
  {
    v4 = 17;
  }

  else if ([stringCopy isEqualToString:@"chevron1"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"hChevron3"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"cycle1"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"cycle2"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"cycle5"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"cycle7"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"cycle8"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"chart3"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"hProcess3"])
  {
    v4 = 14;
  }

  else if ([stringCopy isEqualToString:@"default"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"process1") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"bProcess4"))
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"venn1"])
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