@interface ODILinear
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
- (ODILinear)initWithState:(id)state;
- (void)map;
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
- (void)mapTransition:(id)transition pointBounds:(CGRect)bounds;
- (void)nextPointBounds:(CGRect *)bounds;
- (void)setLogicalBounds;
@end

@implementation ODILinear

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  if (![identifierCopy hasPrefix:@"process"])
  {
    if ([identifierCopy hasPrefix:@"hProcess"])
    {
      v14 = [identifierCopy substringFromIndex:{objc_msgSend(@"hProcess", "length")}];
      intValue = [v14 intValue];

      v10 = 0;
      v11 = 0;
      if (intValue > 6)
      {
        if (intValue > 9)
        {
          if (intValue == 10)
          {
            v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imagSh" state:stateCopy];
            [(ODILinear *)v10 setWithConnectors:1];
            LODWORD(v32) = 2.0;
            [(ODILinear *)v10 setPointHeight:v32];
            [(ODILinear *)v10 setIsTextCentered:1];
          }

          else
          {
            if (intValue != 11)
            {
              goto LABEL_73;
            }

            v10 = [(ODILinear *)[ODIHorizontalProcess11 alloc] initWithState:stateCopy];
            LODWORD(v25) = 1066611507;
            [(ODILinear *)v10 setPointHeight:v25];
            [(ODILinear *)v10 setWithConnectors:1];
          }

          goto LABEL_70;
        }

        if (intValue == 7)
        {
          v10 = [[self alloc] initWithState:stateCopy];
          LODWORD(v30) = 1067114824;
          [(ODILinear *)v10 setPointHeight:v30];
          LODWORD(v31) = 1025758986;
          [(ODILinear *)v10 setPadding:v31];
          goto LABEL_70;
        }

        if (intValue != 9)
        {
          goto LABEL_73;
        }

LABEL_11:
        v10 = [[self alloc] initWithState:stateCopy];
        LODWORD(v16) = 1.0;
        [(ODILinear *)v10 setPointHeight:v16];
        [(ODILinear *)v10 setWithConnectors:1];
        goto LABEL_70;
      }

      if (intValue == 3)
      {
        v10 = [(ODILinear *)[ODIHorizontalProcess3 alloc] initWithState:stateCopy];
        LODWORD(v29) = 1066611507;
        [(ODILinear *)v10 setPointHeight:v29];
        [(ODILinear *)v10 setWithConnectors:1];
        goto LABEL_70;
      }

      if (intValue == 4)
      {
        goto LABEL_11;
      }

      if (intValue != 6)
      {
        goto LABEL_73;
      }

LABEL_29:
      v10 = [[self alloc] initWithState:stateCopy];
      [(ODILinear *)v10 setWithConnectors:1];
      goto LABEL_70;
    }

    if ([identifierCopy hasPrefix:@"hList"])
    {
      v17 = [identifierCopy substringFromIndex:{objc_msgSend(@"hList", "length")}];
      intValue2 = [v17 intValue];

      switch(intValue2)
      {
        case 2:
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"image" state:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          [stateCopy setPresentationName:@"childNode" forPointType:2];
          goto LABEL_70;
        case 6:
          v10 = [[self alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v37) = 1031127695;
          [(ODILinear *)v10 setPadding:v37];
          goto LABEL_70;
        case 7:
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imagNode" state:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v19) = 1025758986;
          [(ODILinear *)v10 setPadding:v19];
          [(ODILinear *)v10 setIsTextCentered:1];
          [stateCopy setPresentationName:@"bkgdShape" forPointType:2];
          goto LABEL_70;
      }
    }

    else
    {
      if ([identifierCopy hasPrefix:@"vList"])
      {
        v21 = [identifierCopy substringFromIndex:{objc_msgSend(@"vList", "length")}];
        intValue3 = [v21 intValue];

        v10 = 0;
        v11 = 0;
        if (intValue3 > 5)
        {
          if (intValue3 > 7)
          {
            if (intValue3 == 8)
            {
              v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"horz1" state:stateCopy];
              [(ODILinear *)v10 setIsHorizontal:0];
              [(ODILinear *)v10 setStretch:1];
              LODWORD(v43) = 1017370378;
              [(ODILinear *)v10 setPadding:v43];
              [stateCopy setPresentationName:@"tx1" forPointType:2];
            }

            else
            {
              if (intValue3 != 9)
              {
                goto LABEL_73;
              }

              v10 = [(ODIImageLinear *)[ODIAccentedImageLinear alloc] initWithImagePresentationName:@"desPictures" state:stateCopy];
              [(ODILinear *)v10 setIsHorizontal:0];
              [(ODILinear *)v10 setStretch:1];
              LODWORD(v40) = 1017370378;
              [(ODILinear *)v10 setPadding:v40];
              [stateCopy setPresentationName:@"desText" forPointType:2];
            }

            goto LABEL_70;
          }

          if (intValue3 != 6)
          {
            v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"rect1" state:stateCopy];
            [(ODILinear *)v10 setIsHorizontal:0];
            [(ODILinear *)v10 setStretch:1];
            LODWORD(v38) = 1017370378;
            [(ODILinear *)v10 setPadding:v38];
            [stateCopy setPresentationName:@"rect2" forPointType:2];
            goto LABEL_70;
          }
        }

        else if (intValue3 > 3)
        {
          if (intValue3 == 4)
          {
            v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"img" state:stateCopy];
            [(ODILinear *)v10 setIsHorizontal:0];
            [(ODILinear *)v10 setStretch:1];
            LODWORD(v42) = 1017370378;
            [(ODILinear *)v10 setPadding:v42];
            [stateCopy setPresentationName:@"box" forPointType:2];
            goto LABEL_70;
          }
        }

        else if (intValue3 != 2)
        {
          if (intValue3 != 3)
          {
            goto LABEL_73;
          }

          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imgShp" state:stateCopy];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v23) = 1017370378;
          [(ODILinear *)v10 setPadding:v23];
          [stateCopy setPresentationName:@"txShp" forPointType:2];
          goto LABEL_70;
        }

        v10 = [[self alloc] initWithState:stateCopy];
        [(ODILinear *)v10 setIsHorizontal:0];
        [(ODILinear *)v10 setStretch:1];
        LODWORD(v39) = 1017370378;
        [(ODILinear *)v10 setPadding:v39];
        goto LABEL_70;
      }

      if ([identifierCopy hasPrefix:@"pList"])
      {
        v26 = [identifierCopy substringFromIndex:{objc_msgSend(@"pList", "length")}];
        intValue4 = [v26 intValue];

        if (intValue4 == 1)
        {
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"pictRect" state:stateCopy];
          LODWORD(v41) = 2.0;
          [(ODILinear *)v10 setPointHeight:v41];
          [stateCopy setPresentationName:@"pictRect" forPointType:2];
          goto LABEL_70;
        }

        if (intValue4 == 2)
        {
          v10 = [[ODIImageLinear alloc] initWithImagePresentationName:@"imagNode" state:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          LODWORD(v28) = 1017370378;
          [(ODILinear *)v10 setPadding:v28];
          goto LABEL_70;
        }
      }

      else if ([identifierCopy hasPrefix:@"lProcess"])
      {
        v33 = [identifierCopy substringFromIndex:{objc_msgSend(@"lProcess", "length")}];
        intValue5 = [v33 intValue];

        switch(intValue5)
        {
          case 1:
            v10 = [[self alloc] initWithState:stateCopy];
            [stateCopy setPresentationName:@"header" forPointType:2];
            goto LABEL_70;
          case 2:
            v10 = [[self alloc] initWithState:stateCopy];
            [(ODILinear *)v10 setStretch:1];
            LODWORD(v44) = 1025758986;
            [(ODILinear *)v10 setPadding:v44];
            [stateCopy setPresentationName:@"textNode" forPointType:2];
            goto LABEL_70;
          case 3:
            v10 = [[self alloc] initWithState:stateCopy];
            [(ODILinear *)v10 setIsHorizontal:0];
            LODWORD(v35) = 0.5;
            [(ODILinear *)v10 setPointHeight:v35];
            LODWORD(v36) = 1025758986;
            [(ODILinear *)v10 setPadding:v36];
            [stateCopy setPresentationName:@"bigChev" forPointType:2];
            goto LABEL_70;
        }
      }

      else
      {
        if ([identifierCopy isEqualToString:@"arrow2"])
        {
          v10 = [(ODILinear *)[ODIArrow2 alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setWithConnectors:1];
          goto LABEL_70;
        }

        if (([identifierCopy isEqualToString:@"equation1"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"equation2"))
        {
          goto LABEL_29;
        }

        if ([identifierCopy isEqualToString:@"funnel1"])
        {
          v10 = [[self alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setWithConnectors:1];
          [(ODILinear *)v10 setMaxPointCount:4];
          goto LABEL_70;
        }

        if (([identifierCopy isEqualToString:@"hChevron1"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"hChevron3"))
        {
          v10 = [[self alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setWithConnectors:1];
          [(ODILinear *)v10 setMaxPointCount:4];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"target1"])
        {
          v10 = [(ODILinear *)[ODITarget1 alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setMaxPointCount:5];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"target2"])
        {
          v10 = [(ODILinear *)[ODITarget2 alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setMaxPointCount:3];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsTextCentered:0];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"target3"])
        {
          v10 = [(ODILinear *)[ODITarget3 alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setPadding:0.0];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"venn2"])
        {
          v10 = [(ODILinear *)[ODIVenn2 alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setPadding:0.0];
          [(ODILinear *)v10 setMaxPointCount:7];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"chevron2"])
        {
          v10 = [[self alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          LODWORD(v46) = 1031127695;
          [(ODILinear *)v10 setPadding:v46];
          [stateCopy setPresentationName:@"parentText" forPointType:2];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"list1"])
        {
          v10 = [(ODILinear *)[ODIList1 alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setStretch:1];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setIsTextCenteredHorizontally:0];
          [(ODILinear *)v10 setIsTextCenteredVertically:1];
          LODWORD(v47) = 1017370378;
          [(ODILinear *)v10 setPadding:v47];
          [stateCopy setPresentationName:@"parentText" forPointType:2];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"balance1"])
        {
          v10 = [[ODILinear alloc] initWithState:stateCopy];
          [(ODILinear *)v10 setIsHorizontal:0];
          [(ODILinear *)v10 setWithConnectors:0];
          LODWORD(v48) = 1057971241;
          [(ODILinear *)v10 setPointHeight:v48];
          LODWORD(v49) = 1025758986;
          [(ODILinear *)v10 setPadding:v49];
          goto LABEL_70;
        }

        if ([identifierCopy isEqualToString:@"vProcess5"])
        {
          v10 = [[ODILinear alloc] initWithState:stateCopy];
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

  v8 = [identifierCopy substringFromIndex:{objc_msgSend(@"process", "length")}];
  intValue6 = [v8 intValue];

  v10 = 0;
  v11 = 0;
  if (intValue6 > 2)
  {
    if (intValue6 != 3)
    {
      if (intValue6 != 4)
      {
        goto LABEL_73;
      }

      v10 = [(ODILinear *)[ODIVerticalProcess2 alloc] initWithState:stateCopy];
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

  if (intValue6 == 1)
  {
LABEL_30:
    v10 = [[self alloc] initWithState:stateCopy];
    [(ODILinear *)v10 setWithConnectors:1];
    LODWORD(v24) = 0.75;
    [(ODILinear *)v10 setPointHeight:v24];
    goto LABEL_70;
  }

  if (intValue6 != 2)
  {
    goto LABEL_73;
  }

  v10 = [[self alloc] initWithState:stateCopy];
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

- (ODILinear)initWithState:(id)state
{
  stateCopy = state;
  v6 = [(ODILinear *)self init];
  v7 = v6;
  if (v6)
  {
    *&v6->mIsHorizontal = 1;
    v6->mStretch = 0;
    *&v6->mPointHeight = 0x3E6147AE3F800000;
    v6->mPadding = 0.11;
    objc_storeStrong(&v6->mState, state);
    v7->mMaxPointCount = -1;
    *&v7->mIsTextCenteredHorizontally = 257;
  }

  return v7;
}

- (void)map
{
  diagram = [(ODIState *)self->mState diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];

  v6 = [children count];
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
      v11 = [children objectAtIndex:{i, *&v13, *&v14, *&v15, *&v16}];
      [(ODIState *)self->mState setPointIndex:i];
      [(ODILinear *)self mapPoint:v11 bounds:v13, v14, v15, v16];
      if (i < (v8 - 1) && self->mWithConnectors)
      {
        siblingTransition = [v11 siblingTransition];
        [(ODILinear *)self mapTransition:siblingTransition pointBounds:v13, v14, v15, v16];
      }

      [(ODILinear *)self nextPointBounds:&v13];
    }
  }
}

- (void)setLogicalBounds
{
  diagram = [(ODIState *)self->mState diagram];
  pointCount = [(ODIState *)self->mState pointCount];
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
  v7 = (pointCount + -1.0) * mPadding;
  if (self->mIsHorizontal)
  {
    v8 = (v7 + pointCount);
    if (self->mStretch)
    {
      [ODIDrawable sizeOfDiagram:diagram];
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
      [ODIDrawable sizeOfDiagram:diagram];
      v14 = (v13 / v12 - v7) / pointCount;
      self->mPointHeight = v14;
    }

    else
    {
      v14 = self->mPointHeight;
    }

    mPointHeight = v7 + (pointCount * v14);
    v8 = 1.0;
  }

  [(ODIState *)self->mState setLogicalBounds:v5, v6, v8, mPointHeight];
}

- (void)nextPointBounds:(CGRect *)bounds
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
    v4 = bounds->size.height + mPadding;
    bounds = (bounds + 8);
  }

  bounds->origin.x = bounds->origin.x + v4;
}

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  LODWORD(v9) = 1033476506;
  v10 = [ODIDrawable shapeGeometryForRoundedRectangleWithRadius:v9];
  v11 = [ODIDrawable addShapeWithBounds:v10 rotation:self->mState geometry:x state:y, width, height, 0.0];
  [(ODILinear *)self mapStyleFromPoint:pointCopy shape:v11];
  [ODIText mapTextFromPoint:pointCopy toShape:v11 isCenteredHorizontally:self->mIsTextCenteredHorizontally isCenteredVertically:self->mIsTextCenteredVertically includeChildren:1 state:self->mState];
}

- (void)mapTransition:(id)transition pointBounds:(CGRect)bounds
{
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  transitionCopy = transition;
  mConnectorWidth = self->mConnectorWidth;
  v10 = mConnectorWidth;
  v16 = transitionCopy;
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