@interface CABasicAnimation(SendAnimation)
+ (id)ck_positionXAnimationForSendAnimationType:()SendAnimation beginTime:initialPositionX:finalPositionX:durationScaleFactor:delegate:;
+ (id)ck_positionYAnimationForSendAnimationType:()SendAnimation beginTime:initialPositionY:finalPositionY:durationScaleFactor:delegate:;
@end

@implementation CABasicAnimation(SendAnimation)

+ (id)ck_positionXAnimationForSendAnimationType:()SendAnimation beginTime:initialPositionX:finalPositionX:durationScaleFactor:delegate:
{
  v13 = a8;
  if (a7 == 1)
  {
    v14 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
    [v14 setAdditive:0];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v14 setFromValue:v23];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v14 setToValue:v24];

    [v14 setMass:1.0];
    [v14 setStiffness:141.75909];
    [v14 setDamping:17.35028];
    LODWORD(v25) = 1.0;
    [v14 setSpeed:v25];
    [v14 settlingDuration];
    [v14 setDuration:?];
  }

  else if (a7)
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.x"];
    LODWORD(v15) = 1057668432;
    LODWORD(v16) = 1058306785;
    LODWORD(v17) = 1.0;
    v18 = [MEMORY[0x1E69793D0] functionWithControlPoints:v15 :0.0 :v16 :v17];
    [v14 setTimingFunction:v18];

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:a3 - a2];
    [v14 setByValue:v19];

    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 sendAnimationDuration];
    [v14 setDuration:v21 * a4];

    LODWORD(v22) = 2.0;
    [v14 setSpeed:v22];
  }

  [v14 setDelegate:v13];
  [v14 setBeginTime:self];
  [v14 setRemovedOnCompletion:0];
  [v14 setFillMode:*MEMORY[0x1E69797E0]];
  [v14 ck_requestHighFrameRate];

  return v14;
}

+ (id)ck_positionYAnimationForSendAnimationType:()SendAnimation beginTime:initialPositionY:finalPositionY:durationScaleFactor:delegate:
{
  v13 = a8;
  if (a7 == 1)
  {
    v14 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
    [v14 setAdditive:0];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v14 setFromValue:v26];

    v27 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v14 setToValue:v27];

    [v14 setMass:1.0];
    [v14 setStiffness:141.75909];
    [v14 setDamping:17.35028];
    LODWORD(v28) = 1.0;
    [v14 setSpeed:v28];
    [v14 settlingDuration];
    [v14 setDuration:?];
    selfCopy = self + 0.055;
    v24 = v14;
    goto LABEL_5;
  }

  if (!a7)
  {
    v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.y"];
    LODWORD(v15) = 1056629064;
    LODWORD(v16) = 1035276987;
    LODWORD(v17) = 1053793305;
    LODWORD(v18) = 1063767565;
    v19 = [MEMORY[0x1E69793D0] functionWithControlPoints:v15 :v16 :v17 :v18];
    [v14 setTimingFunction:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:a3 - a2];
    [v14 setByValue:v20];

    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 sendAnimationDuration];
    [v14 setDuration:v22 * a4];

    LODWORD(v23) = 2.0;
    [v14 setSpeed:v23];
    v24 = v14;
    selfCopy = self;
LABEL_5:
    [v24 setBeginTime:selfCopy];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  [v14 setDelegate:v13];
  [v14 setRemovedOnCompletion:0];
  [v14 setFillMode:*MEMORY[0x1E69797E0]];
  [v14 ck_requestHighFrameRate];

  return v14;
}

@end