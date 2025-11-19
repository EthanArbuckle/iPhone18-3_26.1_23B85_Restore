@interface FudEarlyBoot
- (FudEarlyBoot)init;
- (int)doFUDEarlyBoot:(id)a3;
- (void)calculateTimeTakenForEarlyBootEntries;
- (void)dealloc;
- (void)earlyBootAccessoryAttached:(id)a3;
- (void)updateFWForDeviceClass:(id)a3 dict:(id)a4;
@end

@implementation FudEarlyBoot

- (FudEarlyBoot)init
{
  v3.receiver = self;
  v3.super_class = FudEarlyBoot;
  return [(FudEarlyBoot *)&v3 init];
}

- (int)doFUDEarlyBoot:(id)a3
{
  FudLog();
  v5 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    v6 = v5;
    v7 = [[AppleFirmwareUpdateController alloc] initWithRegistryEntryID:0 fwAssetDirectory:{0, "-[FudEarlyBoot doFUDEarlyBoot:]"}];
    self->_afuController = v7;
    if (v7)
    {
      [(AppleFirmwareUpdateController *)v7 getEarlyBootList:v6];
      if ([v6 count])
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              v12 = self;
              if (*v24 != v10)
              {
                objc_enumerationMutation(v6);
              }

              v13 = *(*(&v23 + 1) + 8 * i);
              v14 = +[NSMutableDictionary dictionary];
              v15 = [v13 objectForKeyedSubscript:@"DeviceClassName"];
              [v14 addEntriesFromDictionary:{objc_msgSend(v13, "objectForKeyedSubscript:", @"OptionsDict"}];
              if (a3)
              {
                [v14 addEntriesFromDictionary:a3];
              }

              FudLog();
              self = v12;
              [(FudEarlyBoot *)v12 updateFWForDeviceClass:v15 dict:v14, "[FudEarlyBoot doFUDEarlyBoot:]", v14];
            }

            v9 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v9);
        }

        if ([-[AppleFirmwareUpdateController getPendingEarlyBootAccessories](self->_afuController "getPendingEarlyBootAccessories")])
        {
          self->_startWaitingForCriticalEarlyBootEntries = +[NSDate date];
          self->_semaphore = dispatch_semaphore_create(0);
          [(AppleFirmwareUpdateController *)self->_afuController setDelegate:self];
          [(AppleFirmwareUpdateController *)self->_afuController registerForPendingEarlyBootAccessories];
          semaphore = self->_semaphore;
          v17 = dispatch_time(0, 5000000000);
          if (dispatch_semaphore_wait(semaphore, v17))
          {
            v20 = "[FudEarlyBoot doFUDEarlyBoot:]";
            v22 = [(AppleFirmwareUpdateController *)self->_afuController getPendingEarlyBootAccessories];
            FudLog();
          }
        }
      }

      else
      {
        sub_100001674();
      }
    }

    else
    {
      sub_100001680();
    }

    [v6 removeAllObjects];

    v18 = 0;
  }

  else
  {
    v21 = "[FudEarlyBoot doFUDEarlyBoot:]";
    FudLog();
    v18 = 1;
  }

  [(FudEarlyBoot *)self calculateTimeTakenForEarlyBootEntries];
  FudLog();

  return v18;
}

- (void)calculateTimeTakenForEarlyBootEntries
{
  if (self->_startWaitingForCriticalEarlyBootEntries)
  {
    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", self->_startWaitingForCriticalEarlyBootEntries];
  }

  FudLog();
}

- (void)earlyBootAccessoryAttached:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"DeviceClassName"];
  v7 = [a3 objectForKeyedSubscript:@"OptionsDict"];
  FudLog();
  -[FudEarlyBoot updateFWForDeviceClass:dict:](self, "updateFWForDeviceClass:dict:", v5, [a3 objectForKeyedSubscript:{@"OptionsDict", "-[FudEarlyBoot earlyBootAccessoryAttached:]", v7}]);
  if (![-[AppleFirmwareUpdateController getPendingEarlyBootAccessories](self->_afuController "getPendingEarlyBootAccessories")])
  {
    FudLog();
    semaphore = self->_semaphore;

    dispatch_semaphore_signal(semaphore);
  }
}

- (void)dealloc
{
  semaphore = self->_semaphore;
  if (semaphore)
  {
    dispatch_release(semaphore);
    self->_semaphore = 0;
  }

  v4.receiver = self;
  v4.super_class = FudEarlyBoot;
  [(FudEarlyBoot *)&v4 dealloc];
}

- (void)updateFWForDeviceClass:(id)a3 dict:(id)a4
{
  FudLog();
  v7 = [[AppleFirmwareUpdateController alloc] initWithRegistryEntryID:objc_msgSend(a4 fwAssetDirectory:{"objectForKeyedSubscript:", @"IOMatchLaunchServiceID", "-[FudEarlyBoot updateFWForDeviceClass:dict:]", a3, a4), objc_msgSend(a4, "objectForKeyedSubscript:", @"FWDirectory"}];
  [v7 enableEarlyBootLoggingMode];
  if ([v7 createFWAssetInfo])
  {
    [v7 updateFirmwareWithOptions:0];
  }
}

@end