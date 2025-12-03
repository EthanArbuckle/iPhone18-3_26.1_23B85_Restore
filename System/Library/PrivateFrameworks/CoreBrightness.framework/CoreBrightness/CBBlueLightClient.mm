@interface CBBlueLightClient
- (BOOL)getBlueLightStatus:(id *)status;
- (BOOL)getCCT:(float *)t;
- (BOOL)getCCTRange:(id *)range;
- (BOOL)getDefaultCCTRange:(id *)range;
- (BOOL)getStrength:(float *)strength;
- (BOOL)getWarningCCT:(float *)t;
- (BOOL)getWarningStrength:(float *)strength;
- (BOOL)parseStatusDictionary:(id)dictionary intoStruct:(id *)struct;
- (BOOL)setActive:(BOOL)active;
- (BOOL)setCCT:(float)t withPeriod:(float)period commit:(BOOL)commit;
- (BOOL)setCCTRange:(id *)range;
- (BOOL)setEnabled:(BOOL)enabled withOption:(int)option;
- (BOOL)setMode:(int)mode;
- (BOOL)setSchedule:(id *)schedule;
- (BOOL)setStrength:(float)strength withPeriod:(float)period commit:(BOOL)commit;
- (CBBlueLightClient)init;
- (CBBlueLightClient)initWithClientObj:(id)obj;
- (void)dealloc;
- (void)setStatusNotificationBlock:(id)block;
- (void)suspendNotifications:(BOOL)notifications force:(BOOL)force;
@end

@implementation CBBlueLightClient

- (CBBlueLightClient)initWithClientObj:(id)obj
{
  selfCopy = self;
  v8 = a2;
  objCopy = obj;
  if (!obj)
  {
    return 0;
  }

  v6.receiver = selfCopy;
  v6.super_class = CBBlueLightClient;
  selfCopy = [(CBBlueLightClient *)&v6 init];
  if (selfCopy)
  {
    selfCopy->bsc = objCopy;
    MEMORY[0x1E69E5928](selfCopy->bsc);
    v5 = [(BrightnessSystemClient *)selfCopy->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v5)
    {
      v3 = [objc_msgSend(v5 objectForKey:{@"SupportsNightMode", "BOOLValue"}];
      selfCopy->_supported = v3;
      MEMORY[0x1E69E5920](v5);
    }

    selfCopy->ownsClient = 0;
  }

  return selfCopy;
}

- (CBBlueLightClient)init
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = CBBlueLightClient;
  selfCopy = [(CBBlueLightClient *)&v6 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v2 = objc_alloc_init(BrightnessSystemClient);
  selfCopy->bsc = v2;
  if (selfCopy->bsc)
  {
    v5 = [(BrightnessSystemClient *)selfCopy->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v5)
    {
      v3 = [objc_msgSend(v5 objectForKey:{@"SupportsNightMode", "BOOLValue"}];
      selfCopy->_supported = v3;
      MEMORY[0x1E69E5920](v5);
    }

    selfCopy->ownsClient = 1;
    return selfCopy;
  }

  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  objc_sync_enter(self);
  if (selfCopy->bsc)
  {
    if (selfCopy->ownsClient)
    {
      [(BrightnessSystemClient *)selfCopy->bsc registerNotificationBlock:0 forProperties:?];
    }

    MEMORY[0x1E69E5920](selfCopy->bsc);
  }

  objc_sync_exit(self);
  v3.receiver = selfCopy;
  v3.super_class = CBBlueLightClient;
  [(CBBlueLightClient *)&v3 dealloc];
}

- (BOOL)setActive:(BOOL)active
{
  v6 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:active];
    if (v5)
    {
      v6 = [(BrightnessSystemClient *)self->bsc setProperty:v5 forKey:@"AutoBlueReductionEnabled"];
      MEMORY[0x1E69E5920](v5);
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (BOOL)setEnabled:(BOOL)enabled withOption:(int)option
{
  v9 = 0;
  objc_sync_enter(self);
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:enabled];
  if (v8)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:option];
    if (v7)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"BlueReductionEnabledValue", v7, @"BlueReductionEnabledOption", 0}];
      if (v6)
      {
        v9 = [(BrightnessSystemClient *)self->bsc setProperty:v6 forKey:@"BlueReductionEnabled"];
        MEMORY[0x1E69E5920](v6);
      }

      MEMORY[0x1E69E5920](v7);
    }

    MEMORY[0x1E69E5920](v8);
  }

  objc_sync_exit(self);
  return v9;
}

- (BOOL)setMode:(int)mode
{
  selfCopy = self;
  v9 = a2;
  modeCopy = mode;
  v7 = 0;
  objc_sync_enter(self);
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:modeCopy];
  if (v6)
  {
    v7 = [(BrightnessSystemClient *)selfCopy->bsc setProperty:v6 forKey:@"BlueReductionMode"];
    MEMORY[0x1E69E5920](v6);
  }

  if (v7 && modeCopy == 1)
  {
    memset(__b, 0, 0x28uLL);
    v7 = [(CBBlueLightClient *)selfCopy getBlueLightStatus:__b];
    if (v7)
    {
      v7 = __b[2] & 1;
    }
  }

  objc_sync_exit(self);
  return v7;
}

- (BOOL)setSchedule:(id *)schedule
{
  v9 = 0;
  if (schedule)
  {
    objc_sync_enter(self);
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    if (v8)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:schedule->var1.var0];
      if (v7)
      {
        [v8 setObject:v7 forKey:@"DayStartHour"];
        MEMORY[0x1E69E5920](v7);
      }

      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:schedule->var1.var1];
      if (v6)
      {
        [v8 setObject:v6 forKey:@"DayStartMinute"];
        MEMORY[0x1E69E5920](v6);
      }

      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:schedule->var0.var0];
      if (v5)
      {
        [v8 setObject:v5 forKey:@"NightStartHour"];
        MEMORY[0x1E69E5920](v5);
      }

      v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:schedule->var0.var1];
      if (v4)
      {
        [v8 setObject:v4 forKey:@"NightStartMinute"];
        MEMORY[0x1E69E5920](v4);
      }

      if ([v8 count] == 4)
      {
        v9 = [(BrightnessSystemClient *)self->bsc setProperty:v8 forKey:@"BlueLightReductionSchedule"];
      }

      MEMORY[0x1E69E5920](v8);
    }

    objc_sync_exit(self);
  }

  return v9;
}

- (BOOL)parseStatusDictionary:(id)dictionary intoStruct:(id *)struct
{
  v8 = 0;
  struct->var0 = [objc_msgSend(dictionary objectForKey:{@"AutoBlueReductionEnabled", "intValue"}] != 0;
  struct->var6 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionAvailable", "intValue"}] != 0;
  v6 = 0;
  if (struct->var6)
  {
    v6 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionEnabled", "intValue"}] != 0;
  }

  struct->var1 = v6;
  if (struct->var6)
  {
    v5 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionMode", "intValue"}];
  }

  else
  {
    v5 = 0;
  }

  struct->var3 = v5;
  struct->var2 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionSunScheduleAllowed", "intValue"}] != 0;
  v7 = [dictionary objectForKey:@"BlueLightReductionSchedule"];
  if (v7)
  {
    struct->var4.var0.var0 = [objc_msgSend(v7 objectForKey:{@"NightStartHour", "intValue"}];
    struct->var4.var0.var1 = [objc_msgSend(v7 objectForKey:{@"NightStartMinute", "intValue"}];
    struct->var4.var1.var0 = [objc_msgSend(v7 objectForKey:{@"DayStartHour", "intValue"}];
    struct->var4.var1.var1 = [objc_msgSend(v7 objectForKey:{@"DayStartMinute", "intValue"}];
    v8 = 1;
  }

  struct->var5 = [objc_msgSend(dictionary objectForKey:{@"BlueLightReductionDisableFlags", "unsignedLongValue"}];
  return v8 & 1;
}

- (BOOL)getBlueLightStatus:(id *)status
{
  selfCopy = self;
  v9 = a2;
  statusCopy = status;
  v7 = 0;
  objc_sync_enter(self);
  if (statusCopy)
  {
    v6 = [(BrightnessSystemClient *)selfCopy->bsc copyPropertyForKey:@"CBBlueReductionStatus"];
    if (v6)
    {
      memset(__b, 0, 0x28uLL);
      v7 = [(CBBlueLightClient *)selfCopy parseStatusDictionary:v6 intoStruct:__b];
      MEMORY[0x1E69E5920](v6);
      if (v7)
      {
        memcpy(statusCopy, __b, sizeof($D82A08470DEB99723CE1681A229FC711));
      }
    }
  }

  objc_sync_exit(self);
  return v7;
}

void __40__CBBlueLightClient_enableNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a1;
  if (([a2 isEqualToString:@"CBBlueReductionStatus"] & 1) != 0 && (*(*(a1 + 32) + 25) & 1) != 0 && *(*(a1 + 32) + 16))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 0, sizeof(__b));
      [*(a1 + 32) parseStatusDictionary:v14 intoStruct:__b];
      queue = dispatch_get_global_queue(25, 0);
      v5 = MEMORY[0x1E69E9820];
      v6 = -1073741824;
      v7 = 0;
      v8 = __40__CBBlueLightClient_enableNotifications__block_invoke_2;
      v9 = &unk_1E867B8B8;
      v10 = *(a1 + 32);
      memcpy(v11, __b, sizeof(v11));
      dispatch_async(queue, &v5);
    }
  }
}

uint64_t __40__CBBlueLightClient_enableNotifications__block_invoke_2(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  memset(__b, 0, sizeof(__b));
  memcpy(__b, (a1 + 40), sizeof(__b));
  (*(*(*(a1 + 32) + 16) + 16))();
  return objc_sync_exit(obj);
}

- (void)suspendNotifications:(BOOL)notifications force:(BOOL)force
{
  objc_sync_enter(self);
  if (self->notificationActive)
  {
    if (notifications)
    {
      [(CBBlueLightClient *)self disableNotifications];
    }

    else if (self->clientBlock && force)
    {
      [(CBBlueLightClient *)self enableNotifications];
    }
  }

  else if (!notifications && self->clientBlock)
  {
    [(CBBlueLightClient *)self enableNotifications];
  }

  objc_sync_exit(self);
}

- (void)setStatusNotificationBlock:(id)block
{
  objc_sync_enter(self);
  if (self->clientBlock)
  {
    MEMORY[0x1E69E5920](self->clientBlock);
    self->clientBlock = 0;
  }

  if (block)
  {
    self->clientBlock = [block copy];
    [(CBBlueLightClient *)self suspendNotifications:0 force:1];
  }

  else
  {
    [(CBBlueLightClient *)self suspendNotifications:1 force:1];
  }

  objc_sync_exit(self);
}

- (BOOL)getDefaultCCTRange:(id *)range
{
  v8 = 0;
  if (self->rangeSet)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"BlueLightReductionCCTRange"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count] == 3)
      {
        [objc_msgSend(v7 objectAtIndex:{0), "floatValue"}];
        self->defaultCctRange.minCCT = v3;
        [objc_msgSend(v7 objectAtIndex:{1), "floatValue"}];
        self->defaultCctRange.midCCT = v4;
        [objc_msgSend(v7 objectAtIndex:{2), "floatValue"}];
        self->defaultCctRange.maxCCT = v5;
        self->rangeSet = 1;
        v8 = 1;
      }

      MEMORY[0x1E69E5920](v7);
    }
  }

  if (v8)
  {
    if (range)
    {
      *&range->var0 = *&self->defaultCctRange.minCCT;
      range->var2 = self->defaultCctRange.midCCT;
    }

    if (!self->rangeOverridden)
    {
      *&self->cctRange.minCCT = *&self->defaultCctRange.minCCT;
      self->cctRange.midCCT = self->defaultCctRange.midCCT;
    }
  }

  return v8;
}

- (BOOL)getCCT:(float *)t
{
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"BlueLightReductionCCTTargetKey"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v6 objectForKey:@"BlueLightReductionCCTTargetValue"];
      if (v5)
      {
        [v5 floatValue];
        if (t)
        {
          *t = v3;
        }

        v7 = 1;
      }
    }

    MEMORY[0x1E69E5920](v6);
  }

  return v7;
}

- (BOOL)setCCT:(float)t withPeriod:(float)period commit:(BOOL)commit
{
  selfCopy = self;
  v21 = a2;
  tCopy = t;
  periodCopy = period;
  commitCopy = commit;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v17 = [(CBBlueLightClient *)self getDefaultCCTRange:&v15];
  if (!v17)
  {
    return v17;
  }

  tCopy = fmaxf(tCopy, *&v15);
  tCopy = fminf(tCopy, *(&v15 + 1));
  if (periodCopy < 0.0)
  {
    periodCopy = -1.0;
  }

  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = tCopy;
  v14 = [v5 initWithFloat:v6];
  v7 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v8 = periodCopy;
  v13 = [v7 initWithFloat:v8];
  v9 = objc_alloc(MEMORY[0x1E696AD98]);
  v12 = [v9 initWithInt:{commitCopy, 0x1E696A000uLL}];
  if (v14)
  {
    if (v13)
    {
      if (v12)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
        if (v11)
        {
          [v11 setObject:v14 forKey:@"BlueLightReductionCCTTargetValue"];
          [v11 setObject:v13 forKey:@"BlueLightReductionCCTTargetPeriod"];
          [v11 setObject:v12 forKey:@"BlueLightReductionCCTTargetCommit"];
          v17 = [(BrightnessSystemClient *)selfCopy->bsc setProperty:v11 forKey:@"BlueLightReductionCCTTargetKey"];
          MEMORY[0x1E69E5920](v11);
        }
      }
    }
  }

  if (v14)
  {
    MEMORY[0x1E69E5920](v14);
  }

  if (v13)
  {
    MEMORY[0x1E69E5920](v13);
  }

  if (v12)
  {
    MEMORY[0x1E69E5920](v12);
  }

  return v17;
}

- (BOOL)getCCTRange:(id *)range
{
  if (!self->rangeOverridden)
  {
    return [(CBBlueLightClient *)self getDefaultCCTRange:range];
  }

  if (range)
  {
    *range = self->cctRange;
  }

  return 1;
}

- (BOOL)setCCTRange:(id *)range
{
  selfCopy = self;
  v10 = a2;
  rangeCopy = range;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if (!range)
  {
    return v6;
  }

  v6 = [(CBBlueLightClient *)selfCopy getDefaultCCTRange:&v7];
  if (v6)
  {
    if (rangeCopy->var1 > *(&v7 + 1) || rangeCopy->var0 < *&v7 || rangeCopy->var1 <= rangeCopy->var0 || rangeCopy->var2 <= rangeCopy->var0 || rangeCopy->var2 >= rangeCopy->var1)
    {
      return 0;
    }

    else
    {
      v3 = selfCopy;
      v4 = rangeCopy;
      *&selfCopy->cctRange.minCCT = *&rangeCopy->var0;
      v3->cctRange.midCCT = v4->var2;
      selfCopy->rangeOverridden = 1;
    }

    return v6;
  }

  return v6;
}

- (BOOL)getStrength:(float *)strength
{
  selfCopy = self;
  v12 = a2;
  strengthCopy = strength;
  v10 = 0;
  v9 = 0.0;
  v10 = [(CBBlueLightClient *)self getCCT:&v9];
  if (!v10)
  {
    return v10;
  }

  v7 = 0;
  v8 = 0.0;
  v10 = [(CBBlueLightClient *)selfCopy getCCTRange:&v7];
  if (!v10)
  {
    return v10;
  }

  if (v9 < v8)
  {
    v4 = 0.5 * (v8 - v9) / (v8 - *&v7) + 0.5;
    v6 = fminf(v4, 1.0);
  }

  else
  {
    v3 = 0.5 * (*(&v7 + 1) - v9) / (*(&v7 + 1) - v8);
    v6 = fmaxf(v3, 0.0);
  }

  if (strengthCopy)
  {
    *strengthCopy = v6;
  }

  return v10;
}

- (BOOL)setStrength:(float)strength withPeriod:(float)period commit:(BOOL)commit
{
  selfCopy = self;
  v15 = a2;
  strengthCopy = strength;
  periodCopy = period;
  commitCopy = commit;
  v11 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = [(CBBlueLightClient *)self getCCTRange:&v9];
  if (!v11)
  {
    return v11;
  }

  strengthCopy = fmaxf(strengthCopy, 0.0);
  strengthCopy = fminf(strengthCopy, 1.0);
  if (strengthCopy > 0.5)
  {
    v7 = strengthCopy - 0.5;
    strengthCopy = v7;
    v5 = (v10 - *&v9);
    v6 = v10 - 2.0 * v7 * v5;
  }

  else
  {
    v5 = (*(&v9 + 1) - v10);
    v6 = *(&v9 + 1) - 2.0 * strengthCopy * v5;
  }

  *&v6 = v6;
  *&v5 = periodCopy;
  return [(CBBlueLightClient *)selfCopy setCCT:commitCopy withPeriod:v6 commit:v5];
}

- (BOOL)getWarningCCT:(float *)t
{
  v6 = 0;
  v5 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"BlueLightReductionCCTWarningKey"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 floatValue];
      if (t)
      {
        *t = v3;
      }

      v6 = 1;
    }

    MEMORY[0x1E69E5920](v5);
  }

  return v6;
}

- (BOOL)getWarningStrength:(float *)strength
{
  selfCopy = self;
  v12 = a2;
  strengthCopy = strength;
  v10 = 0;
  v9 = 0.0;
  if (strength)
  {
    *strengthCopy = 0.5;
  }

  v10 = [(CBBlueLightClient *)selfCopy getWarningCCT:&v9];
  if (!v10)
  {
    return v10;
  }

  v7 = 0;
  v8 = 0.0;
  v10 = [(CBBlueLightClient *)selfCopy getCCTRange:&v7];
  if (!v10)
  {
    return v10;
  }

  if (v9 < v8)
  {
    v4 = 0.5 * (v8 - v9) / (v8 - *&v7) + 0.5;
    v6 = fminf(v4, 1.0);
  }

  else
  {
    v3 = 0.5 * (*(&v7 + 1) - v9) / (*(&v7 + 1) - v8);
    v6 = fmaxf(v3, 0.0);
  }

  if (strengthCopy)
  {
    *strengthCopy = v6;
  }

  return v10;
}

@end