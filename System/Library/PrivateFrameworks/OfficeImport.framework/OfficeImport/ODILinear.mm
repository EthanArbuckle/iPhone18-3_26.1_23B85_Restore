@interface ODILinear
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
- (ODILinear)initWithState:(id)a3;
- (void)map;
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
- (void)mapTransition:(id)a3 pointBounds:(CGRect)a4;
- (void)nextPointBounds:(CGRect *)a3;
- (void)setLogicalBounds;
@end

@implementation ODILinear

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 hasPrefix:@"process"])
  {
    if ([v6 hasPrefix:@"hProcess"])
    {
      v14 = [v6 substringFromIndex:{objc_msgSend(@"hProcess", "length")}];
      v15 = [v14 intValue];

      v10 = 0;
      v11 = 0;
      if (v15 > 6)
      {
        if (v15 > 9)
        {
          if (v15 == 10)
          {
            v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imagSh" state:v7];
            [(ODILinear *)v10 setWithConnectors:1];
            LODWORD(v32) = 2.0;
            [(ODILinear *)v10 setPointHeight:v32];
            [(ODILinear *)v10 setIsTextCentered:1];
          }

          else
          {
            if (v15 != 11)
            {
              goto LABEL_73;
            }

            v10 = [(ODILinear *)[ODIHorizontalProcess11 alloc] initWithState:v7];
            LODWORD(v25) = 1066611507;
            [(ODILinear *)v10 setPointHeight:v25];
            [(ODILinear *)v10 setWithConnectors:1];
          }

          goto LABEL_70;
        }

        if (v15 == 7)
        {
          v10 = [[a1 alloc] initWithState:v7];
          LODWORD(v30) = 1067114824;
          [(ODILinear *)v10 setPointHeight:v30];
          LODWORD(v31) = 1025758986;
          [(ODILinear *)v10 setPadding:v31];
          goto LABEL_70;
        }

        if (v15 != 9)
        {
          goto LABEL_73;
        }

LABEL_11:
        v10 = [[a1 alloc] initWithState:v7];
        LODWORD(v16) = 1.0;
        [(ODILinear *)v10 setPointHeight:v16];
        [(ODILinear *)v10 setWithConnectors:1];
        goto LABEL_70;
      }

      if (v15 == 3)
      {
        v10 = [(ODILinear *)[ODIHorizontalProcess3 alloc] initWithState:v7];
        LODWORD(v29) = 1066611507;
        [(ODILinear *)v10 setPointHeight:v29];
        [(ODILinear *)v10 setWithConnectors:1];
        goto LABEL_70;
      }

      if (v15 == 4)
      {
        goto LABEL_11;
      }

      if (v15 != 6)
      {
        goto LABEL_73;
      }

LABEL_29:
      v10 = [[a1 alloc] initWithState:v7];
      [(ODILinear *)v10 setWithConnectors:1];
      goto LABEL_70;
    }

    if ([v6 hasPrefix:@"hList"])
    {
      v17 = [v6 substringFromIndex:{objc_msgSend(@"hList", "length")}];
      v18 = [v17 intValue];

      switch(v18)
      {
        case 2:
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"image" state:v7];
          [(ODILinear *)v10 setStretch:1];
          [v7 setPresentationName:@"childNode" forPointType:2];
          goto LABEL_70;
        case 6:
          v10 = [[a1 alloc] initWithState:v7];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v37) = 1031127695;
          [(ODILinear *)v10 setPadding:v37];
          goto LABEL_70;
        case 7:
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imagNode" state:v7];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v19) = 1025758986;
          [(ODILinear *)v10 setPadding:v19];
          [(ODILinear *)v10 setIsTextCentered:1];
          [v7 setPresentationName:@"bkgdShape" forPointType:2];
          goto LABEL_70;
      }
    }

    else
    {
      if ([v6 hasPrefix:@"vList"])
      {
        v21 = [v6 substringFromIndex:{objc_msgSend(@"vList", "length")}];
        v22 = [v21 intValue];

        v10 = 0;
        v11 = 0;
        if (v22 > 5)
        {
          if (v22 > 7)
          {
            if (v22 == 8)
            {
              v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"horz1" state:v7];
              [(ODILinear *)v10 setIsHorizontal:0];
              [(ODILinear *)v10 setStretch:1];
              LODWORD(v43) = 1017370378;
              [(ODILinear *)v10 setPadding:v43];
              [v7 setPresentationName:@"tx1" forPointType:2];
            }

            else
            {
              if (v22 != 9)
              {
                goto LABEL_73;
              }

              v10 = [(ODIImageLinear *)[ODIAccentedImageLinear alloc] initWithImagePresentationName:@"desPictures" state:v7];
              [(ODILinear *)v10 setIsHorizontal:0];
              [(ODILinear *)v10 setStretch:1];
              LODWORD(v40) = 1017370378;
              [(ODILinear *)v10 setPadding:v40];
              [v7 setPresentationName:@"desText" forPointType:2];
            }

            goto LABEL_70;
          }

          if (v22 != 6)
          {
            v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"rect1" state:v7];
            [(ODILinear *)v10 setIsHorizontal:0];
            [(ODILinear *)v10 setStretch:1];
            LODWORD(v38) = 1017370378;
            [(ODILinear *)v10 setPadding:v38];
            [v7 setPresentationName:@"rect2" forPointType:2];
            goto LABEL_70;
          }
        }

        else if (v22 > 3)
        {
          if (v22 == 4)
          {
            v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"img" state:v7];
            [(ODILinear *)v10 setIsHorizontal:0];
            [(ODILinear *)v10 setStretch:1];
            LODWORD(v42) = 1017370378;
            [(ODILinear *)v10 setPadding:v42];
            [v7 setPresentationName:@"box" forPointType:2];
            goto LABEL_70;
          }
        }

        else if (v22 != 2)
        {
          if (v22 != 3)
          {
            goto LABEL_73;
          }

          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imgShp" state:v7];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v23) = 1017370378;
          [(ODILinear *)v10 setPadding:v23];
          [v7 setPresentationName:@"txShp" forPointType:2];
          goto LABEL_70;
        }

        v10 = [[a1 alloc] initWithState:v7];
        [(ODILinear *)v10 setIsHorizontal:0];
        [(ODILinear *)v10 setStretch:1];
        LODWORD(v39) = 1017370378;
        [(ODILinear *)v10 setPadding:v39];
        goto LABEL_70;
      }

      if ([v6 hasPrefix:@"pList"])
      {
        v26 = [v6 substringFromIndex:{objc_msgSend(@"pList", "length")}];
        v27 = [v26 intValue];

        if (v27 == 1)
        {
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"pictRect" state:v7];
          LODWORD(v41) = 2.0;
          [(ODILinear *)v10 setPointHeight:v41];
          [v7 setPresentationName:@"pictRect" forPointType:2];
          goto LABEL_70;
        }

        if (v27 == 2)
        {
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imagNode" state:v7];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v28) = 1017370378;
          [(ODILinear *)v10 setPadding:v28];
          goto LABEL_70;
        }
      }

      else if ([v6 hasPrefix:@"lProcess"])
      {
        v33 = [v6 substringFromIndex:{objc_msgSend(@"lProcess", "length")}];
        v34 = [v33 intValue];

        switch(v34)
        {
          case 1:
            v10 = [[a1 alloc] initWithState:v7];
            [v7 setPresentationName:@"header" forPointType:2];
            goto LABEL_70;
          case 2:
            v10 = [[a1 alloc] initWithState:v7];
            [(ODILinear *)v10 setStretch:1];
            LODWORD(v44) = 1025758986;
            [(ODILinear *)v10 setPadding:v44];
            [v7 setPresentationName:@"textNode" forPointType:2];
            goto LABEL_70;
          case 3:
            v10 = [[a1 alloc] initWithState:v7];
            [(ODILinear *)v10 setIsHorizontal:0];
            LODWORD(v35) = 0.5;
            [(ODILinear *)v10 setPointHeight:v35];
            LODWORD(v36) = 1025758986;
            [(ODILinear *)v10 setPadding:v36];
            [v7 setPresentationName:@"bigChev" forPointType:2];
            goto LABEL_70;
        }
      }

      else
      {
        if ([v6 isEqualToString:@"arrow2"])
        {
          v10 = [(ODILinear *)[ODIArrow2 alloc] initWithState:v7];
          [(ODILinear *)v10 setWithConnectors:1];
          goto LABEL_70;
        }

        if (([v6 isEqualToString:@"equation1"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"equation2"))
        {
          goto LABEL_29;
        }

        if ([v6 isEqualToString:@"funnel1"])
        {
          v10 = [[a1 alloc] initWithState:v7];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setWithConnectors:1];
          [(ODILinear *)v10 setMaxPointCount:4];
          goto LABEL_70;
        }

        if (([v6 isEqualToString:@"hChevron1"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"hChevron3"))
        {
          v10 = [[a1 alloc] initWithState:v7];
          [(ODILinear *)v10 setWithConnectors:1];
          [(ODILinear *)v10 setMaxPointCount:4];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"target1"])
        {
          v10 = [(ODILinear *)[ODITarget1 alloc] initWithState:v7];
          [(ODILinear *)v10 setMaxPointCount:5];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"target2"])
        {
          v10 = [(ODILinear *)[ODITarget2 alloc] initWithState:v7];
          [(ODILinear *)v10 setMaxPointCount:3];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsTextCentered:0];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"target3"])
        {
          v10 = [(ODILinear *)[ODITarget3 alloc] initWithState:v7];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setPadding:0.0];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"venn2"])
        {
          v10 = [(ODILinear *)[ODIVenn2 alloc] initWithState:v7];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setPadding:0.0];
          [(ODILinear *)v10 setMaxPointCount:7];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"chevron2"])
        {
          v10 = [[a1 alloc] initWithState:v7];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          LODWORD(v46) = 1031127695;
          [(ODILinear *)v10 setPadding:v46];
          [v7 setPresentationName:@"parentText" forPointType:2];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"list1"])
        {
          v10 = [(ODILinear *)[ODIList1 alloc] initWithState:v7];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setIsTextCenteredHorizontally:0];
          [(ODILinear *)v10 setIsTextCenteredVertically:1];
          LODWORD(v47) = 1017370378;
          [(ODILinear *)v10 setPadding:v47];
          [v7 setPresentationName:@"parentText" forPointType:2];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"balance1"])
        {
          v10 = [[ODILinear alloc] initWithState:v7];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setWithConnectors:0];
          LODWORD(v48) = 1057971241;
          [(ODILinear *)v10 setPointHeight:v48];
          LODWORD(v49) = 1025758986;
          [(ODILinear *)v10 setPadding:v49];
          goto LABEL_70;
        }

        if ([v6 isEqualToString:@"vProcess5"])
        {
          v10 = [[ODILinear alloc] initWithState:v7];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setWithConnectors:1];
          LODWORD(v50) = 1057971241;
          [(ODILinear *)v10 setPointHeight:v50];
          LODWORD(v51) = 1025758986;
          [(ODILinear *)v10 setPadding:v51];
          goto LABEL_70;
        }
      }
    }

    v11 = 0;
    v10 = 0;
    goto LABEL_73;
  }

  v8 = [v6 substringFromIndex:{objc_msgSend(@"process", "length")}];
  v9 = [v8 intValue];

  v10 = 0;
  v11 = 0;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        goto LABEL_73;
      }

      v10 = [(ODILinear *)[ODIVerticalProcess2 alloc] initWithState:v7];
      [(ODILinear *)v10 setIsHorizontal:0];
      [(ODILinear *)v10 setStretch:1];
      [(ODILinear *)v10 setWithConnectors:1];
      [(ODILinear *)v10 setPadding:0.0];
      LODWORD(v20) = 1031127695;
      [(ODILinear *)v10 setConnectorWidth:v20];
      goto LABEL_70;
    }

    goto LABEL_30;
  }

  if (v9 == 1)
  {
LABEL_30:
    v10 = [[a1 alloc] initWithState:v7];
    [(ODILinear *)v10 setWithConnectors:1];
    LODWORD(v24) = 0.75;
    [(ODILinear *)v10 setPointHeight:v24];
    goto LABEL_70;
  }

  if (v9 != 2)
  {
    goto LABEL_73;
  }

  v10 = [[a1 alloc] initWithState:v7];
  [(ODILinear *)v10 setIsHorizontal:0];
  [(ODILinear *)v10 setWithConnectors:1];
  LODWORD(v12) = 1057971241;
  [(ODILinear *)v10 setPointHeight:v12];
  LODWORD(v13) = 1025758986;
  [(ODILinear *)v10 setPadding:v13];
LABEL_70:
  if (v10)
  {
    [(ODILinear *)v10 map];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_73:

  return v11;
}

- (ODILinear)initWithState:(id)a3
{
  v5 = a3;
  v6 = [(ODILinear *)self init];
  v7 = v6;
  if (v6)
  {
    *&v6->mIsHorizontal = 1;
    v6->mStretch = 0;
    *&v6->mPointHeight = 0x3E6147AE3F800000;
    v6->mPadding = 0.11;
    objc_storeStrong(&v6->mState, a3);
    v7->mMaxPointCount = -1;
    *&v7->mIsTextCenteredHorizontally = 257;
  }

  return v7;
}

- (void)map
{
  v3 = [(ODIState *)self->mState diagram];
  v4 = [v3 documentPoint];
  v5 = [v4 children];

  v6 = [v5 count];
  mMaxPointCount = self->mMaxPointCount;
  if (mMaxPointCount >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = mMaxPointCount;
  }

  [(ODIState *)self->mState setPointCount:v8];
  [(ODILinear *)self setLogicalBounds];
  mPointHeight = self->mPointHeight;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 1.0;
  v16 = mPointHeight;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [v5 objectAtIndex:{i, *&v13, *&v14, *&v15, *&v16}];
      [(ODIState *)self->mState setPointIndex:i];
      [(ODILinear *)self mapPoint:v11 bounds:v13, v14, v15, v16];
      if (i < (v8 - 1) && self->mWithConnectors)
      {
        v12 = [v11 siblingTransition];
        [(ODILinear *)self mapTransition:v12 pointBounds:v13, v14, v15, v16];
      }

      [(ODILinear *)self nextPointBounds:&v13];
    }
  }
}

- (void)setLogicalBounds
{
  v15 = [(ODIState *)self->mState diagram];
  v3 = [(ODIState *)self->mState pointCount];
  if (self->mWithConnectors)
  {
    mPadding = self->mConnectorWidth + (self->mPadding * 2.0);
  }

  else
  {
    mPadding = self->mPadding;
  }

  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = (v3 + -1.0) * mPadding;
  if (self->mIsHorizontal)
  {
    v8 = (v7 + v3);
    if (self->mStretch)
    {
      [ODIDrawable sizeOfDiagram:v15];
      mPointHeight = v9 * v8 / v10;
      self->mPointHeight = mPointHeight;
    }

    else
    {
      mPointHeight = self->mPointHeight;
    }
  }

  else
  {
    if (self->mStretch)
    {
      [ODIDrawable sizeOfDiagram:v15];
      v14 = (v13 / v12 - v7) / v3;
      self->mPointHeight = v14;
    }

    else
    {
      v14 = self->mPointHeight;
    }

    mPointHeight = v7 + (v3 * v14);
    v8 = 1.0;
  }

  [(ODIState *)self->mState setLogicalBounds:v5, v6, v8, mPointHeight];
}

- (void)nextPointBounds:(CGRect *)a3
{
  if (self->mWithConnectors)
  {
    mPadding = self->mConnectorWidth + (self->mPadding * 2.0);
  }

  else
  {
    mPadding = self->mPadding;
  }

  if (self->mIsHorizontal)
  {
    v4 = (mPadding + 1.0);
  }

  else
  {
    v4 = a3->size.height + mPadding;
    a3 = (a3 + 8);
  }

  a3->origin.x = a3->origin.x + v4;
}

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  LODWORD(v9) = 1033476506;
  v10 = [ODIDrawable shapeGeometryForRoundedRectangleWithRadius:v9];
  v11 = [ODIDrawable addShapeWithBounds:v10 rotation:self->mState geometry:x state:y, width, height, 0.0];
  [(ODILinear *)self mapStyleFromPoint:v12 shape:v11];
  [ODIText mapTextFromPoint:v12 toShape:v11 isCenteredHorizontally:self->mIsTextCenteredHorizontally isCenteredVertically:self->mIsTextCenteredVertically includeChildren:1 state:self->mState];
}

- (void)mapTransition:(id)a3 pointBounds:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  mConnectorWidth = self->mConnectorWidth;
  v10 = mConnectorWidth;
  v16 = v8;
  if (self->mIsHorizontal)
  {
    v11 = x + 1.0 + self->mPadding;
    v12 = y + (height - v10) * 0.5;
  }

  else
  {
    v11 = x + ((1.0 - mConnectorWidth) * 0.5);
    v12 = y + height + self->mPadding;
  }

  v13 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.5, 0.180000007];
  if (self->mIsHorizontal)
  {
    *&v14 = 0.0;
  }

  else
  {
    *&v14 = -270.0;
  }

  v15 = [ODIDrawable addShapeWithBounds:v13 rotation:self->mState geometry:v11 state:v12, v10, v10, v14];
  [(ODILinear *)self mapStyleFromTransition:v16 shape:v15];
}

@end