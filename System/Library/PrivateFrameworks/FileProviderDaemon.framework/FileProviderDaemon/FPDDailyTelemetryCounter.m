@interface FPDDailyTelemetryCounter
- (BOOL)isEqual:(id)a3;
- (FPDDailyTelemetryCounter)init;
- (FPDDailyTelemetryCounter)initWithData:(id)a3;
- (id)archive;
- (id)dateToKey:(id)a3;
- (int)dailyValue;
- (int)getValueAt:(id)a3;
- (void)_garbageCollect;
@end

@implementation FPDDailyTelemetryCounter

- (FPDDailyTelemetryCounter)initWithData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = FPDDailyTelemetryCounter;
  v5 = [(FPDDailyTelemetryCounter *)&v28 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = objc_opt_new();
    goto LABEL_15;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v25;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = objc_opt_new();
        hourlyValues = v5->_hourlyValues;
        v5->_hourlyValues = v18;

        v20 = v5;
LABEL_20:

        goto LABEL_17;
      }

      v12 = [v6 objectForKeyedSubscript:{v11, v24}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = objc_opt_new();
        v22 = v5->_hourlyValues;
        v5->_hourlyValues = v21;

        v23 = v5;
        goto LABEL_20;
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v13 = [v6 mutableCopy];
LABEL_15:
  v14 = v5->_hourlyValues;
  v5->_hourlyValues = v13;

LABEL_16:
  v15 = v5;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (FPDDailyTelemetryCounter)init
{
  v6.receiver = self;
  v6.super_class = FPDDailyTelemetryCounter;
  v2 = [(FPDDailyTelemetryCounter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    hourlyValues = v2->_hourlyValues;
    v2->_hourlyValues = v3;
  }

  return v2;
}

- (void)_garbageCollect
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-90000.0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_hourlyValues allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 compare:v3] == -1)
        {
          [(NSMutableDictionary *)self->_hourlyValues setObject:0 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)dateToKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMutableDictionary *)self->_hourlyValues allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v4 timeIntervalSinceDate:v10];
        if (fabs(v11) < 3600)
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = v4;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (int)getValueAt:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(FPDDailyTelemetryCounter *)v5 dateToKey:v4];
  v7 = [(NSMutableDictionary *)v5->_hourlyValues objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 intValue];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v5);
  return v9;
}

- (int)dailyValue
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  [(FPDDailyTelemetryCounter *)v2 _garbageCollect];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2->_hourlyValues;
  v4 = 0;
  v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)v2->_hourlyValues objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        v9 = [v8 intValue];

        v4 += v9;
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)archive
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_hourlyValues copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [(FPDDailyTelemetryCounter *)self hourlyValues];
  v7 = [v5 hourlyValues];

  LOBYTE(v5) = [v6 isEqualToDictionary:v7];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

  return v8;
}

@end