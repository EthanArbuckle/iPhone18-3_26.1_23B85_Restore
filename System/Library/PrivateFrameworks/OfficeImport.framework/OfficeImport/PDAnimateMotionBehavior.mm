@interface PDAnimateMotionBehavior
+ (id)NSStringForBezierPath:(id)path;
+ (id)bezierPathFromNSString:(id)string;
- (BOOL)isEqual:(id)equal;
- (CGPoint)rotationCenter;
- (unint64_t)hash;
@end

@implementation PDAnimateMotionBehavior

+ (id)bezierPathFromNSString:(id)string
{
  v36 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v29 = stringCopy;
  v30 = +[OITSUBezierPath bezierPath];
  v28 = [stringCopy length];
  {
    +[PDAnimateMotionBehavior bezierPathFromNSString:]::commandCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"MLCZEmlcze"];
  }

  v4 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:stringCopy];
  v5 = 0;
  while (([v4 isAtEnd] & 1) == 0)
  {
    v31 = 0;
    v6 = [v4 scanCharactersFromSet:+[PDAnimateMotionBehavior bezierPathFromNSString:]::commandCharacterSet intoString:&v31];
    v7 = v31;
    v8 = v7;
    if ((v6 & 1) == 0)
    {

      goto LABEL_57;
    }

    v9 = [v7 length];
    if (!v9)
    {
      goto LABEL_52;
    }

    v10 = 0;
    while (1)
    {
      v11 = [v8 characterAtIndex:v10];
      scanLocation = [v4 scanLocation];
      if ((v11 & 0xFFFFFFDF) == 0x45)
      {
        break;
      }

      v13 = 0;
      v14 = v11 - 67;
      if ((v11 - 67) > 0x2A)
      {
        goto LABEL_14;
      }

      if (((1 << v14) & 0x60000000600) != 0)
      {
        v13 = 1;
      }

      else
      {
        if (((1 << v14) & 0x100000001) == 0)
        {
          goto LABEL_14;
        }

        v13 = 3;
      }

      if (v10 + 1 < v9)
      {
        goto LABEL_42;
      }

LABEL_14:
      v33 = *MEMORY[0x277CBF348];
      v34 = v33;
      v35 = v33;
      if (v13)
      {
        v15 = &v33 + 1;
        while (1)
        {
          v16 = v4;
          v32 = 0;
          if (([v16 scanDouble:&v32] & 1) == 0)
          {
            break;
          }

          *(v15 - 1) = v32;
          v32 = 0;
          if (([v16 scanDouble:&v32] & 1) == 0)
          {
            break;
          }

          *v15 = v32;

          v15 += 2;
          if (!--v13)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_42;
      }

LABEL_19:
      if (v5)
      {
        goto LABEL_42;
      }

      if (v11 <= 98)
      {
        if (v11 <= 76)
        {
          if (v11 == 67)
          {
            [v30 curveToPoint:v35 controlPoint1:v33 controlPoint2:v34];
          }

          else if (v11 == 76)
          {
            [v30 lineToPoint:v33];
          }

          goto LABEL_39;
        }

        if (v11 == 77)
        {
          [v30 moveToPoint:v33];
          goto LABEL_39;
        }

        if (v11 != 90)
        {
          goto LABEL_39;
        }

LABEL_34:
        [v30 closePath];
        goto LABEL_39;
      }

      if (v11 <= 108)
      {
        if (v11 == 99)
        {
          [v30 relativeCurveToPoint:v35 controlPoint1:v33 controlPoint2:v34];
        }

        else if (v11 == 108)
        {
          [v30 relativeLineToPoint:v33];
        }

        goto LABEL_39;
      }

      if (v11 == 109)
      {
        [v30 relativeMoveToPoint:v33];
        goto LABEL_39;
      }

      if (v11 == 122)
      {
        goto LABEL_34;
      }

LABEL_39:
      v5 = 0;
      v17 = 0;
      if (++v10 == v9)
      {
        goto LABEL_53;
      }
    }

    v18 = scanLocation + 1;
    if (scanLocation + 1 < v9)
    {
LABEL_42:
      v17 = 1;
      goto LABEL_53;
    }

    v19 = v28 - v18;
    if (v28 <= v18)
    {
LABEL_52:
      v17 = v5;
      goto LABEL_53;
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v21 = [v29 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:0 range:{v18, v19}];
    v23 = v22;

    v25 = v21 != v18 || v23 != v19;
    v17 = v25 | v5;
LABEL_53:

    v5 = v17;
  }

  if ((v5 & 1) == 0)
  {
    v26 = v30;
    goto LABEL_58;
  }

LABEL_57:
  v26 = 0;
LABEL_58:

  return v26;
}

+ (id)NSStringForBezierPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(pathCopy encoding:{"cString"), 1}];
    elementCount = [v4 elementCount];
    v7 = elementCount;
    if (elementCount >= 3 && ![v4 elementAtIndex:elementCount - 1] && objc_msgSend(v4, "elementAtIndex:", v7 - 2) == 3)
    {
      v8 = [v5 rangeOfString:@"Z" options:4];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v5 substringToIndex:v8 + 1];

        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)rotationCenter
{
  x = self->mRotationCenter.x;
  y = self->mRotationCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  if (v6 && (v7 = -[PDAnimateMotionBehavior hasPath](self, "hasPath"), v7 == [v6 hasPath]) && (!-[PDAnimateMotionBehavior hasPath](self, "hasPath") || (+[PDAnimateMotionBehavior NSStringForBezierPath:](PDAnimateMotionBehavior, "NSStringForBezierPath:", self->mPath), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "path"), v9 = objc_claimAutoreleasedReturnValue(), +[PDAnimateMotionBehavior NSStringForBezierPath:](PDAnimateMotionBehavior, "NSStringForBezierPath:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, v8, (v11 & 1) != 0)) && (v12 = -[PDAnimateMotionBehavior hasAngle](self, "hasAngle"), v12 == objc_msgSend(v6, "hasAngle")) && (!-[PDAnimateMotionBehavior hasAngle](self, "hasAngle") || (mAngle = self->mAngle, objc_msgSend(v6, "angle"), mAngle == v14)) && ((-[PDAnimateMotionBehavior pointsTypes](self, "pointsTypes"), (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (mPointsTypes = self->mPointsTypes, objc_msgSend(v6, "pointsTypes"), v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(mPointsTypes) = -[NSString isEqualToString:](mPointsTypes, "isEqualToString:", v17), v17, v15, (mPointsTypes & 1) != 0)) && (v18 = -[PDAnimateMotionBehavior hasOriginType](self, "hasOriginType"), v18 == objc_msgSend(v6, "hasOriginType")) && (!-[PDAnimateMotionBehavior hasOriginType](self, "hasOriginType") || (mOriginType = self->mOriginType, mOriginType == objc_msgSend(v6, "originType"))) && (v20 = -[PDAnimateMotionBehavior hasRotationCenter](self, "hasRotationCenter"), v20 == objc_msgSend(v6, "hasRotationCenter")) && (!-[PDAnimateMotionBehavior hasRotationCenter](self, "hasRotationCenter") || (x = self->mRotationCenter.x, y = self->mRotationCenter.y, objc_msgSend(v6, "rotationCenter"), x == v24) && y == v23) && (v25 = -[PDAnimateMotionBehavior hasPathEditMode](self, "hasPathEditMode"), v25 == objc_msgSend(v6, "hasPathEditMode")) && (!-[PDAnimateMotionBehavior hasPathEditMode](self, "hasPathEditMode") || (mPathEditMode = self->mPathEditMode, mPathEditMode == objc_msgSend(v6, "pathEditMode"))))
  {

    v29.receiver = self;
    v29.super_class = PDAnimateMotionBehavior;
    v26 = [(PDAnimateScaleBehavior *)&v29 isEqual:equalCopy];
  }

  else
  {

    v26 = 0;
  }

  return v26;
}

- (unint64_t)hash
{
  if (self->mHasAngle)
  {
    mAngle = self->mAngle;
  }

  else
  {
    mAngle = 0;
  }

  if (self->mHasOriginType)
  {
    mAngle ^= self->mOriginType;
  }

  if (self->mHasRotationCenter)
  {
    mAngle ^= self->mRotationCenter.x ^ self->mRotationCenter.y;
  }

  if (self->mHasPathEditMode)
  {
    mAngle ^= self->mPathEditMode;
  }

  v4 = [(OITSUBezierPath *)self->mPath hash];
  return mAngle + (v4 << 16) + ([(NSString *)self->mPointsTypes hash]<< 8);
}

@end