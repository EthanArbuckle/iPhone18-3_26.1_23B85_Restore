@interface ODIBending
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (unsigned)mapLogicalBoundsWithShapeSize:(CGSize)size spaceSize:(CGSize)spaceSize maxNodeCount:(unsigned int)count maxColumnCount:(unsigned int)columnCount state:(id)state;
- (ODIBending)initWithArrows:(BOOL)arrows;
- (void)mapWithState:(id)state;
@end

@implementation ODIBending

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  if (([identifierCopy isEqualToString:@"default"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"matrix2"))
  {
    v8 = [self alloc];
    v9 = 0;
LABEL_4:
    v10 = [v8 initWithArrows:v9];
    goto LABEL_5;
  }

  if (([identifierCopy isEqualToString:@"process5"] & 1) != 0 || objc_msgSend(identifierCopy, "hasPrefix:", @"bProcess"))
  {
    v8 = [self alloc];
    v9 = 1;
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:@"bList2"])
  {
    v12 = 0;
    [ODIBendingList2 mapWithState:stateCopy];
    v11 = 1;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"matrix3"])
  {
    v10 = [[self alloc] initWithArrows:0];
    LODWORD(v13) = 1.0;
    [v10 setRectHeight:v13];
    [v10 setMaxNodeCount:4];
    [v10 setMaxColumnCount:2];
  }

  else
  {
    if (![identifierCopy isEqualToString:@"radial2"])
    {
      goto LABEL_16;
    }

    v10 = [[self alloc] initWithArrows:0];
    LODWORD(v14) = 1.0;
    [v10 setRectHeight:v14];
  }

LABEL_5:
  if (!v10)
  {
LABEL_16:
    v12 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v10 mapWithState:stateCopy];
  v11 = 1;
  v12 = v10;
LABEL_17:

  return v11;
}

- (ODIBending)initWithArrows:(BOOL)arrows
{
  arrowsCopy = arrows;
  v8.receiver = self;
  v8.super_class = ODIBending;
  v4 = [(ODIBending *)&v8 init];
  v6 = v4;
  if (v4)
  {
    LODWORD(v5) = 1036831949;
    if (arrowsCopy)
    {
      *&v5 = 0.4;
    }

    v4->mSpaceWidth = *&v5;
    v4->mSpaceHeight = *&v5;
    v4->mWithArrows = arrowsCopy;
    LODWORD(v5) = 1058642330;
    [(ODIBending *)v4 setRectHeight:v5];
    *&v6->mMaxNodeCount = -1;
  }

  return v6;
}

- (void)mapWithState:(id)state
{
  stateCopy = state;
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];

  v7 = [children count];
  if (self->mMaxNodeCount >= v7)
  {
    mMaxNodeCount = v7;
  }

  else
  {
    mMaxNodeCount = self->mMaxNodeCount;
  }

  v9 = [ODIBending mapLogicalBoundsWithShapeSize:1.0 spaceSize:self->mRectHeight maxNodeCount:self->mSpaceWidth maxColumnCount:self->mSpaceHeight state:?];
  if (!v9)
  {
    goto LABEL_27;
  }

  v45 = v9 - 1;
  if (v9 > v45 + mMaxNodeCount)
  {
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 0;
  v12 = mMaxNodeCount - 1;
  v43 = v9 - 2;
  v13 = ODXIteratorSpecification;
  v14 = v9;
  LODWORD(v42) = (v45 + mMaxNodeCount) / v9;
  HIDWORD(v42) = v9;
  v44 = children;
  do
  {
    v15 = 0;
    v48 = v12;
    v16 = v11;
    v17 = v43;
    while (1)
    {
      v18 = [children objectAtIndex:{(v10 + v15), v42}];
      mRectHeight = self->mRectHeight;
      mSpaceWidth = self->mSpaceWidth;
      mSpaceHeight = self->mSpaceHeight;
      LODWORD(v22) = 1036831949;
      v23 = [&v13[24] shapeGeometryForRoundedRectangleWithRadius:v22];
      v24 = (v11 & 1) != 0 ? v17 + 1 : v15;
      v50 = [&v13[24] addShapeWithBounds:v23 rotation:stateCopy geometry:((mSpaceWidth + 1.0) * v24) state:{((mRectHeight + mSpaceHeight) * v16), 1.0, mRectHeight, 0.0}];
      [&v13[24] mapStyleAndTextFromPoint:v18 shape:? state:?];
      if (v48 == v15)
      {
        break;
      }

      if (self->mWithArrows)
      {
        if (v11)
        {
          if (v15 >= v45)
          {
            v26 = (self->mSpaceHeight * 0.5) + (self->mRectHeight + (v16 * (self->mRectHeight + self->mSpaceHeight)));
            v25 = 0.5;
            goto LABEL_20;
          }

          v25 = ((self->mSpaceWidth * 0.5) + ((v17 * (self->mSpaceWidth + 1.0)) + 1.0));
          v26 = (self->mRectHeight * 0.5) + (v16 * (self->mRectHeight + self->mSpaceHeight));
          v28 = 1127481344;
        }

        else
        {
          if (v15 < v45)
          {
            v25 = ((self->mSpaceWidth * 0.5) + ((v15 * (self->mSpaceWidth + 1.0)) + 1.0));
            v26 = (self->mRectHeight * 0.5) + (v16 * (self->mRectHeight + self->mSpaceHeight));
            v27 = 0;
LABEL_22:
            v29 = TSURectWithCenterAndSize(v25, v26, *"");
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v49 = v18;
            v46 = [&v13[24] shapeGeometryForRightArrowWithControlPoint:{0.5, 0.15}];
            v47 = v23;
            v36 = v14;
            LODWORD(v37) = v27;
            v38 = [&v13[24] addShapeWithBounds:v46 rotation:stateCopy geometry:v29 state:{v31, v33, v35, v37}];
            v39 = v13;
            v40 = v13 + 24;
            siblingTransition = [v49 siblingTransition];
            [(__objc2_class *)v40 mapStyleAndTextFromPoint:siblingTransition shape:v38 state:stateCopy];

            children = v44;
            v18 = v49;
            v13 = v39;
            v14 = v36;
            v23 = v47;
            goto LABEL_23;
          }

          v25 = ((v45 * (self->mSpaceWidth + 1.0)) + 0.5);
          v26 = (self->mSpaceHeight * 0.5) + (self->mRectHeight + (v16 * (self->mRectHeight + self->mSpaceHeight)));
LABEL_20:
          v28 = 1119092736;
        }

        v27 = v28;
        goto LABEL_22;
      }

LABEL_23:

      ++v15;
      --v17;
      if (v14 == v15)
      {
        goto LABEL_26;
      }
    }

LABEL_26:
    ++v11;
    v12 = v48 - HIDWORD(v42);
    v10 += v14;
  }

  while (v11 != v42);
LABEL_27:
}

+ (unsigned)mapLogicalBoundsWithShapeSize:(CGSize)size spaceSize:(CGSize)spaceSize maxNodeCount:(unsigned int)count maxColumnCount:(unsigned int)columnCount state:(id)state
{
  height = spaceSize.height;
  width = spaceSize.width;
  v11 = size.height;
  v12 = size.width;
  stateCopy = state;
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v17 = [children count];

  if (v17 < count)
  {
    count = v17;
  }

  if (count < columnCount)
  {
    columnCount = count;
  }

  diagramOrientedBounds = [stateCopy diagramOrientedBounds];
  [diagramOrientedBounds bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v46.origin.x = v20;
  v46.origin.y = v22;
  v46.size.width = v24;
  v46.size.height = v26;
  v45 = CGRectGetWidth(v46);
  v47.origin.x = v20;
  v47.origin.y = v22;
  v47.size.width = v24;
  v47.size.height = v26;
  v27 = CGRectGetHeight(v47);
  if (!columnCount)
  {
    goto LABEL_15;
  }

  v28 = 0;
  v29 = 0;
  v32 = columnCount + 1 > 2 ? columnCount + 1 : 2;
  v33 = v32 - 1;
  v34 = 0.0;
  v30 = v45;
  v31 = v27;
  v35 = v30 / v31;
  v36 = 1.0;
  do
  {
    v37 = v28 + 1;
    v38 = width * v28;
    v39 = v38 + v36 * v12;
    v40 = height * ((count + v28) / v37 - 1) + ((count + v28) / v37) * v11;
    v41 = fminf((v39 / v40) / v35, 1.0) / (v38 / v12 + v36);
    if (v34 * 0.999 < v41)
    {
      v34 = v41;
      v29 = v28 + 1;
    }

    v36 = v36 + 1.0;
    ++v28;
  }

  while (v33 != v37);
  if (v29)
  {
    v42 = width * (v29 - 1) + v29 * v12;
    v43 = height * ((count - 1 + v29) / v29 - 1) + ((count - 1 + v29) / v29) * v11;
    [stateCopy setLogicalBounds:{0.0, 0.0, v42, v43}];
  }

  else
  {
LABEL_15:
    [stateCopy setLogicalBounds:{0.0, 0.0, 0.0, 0.0}];
    v29 = 0;
  }

  return v29;
}

@end