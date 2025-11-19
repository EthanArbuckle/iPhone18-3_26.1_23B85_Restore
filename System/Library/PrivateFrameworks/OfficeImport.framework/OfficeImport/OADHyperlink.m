@interface OADHyperlink
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mTargetLocation = self->mTargetLocation;
    v6 = [v4 targetLocation];
    if (-[NSURL isEqual:](mTargetLocation, "isEqual:", v6) && (mTargetMode = self->mTargetMode, mTargetMode == [v4 targetMode]))
    {
      mAction = self->mAction;
      v9 = [v4 action];
      if ([(NSString *)mAction isEqualToString:v9])
      {
        mTooltip = self->mTooltip;
        v11 = [v4 tooltip];
        v12 = [(NSString *)mTooltip isEqualToString:v11];
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