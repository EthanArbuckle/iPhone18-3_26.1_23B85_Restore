@interface UIBezierPath(RoundedCorner)
- (void)bkui_bezierPathAddRoundedCorner:()RoundedCorner withRadius:followingAngle:;
@end

@implementation UIBezierPath(RoundedCorner)

- (void)bkui_bezierPathAddRoundedCorner:()RoundedCorner withRadius:followingAngle:
{
  [self currentPoint];
  v10 = v9;
  [self currentPoint];
  v12 = v11;
  v13 = __sincos_stret(a3);
  v14 = fabs(v13.__cosval * a2);
  v15 = fabs(v13.__sinval * a2);
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      v16 = v14 + v10;
      v17 = v12 - v15;
      goto LABEL_12;
    }

    if (a5 == 8)
    {
      v16 = v10 - v15;
      v17 = v14 + v12;
      v18 = 4.71238898;
      goto LABEL_10;
    }

LABEL_8:
    NSLog(&cfstr_UnsupportedRec.isa, a5);
    return;
  }

  if (a5 == 1)
  {
    v16 = v15 + v10;
    v17 = v14 + v12;
    v18 = 1.57079633;
    goto LABEL_10;
  }

  if (a5 != 2)
  {
    goto LABEL_8;
  }

  v16 = v14 + v10;
  v17 = v15 + v12;
  v18 = 3.14159265;
LABEL_10:
  a3 = a3 + v18;
LABEL_12:

  [self addArcWithCenter:1 radius:v16 startAngle:v17 endAngle:a2 clockwise:{a3, a3 + 1.57079633}];
}

@end