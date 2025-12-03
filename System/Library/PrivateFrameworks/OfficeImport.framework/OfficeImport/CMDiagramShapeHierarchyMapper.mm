@interface CMDiagramShapeHierarchyMapper
- (CGRect)boundsForNode:(id)node;
- (CGRect)mapLogicalBoundsWithXRanges:(const void *)ranges;
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (CMDiagramShapeHierarchyMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds identifier:(id)identifier parent:(id)parent;
- (id)infoForNode:(id)node;
- (void)copyInfoForNode:(id)node depth:(int)depth;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapLayerNodes:(id)nodes at:(id)at scale:(float)scale offsetX:(float)x offsetY:(float)y withState:(id)state;
- (void)mapNode:(id)node at:(id)at scale:(float)scale offsetX:(float)x offsetY:(float)y withState:(id)state;
- (void)mapRangesForNode:(id)node;
- (void)setAbsolutePositionOfNode:(id)node parentRow:(int)row parentXOffset:(float)offset index:(unint64_t)index;
- (void)setUpLayers;
@end

@implementation CMDiagramShapeHierarchyMapper

- (void)setUpLayers
{
  if ([(NSString *)self->super.mIdentifier isEqualToString:@"hierarchy5"]|| [(NSString *)self->super.mIdentifier isEqualToString:@"hierarchy6"])
  {
    self->mIsLayered = 1;
  }
}

- (CMDiagramShapeHierarchyMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds identifier:(id)identifier parent:(id)parent
{
  diagramCopy = diagram;
  contextCopy = context;
  boundsCopy = bounds;
  identifierCopy = identifier;
  parentCopy = parent;
  v22.receiver = self;
  v22.super_class = CMDiagramShapeHierarchyMapper;
  v17 = [(CMDiagramShapeMapper *)&v22 initWithOddDiagram:diagramCopy drawingContext:contextCopy orientedBounds:boundsCopy identifier:identifierCopy parent:parentCopy];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mNodeInfoMap = v17->mNodeInfoMap;
    v17->mNodeInfoMap = v18;

    v17->super.mMaxMappableTreeDepth = 500;
    v17->super.mDefaultScale = 1.0;
    v17->mIsLayered = 0;
    [(CMDiagramShapeHierarchyMapper *)v17 setUpLayers];
    v20 = v17;
  }

  return v17;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  [(CMDiagramShapeHierarchyMapper *)self copyInfoForNode:documentPoint depth:0xFFFFFFFFLL];
  v8 = [(CMDiagramShapeHierarchyMapper *)self mapRangesForNode:documentPoint];
  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  v12 = (*v8 + 8);
  v13 = v10 - v12;
  if (v10 != v12)
  {
    memmove(*v8, v12, v10 - v12);
  }

  v9[1] = &v11[v13];
  [(CMDiagramShapeHierarchyMapper *)self mapLogicalBoundsWithXRanges:v9];
  v16 = v14;
  v18 = v17;
  v20 = v19;
  if (self->mIsLayered)
  {
    v21 = v15 + 1.0;
  }

  else
  {
    v21 = v15;
  }

  v22 = [CMShapeUtils inscribedBoundsWithBounds:self->super.super.super.mOrientedBounds logicalBounds:v14];
  v23 = [CMShapeUtils relatvieBoundsWithAbsoluteInnerBounds:v22 parentBounds:self->super.super.super.mOrientedBounds];
  mDiagramShapeBounds = self->super.mDiagramShapeBounds;
  self->super.mDiagramShapeBounds = v23;

  [v22 bounds];
  Width = CGRectGetWidth(v48);
  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v21;
  v49.size.height = v20;
  v26 = Width / CGRectGetWidth(v49);
  self->super.mDefaultScale = v26;
  [(CMDiagramShapeHierarchyMapper *)self setAbsolutePositionOfNode:documentPoint parentRow:4294967294 parentXOffset:0 index:0.0];
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  v27 = v16;
  v28 = -v27;
  v29 = 1.0 - v27;
  if (self->mIsLayered)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v33 = v32;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [transform translateXBy:v33 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  if (self->mIsLayered)
  {
    [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
    v34 = CGRectGetWidth(v50);
    [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
    v35 = v34;
    v37 = v36 + v18 * v26;
    *&v38 = v37;
    *&v37 = v26;
    *&v36 = v35;
    [(CMDiagramShapeHierarchyMapper *)self mapLayerNodes:documentPoint at:atCopy scale:stateCopy offsetX:v37 offsetY:v36 withState:v38];
  }

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v40 = v39;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v41 = v18 + 0.200000003;
  v42 = v40 + (v30 * v26);
  v43 = v42;
  v45 = v44 + (v41 * v26);
  *&v42 = v45;
  *&v45 = v26;
  *&v44 = v43;
  [(CMDiagramShapeHierarchyMapper *)self mapNode:documentPoint at:atCopy scale:stateCopy offsetX:v45 offsetY:v44 withState:v42];
  [(CMDiagramShapeHierarchyMapper *)self mapChildrenAt:atCopy withState:stateCopy];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapLayerNodes:(id)nodes at:(id)at scale:(float)scale offsetX:(float)x offsetY:(float)y withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  children = [nodes children];
  v16 = [children count];
  if (v16 >= 2)
  {
    xCopy = x;
    v18 = 2;
    v19 = 1;
    do
    {
      v20 = [children objectAtIndex:v19];
      v21 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:v20];
      v22 = -[OADOrientedBounds initWithBounds:]([OADOrientedBounds alloc], "initWithBounds:", 0.0, (y + (([v21 row] * 0.6) * scale)), xCopy, (scale * 0.4));
      v23 = [(CMDiagramPointMapper *)[CMDiagramPointRoundedRectMapper alloc] initWithPoint:v20 drawingContext:self->super.super.mDrawingContext orientedBounds:v22 parent:self];
      [(CMDiagramPointRoundedRectMapper *)v23 mapAt:atCopy withState:stateCopy];

      v19 = v18;
    }

    while (v16 > v18++);
  }
}

- (void)mapNode:(id)node at:(id)at scale:(float)scale offsetX:(float)x offsetY:(float)y withState:(id)state
{
  nodeCopy = node;
  atCopy = at;
  stateCopy = state;
  v16 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:nodeCopy];
  treeDepth = [v16 treeDepth];

  if (treeDepth <= self->super.mMaxMappableTreeDepth)
  {
    if ((treeDepth & 0x80000000) == 0)
    {
      [(CMDiagramShapeHierarchyMapper *)self boundsForNode:nodeCopy];
      [CMShapeUtils transformRect:"transformRect:scale:offsetX:offsetY:" scale:? offsetX:? offsetY:?];
      v78.origin.x = v18;
      v78.origin.y = v19;
      v78.size.width = v20;
      v78.size.height = v21;
      v77 = [[OADOrientedBounds alloc] initWithBounds:v18, v19, v20, v21];
      v22 = [(CMDiagramPointMapper *)[CMDiagramPointRoundedRectMapper alloc] initWithPoint:nodeCopy drawingContext:self->super.super.mDrawingContext orientedBounds:v77 parent:self];
      [(CMDiagramPointRoundedRectMapper *)v22 mapAt:atCopy withState:stateCopy];
      if (treeDepth)
      {
        v76 = v22;
        parent = [nodeCopy parent];
        [(CMDiagramShapeHierarchyMapper *)self boundsForNode:parent];
        [CMShapeUtils transformRect:"transformRect:scale:offsetX:offsetY:" scale:? offsetX:? offsetY:?];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v32 = objc_alloc_init(OADPath);
        v33 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:nodeCopy];
        connectToVerticalSide = [v33 connectToVerticalSide];

        if (connectToVerticalSide)
        {
          v81.origin.x = v25;
          v81.origin.y = v27;
          v81.size.width = v29;
          v81.size.height = v31;
          MidX = CGRectGetMidX(v81);
          if (MidX <= CGRectGetMinX(v78) || (v82.origin.x = v25, v82.origin.y = v27, v82.size.width = v29, v82.size.height = v31, v36 = CGRectGetMidX(v82), v36 >= CGRectGetMaxX(v78)))
          {
            v86.origin.x = v25;
            v86.origin.y = v27;
            v86.size.width = v29;
            v86.size.height = v31;
            v39 = CGRectGetMidX(v86);
            v87.origin.x = v25;
            v87.origin.y = v27;
            v87.size.width = v29;
            v87.size.height = v31;
            MaxY = CGRectGetMaxY(v87);
            v88.origin.x = v25;
            v88.origin.y = v27;
            v88.size.width = v29;
            v88.size.height = v31;
            v49 = CGRectGetMidX(v88);
            if (v49 >= CGRectGetMidX(v78))
            {
              MaxX = CGRectGetMaxX(v78);
            }

            else
            {
              MaxX = CGRectGetMinX(v78);
            }

            v37 = MaxX;
            MidY = CGRectGetMidY(v78);
          }

          else
          {
            MinX = CGRectGetMinX(v78);
            v83.origin.x = v25;
            v83.origin.y = v27;
            v83.size.width = v29;
            v83.size.height = v31;
            MaxY = CGRectGetMaxY(v83);
            v37 = CGRectGetMinX(v78);
            MidY = CGRectGetMidY(v78);
            v39 = MinX + -0.129999995;
          }

          v51 = [(OADToPointPathElement *)[OADMoveToPathElement alloc] initWithToPoint:v39 << 32, MaxY << 32];
          [(OADPath *)v32 addElement:v51];
          v52 = [(OADToPointPathElement *)[OADLineToPathElement alloc] initWithToPoint:v39 << 32, MidY << 32];

          [(OADPath *)v32 addElement:v52];
          v48 = [(OADToPointPathElement *)[OADLineToPathElement alloc] initWithToPoint:v37 << 32, MidY << 32];

          [(OADPath *)v32 addElement:v48];
        }

        else
        {
          v84.origin.x = v25;
          v84.origin.y = v27;
          v84.size.width = v29;
          v84.size.height = v31;
          v75 = CGRectGetMidX(v84);
          v85.origin.x = v25;
          v85.origin.y = v27;
          v85.size.width = v29;
          v85.size.height = v31;
          v40 = CGRectGetMaxY(v85);
          MinX = CGRectGetMidX(v78);
          MinY = CGRectGetMinY(v78);
          v42 = [(OADToPointPathElement *)[OADMoveToPathElement alloc] initWithToPoint:v75 << 32, v40 << 32];
          [(OADPath *)v32 addElement:v42];
          v43 = [OADLineToPathElement alloc];
          v44 = MinY + -10.0;
          v45 = v44 << 32;
          v46 = [(OADToPointPathElement *)v43 initWithToPoint:v75 << 32, v45];

          [(OADPath *)v32 addElement:v46];
          v47 = [(OADToPointPathElement *)[OADLineToPathElement alloc] initWithToPoint:MinX << 32, v45];

          [(OADPath *)v32 addElement:v47];
          v48 = [(OADToPointPathElement *)[OADLineToPathElement alloc] initWithToPoint:MinX << 32, MinY << 32];

          [(OADPath *)v32 addElement:v48];
        }

        v53 = [CMDiagramPointMapper alloc];
        parentTransition = [nodeCopy parentTransition];
        v55 = [(CMDiagramPointMapper *)v53 initWithPoint:parentTransition drawingContext:self->super.super.mDrawingContext orientedBounds:v77 parent:self];

        [(CMDiagramPointMapper *)v55 applyDiagramStyleToShapeProperties];
        stroke = [(CMDiagramPointMapper *)v55 stroke];
        fill = [(CMDiagramPointMapper *)v76 fill];
        if (stroke && ([(OADStroke *)stroke fill], v58 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v58, (isKindOfClass & 1) == 0))
        {
          v60 = stroke;
        }

        else
        {
          v60 = objc_alloc_init(OADStroke);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(OADStroke *)v60 setFill:fill];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              stops = [fill stops];
              v63 = [stops objectAtIndexedSubscript:0];

              v64 = objc_alloc_init(OADSolidFill);
              color = [v63 color];
              [(OADSolidFill *)v64 setColor:color];

              [(OADStroke *)v60 setFill:v64];
              fill = v64;
            }
          }

          LODWORD(v61) = 1.0;
          [(OADStroke *)v60 setWidth:v61, *&MinX];
        }

        [CMShapeRenderer renderDiagramPath:v32 fill:0 stroke:v60 state:stateCopy drawingContext:self->super.super.mDrawingContext, *&MinX];

        v22 = v76;
      }
    }

    children = [nodeCopy children];
    v67 = [children count];
    if (v67)
    {
      for (i = 0; i != v67; ++i)
      {
        v69 = [children objectAtIndex:i];
        *&v70 = scale;
        *&v71 = x;
        *&v72 = y;
        [(CMDiagramShapeHierarchyMapper *)self mapNode:v69 at:atCopy scale:stateCopy offsetX:v70 offsetY:v71 withState:v72];
      }
    }
  }
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  nodeCopy = node;
  [(CMDiagramShapeHierarchyMapper *)self boundsForNode:nodeCopy];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v10 = CGRectGetWidth(v16);
  mDefaultScale = self->super.mDefaultScale;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectGetHeight(v17) * mDefaultScale;

  v13 = v10 * mDefaultScale;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)infoForNode:(id)node
{
  mNodeInfoMap = self->mNodeInfoMap;
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:node];
  v5 = [(NSMutableDictionary *)mNodeInfoMap objectForKey:v4];

  return v5;
}

- (CGRect)boundsForNode:(id)node
{
  v3 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:node];
  v4 = [v3 row];
  [v3 xRange];
  v6 = TSURectWithCenterAndSize(v5, (v4 * 0.6), 0.800000012);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)mapLogicalBoundsWithXRanges:(const void *)ranges
{
  v4 = ODIHRangeVector::boundingRange(ranges);
  v6 = (v4 + (v5 * -0.5));
  v7 = v5;
  v8 = ((((*(ranges + 1) - *ranges) >> 3) * 0.6) + -0.2);
  v9 = 0.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v6;
  return result;
}

- (void)copyInfoForNode:(id)node depth:(int)depth
{
  v4 = *&depth;
  nodeCopy = node;
  v6 = objc_alloc_init(CMDiagramNodeInfo);
  mNodeInfoMap = self->mNodeInfoMap;
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:nodeCopy];
  [(NSMutableDictionary *)mNodeInfoMap setObject:v6 forKey:v8];

  [(CMDiagramNodeInfo *)v6 setTreeDepth:v4];
  children = [nodeCopy children];
  v10 = [children count];
  if (v10)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = [children objectAtIndex:v11];
      [(CMDiagramShapeHierarchyMapper *)self copyInfoForNode:v13 depth:(v4 + 1)];

      v11 = v12;
    }

    while (v10 > v12++);
  }
}

- (void)setAbsolutePositionOfNode:(id)node parentRow:(int)row parentXOffset:(float)offset index:(unint64_t)index
{
  nodeCopy = node;
  v9 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:?];
  [v9 xRange];
  v11 = v10;
  v13 = v12;
  v14 = row + [v9 extraRowsBetweenParentAndSelf];
  [v9 setRow:(v14 + 1)];
  [v9 xOffsetRelativeToParent];
  v16 = v15 + offset;
  *&v17 = v11 + v16;
  LODWORD(v18) = v13;
  [v9 setXRange:{v17, v18}];
  children = [nodeCopy children];
  v20 = [children count];
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v22 = [children objectAtIndex:i];
      *&v23 = v16;
      [(CMDiagramShapeHierarchyMapper *)self setAbsolutePositionOfNode:v22 parentRow:(v14 + 1) parentXOffset:i index:v23];
    }
  }
}

- (void)mapRangesForNode:(id)node
{
  nodeCopy = node;
  v5 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:nodeCopy];
  xRanges = [v5 xRanges];
  if (((xRanges[1] - *xRanges) & 0x7FFFFFFF8) != 0)
  {
    goto LABEL_67;
  }

  children = [nodeCopy children];
  v8 = [children count];
  if (!v8)
  {
    goto LABEL_66;
  }

  v75 = nodeCopy;
  v10 = 0;
  v11 = 1;
  v12 = 0.0;
  v13 = 1;
  do
  {
    v14 = [children objectAtIndex:v10];
    if (![v14 type])
    {
      if (v13)
      {
        ODIHRangeVector::boundingRange([(CMDiagramShapeHierarchyMapper *)self mapRangesForNode:v14]);
        if (v12 <= v15)
        {
          v12 = v15;
        }
      }

      v13 ^= 1u;
    }

    v10 = v11;
    v16 = v8 > v11++;
  }

  while (v16);
  v76 = v5;
  v17 = 0;
  LODWORD(v18) = 0;
  v19 = 0;
  v20 = -v12;
  do
  {
    v21 = [children objectAtIndex:v17];
    v22 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:v21];
    if ([v21 type])
    {
      goto LABEL_42;
    }

    [v22 setExtraRowsBetweenParentAndSelf:((xRanges[1] - *xRanges) >> 3) - v18];
    [v22 setConnectToVerticalSide:1];
    v23 = [(CMDiagramShapeHierarchyMapper *)self mapRangesForNode:v21];
    *&v24 = ODIHRangeVector::boundingRange(v23);
    v26 = *&v24 + (v25 * -0.5);
    if (v18)
    {
      *&v24 = -v26;
      [v22 addToXOffsetRelativeToParent:v24];
      v27 = *v23;
      v28 = v23[1] - *v23;
      if ((v28 & 0x7FFFFFFF8) != 0)
      {
        v29 = (v28 >> 3);
        v30 = *v23;
        do
        {
          *v30 = *v30 - v26;
          v30 += 2;
          --v29;
        }

        while (v29);
      }

      v31 = v28 >> 3;
      if (v31)
      {
        if (v18 >= v31)
        {
          LODWORD(v32) = v31;
        }

        else
        {
          LODWORD(v32) = v18;
        }

        v33 = *xRanges;
        if (v32 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v32;
        }

        v34 = ((xRanges[1] - *xRanges) >> 3) - v18;
        v35 = (v27 + 4);
        do
        {
          v36 = *(v35 - 1) + (*v35 * 0.5);
          v37 = &v33[8 * v34];
          v38 = *v37 - (v37[1] * 0.5);
          *v37 = (v36 + v38) * 0.5;
          v37[1] = v36 - v38;
          ++v34;
          v35 += 2;
          --v32;
        }

        while (v32);
      }

      if (v18 < v31)
      {
        v39 = xRanges[1];
        v40 = 8 * v18;
        v18 = v18;
        do
        {
          v41 = *(v27 + v40) + (*(v27 + v40 + 4) * 0.5);
          *&v77 = (v41 + 0.0) * 0.5;
          *(&v77 + 1) = v41;
          if (v39 >= xRanges[2])
          {
            v39 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange>(xRanges, &v77);
          }

          else
          {
            *v39 = v77;
            v39 += 8;
          }

          xRanges[1] = v39;
          ++v18;
          v27 = *v23;
          v40 += 8;
        }

        while (v18 < ((v23[1] - *v23) >> 3));
      }

LABEL_41:
      LODWORD(v18) = 0;
      goto LABEL_42;
    }

    v42 = v20 - v26;
    *&v24 = v42;
    [v22 addToXOffsetRelativeToParent:v24];
    v43 = *v23;
    v44 = v23[1] - *v23;
    if ((v44 & 0x7FFFFFFF8) == 0)
    {
      goto LABEL_41;
    }

    v45 = (v44 >> 3);
    v46 = *v23;
    do
    {
      *v46 = v42 + *v46;
      v46 += 2;
      --v45;
    }

    while (v45);
    v47 = 0;
    v48 = 0;
    v49 = xRanges[1];
    do
    {
      v50 = *(v43 + v47) - (*(v43 + v47 + 4) * 0.5);
      *&v77 = (v50 + 0.0) * 0.5;
      *(&v77 + 1) = 0.0 - v50;
      if (v49 >= xRanges[2])
      {
        v49 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange>(xRanges, &v77);
      }

      else
      {
        *v49 = v77;
        v49 += 8;
      }

      xRanges[1] = v49;
      ++v48;
      v43 = *v23;
      v47 += 8;
    }

    while (v48 < ((v23[1] - *v23) >> 3));
    v18 = (v23[1] - *v23) >> 3;
LABEL_42:

    v17 = ++v19;
  }

  while (v8 > v19);
  v51 = 0;
  v52 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v5 = v76;
  do
  {
    v53 = [children objectAtIndex:v51];
    v54 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:v53];
    if ([v53 type] == 2)
    {
      [v54 setExtraRowsBetweenParentAndSelf:(xRanges[1] - *xRanges) >> 3];
      v55 = [(CMDiagramShapeHierarchyMapper *)self mapRangesForNode:v53];
      v56 = ODIHRangeVector::minDistanceTo(&v77, v55);
      v57 = *&v56;
      v58 = *v55;
      v59 = v55[1] - *v55;
      if ((v59 & 0x7FFFFFFF8) != 0)
      {
        v60 = (v59 >> 3);
        do
        {
          *v58 = *v58 - *&v56;
          v58 += 2;
          --v60;
        }

        while (v60);
      }

      ODIHRangeVector::operator+=(&v77, v55);
      *&v61 = -v57;
      [v54 addToXOffsetRelativeToParent:v61];
    }

    v51 = ++v52;
  }

  while (v8 > v52);
  v62 = v77;
  if (((v78 - v77) & 0x7FFFFFFF8) != 0)
  {
    v63 = *v77;
    v64 = ((v78 - v77) >> 3);
    do
    {
      *v62 = *v62 - v63;
      v62 += 2;
      --v64;
    }

    while (v64);
    v65 = 0;
    v66 = -v63;
    v67 = 1;
    do
    {
      v68 = [children objectAtIndex:v65];
      v69 = [(CMDiagramShapeHierarchyMapper *)self infoForNode:v68];
      if ([v68 type] == 2)
      {
        *&v70 = v66;
        [v69 addToXOffsetRelativeToParent:v70];
      }

      v65 = v67;
      v16 = v8 > v67++;
    }

    while (v16);
    v62 = v77;
    if (((v78 - v77) & 0x7FFFFFFF8) != 0)
    {
      v71 = 0;
      v72 = 0;
      v73 = xRanges[1];
      do
      {
        if (v73 >= xRanges[2])
        {
          v73 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange const&>(xRanges, &v62[v71]);
        }

        else
        {
          *v73 = *&v62[v71];
          v73 += 8;
        }

        xRanges[1] = v73;
        ++v72;
        v62 = v77;
        v71 += 2;
      }

      while (v72 < ((v78 - v77) >> 3));
    }
  }

  if (v62)
  {
    v78 = v62;
    operator delete(v62);
  }

  nodeCopy = v75;
LABEL_66:
  v77 = 0x3F80000000000000;
  LODWORD(v9) = 1.0;
  [v5 setXRange:{0.0, v9}];
  std::vector<ODIHRange,ChAllocator<ODIHRange>>::insert(xRanges, *xRanges, &v77);

LABEL_67:
  return xRanges;
}

@end