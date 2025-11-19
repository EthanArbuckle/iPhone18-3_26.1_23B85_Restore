@interface ODIBending
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
+ (unsigned)mapLogicalBoundsWithShapeSize:(CGSize)a3 spaceSize:(CGSize)a4 maxNodeCount:(unsigned int)a5 maxColumnCount:(unsigned int)a6 state:(id)a7;
- (ODIBending)initWithArrows:(BOOL)a3;
- (void)mapWithState:(id)a3;
@end

@implementation ODIBending

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"default"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"matrix2"))
  {
    v8 = [a1 alloc];
    v9 = 0;
LABEL_4:
    v10 = [v8 initWithArrows:v9];
    goto LABEL_5;
  }

  if (([v6 isEqualToString:@"process5"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"bProcess"))
  {
    v8 = [a1 alloc];
    v9 = 1;
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"bList2"])
  {
    v12 = 0;
    [ODIBendingList2 mapWithState:v7];
    v11 = 1;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"matrix3"])
  {
    v10 = [[a1 alloc] initWithArrows:0];
    LODWORD(v13) = 1.0;
    [v10 setRectHeight:v13];
    [v10 setMaxNodeCount:4];
    [v10 setMaxColumnCount:2];
  }

  else
  {
    if (![v6 isEqualToString:@"radial2"])
    {
      goto LABEL_16;
    }

    v10 = [[a1 alloc] initWithArrows:0];
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

  [v10 mapWithState:v7];
  v11 = 1;
  v12 = v10;
LABEL_17:

  return v11;
}

- (ODIBending)initWithArrows:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = ODIBending;
  v4 = [(ODIBending *)&v8 init];
  v6 = v4;
  if (v4)
  {
    LODWORD(v5) = 1036831949;
    if (v3)
    {
      *&v5 = 0.4;
    }

    v4->mSpaceWidth = *&v5;
    v4->mSpaceHeight = *&v5;
    v4->mWithArrows = v3;
    LODWORD(v5) = 1058642330;
    [(ODIBending *)v4 setRectHeight:v5];
    *&v6->mMaxNodeCount = -1;
  }

  return v6;
}

- (void)mapWithState:(id)a3
{
  v51 = a3;
  v4 = [v51 diagram];
  v5 = [v4 documentPoint];
  v6 = [v5 children];

  v7 = [v6 count];
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
  v44 = v6;
  do
  {
    v15 = 0;
    v48 = v12;
    v16 = v11;
    v17 = v43;
    while (1)
    {
      v18 = [v6 objectAtIndex:{(v10 + v15), v42}];
      mRectHeight = self->mRectHeight;
      mSpaceWidth = self->mSpaceWidth;
      mSpaceHeight = self->mSpaceHeight;
      LODWORD(v22) = 1036831949;
      v23 = [&v13[24] shapeGeometryForRoundedRectangleWithRadius:v22];
      v24 = (v11 & 1) != 0 ? v17 + 1 : v15;
      v50 = [&v13[24] addShapeWithBounds:v23 rotation:v51 geometry:((mSpaceWidth + 1.0) * v24) state:{((mRectHeight + mSpaceHeight) * v16), 1.0, mRectHeight, 0.0}];
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
            v38 = [&v13[24] addShapeWithBounds:v46 rotation:v51 geometry:v29 state:{v31, v33, v35, v37}];
            v39 = v13;
            v40 = v13 + 24;
            v41 = [v49 siblingTransition];
            [(__objc2_class *)v40 mapStyleAndTextFromPoint:v41 shape:v38 state:v51];

            v6 = v44;
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

+ (unsigned)mapLogicalBoundsWithShapeSize:(CGSize)a3 spaceSize:(CGSize)a4 maxNodeCount:(unsigned int)a5 maxColumnCount:(unsigned int)a6 state:(id)a7
{
  height = a4.height;
  width = a4.width;
  v11 = a3.height;
  v12 = a3.width;
  v13 = a7;
  v14 = [v13 diagram];
  v15 = [v14 documentPoint];
  v16 = [v15 children];
  v17 = [v16 count];

  if (v17 < a5)
  {
    a5 = v17;
  }

  if (a5 < a6)
  {
    a6 = a5;
  }

  v18 = [v13 diagramOrientedBounds];
  [v18 bounds];
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
  if (!a6)
  {
    goto LABEL_15;
  }

  v28 = 0;
  v29 = 0;
  v32 = a6 + 1 > 2 ? a6 + 1 : 2;
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
    v40 = height * ((a5 + v28) / v37 - 1) + ((a5 + v28) / v37) * v11;
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
    v43 = height * ((a5 - 1 + v29) / v29 - 1) + ((a5 - 1 + v29) / v29) * v11;
    [v13 setLogicalBounds:{0.0, 0.0, v42, v43}];
  }

  else
  {
LABEL_15:
    [v13 setLogicalBounds:{0.0, 0.0, 0.0, 0.0}];
    v29 = 0;
  }

  return v29;
}

@end