@interface PDAnimateBehavior
- (BOOL)isEqual:(id)equal;
- (PDAnimateBehavior)init;
- (id)description;
@end

@implementation PDAnimateBehavior

- (PDAnimateBehavior)init
{
  v3.receiver = self;
  v3.super_class = PDAnimateBehavior;
  return [(PDTimeNode *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  v7 = v6;
  if (v6 && ((mTgtElement = self->mTgtElement, [v6 target], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 != 0, v9, (mTgtElement == 0) == v10) ? (v14 = 0) : (v11 = self->mTgtElement) == 0 ? (v14 = 1) : (objc_msgSend(v7, "target"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[PDAnimationTarget isEqual:](v11, "isEqual:", v12), v12, v14 = (self->mTgtElement == 0) | v13), mAttributeNames = self->mAttributeNames, objc_msgSend(v7, "attributeNames"), v16 = objc_claimAutoreleasedReturnValue(), LOBYTE(mAttributeNames) = v14 | -[NSMutableArray isEqualToArray:](mAttributeNames, "isEqualToArray:", v16), v16, v7, (mAttributeNames & 1) != 0))
  {
    v19.receiver = self;
    v19.super_class = PDAnimateBehavior;
    v17 = [(PDTimeNode *)&v19 isEqual:equalCopy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDAnimateBehavior;
  v2 = [(PDTimeNode *)&v4 description];

  return v2;
}

@end