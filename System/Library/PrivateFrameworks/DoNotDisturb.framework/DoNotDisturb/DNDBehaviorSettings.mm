@interface DNDBehaviorSettings
- (BOOL)isEqual:(id)equal;
- (DNDBehaviorSettings)initWithCoder:(id)coder;
- (id)_initWithInterruptionBehaviorSetting:(unint64_t)setting;
- (id)_initWithSettings:(id)settings;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDBehaviorSettings

- (id)_initWithSettings:(id)settings
{
  interruptionBehaviorSetting = [settings interruptionBehaviorSetting];

  return [(DNDBehaviorSettings *)self _initWithInterruptionBehaviorSetting:interruptionBehaviorSetting];
}

- (id)_initWithInterruptionBehaviorSetting:(unint64_t)setting
{
  v5.receiver = self;
  v5.super_class = DNDBehaviorSettings;
  result = [(DNDBehaviorSettings *)&v5 init];
  if (result)
  {
    *(result + 1) = setting;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      interruptionBehaviorSetting = [(DNDBehaviorSettings *)self interruptionBehaviorSetting];
      interruptionBehaviorSetting2 = [(DNDBehaviorSettings *)v5 interruptionBehaviorSetting];

      v8 = interruptionBehaviorSetting == interruptionBehaviorSetting2;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableBehaviorSettings alloc];

  return [(DNDBehaviorSettings *)v4 _initWithSettings:self];
}

- (DNDBehaviorSettings)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"interruptionBehaviorSetting"];

  return [(DNDBehaviorSettings *)self _initWithInterruptionBehaviorSetting:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDBehaviorSettings interruptionBehaviorSetting](self forKey:{"interruptionBehaviorSetting"), @"interruptionBehaviorSetting"}];
}

@end