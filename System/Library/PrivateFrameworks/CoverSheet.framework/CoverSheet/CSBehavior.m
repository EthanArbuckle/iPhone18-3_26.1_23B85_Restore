@interface CSBehavior
+ (id)behavior;
+ (id)behaviorForProvider:(id)a3;
- (BOOL)isEqualToBehavior:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)reset;
- (void)unionBehavior:(id)a3;
@end

@implementation CSBehavior

+ (id)behavior
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)behaviorForProvider:(id)a3
{
  v4 = a3;
  v5 = [a1 behavior];
  [v5 setNotificationBehavior:{objc_msgSend(v4, "notificationBehavior")}];
  [v5 setRestrictedCapabilities:{objc_msgSend(v4, "restrictedCapabilities")}];
  [v5 setScrollingStrategy:{objc_msgSend(v4, "scrollingStrategy")}];
  [v5 setProximityDetectionMode:{objc_msgSend(v4, "proximityDetectionMode")}];
  v6 = v4;
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
    [v5 setIdleTimerDuration:{objc_msgSend(v8, "idleTimerDuration")}];
    [v5 setIdleTimerMode:{objc_msgSend(v8, "idleTimerMode")}];
    v9 = [v8 idleWarnMode];
  }

  else
  {
    [v5 setIdleTimerDuration:0];
    [v5 setIdleTimerMode:0];
    v9 = 0;
  }

  [v5 setIdleWarnMode:v9];

  return v5;
}

- (BOOL)isEqualToBehavior:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else if ([(CSBehavior *)v4 isMemberOfClass:objc_opt_class()]&& (notificationBehavior = self->_notificationBehavior, notificationBehavior == [(CSBehavior *)v4 notificationBehavior]) && (idleTimerDuration = self->_idleTimerDuration, idleTimerDuration == [(CSBehavior *)v4 idleTimerDuration]) && (idleTimerMode = self->_idleTimerMode, idleTimerMode == [(CSBehavior *)v4 idleTimerMode]) && (idleWarnMode = self->_idleWarnMode, idleWarnMode == [(CSBehavior *)v4 idleWarnMode]) && (scrollingStrategy = self->_scrollingStrategy, scrollingStrategy == [(CSBehavior *)v4 scrollingStrategy]) && (restrictedCapabilities = self->_restrictedCapabilities, restrictedCapabilities == [(CSBehavior *)v4 restrictedCapabilities]))
  {
    proximityDetectionMode = self->_proximityDetectionMode;
    v12 = proximityDetectionMode == [(CSBehavior *)v4 proximityDetectionMode];
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

- (void)unionBehavior:(id)a3
{
  v4 = a3;
  if (v4)
  {
    notificationBehavior = self->_notificationBehavior;
    v27 = v4;
    v6 = [v4 notificationBehavior];
    if (notificationBehavior <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = notificationBehavior;
    }

    self->_notificationBehavior = v7;
    restrictedCapabilities = self->_restrictedCapabilities;
    self->_restrictedCapabilities = [v27 restrictedCapabilities] | restrictedCapabilities;
    scrollingStrategy = self->_scrollingStrategy;
    v10 = [v27 scrollingStrategy];
    if (scrollingStrategy <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = scrollingStrategy;
    }

    self->_scrollingStrategy = v11;
    proximityDetectionMode = self->_proximityDetectionMode;
    v13 = [v27 proximityDetectionMode];
    if (proximityDetectionMode <= v13)
    {
      v14 = v13;
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
      v19 = [v15 idleTimerDuration];
      idleTimerDuration = self->_idleTimerDuration;
      idleTimerMode = self->_idleTimerMode;
      if (idleTimerDuration <= v19)
      {
        idleTimerDuration = v19;
      }

      self->_idleTimerDuration = idleTimerDuration;
      v22 = [v15 idleTimerMode];
      if (idleTimerMode <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = idleTimerMode;
      }

      self->_idleTimerMode = v23;
      idleWarnMode = self->_idleWarnMode;
      v25 = [v15 idleWarnMode];
      if (idleWarnMode <= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = idleWarnMode;
      }

      self->_idleWarnMode = v26;
    }

    v4 = v27;
  }
}

- (id)succinctDescription
{
  v2 = [(CSBehavior *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSBehavior *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end