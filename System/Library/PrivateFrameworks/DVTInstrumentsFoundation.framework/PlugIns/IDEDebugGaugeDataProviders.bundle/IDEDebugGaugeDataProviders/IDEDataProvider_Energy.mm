@interface IDEDataProvider_Energy
+ (id)sharedDataProvider;
- (BOOL)captureAttributes:(id)a3 toDictionary:(id)a4 forPID:(id)a5;
- (IDEDataProvider_Energy)init;
- (id)captureAttributes:(id)a3 forPIDs:(id)a4;
- (id)startSamplingForPIDs:(id)a3;
- (id)stopSamplingForPIDs:(id)a3;
- (id)supportedAttributes;
@end

@implementation IDEDataProvider_Energy

+ (id)sharedDataProvider
{
  if (qword_15240 != -1)
  {
    sub_80F8();
  }

  v3 = qword_15238;

  return v3;
}

- (IDEDataProvider_Energy)init
{
  v6.receiver = self;
  v6.super_class = IDEDataProvider_Energy;
  v2 = [(IDEDataProvider_Energy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    queryWasStartedForPidDictionary = v2->_queryWasStartedForPidDictionary;
    v2->_queryWasStartedForPidDictionary = v3;
  }

  return v2;
}

- (id)supportedAttributes
{
  if (qword_15250 != -1)
  {
    sub_810C();
  }

  v3 = qword_15248;

  return v3;
}

- (id)startSamplingForPIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_queryWasStartedForPidDictionary objectForKey:v9];
        if ([v10 BOOLValue])
        {
          [v5 addObject:v9];
        }

        else
        {
          [v9 intValue];
          if ((PLBatteryGaugeStartTracingForPid() & 0x80000000) == 0)
          {

            [(NSMutableDictionary *)self->_queryWasStartedForPidDictionary setObject:&__kCFBooleanTrue forKey:v9];
            v10 = &__kCFBooleanTrue;
            [v5 addObject:v9];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v5;
}

- (BOOL)captureAttributes:(id)a3 toDictionary:(id)a4 forPID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_queryWasStartedForPidDictionary objectForKey:v8];
  if ([v9 BOOLValue])
  {
    v49 = [(NSDictionary *)self->_lastSnapshotForAllPids objectForKeyedSubscript:v8];
    v10 = [v49 objectForKeyedSubscript:@"usage_data"];
    v11 = [v10 objectForKeyedSubscript:&off_11850];
    v12 = v11;
    v13 = v11 != 0;
    if (v11)
    {
      v14 = [v11 objectForKeyedSubscript:@"cost"];
      [v7 setObject:v14 forKeyedSubscript:@"energy.cost"];

      v15 = [v12 objectForKeyedSubscript:@"overhead"];
      [v7 setObject:v15 forKeyedSubscript:@"energy.overhead"];

      [v7 setObject:&off_11868 forKeyedSubscript:@"energy.version"];
      v16 = [v10 objectForKeyedSubscript:&off_11880];

      if (v16)
      {
        v17 = [v16 objectForKeyedSubscript:@"cost"];
        [v7 setObject:v17 forKeyedSubscript:@"energy.cpu.cost"];

        v18 = [v16 objectForKeyedSubscript:@"overhead"];
        [v7 setObject:v18 forKeyedSubscript:@"energy.cpu.overhead"];
      }

      v19 = [v10 objectForKeyedSubscript:&off_11898];

      if (v19)
      {
        v20 = [v19 objectForKeyedSubscript:@"cost"];
        [v7 setObject:v20 forKeyedSubscript:@"energy.networking.cost"];

        v21 = [v19 objectForKeyedSubscript:@"overhead"];
        [v7 setObject:v21 forKeyedSubscript:@"energy.networkning.overhead"];
      }

      v22 = [v10 objectForKeyedSubscript:&off_118B0];

      if (v22)
      {
        v23 = [v22 objectForKeyedSubscript:@"cost"];
        [v7 setObject:v23 forKeyedSubscript:@"energy.location.cost"];

        v24 = [v22 objectForKeyedSubscript:@"overhead"];
        [v7 setObject:v24 forKeyedSubscript:@"energy.location.overhead"];
      }

      v25 = [v10 objectForKeyedSubscript:&off_118C8];

      if (v25)
      {
        v26 = [v25 objectForKeyedSubscript:@"cost"];
        [v7 setObject:v26 forKeyedSubscript:@"energy.gpu.cost"];

        v27 = [v25 objectForKeyedSubscript:@"overhead"];
        [v7 setObject:v27 forKeyedSubscript:@"energy.gpu.overhead"];
      }

      v28 = [v10 objectForKeyedSubscript:&off_118E0];

      if (v28)
      {
        v29 = [v28 objectForKeyedSubscript:@"cost"];
        [v7 setObject:v29 forKeyedSubscript:@"energy.display.cost"];

        v30 = [v28 objectForKeyedSubscript:@"overhead"];
        [v7 setObject:v30 forKeyedSubscript:@"energy.display.overhead"];
      }

      v31 = [v10 objectForKeyedSubscript:&off_118F8];

      if (v31)
      {
        v32 = [v31 objectForKeyedSubscript:@"cost"];
        [v7 setObject:v32 forKeyedSubscript:@"energy.appstate.cost"];

        v33 = [v31 objectForKeyedSubscript:@"overhead"];
        [v7 setObject:v33 forKeyedSubscript:@"energy.appstate.overhead"];
      }

      v34 = [v10 objectForKeyedSubscript:&off_11910];

      if (v34)
      {
        v35 = [v34 objectForKeyedSubscript:@"cost"];
        v36 = sub_552C(v35);

        v37 = [NSNumber numberWithInteger:v36];
        [v7 setObject:v37 forKeyedSubscript:@"energy.thermalstate.cost"];
      }

      v38 = [v10 objectForKeyedSubscript:&off_11928];

      if (v38)
      {
        v39 = [v38 objectForKeyedSubscript:@"cost"];
        v40 = sub_552C(v39);

        v41 = [NSNumber numberWithInteger:v40];
        [v7 setObject:v41 forKeyedSubscript:@"energy.inducedthermalstate.cost"];
      }

      v42 = [(IDEDataProvider *)self initialQueryTimeForPidDictionary];
      v43 = [v42 objectForKeyedSubscript:v8];
      +[NSDate date];
      if (v43)
        v44 = {;
        [v44 timeIntervalSinceDate:v43];
        v46 = v45;

        v47 = [NSNumber numberWithUnsignedInteger:vcvtpd_u64_f64(v46)];
        [v7 setObject:v47 forKeyedSubscript:@"kIDEGaugeSecondsSinceInitialQueryKey"];
      }

      else
        v43 = {;
        [v42 setObject:v43 forKeyedSubscript:v8];
        [v7 setObject:&off_11940 forKeyedSubscript:@"kIDEGaugeSecondsSinceInitialQueryKey"];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)stopSamplingForPIDs:(id)a3
{
  v12 = a3;
  v4 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v12;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_queryWasStartedForPidDictionary objectForKey:v9];
        if ([v10 BOOLValue])
        {
          [v9 intValue];
          if ((PLBatteryGaugeStopTracingForPid() & 0x80000000) == 0)
          {
            [v4 addObject:v9];
          }

          [(NSMutableDictionary *)self->_queryWasStartedForPidDictionary removeObjectForKey:v9];
        }

        else
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)captureAttributes:(id)a3 forPIDs:(id)a4
{
  v6 = a3;
  v17 = a4;
  v7 = +[NSMutableDictionary dictionary];
  if ([v17 count])
  {
    v8 = PLBatteryGaugeGetSnapshot();
    lastSnapshotForAllPids = self->_lastSnapshotForAllPids;
    self->_lastSnapshotForAllPids = v8;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v17;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = +[NSMutableDictionary dictionary];
        if ([(IDEDataProvider_Energy *)self captureAttributes:v6 toDictionary:v15 forPID:v14])
        {
          [v7 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v7;
}

@end