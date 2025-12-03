@interface ODITitlePoint
- (ODITitlePoint)initWithTitlePointPresentationName:(id)name state:(id)state;
- (void)mapBaseStyleFromPoint:(id)point shape:(id)shape;
- (void)mapOnePillarStyleFromPoint:(id)point shape:(id)shape;
- (void)mapRoofStyleFromPoint:(id)point shape:(id)shape;
@end

@implementation ODITitlePoint

- (ODITitlePoint)initWithTitlePointPresentationName:(id)name state:(id)state
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ODITitlePoint;
  v8 = [(ODIHorizonalList3 *)&v11 initWithState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mTitlePointPresentationName, name);
  }

  return v9;
}

- (void)mapRoofStyleFromPoint:(id)point shape:(id)shape
{
  pointCopy = point;
  shapeCopy = shape;
  [(ODIState *)self->super.mState setPresentationName:self->mTitlePointPresentationName forPointType:2];
  [ODIDrawable mapStyleFromPoint:pointCopy shape:shapeCopy state:self->super.mState];
}

- (void)mapOnePillarStyleFromPoint:(id)point shape:(id)shape
{
  pointCopy = point;
  shapeCopy = shape;
  [(ODIState *)self->super.mState setPresentationName:self->mTitlePointPresentationName forPointType:2];
  children = [pointCopy children];
  v8 = [children objectAtIndex:0];

  [ODIDrawable mapStyleFromPoint:v8 shape:shapeCopy state:self->super.mState];
}

- (void)mapBaseStyleFromPoint:(id)point shape:(id)shape
{
  pointCopy = point;
  shapeCopy = shape;
  [(ODIState *)self->super.mState setPresentationName:self->mTitlePointPresentationName forPointType:2];
  children = [pointCopy children];
  v8 = [children objectAtIndex:0];

  [ODIDrawable mapStyleFromPoint:v8 shape:shapeCopy state:self->super.mState];
}

@end