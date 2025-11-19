@interface ODITitlePoint
- (ODITitlePoint)initWithTitlePointPresentationName:(id)a3 state:(id)a4;
- (void)mapBaseStyleFromPoint:(id)a3 shape:(id)a4;
- (void)mapOnePillarStyleFromPoint:(id)a3 shape:(id)a4;
- (void)mapRoofStyleFromPoint:(id)a3 shape:(id)a4;
@end

@implementation ODITitlePoint

- (ODITitlePoint)initWithTitlePointPresentationName:(id)a3 state:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ODITitlePoint;
  v8 = [(ODIHorizonalList3 *)&v11 initWithState:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mTitlePointPresentationName, a3);
  }

  return v9;
}

- (void)mapRoofStyleFromPoint:(id)a3 shape:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(ODIState *)self->super.mState setPresentationName:self->mTitlePointPresentationName forPointType:2];
  [ODIDrawable mapStyleFromPoint:v7 shape:v6 state:self->super.mState];
}

- (void)mapOnePillarStyleFromPoint:(id)a3 shape:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(ODIState *)self->super.mState setPresentationName:self->mTitlePointPresentationName forPointType:2];
  v7 = [v9 children];
  v8 = [v7 objectAtIndex:0];

  [ODIDrawable mapStyleFromPoint:v8 shape:v6 state:self->super.mState];
}

- (void)mapBaseStyleFromPoint:(id)a3 shape:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(ODIState *)self->super.mState setPresentationName:self->mTitlePointPresentationName forPointType:2];
  v7 = [v9 children];
  v8 = [v7 objectAtIndex:0];

  [ODIDrawable mapStyleFromPoint:v8 shape:v6 state:self->super.mState];
}

@end