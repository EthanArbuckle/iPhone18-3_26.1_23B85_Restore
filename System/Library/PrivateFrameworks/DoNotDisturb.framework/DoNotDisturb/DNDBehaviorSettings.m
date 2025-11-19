@interface DNDBehaviorSettings
- (BOOL)isEqual:(id)a3;
- (DNDBehaviorSettings)initWithCoder:(id)a3;
- (id)_initWithInterruptionBehaviorSetting:(unint64_t)a3;
- (id)_initWithSettings:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDBehaviorSettings

- (id)_initWithSettings:(id)a3
{
  v4 = [a3 interruptionBehaviorSetting];

  return [(DNDBehaviorSettings *)self _initWithInterruptionBehaviorSetting:v4];
}

- (id)_initWithInterruptionBehaviorSetting:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DNDBehaviorSettings;
  result = [(DNDBehaviorSettings *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDBehaviorSettings *)self interruptionBehaviorSetting];
      v7 = [(DNDBehaviorSettings *)v5 interruptionBehaviorSetting];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = DNDStringFromInterruptionBehaviorSetting([(DNDBehaviorSettings *)self interruptionBehaviorSetting]);
  v6 = [v3 stringWithFormat:@"<%@: %p interruptionBehaviorSetting: %@>", v4, self, v5];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableBehaviorSettings alloc];

  return [(DNDBehaviorSettings *)v4 _initWithSettings:self];
}

- (DNDBehaviorSettings)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"interruptionBehaviorSetting"];

  return [(DNDBehaviorSettings *)self _initWithInterruptionBehaviorSetting:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDBehaviorSettings interruptionBehaviorSetting](self forKey:{"interruptionBehaviorSetting"), @"interruptionBehaviorSetting"}];
}

@end