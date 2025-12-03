@interface OADHyperlink
- (BOOL)isEqual:(id)equal;
- (OADHyperlink)init;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADHyperlink

- (OADHyperlink)init
{
  v3.receiver = self;
  v3.super_class = OADHyperlink;
  result = [(OADHyperlink *)&v3 init];
  if (result)
  {
    result->mTargetMode = 0;
    *&result->mDoEndSound = 0;
    result->mDoAddToHistory = 1;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->mTargetLocation hash]^ self->mTargetMode;
  v4 = [(NSString *)self->mAction hash];
  return v3 ^ v4 ^ [(NSString *)self->mTooltip hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mTargetLocation = self->mTargetLocation;
    targetLocation = [equalCopy targetLocation];
    if (-[NSURL isEqual:](mTargetLocation, "isEqual:", targetLocation) && (mTargetMode = self->mTargetMode, mTargetMode == [equalCopy targetMode]))
    {
      mAction = self->mAction;
      action = [equalCopy action];
      if ([(NSString *)mAction isEqualToString:action])
      {
        mTooltip = self->mTooltip;
        tooltip = [equalCopy tooltip];
        v12 = [(NSString *)mTooltip isEqualToString:tooltip];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADHyperlink;
  v2 = [(OADHyperlink *)&v4 description];

  return v2;
}

@end