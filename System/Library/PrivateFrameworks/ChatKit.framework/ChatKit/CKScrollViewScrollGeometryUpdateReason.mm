@interface CKScrollViewScrollGeometryUpdateReason
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUpdateReason:(id)reason;
- (CKScrollViewScrollGeometryUpdateReason)initWithReasonType:(id)type animationProperties:(id)properties;
@end

@implementation CKScrollViewScrollGeometryUpdateReason

- (CKScrollViewScrollGeometryUpdateReason)initWithReasonType:(id)type animationProperties:(id)properties
{
  typeCopy = type;
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = CKScrollViewScrollGeometryUpdateReason;
  v9 = [(CKScrollViewScrollGeometryUpdateReason *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reasonType, type);
    objc_storeStrong(&v10->_animationProperties, properties);
  }

  return v10;
}

- (BOOL)isEqualToUpdateReason:(id)reason
{
  reasonCopy = reason;
  if ([(NSString *)self->_reasonType isEqualToString:reasonCopy[1]])
  {
    v5 = [(CKScrollViewAnimationProperties *)self->_animationProperties isEqual:reasonCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CKScrollViewScrollGeometryUpdateReason *)self isEqualToUpdateReason:equalCopy];

  return v5;
}

@end