@interface CBBlueLightClient
- (BOOL)getBlueLightStatus:(id *)a3;
- (BOOL)getCCT:(float *)a3;
- (BOOL)getCCTRange:(id *)a3;
- (BOOL)getDefaultCCTRange:(id *)a3;
- (BOOL)getStrength:(float *)a3;
- (BOOL)getWarningCCT:(float *)a3;
- (BOOL)getWarningStrength:(float *)a3;
- (BOOL)parseStatusDictionary:(id)a3 intoStruct:(id *)a4;
- (BOOL)setActive:(BOOL)a3;
- (BOOL)setCCT:(float)a3 withPeriod:(float)a4 commit:(BOOL)a5;
- (BOOL)setCCTRange:(id *)a3;
- (BOOL)setEnabled:(BOOL)a3 withOption:(int)a4;
- (BOOL)setMode:(int)a3;
- (BOOL)setSchedule:(id *)a3;
- (BOOL)setStrength:(float)a3 withPeriod:(float)a4 commit:(BOOL)a5;
- (CBBlueLightClient)init;
- (CBBlueLightClient)initWithClientObj:(id)a3;
- (void)dealloc;
- (void)setStatusNotificationBlock:(id)a3;
- (void)suspendNotifications:(BOOL)a3 force:(BOOL)a4;
@end

@implementation CBBlueLightClient

- (CBBlueLightClient)initWithClientObj:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  if (!a3)
  {
    return 0;
  }

  v6.receiver = v9;
  v6.super_class = CBBlueLightClient;
  v9 = [(CBBlueLightClient *)&v6 init];
  if (v9)
  {
    v9->bsc = v7;
    MEMORY[0x1E69E5928](v9->bsc);
    v5 = [(BrightnessSystemClient *)v9->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v5)
    {
      v3 = [objc_msgSend(v5 objectForKey:{@"SupportsNightMode", "BOOLValue"}];
      v9->_supported = v3;
      MEMORY[0x1E69E5920](v5);
    }

    v9->ownsClient = 0;
  }

  return v9;
}

- (CBBlueLightClient)init
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = CBBlueLightClient;
  v8 = [(CBBlueLightClient *)&v6 init];
  if (!v8)
  {
    return v8;
  }

  v2 = objc_alloc_init(BrightnessSystemClient);
  v8->bsc = v2;
  if (v8->bsc)
  {
    v5 = [(BrightnessSystemClient *)v8->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v5)
    {
      v3 = [objc_msgSend(v5 objectForKey:{@"SupportsNightMode", "BOOLValue"}];
      v8->_supported = v3;
      MEMORY[0x1E69E5920](v5);
    }

    v8->ownsClient = 1;
    return v8;
  }

  return 0;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  objc_sync_enter(self);
  if (v5->bsc)
  {
    if (v5->ownsClient)
    {
      [(BrightnessSystemClient *)v5->bsc registerNotificationBlock:0 forProperties:?];
    }

    MEMORY[0x1E69E5920](v5->bsc);
  }

  objc_sync_exit(self);
  v3.receiver = v5;
  v3.super_class = CBBlueLightClient;
  [(CBBlueLightClient *)&v3 dealloc];
}

- (BOOL)setActive:(BOOL)a3
{
  v6 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3];
    if (v5)
    {
      v6 = [(BrightnessSystemClient *)self->bsc setProperty:v5 forKey:@"AutoBlueReductionEnabled"];
      MEMORY[0x1E69E5920](v5);
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (BOOL)setEnabled:(BOOL)a3 withOption:(int)a4
{
  v9 = 0;
  objc_sync_enter(self);
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3];
  if (v8)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a4];
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

- (BOOL)setMode:(int)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  objc_sync_enter(self);
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v8];
  if (v6)
  {
    v7 = [(BrightnessSystemClient *)v10->bsc setProperty:v6 forKey:@"BlueReductionMode"];
    MEMORY[0x1E69E5920](v6);
  }

  if (v7 && v8 == 1)
  {
    memset(__b, 0, 0x28uLL);
    v7 = [(CBBlueLightClient *)v10 getBlueLightStatus:__b];
    if (v7)
    {
      v7 = __b[2] & 1;
    }
  }

  objc_sync_exit(self);
  return v7;
}

- (BOOL)setSchedule:(id *)a3
{
  v9 = 0;
  if (a3)
  {
    objc_sync_enter(self);
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    if (v8)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var1.var0];
      if (v7)
      {
        [v8 setObject:v7 forKey:@"DayStartHour"];
        MEMORY[0x1E69E5920](v7);
      }

      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var1.var1];
      if (v6)
      {
        [v8 setObject:v6 forKey:@"DayStartMinute"];
        MEMORY[0x1E69E5920](v6);
      }

      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var0.var0];
      if (v5)
      {
        [v8 setObject:v5 forKey:@"NightStartHour"];
        MEMORY[0x1E69E5920](v5);
      }

      v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var0.var1];
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

- (BOOL)parseStatusDictionary:(id)a3 intoStruct:(id *)a4
{
  v8 = 0;
  a4->var0 = [objc_msgSend(a3 objectForKey:{@"AutoBlueReductionEnabled", "intValue"}] != 0;
  a4->var6 = [objc_msgSend(a3 objectForKey:{@"BlueReductionAvailable", "intValue"}] != 0;
  v6 = 0;
  if (a4->var6)
  {
    v6 = [objc_msgSend(a3 objectForKey:{@"BlueReductionEnabled", "intValue"}] != 0;
  }

  a4->var1 = v6;
  if (a4->var6)
  {
    v5 = [objc_msgSend(a3 objectForKey:{@"BlueReductionMode", "intValue"}];
  }

  else
  {
    v5 = 0;
  }

  a4->var3 = v5;
  a4->var2 = [objc_msgSend(a3 objectForKey:{@"BlueReductionSunScheduleAllowed", "intValue"}] != 0;
  v7 = [a3 objectForKey:@"BlueLightReductionSchedule"];
  if (v7)
  {
    a4->var4.var0.var0 = [objc_msgSend(v7 objectForKey:{@"NightStartHour", "intValue"}];
    a4->var4.var0.var1 = [objc_msgSend(v7 objectForKey:{@"NightStartMinute", "intValue"}];
    a4->var4.var1.var0 = [objc_msgSend(v7 objectForKey:{@"DayStartHour", "intValue"}];
    a4->var4.var1.var1 = [objc_msgSend(v7 objectForKey:{@"DayStartMinute", "intValue"}];
    v8 = 1;
  }

  a4->var5 = [objc_msgSend(a3 objectForKey:{@"BlueLightReductionDisableFlags", "unsignedLongValue"}];
  return v8 & 1;
}

- (BOOL)getBlueLightStatus:(id *)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  objc_sync_enter(self);
  if (v8)
  {
    v6 = [(BrightnessSystemClient *)v10->bsc copyPropertyForKey:@"CBBlueReductionStatus"];
    if (v6)
    {
      memset(__b, 0, 0x28uLL);
      v7 = [(CBBlueLightClient *)v10 parseStatusDictionary:v6 intoStruct:__b];
      MEMORY[0x1E69E5920](v6);
      if (v7)
      {
        memcpy(v8, __b, sizeof($D82A08470DEB99723CE1681A229FC711));
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

- (void)suspendNotifications:(BOOL)a3 force:(BOOL)a4
{
  objc_sync_enter(self);
  if (self->notificationActive)
  {
    if (a3)
    {
      [(CBBlueLightClient *)self disableNotifications];
    }

    else if (self->clientBlock && a4)
    {
      [(CBBlueLightClient *)self enableNotifications];
    }
  }

  else if (!a3 && self->clientBlock)
  {
    [(CBBlueLightClient *)self enableNotifications];
  }

  objc_sync_exit(self);
}

- (void)setStatusNotificationBlock:(id)a3
{
  objc_sync_enter(self);
  if (self->clientBlock)
  {
    MEMORY[0x1E69E5920](self->clientBlock);
    self->clientBlock = 0;
  }

  if (a3)
  {
    self->clientBlock = [a3 copy];
    [(CBBlueLightClient *)self suspendNotifications:0 force:1];
  }

  else
  {
    [(CBBlueLightClient *)self suspendNotifications:1 force:1];
  }

  objc_sync_exit(self);
}

- (BOOL)getDefaultCCTRange:(id *)a3
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
    if (a3)
    {
      *&a3->var0 = *&self->defaultCctRange.minCCT;
      a3->var2 = self->defaultCctRange.midCCT;
    }

    if (!self->rangeOverridden)
    {
      *&self->cctRange.minCCT = *&self->defaultCctRange.minCCT;
      self->cctRange.midCCT = self->defaultCctRange.midCCT;
    }
  }

  return v8;
}

- (BOOL)getCCT:(float *)a3
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
        if (a3)
        {
          *a3 = v3;
        }

        v7 = 1;
      }
    }

    MEMORY[0x1E69E5920](v6);
  }

  return v7;
}

- (BOOL)setCCT:(float)a3 withPeriod:(float)a4 commit:(BOOL)a5
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v17 = [(CBBlueLightClient *)self getDefaultCCTRange:&v15];
  if (!v17)
  {
    return v17;
  }

  v20 = fmaxf(v20, *&v15);
  v20 = fminf(v20, *(&v15 + 1));
  if (v19 < 0.0)
  {
    v19 = -1.0;
  }

  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = v20;
  v14 = [v5 initWithFloat:v6];
  v7 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v8 = v19;
  v13 = [v7 initWithFloat:v8];
  v9 = objc_alloc(MEMORY[0x1E696AD98]);
  v12 = [v9 initWithInt:{v18, 0x1E696A000uLL}];
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
          v17 = [(BrightnessSystemClient *)v22->bsc setProperty:v11 forKey:@"BlueLightReductionCCTTargetKey"];
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

- (BOOL)getCCTRange:(id *)a3
{
  if (!self->rangeOverridden)
  {
    return [(CBBlueLightClient *)self getDefaultCCTRange:a3];
  }

  if (a3)
  {
    *a3 = self->cctRange;
  }

  return 1;
}

- (BOOL)setCCTRange:(id *)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if (!a3)
  {
    return v6;
  }

  v6 = [(CBBlueLightClient *)v11 getDefaultCCTRange:&v7];
  if (v6)
  {
    if (v9->var1 > *(&v7 + 1) || v9->var0 < *&v7 || v9->var1 <= v9->var0 || v9->var2 <= v9->var0 || v9->var2 >= v9->var1)
    {
      return 0;
    }

    else
    {
      v3 = v11;
      v4 = v9;
      *&v11->cctRange.minCCT = *&v9->var0;
      v3->cctRange.midCCT = v4->var2;
      v11->rangeOverridden = 1;
    }

    return v6;
  }

  return v6;
}

- (BOOL)getStrength:(float *)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v9 = 0.0;
  v10 = [(CBBlueLightClient *)self getCCT:&v9];
  if (!v10)
  {
    return v10;
  }

  v7 = 0;
  v8 = 0.0;
  v10 = [(CBBlueLightClient *)v13 getCCTRange:&v7];
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

  if (v11)
  {
    *v11 = v6;
  }

  return v10;
}

- (BOOL)setStrength:(float)a3 withPeriod:(float)a4 commit:(BOOL)a5
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = [(CBBlueLightClient *)self getCCTRange:&v9];
  if (!v11)
  {
    return v11;
  }

  v14 = fmaxf(v14, 0.0);
  v14 = fminf(v14, 1.0);
  if (v14 > 0.5)
  {
    v7 = v14 - 0.5;
    v14 = v7;
    v5 = (v10 - *&v9);
    v6 = v10 - 2.0 * v7 * v5;
  }

  else
  {
    v5 = (*(&v9 + 1) - v10);
    v6 = *(&v9 + 1) - 2.0 * v14 * v5;
  }

  *&v6 = v6;
  *&v5 = v13;
  return [(CBBlueLightClient *)v16 setCCT:v12 withPeriod:v6 commit:v5];
}

- (BOOL)getWarningCCT:(float *)a3
{
  v6 = 0;
  v5 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"BlueLightReductionCCTWarningKey"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 floatValue];
      if (a3)
      {
        *a3 = v3;
      }

      v6 = 1;
    }

    MEMORY[0x1E69E5920](v5);
  }

  return v6;
}

- (BOOL)getWarningStrength:(float *)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v9 = 0.0;
  if (a3)
  {
    *v11 = 0.5;
  }

  v10 = [(CBBlueLightClient *)v13 getWarningCCT:&v9];
  if (!v10)
  {
    return v10;
  }

  v7 = 0;
  v8 = 0.0;
  v10 = [(CBBlueLightClient *)v13 getCCTRange:&v7];
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

  if (v11)
  {
    *v11 = v6;
  }

  return v10;
}

@end