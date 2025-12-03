@interface PDTimeNode
- (BOOL)isEqual:(id)equal;
- (PDTimeNode)init;
- (double)duration;
- (id)description;
- (int)repeatDuration;
- (unint64_t)hash;
- (void)setGroupIdValue:(int)value;
@end

@implementation PDTimeNode

- (PDTimeNode)init
{
  v3.receiver = self;
  v3.super_class = PDTimeNode;
  return [(PDTimeNode *)&v3 init];
}

- (int)repeatDuration
{
  if (self->mRepeatDuration == -1)
  {
    return 0;
  }

  else
  {
    return self->mRepeatDuration;
  }
}

- (double)duration
{
  result = self->mDuration;
  if (result == -1.0)
  {
    return 0.0;
  }

  return result;
}

- (void)setGroupIdValue:(int)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&value];
  stringValue = [v4 stringValue];

  [(PDTimeNode *)self setGroupId:stringValue];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  v7 = v6;
  if (v6
    && (mType = self->mType, mType == [v6 type])
    && (mAnimationPresetClass = self->mAnimationPresetClass, mAnimationPresetClass == [v7 animationPresetClass])
    && (mPresetId = self->mPresetId, mPresetId == [v7 presetId])
    && (mPresetSubType = self->mPresetSubType, mPresetSubType == [v7 presetSubType])
    && (mRepeatCount = self->mRepeatCount, mRepeatCount == [v7 repeatCount])
    && (mRepeatDuration = self->mRepeatDuration, mRepeatDuration == [v7 repeatDuration])
    && (mRestartType = self->mRestartType, mRestartType == [v7 restartType])
    && (mSpeed = self->mSpeed, [v7 speed], mSpeed == v16)
    && (mAcceleration = self->mAcceleration, [v7 acceleration], mAcceleration == v18)
    && (mDeceleration = self->mDeceleration, [v7 deceleration], mDeceleration == v20)
    && (mDisplay = self->mDisplay, mDisplay == [v7 display])
    && (mStartTimeConditions = self->mStartTimeConditions, [v7 startTimeConditions], v23 = objc_claimAutoreleasedReturnValue(), LOBYTE(mStartTimeConditions) = (mStartTimeConditions == 0) ^ (v23 != 0), v23, (mStartTimeConditions & 1) != 0)
    && ((v24 = self->mStartTimeConditions) == 0 || ([v7 startTimeConditions], v25 = objc_claimAutoreleasedReturnValue(), v26 = -[NSMutableArray isEqual:](v24, "isEqual:", v25), v25, (v26 & 1) != 0))
    && (mEndTimeConditions = self->mEndTimeConditions, [v7 endTimeConditions], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 != 0, v28, (mEndTimeConditions == 0) != v29)
    && ((v30 = self->mEndTimeConditions) == 0 || ([v7 endTimeConditions], v31 = objc_claimAutoreleasedReturnValue(), v32 = -[NSMutableArray isEqual:](v30, "isEqual:", v31), v31, (v32 & 1) != 0))
    && (mChildTimeNodeList = self->mChildTimeNodeList, [v7 childTimeNodeList], v34 = objc_claimAutoreleasedReturnValue(), v35 = v34 != 0, v34, (mChildTimeNodeList == 0) != v35)
    && ((v36 = self->mChildTimeNodeList) == 0 || ([v7 childTimeNodeList], v37 = objc_claimAutoreleasedReturnValue(), v38 = -[NSMutableArray isEqual:](v36, "isEqual:", v37), v37, (v38 & 1) != 0))
    && (mSubTimeNodeList = self->mSubTimeNodeList, [v7 subTimeNodeList], v40 = objc_claimAutoreleasedReturnValue(), v41 = v40 != 0, v40, (mSubTimeNodeList == 0) != v41)
    && ((v42 = self->mSubTimeNodeList) == 0 || ([v7 subTimeNodeList], v43 = objc_claimAutoreleasedReturnValue(), v44 = -[NSMutableArray isEqual:](v42, "isEqual:", v43), v43, (v44 & 1) != 0))
    && (mGroupId = self->mGroupId, [v7 groupId], v46 = objc_claimAutoreleasedReturnValue(), v47 = v46 != 0, v46, (mGroupId == 0) != v47)
    && ((v48 = self->mGroupId) == 0 || ([v7 groupId], v49 = objc_claimAutoreleasedReturnValue(), v50 = -[NSString isEqualToString:](v48, "isEqualToString:", v49), v49, v50))
    && (mHasDuration = self->mHasDuration, mHasDuration == [v7 hasDuration])
    && (!self->mHasDuration || (mDuration = self->mDuration, [v7 duration], mDuration == v53))
    && (v54 = self->mIterate, [v7 iterate], v55 = objc_claimAutoreleasedReturnValue(), v56 = v55 != 0, v55, (v54 == 0) != v56))
  {
    mIterate = self->mIterate;
    if (mIterate)
    {
      iterate = [v7 iterate];
      v59 = [(PDIterate *)mIterate isEqual:iterate];
    }

    else
    {
      v59 = 1;
    }
  }

  else
  {
    v59 = 0;
  }

  return v59 & 1;
}

- (unint64_t)hash
{
  v3 = (self->mPresetId << 8) + (self->mType << 16);
  v4 = [(NSMutableArray *)self->mStartTimeConditions count];
  v5 = [(NSMutableArray *)self->mEndTimeConditions count]^ v4;
  v6 = [(NSMutableArray *)self->mChildTimeNodeList count];
  return (v5 ^ v6 ^ [(NSMutableArray *)self->mSubTimeNodeList count]) + v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDTimeNode;
  v2 = [(PDTimeNode *)&v4 description];

  return v2;
}

@end