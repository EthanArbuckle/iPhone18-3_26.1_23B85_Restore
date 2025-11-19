@interface CKScrollViewScrollGeometryUpdateReason
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUpdateReason:(id)a3;
- (CKScrollViewScrollGeometryUpdateReason)initWithReasonType:(id)a3 animationProperties:(id)a4;
@end

@implementation CKScrollViewScrollGeometryUpdateReason

- (CKScrollViewScrollGeometryUpdateReason)initWithReasonType:(id)a3 animationProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKScrollViewScrollGeometryUpdateReason;
  v9 = [(CKScrollViewScrollGeometryUpdateReason *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reasonType, a3);
    objc_storeStrong(&v10->_animationProperties, a4);
  }

  return v10;
}

- (BOOL)isEqualToUpdateReason:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_reasonType isEqualToString:v4[1]])
  {
    v5 = [(CKScrollViewAnimationProperties *)self->_animationProperties isEqual:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CKScrollViewScrollGeometryUpdateReason *)self isEqualToUpdateReason:v4];

  return v5;
}

@end