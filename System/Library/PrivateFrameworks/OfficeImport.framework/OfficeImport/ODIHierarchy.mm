@interface ODIHierarchy
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
- (CGRect)boundsOfNode:(id)a3;
- (ODIHierarchy)initWithType:(int)a3 state:(id)a4;
- (id)infoForNode:(id)a3;
- (void)createInfoForNode:(id)a3 depth:(int)a4;
- (void)map;
- (void)mapLogicalBoundsWithXRanges:(const void *)a3;
- (void)mapNode:(id)a3;
- (void)mapRangesForNode:(id)a3;
- (void)setAbsolutePositionOfNode:(id)a3 parentRow:(int)a4 parentXOffset:(float)a5;
@end

@implementation ODIHierarchy

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"orgChart1"])
  {
    v7 = 1;
  }

  else if ([v5 isEqualToString:@"hierarchy3"])
  {
    v7 = 3;
  }

  else
  {
    if (![v5 hasPrefix:@"hierarchy"])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v7 = 2;
  }

  v8 = [[ODIHierarchy alloc] initWithType:v7 state:v6];
  [(ODIHierarchy *)v8 map];

  v9 = 1;
LABEL_8:

  return v9;
}

- (ODIHierarchy)initWithType:(int)a3 state:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ODIHierarchy;
  v8 = [(ODIHierarchy *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (a3 == 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    v8->mType = a3;
    v8->mMaxMappableTreeDepth = v10;
    objc_storeStrong(&v8->mState, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mNodeInfoMap = v9->mNodeInfoMap;
    v9->mNodeInfoMap = v11;
  }

  return v9;
}

- (id)infoForNode:(id)a3
{
  mNodeInfoMap = self->mNodeInfoMap;
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
  v5 = [(NSMutableDictionary *)mNodeInfoMap objectForKey:v4];

  return v5;
}

- (void)createInfoForNode:(id)a3 depth:(int)a4
{
  v4 = *&a4;
  v13 = a3;
  v6 = objc_alloc_init(ODIHNodeInfo);
  mNodeInfoMap = self->mNodeInfoMap;
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:v13];
  [(NSMutableDictionary *)mNodeInfoMap setObject:v6 forKey:v8];

  [(ODIHNodeInfo *)v6 setTreeDepth:v4];
  v9 = [v13 children];
  v10 = [v9 count];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = [v9 objectAtIndex:i];
      [(ODIHierarchy *)self createInfoForNode:v12 depth:(v4 + 1)];
    }
  }
}

- (void)mapRangesForNode:(id)a3
{
  v4 = a3;
  v92 = [(ODIHierarchy *)self infoForNode:v4];
  v5 = [v92 xRanges];
  if (((v5[1] - *v5) & 0x7FFFFFFF8) != 0)
  {
    goto LABEL_94;
  }

  v90 = v4;
  v6 = [v4 children];
  v7 = [v6 count];
  if (!v7 || [v92 treeDepth] >= self->mMaxMappableTreeDepth)
  {
    goto LABEL_93;
  }

  mType = self->mType;
  if (mType != 1)
  {
    goto LABEL_69;
  }

  if ([v92 treeDepth] < 1)
  {
    v91 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = [v6 objectAtIndex:v10];
      v12 = [v11 children];
      v13 = [v12 count];
      v91 = v13 == 0;

      if (v13)
      {
        break;
      }

      v56 = v7 - 1 == v10++;
    }

    while (!v56);
  }

  v14 = 0;
  v15 = 1;
  v16 = 0.0;
  do
  {
    v17 = [v6 objectAtIndex:v14];
    if (![v17 type])
    {
      if (v15)
      {
        ODIHRangeVector::boundingRange([(ODIHierarchy *)self mapRangesForNode:v17]);
        if (v16 < v18)
        {
          v16 = v18;
        }
      }

      v15 ^= 1u;
    }

    ++v14;
  }

  while (v7 != v14);
  LODWORD(v19) = 0;
  v20 = 0;
  v21 = -v16;
  do
  {
    v22 = [v6 objectAtIndex:v20];
    v23 = [(ODIHierarchy *)self infoForNode:v22];
    if ([v22 type])
    {
      goto LABEL_54;
    }

    [v23 setExtraRowsBetweenParentAndSelf:((v5[1] - *v5) >> 3) - v19];
    [v23 setConnectToVerticalSide:1];
    v24 = [(ODIHierarchy *)self mapRangesForNode:v22];
    *&v25 = ODIHRangeVector::boundingRange(v24);
    v27 = *&v25 + (v26 * -0.5);
    if (v19)
    {
      *&v25 = -v27;
      [v23 addToXOffsetRelativeToParent:v25];
      v28 = *v24;
      v29 = v24[1] - *v24;
      if ((v29 & 0x7FFFFFFF8) != 0)
      {
        v30 = (v29 >> 3);
        v31 = *v24;
        do
        {
          *v31 = *v31 - v27;
          v31 += 2;
          --v30;
        }

        while (v30);
      }

      v32 = v29 >> 3;
      if (v32)
      {
        if (v32 >= v19)
        {
          LODWORD(v33) = v19;
        }

        else
        {
          LODWORD(v33) = v32;
        }

        v34 = *v5;
        if (v33 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v33;
        }

        v35 = ((v5[1] - *v5) >> 3) - v19;
        v36 = (v28 + 4);
        do
        {
          v37 = *(v36 - 1) + (*v36 * 0.5);
          v38 = &v34[8 * v35];
          v39 = *v38 - (v38[1] * 0.5);
          *v38 = (v37 + v39) * 0.5;
          v38[1] = v37 - v39;
          ++v35;
          v36 += 2;
          --v33;
        }

        while (v33);
      }

      if (v19 >= v32)
      {
LABEL_51:
        LODWORD(v19) = 0;
        goto LABEL_54;
      }

      v40 = v5[1];
      v41 = 8 * v19;
      v19 = v19;
      do
      {
        v42 = *(v28 + v41) + (*(v28 + v41 + 4) * 0.5);
        *&v93 = (v42 + 0.0) * 0.5;
        *(&v93 + 1) = v42;
        if (v40 >= v5[2])
        {
          v40 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange>(v5, &v93);
        }

        else
        {
          *v40 = v93;
          v40 += 8;
        }

        v5[1] = v40;
        ++v19;
        v28 = *v24;
        v41 += 8;
      }

      while (v19 < ((v24[1] - *v24) >> 3));
    }

    else
    {
      v43 = v21 - v27;
      *&v25 = v43;
      [v23 addToXOffsetRelativeToParent:v25];
      v44 = *v24;
      v45 = v24[1] - *v24;
      v46 = v45 & 0x7FFFFFFF8;
      if ((v45 & 0x7FFFFFFF8) == 0)
      {
        goto LABEL_51;
      }

      v47 = (v45 >> 3);
      v48 = *v24;
      do
      {
        *v48 = v43 + *v48;
        v48 += 2;
        --v47;
      }

      while (v47);
      if (v46)
      {
        v49 = 0;
        v50 = 0;
        v51 = v5[1];
        do
        {
          v52 = *(v44 + v49) - (*(v44 + v49 + 4) * 0.5);
          *&v93 = (v52 + 0.0) * 0.5;
          *(&v93 + 1) = 0.0 - v52;
          if (v51 >= v5[2])
          {
            v51 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange>(v5, &v93);
          }

          else
          {
            *v51 = v93;
            v51 += 8;
          }

          v5[1] = v51;
          ++v50;
          v44 = *v24;
          v49 += 8;
        }

        while (v50 < ((v24[1] - *v24) >> 3));
        v19 = (v24[1] - *v24) >> 3;
        goto LABEL_53;
      }
    }

    LODWORD(v19) = 0;
LABEL_53:
    mType = 1;
LABEL_54:

    ++v20;
  }

  while (v20 != v7);
  if (v91)
  {
    v53 = 0;
    v54 = 0;
    v55 = (v5[1] - *v5) >> 3;
    if ([v90 type])
    {
      v56 = v55 == 0;
    }

    else
    {
      v56 = 0;
    }

    if (v56)
    {
      v57 = 0.2;
    }

    else
    {
      v57 = 0.53;
    }

    do
    {
      v58 = [v6 objectAtIndex:v53];
      if ([v58 type] == 2)
      {
        v59 = [(ODIHierarchy *)self infoForNode:v58];
        [v59 setConnectToVerticalSide:1];
        [v59 setExtraRowsBetweenParentAndSelf:(v54 + v55)];
        LODWORD(v60) = 1.0;
        [v59 setXRange:{0.0, v60}];
        *&v61 = v57;
        [v59 setXOffsetRelativeToParent:v61];
        v93 = 0;
        [v59 xRange];
        *&v93 = v57 + v62;
        HIDWORD(v93) = v63;
        v64 = v5[1];
        if (v64 >= v5[2])
        {
          v65 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange const&>(v5, &v93);
        }

        else
        {
          *v64 = v93;
          v65 = (v64 + 8);
        }

        v5[1] = v65;
        ++v54;
      }

      ++v53;
    }

    while (v7 != v53);
    goto LABEL_93;
  }

LABEL_69:
  v66 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  do
  {
    v67 = [v6 objectAtIndex:v66];
    v68 = [(ODIHierarchy *)self infoForNode:v67];
    v69 = [v67 type];
    if (mType != 1 || v69 == 2)
    {
      [v68 setExtraRowsBetweenParentAndSelf:(v5[1] - *v5) >> 3];
      v70 = [(ODIHierarchy *)self mapRangesForNode:v67];
      v71 = ODIHRangeVector::minDistanceTo(&v93, v70);
      v72 = *&v71;
      v73 = *v70;
      v74 = v70[1] - *v70;
      if ((v74 & 0x7FFFFFFF8) != 0)
      {
        v75 = (v74 >> 3);
        do
        {
          *v73 = *v73 - *&v71;
          v73 += 2;
          --v75;
        }

        while (v75);
      }

      ODIHRangeVector::operator+=(&v93, v70);
      *&v76 = -v72;
      [v68 addToXOffsetRelativeToParent:v76];
    }

    ++v66;
  }

  while (v66 != v7);
  v77 = v93;
  if (((v94 - v93) & 0x7FFFFFFF8) != 0)
  {
    v78 = *v93;
    v79 = -*v93;
    v80 = ((v94 - v93) >> 3);
    do
    {
      *v77 = *v77 - v78;
      v77 += 2;
      --v80;
    }

    while (v80);
    for (i = 0; i != v7; ++i)
    {
      v82 = [v6 objectAtIndex:i];
      v83 = [(ODIHierarchy *)self infoForNode:v82];
      v84 = [v82 type];
      if (mType != 1 || v84 == 2)
      {
        *&v85 = v79;
        [v83 addToXOffsetRelativeToParent:v85];
      }
    }

    v77 = v93;
    if (((v94 - v93) & 0x7FFFFFFF8) != 0)
    {
      v86 = 0;
      v87 = 0;
      v88 = v5[1];
      do
      {
        if (v88 >= v5[2])
        {
          v88 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange const&>(v5, &v77[v86]);
        }

        else
        {
          *v88 = *&v77[v86];
          v88 += 8;
        }

        v5[1] = v88;
        ++v87;
        v77 = v93;
        v86 += 2;
      }

      while (v87 < ((v94 - v93) >> 3));
    }
  }

  if (v77)
  {
    v94 = v77;
    operator delete(v77);
  }

LABEL_93:
  v93 = 0x3F80000000000000;
  LODWORD(v8) = 1.0;
  [v92 setXRange:{0.0, v8}];
  std::vector<ODIHRange,ChAllocator<ODIHRange>>::insert(v5, *v5, &v93);

  v4 = v90;
LABEL_94:

  return v5;
}

- (void)mapLogicalBoundsWithXRanges:(const void *)a3
{
  v5 = ODIHRangeVector::boundingRange(a3);
  mState = self->mState;
  v8 = (v5 + (v6 * -0.5));
  v9 = (((*(a3 + 1) - *a3) >> 3) * 0.6);

  [(ODIState *)mState setLogicalBounds:v8, -0.300000012, v6, v9];
}

- (void)setAbsolutePositionOfNode:(id)a3 parentRow:(int)a4 parentXOffset:(float)a5
{
  v20 = a3;
  v8 = [(ODIHierarchy *)self infoForNode:?];
  if ([v8 treeDepth] <= self->mMaxMappableTreeDepth)
  {
    v9 = a4 + [v8 extraRowsBetweenParentAndSelf];
    [v8 setRow:(v9 + 1)];
    [v8 xOffsetRelativeToParent];
    v11 = v10;
    [v8 xRange];
    v12 = v11 + a5;
    *&v14 = v12 + v13;
    [v8 setXRange:v14];
    v15 = [v20 children];
    v16 = [v15 count];
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = [v15 objectAtIndex:i];
        *&v19 = v12;
        [(ODIHierarchy *)self setAbsolutePositionOfNode:v18 parentRow:(v9 + 1) parentXOffset:v19];
      }
    }
  }
}

- (CGRect)boundsOfNode:(id)a3
{
  v3 = [(ODIHierarchy *)self infoForNode:a3];
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

- (void)mapNode:(id)a3
{
  v55 = a3;
  v4 = [(ODIHierarchy *)self infoForNode:?];
  v5 = [v4 treeDepth];

  if (v5 <= self->mMaxMappableTreeDepth)
  {
    if ((v5 & 0x80000000) == 0)
    {
      [(ODIHierarchy *)self boundsOfNode:v55];
      rect = v6;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = +[ODIDrawable shapeGeometryForRectangle];
      v14 = [ODIDrawable addShapeWithBounds:v13 rotation:self->mState geometry:v8 state:v10, v12, rect, 0.0];

      [ODIDrawable mapStyleFromPoint:v55 shape:v14 state:self->mState];
      [ODIText mapTextFromPoint:v55 toShape:v14 isCentered:0 includeChildren:v5 == self->mMaxMappableTreeDepth state:self->mState];
      if (v5)
      {
        v15 = [v55 parent];
        [(ODIHierarchy *)self boundsOfNode:v15];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = objc_alloc_init(OITSUBezierPath);
        v25 = [(ODIHierarchy *)self infoForNode:v55];
        v26 = [v25 connectToVerticalSide];

        if (v26)
        {
          v57.origin.x = v17;
          v57.origin.y = v19;
          v57.size.width = v21;
          v57.size.height = v23;
          MidX = CGRectGetMidX(v57);
          v58.origin.x = v8;
          v58.origin.y = v10;
          v58.size.width = v12;
          v58.size.height = rect;
          if (MidX <= CGRectGetMinX(v58) || (v59.origin.x = v17, v59.origin.y = v19, v59.size.width = v21, v59.size.height = v23, v28 = CGRectGetMidX(v59), v60.origin.x = v8, v60.origin.y = v10, v60.size.width = v12, v60.size.height = rect, v28 >= CGRectGetMaxX(v60)))
          {
            v69.origin.x = v17;
            v69.origin.y = v19;
            v69.size.width = v21;
            v69.size.height = v23;
            v51 = CGRectGetMidX(v69);
            v70.origin.x = v17;
            v70.origin.y = v19;
            v70.size.width = v21;
            v70.size.height = v23;
            MaxY = CGRectGetMaxY(v70);
            v71.origin.x = v17;
            v71.origin.y = v19;
            v71.size.width = v21;
            v71.size.height = v23;
            v38 = CGRectGetMidX(v71);
            v72.origin.x = v8;
            v72.origin.y = v10;
            v72.size.width = v12;
            v72.size.height = rect;
            if (v38 >= CGRectGetMidX(v72))
            {
              v74.origin.x = v8;
              v74.origin.y = v10;
              v74.size.width = v12;
              v74.size.height = rect;
              MaxX = CGRectGetMaxX(v74);
            }

            else
            {
              v73.origin.x = v8;
              v73.origin.y = v10;
              v73.size.width = v12;
              v73.size.height = rect;
              MaxX = CGRectGetMinX(v73);
            }

            v29 = MaxX;
            v75.origin.x = v8;
            v75.origin.y = v10;
            v75.size.width = v12;
            v75.size.height = rect;
            MidY = CGRectGetMidY(v75);
          }

          else
          {
            v61.origin.x = v8;
            v61.origin.y = v10;
            v61.size.width = v12;
            v61.size.height = rect;
            MinX = CGRectGetMinX(v61);
            v62.origin.x = v17;
            v62.origin.y = v19;
            v62.size.width = v21;
            v62.size.height = v23;
            MaxY = CGRectGetMaxY(v62);
            v63.origin.x = v8;
            v63.origin.y = v10;
            v63.size.width = v12;
            v63.size.height = rect;
            v29 = CGRectGetMinX(v63);
            v64.origin.x = v8;
            v64.origin.y = v10;
            v64.size.width = v12;
            v64.size.height = rect;
            MidY = CGRectGetMidY(v64);
            v51 = MinX + -0.129999995;
          }

          [(OITSUBezierPath *)v24 moveToPoint:v51, MaxY];
          [(OITSUBezierPath *)v24 lineToPoint:v51, MidY];
          [(OITSUBezierPath *)v24 lineToPoint:v29, MidY];
        }

        else
        {
          v65.origin.x = v17;
          v65.origin.y = v19;
          v65.size.width = v21;
          v65.size.height = v23;
          v53 = CGRectGetMidX(v65);
          v66.origin.x = v17;
          v66.origin.y = v19;
          v66.size.width = v21;
          v66.size.height = v23;
          v31 = CGRectGetMaxY(v66);
          v67.origin.x = v8;
          v67.origin.y = v10;
          v67.size.width = v12;
          v67.size.height = rect;
          v32 = CGRectGetMidX(v67);
          v68.origin.x = v8;
          v68.origin.y = v10;
          v68.size.width = v12;
          v68.size.height = rect;
          MinY = CGRectGetMinY(v68);
          v34 = [(ODIHierarchy *)self infoForNode:v55];
          v35 = [v34 row];

          [(OITSUBezierPath *)v24 moveToPoint:v53, v31];
          v36 = (v35 + -0.5) * 0.600000024;
          v37 = v36;
          [(OITSUBezierPath *)v24 lineToPoint:v53, v36];
          [(OITSUBezierPath *)v24 lineToPoint:v32, v37];
          [(OITSUBezierPath *)v24 lineToPoint:v32, MinY];
        }

        mState = self->mState;
        if (v5 >= 3)
        {
          v41 = 3;
        }

        else
        {
          v41 = v5;
        }

        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"parChTrans1D%d", (v41 + 1)];
        [(ODIState *)mState setDefaultStyleLabelName:v42 forPointType:3];

        [(ODIState *)self->mState logicalBounds];
        v43 = [ODIDrawable shapeGeometryForBezierPath:v24 gSpace:?];
        [(ODIState *)self->mState logicalBounds];
        v44 = [ODIDrawable addShapeWithBounds:"addShapeWithBounds:rotation:geometry:state:" rotation:v43 geometry:self->mState state:?];
        v45 = [v55 parentTransition];
        [ODIDrawable mapStyleAndTextFromPoint:v45 shape:v44 state:self->mState];
      }
    }

    v46 = [v55 children];
    v47 = [v46 count];
    if (v47)
    {
      for (i = 0; i != v47; ++i)
      {
        v49 = [v46 objectAtIndex:i];
        [(ODIHierarchy *)self mapNode:v49];
      }
    }
  }
}

- (void)map
{
  v3 = [(ODIState *)self->mState diagram];
  v10 = [v3 documentPoint];

  [(ODIHierarchy *)self createInfoForNode:v10 depth:0xFFFFFFFFLL];
  v4 = [(ODIHierarchy *)self mapRangesForNode:v10];
  v5 = v4;
  v7 = *v4;
  v6 = v4[1];
  v8 = (*v4 + 8);
  v9 = v6 - v8;
  if (v6 != v8)
  {
    memmove(*v4, v8, v6 - v8);
  }

  v5[1] = &v7[v9];
  [(ODIHierarchy *)self mapLogicalBoundsWithXRanges:v5];
  [(ODIHierarchy *)self setAbsolutePositionOfNode:v10 parentRow:4294967294 parentXOffset:0.0];
  [(ODIHierarchy *)self mapNode:v10];
}

@end