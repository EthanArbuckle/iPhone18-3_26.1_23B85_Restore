@interface CSBehavior
+ (id)behavior;
+ (id)behaviorForProvider:(id)provider;
- (BOOL)isEqualToBehavior:(id)behavior;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)reset;
- (void)unionBehavior:(id)behavior;
@end

@implementation CSBehavior

+ (id)behavior
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)behaviorForProvider:(id)provider
{
  providerCopy = provider;
  behavior = [self behavior];
  [behavior setNotificationBehavior:{objc_msgSend(providerCopy, "notificationBehavior")}];
  [behavior setRestrictedCapabilities:{objc_msgSend(providerCopy, "restrictedCapabilities")}];
  [behavior setScrollingStrategy:{objc_msgSend(providerCopy, "scrollingStrategy")}];
  [behavior setProximityDetectionMode:{objc_msgSend(providerCopy, "proximityDetectionMode")}];
  v6 = providerCopy;
  if (objc_opt_respondsToSelector())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [behavior setIdleTimerDuration:{objc_msgSend(v8, "idleTimerDuration")}];
    [behavior setIdleTimerMode:{objc_msgSend(v8, "idleTimerMode")}];
    idleWarnMode = [v8 idleWarnMode];
  }

  else
  {
    [behavior setIdleTimerDuration:0];
    [behavior setIdleTimerMode:0];
    idleWarnMode = 0;
  }

  [behavior setIdleWarnMode:idleWarnMode];

  return behavior;
}

- (BOOL)isEqualToBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (self == behaviorCopy)
  {
    v12 = 1;
  }

  else if ([(CSBehavior *)behaviorCopy isMemberOfClass:objc_opt_class()]&& (notificationBehavior = self->_notificationBehavior, notificationBehavior == [(CSBehavior *)behaviorCopy notificationBehavior]) && (idleTimerDuration = self->_idleTimerDuration, idleTimerDuration == [(CSBehavior *)behaviorCopy idleTimerDuration]) && (idleTimerMode = self->_idleTimerMode, idleTimerMode == [(CSBehavior *)behaviorCopy idleTimerMode]) && (idleWarnMode = self->_idleWarnMode, idleWarnMode == [(CSBehavior *)behaviorCopy idleWarnMode]) && (scrollingStrategy = self->_scrollingStrategy, scrollingStrategy == [(CSBehavior *)behaviorCopy scrollingStrategy]) && (restrictedCapabilities = self->_restrictedCapabilities, restrictedCapabilities == [(CSBehavior *)behaviorCopy restrictedCapabilities]))
  {
    proximityDetectionMode = self->_proximityDetectionMode;
    v12 = proximityDetectionMode == [(CSBehavior *)behaviorCopy proximityDetectionMode];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)reset
{
  self->_proximityDetectionMode = 0;
  *&self->_restrictedCapabilities = 0u;
  *&self->_idleWarnMode = 0u;
  *&self->_idleTimerDuration = 0u;
}

- (void)unionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (behaviorCopy)
  {
    notificationBehavior = self->_notificationBehavior;
    v27 = behaviorCopy;
    notificationBehavior = [behaviorCopy notificationBehavior];
    if (notificationBehavior <= notificationBehavior)
    {
      v7 = notificationBehavior;
    }

    else
    {
      v7 = notificationBehavior;
    }

    self->_notificationBehavior = v7;
    restrictedCapabilities = self->_restrictedCapabilities;
    self->_restrictedCapabilities = [v27 restrictedCapabilities] | restrictedCapabilities;
    scrollingStrategy = self->_scrollingStrategy;
    scrollingStrategy = [v27 scrollingStrategy];
    if (scrollingStrategy <= scrollingStrategy)
    {
      v11 = scrollingStrategy;
    }

    else
    {
      v11 = scrollingStrategy;
    }

    self->_scrollingStrategy = v11;
    proximityDetectionMode = self->_proximityDetectionMode;
    proximityDetectionMode = [v27 proximityDetectionMode];
    if (proximityDetectionMode <= proximityDetectionMode)
    {
      v14 = proximityDetectionMode;
    }

    else
    {
      v14 = proximityDetectionMode;
    }

    self->_proximityDetectionMode = v14;
    v15 = v27;
    v16 = objc_opt_respondsToSelector();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v16)
    {
      idleTimerDuration = [v15 idleTimerDuration];
      idleTimerDuration = self->_idleTimerDuration;
      idleTimerMode = self->_idleTimerMode;
      if (idleTimerDuration <= idleTimerDuration)
      {
        idleTimerDuration = idleTimerDuration;
      }

      self->_idleTimerDuration = idleTimerDuration;
      idleTimerMode = [v15 idleTimerMode];
      if (idleTimerMode <= idleTimerMode)
      {
        v23 = idleTimerMode;
      }

      else
      {
        v23 = idleTimerMode;
      }

      self->_idleTimerMode = v23;
      idleWarnMode = self->_idleWarnMode;
      idleWarnMode = [v15 idleWarnMode];
      if (idleWarnMode <= idleWarnMode)
      {
        v26 = idleWarnMode;
      }

      else
      {
        v26 = idleWarnMode;
      }

      self->_idleWarnMode = v26;
    }

    behaviorCopy = v27;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSBehavior *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromIdleTimerDuration();
  v5 = [v3 appendObject:v4 withName:@"idleTimerDuration"];

  v6 = NSStringFromSBFIdleTimerMode();
  v7 = [v3 appendObject:v6 withName:@"idleTimerMode"];

  v8 = NSStringFromIdleWarnMode();
  v9 = [v3 appendObject:v8 withName:@"idleWarnMode"];

  scrollingStrategy = self->_scrollingStrategy;
  if (scrollingStrategy > 3)
  {
    v11 = @"(none)";
  }

  else
  {
    v11 = off_27838CB58[scrollingStrategy];
  }

  v12 = [v3 appendObject:v11 withName:@"scrollingStrategy"];
  notificationBehavior = self->_notificationBehavior;
  if (notificationBehavior > 4)
  {
    v14 = @"(none)";
  }

  else
  {
    v14 = off_27838CB78[notificationBehavior];
  }

  v15 = [v3 appendObject:v14 withName:@"notificationBehavior"];
  v16 = NSStringFromCoverSheetCapability(self->_restrictedCapabilities);
  v17 = [v3 appendObject:v16 withName:@"restrictedCapabilities"];

  proximityDetectionMode = self->_proximityDetectionMode;
  if (proximityDetectionMode > 2)
  {
    v19 = @"(none)";
  }

  else
  {
    v19 = off_27838CBA0[proximityDetectionMode];
  }

  v20 = [v3 appendObject:v19 withName:@"proxMode"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSBehavior *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end