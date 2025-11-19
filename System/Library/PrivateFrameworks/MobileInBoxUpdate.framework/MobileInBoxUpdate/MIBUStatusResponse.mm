@interface MIBUStatusResponse
- (BOOL)_deserialize:(id)a3;
- (BOOL)_serializeBatteryDetailsWithSerializer:(id)a3;
- (BOOL)_serializeDict:(id)a3 fromKeyToTagMapping:(id)a4 withSerializer:(id)a5;
- (BOOL)_serializeOperationDetailsWithSerializer:(id)a3;
- (BOOL)_serializeThermalDetailsWithSerializer:(id)a3;
- (MIBUStatusResponse)init;
- (id)_deserializeBatteryDetailsFromDict:(id)a3;
- (id)_deserializeFromTagDict:(id)a3 withKeyToTagMapping:(id)a4;
- (id)_deserializeOperationDetailsFromDict:(id)a3;
- (id)_deserializeThermalDetailsFromDict:(id)a3;
- (id)_reverseDict:(id)a3;
- (id)serialize;
@end

@implementation MIBUStatusResponse

- (MIBUStatusResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUStatusResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUStatusResponse *)v2 setSerialNumber:0];
    [(MIBUStatusResponse *)v3 setOsVersion:0];
    [(MIBUStatusResponse *)v3 setBuildVersion:0];
    [(MIBUStatusResponse *)v3 setStatus:0];
  }

  return v3;
}

void __31__MIBUStatusResponse_serialize__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __31__MIBUStatusResponse_serialize__block_invoke_16()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __31__MIBUStatusResponse_serialize__block_invoke_19()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserialize:(id)a3
{
  v4 = a3;
  v5 = [[MIBUDeserializer alloc] initWithData:v4];

  v6 = [(MIBUDeserializer *)v5 deserialize];
  if (!v6)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUStatusResponse _deserialize:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUStatusResponse _deserialize:];
    }

    v27 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_24;
  }

  v41 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v41];
  v38 = v41;
  if (!v7)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUStatusResponse _deserialize:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUStatusResponse _deserialize:];
    }

    goto LABEL_23;
  }

  v8 = [v6 objectForKey:&unk_286AC7278];
  if (!v8)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUStatusResponse _deserialize:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUStatusResponse _deserialize:];
    }

LABEL_23:
    v27 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    v39 = 0;
LABEL_24:
    v11 = 0;
    v9 = 0;
LABEL_30:
    v34 = 0;
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v6 objectForKey:&unk_286AC72D8];
  if (!v10)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUStatusResponse _deserialize:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUStatusResponse _deserialize:];
    }

    v27 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    v39 = 0;
    v11 = 0;
    goto LABEL_30;
  }

  v11 = v10;
  v12 = [v6 objectForKey:&unk_286AC7290];
  v13 = [v6 objectForKey:&unk_286AC72A8];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 objectForKey:&unk_286AC72C0];
    v16 = [v6 objectForKey:&unk_286AC72F0];
    if (v16)
    {
      v37 = v16;
      v40 = 0;
      v17 = [(MIBUDeserializer *)v5 deserializeOperationError:&v40];
      v18 = v40;
      v39 = v18;
      if (v17)
      {
        v19 = v18;
        v20 = objc_alloc_init(MIBUDeviceStatus);
        [(MIBUStatusResponse *)self setStatus:v20];

        [(MIBUStatusResponse *)self setSerialNumber:v12];
        [(MIBUStatusResponse *)self setOsVersion:v14];
        [(MIBUStatusResponse *)self setBuildVersion:v15];
        v21 = [v9 shortValue];
        [(MIBUStatusResponse *)self status];
        v22 = v36 = v12;
        [v22 setState:v21];

        v23 = [v11 shortValue];
        v24 = [(MIBUStatusResponse *)self status];
        [v24 setOperation:v23];

        v25 = [(MIBUStatusResponse *)self status];
        [v25 setOperationError:v19];

        v26 = [(MIBUStatusResponse *)self status];
        v27 = v37;
        [v26 setBatteryLevel:v37];

        v28 = [(MIBUStatusResponse *)self _deserializeThermalDetailsFromDict:v6];
        v29 = [(MIBUStatusResponse *)self status];
        [v29 setThermalDetails:v28];

        v30 = [(MIBUStatusResponse *)self _deserializeBatteryDetailsFromDict:v6];
        v31 = [(MIBUStatusResponse *)self status];
        [v31 setBatteryDetails:v30];

        v32 = [(MIBUStatusResponse *)self _deserializeOperationDetailsFromDict:v6];
        v33 = [(MIBUStatusResponse *)self status];
        [v33 setOperationDetails:v32];

        v12 = v36;
        v34 = 1;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUStatusResponse _deserialize:];
        }

        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          [MIBUStatusResponse _deserialize:];
        }

        v34 = 0;
        v27 = v37;
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUStatusResponse _deserialize:];
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUStatusResponse _deserialize:];
      }

      v27 = 0;
      v39 = 0;
      v34 = 0;
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUStatusResponse _deserialize:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUStatusResponse _deserialize:];
    }

    v27 = 0;
    v15 = 0;
    v39 = 0;
    v34 = 0;
    v14 = 0;
  }

LABEL_9:
  [(MIBUNFCResponse *)self setError:v38];

  return v34;
}

void __35__MIBUStatusResponse__deserialize___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35__MIBUStatusResponse__deserialize___block_invoke_25()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35__MIBUStatusResponse__deserialize___block_invoke_28()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35__MIBUStatusResponse__deserialize___block_invoke_31()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35__MIBUStatusResponse__deserialize___block_invoke_37()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35__MIBUStatusResponse__deserialize___block_invoke_43()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __35__MIBUStatusResponse__deserialize___block_invoke_46()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_reverseDict:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v14}];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_serializeDict:(id)a3 fromKeyToTagMapping:(id)a4 withSerializer:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        v16 = [v8 objectForKey:v14];
        v17 = v16;
        if (v16)
        {
          v30 = v16;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v29 = v15;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v20 = [v24 serialize:v18 withValue:v19];

          if ((v20 & 1) == 0)
          {

            v21 = 0;
            goto LABEL_11;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)_deserializeFromTagDict:(id)a3 withKeyToTagMapping:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(MIBUStatusResponse *)self _reverseDict:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v6 objectForKey:v14];
        if (v15)
        {
          v16 = [v9 objectForKey:v14];
          [v8 setObject:v15 forKey:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_serializeOperationDetailsWithSerializer:(id)a3
{
  v11[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MIBUStatusResponse *)self status];
  v6 = [v5 operationDetails];
  v10[0] = @"Progress";
  v10[1] = @"TimeRemaining";
  v11[0] = &unk_286AC7308;
  v11[1] = &unk_286AC7320;
  v10[2] = @"TargetOSVersion";
  v10[3] = @"TargetBuildVersion";
  v11[2] = &unk_286AC7338;
  v11[3] = &unk_286AC7350;
  v10[4] = @"SoftwareUpdatePhase";
  v10[5] = @"TargetSUBundleSize";
  v11[4] = &unk_286AC7368;
  v11[5] = &unk_286AC7380;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  LOBYTE(self) = [(MIBUStatusResponse *)self _serializeDict:v6 fromKeyToTagMapping:v7 withSerializer:v4];

  v8 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)_deserializeOperationDetailsFromDict:(id)a3
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"Progress";
  v10[1] = @"TimeRemaining";
  v11[0] = &unk_286AC7308;
  v11[1] = &unk_286AC7320;
  v10[2] = @"TargetOSVersion";
  v10[3] = @"TargetBuildVersion";
  v11[2] = &unk_286AC7338;
  v11[3] = &unk_286AC7350;
  v10[4] = @"SoftwareUpdatePhase";
  v10[5] = @"TargetSUBundleSize";
  v11[4] = &unk_286AC7368;
  v11[5] = &unk_286AC7380;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:6];
  v7 = [(MIBUStatusResponse *)self _deserializeFromTagDict:v5 withKeyToTagMapping:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_serializeThermalDetailsWithSerializer:(id)a3
{
  v11[9] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MIBUStatusResponse *)self status];
  v6 = [v5 thermalDetails];
  v10[0] = @"TSRM/TVRM";
  v10[1] = @"TSRR/TVRR";
  v11[0] = &unk_286AC7398;
  v11[1] = &unk_286AC73B0;
  v10[2] = @"TVRQ";
  v10[3] = @"TSBE/TVBE";
  v11[2] = &unk_286AC73C8;
  v11[3] = &unk_286AC73E0;
  v10[4] = @"TSBQ/TVBQ";
  v10[5] = @"TSBR/TVBR";
  v11[4] = &unk_286AC73F8;
  v11[5] = &unk_286AC7410;
  v10[6] = @"TSLR/TVRH";
  v10[7] = @"TG0V";
  v11[6] = &unk_286AC7428;
  v11[7] = &unk_286AC7440;
  v10[8] = @"ThermalPressure";
  v11[8] = &unk_286AC7458;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:9];
  LOBYTE(self) = [(MIBUStatusResponse *)self _serializeDict:v6 fromKeyToTagMapping:v7 withSerializer:v4];

  v8 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)_deserializeThermalDetailsFromDict:(id)a3
{
  v28[9] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v27[0] = @"TSRM/TVRM";
  v27[1] = @"TSRR/TVRR";
  v28[0] = &unk_286AC7398;
  v28[1] = &unk_286AC73B0;
  v27[2] = @"TVRQ";
  v27[3] = @"TSBE/TVBE";
  v28[2] = &unk_286AC73C8;
  v28[3] = &unk_286AC73E0;
  v27[4] = @"TSBQ/TVBQ";
  v27[5] = @"TSBR/TVBR";
  v28[4] = &unk_286AC73F8;
  v28[5] = &unk_286AC7410;
  v27[6] = @"TSLR/TVRH";
  v27[7] = @"TG0V";
  v28[6] = &unk_286AC7428;
  v28[7] = &unk_286AC7440;
  v27[8] = @"ThermalPressure";
  v28[8] = &unk_286AC7458;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];
  v7 = [(MIBUStatusResponse *)self _deserializeFromTagDict:v4 withKeyToTagMapping:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = 0;
          v15 = v14;
          if ([v13 isEqualToString:@"TG0V"])
          {
            v20 = 0;
            [v15 getBytes:&v20 length:8];
            v16 = v20 * 0.0000152587891;
            *&v16 = v16;
            v21 = LODWORD(v16);
          }

          else
          {
            [v15 getBytes:&v21 length:4];
            LODWORD(v16) = v21;
          }

          v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
          [v5 setObject:v17 forKey:v13];
        }

        else
        {
          [v5 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_serializeBatteryDetailsWithSerializer:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MIBUStatusResponse *)self status];
  v6 = [v5 batteryDetails];
  v10[0] = @"WARP";
  v10[1] = @"WAVR";
  v11[0] = &unk_286AC7470;
  v11[1] = &unk_286AC7488;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  LOBYTE(self) = [(MIBUStatusResponse *)self _serializeDict:v6 fromKeyToTagMapping:v7 withSerializer:v4];

  v8 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)_deserializeBatteryDetailsFromDict:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v25[0] = @"WARP";
  v25[1] = @"WAVR";
  v26[0] = &unk_286AC7470;
  v26[1] = &unk_286AC7488;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v18 = v4;
  v7 = [(MIBUStatusResponse *)self _deserializeFromTagDict:v4 withKeyToTagMapping:v6];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0;
          [v14 getBytes:&v19 length:2];
          v15 = [MEMORY[0x277CCABB0] numberWithShort:v19];
          [v5 setObject:v15 forKey:v13];
        }

        else
        {
          [v5 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)serialize
{
  v48[6] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MIBUStatusResponse *)self status];

  if (v4 && ![(MIBUNFCResponse *)self rejected])
  {
    v5 = MEMORY[0x277CCABB0];
    v45 = [(MIBUStatusResponse *)self status];
    v44 = [v5 numberWithUnsignedInteger:{objc_msgSend(v45, "state")}];
    v48[0] = v44;
    v43 = [(MIBUStatusResponse *)self serialNumber];
    v48[1] = v43;
    v6 = [(MIBUStatusResponse *)self osVersion];
    v48[2] = v6;
    v7 = [(MIBUStatusResponse *)self buildVersion];
    v48[3] = v7;
    v8 = MEMORY[0x277CCABB0];
    v9 = [(MIBUStatusResponse *)self status];
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "operation")}];
    v48[4] = v10;
    v11 = [(MIBUStatusResponse *)self status];
    v12 = [v11 batteryLevel];
    v48[5] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:6];
    LOBYTE(v5) = [v3 serialize:&unk_286AC83A0 withValue:v13];

    if (v5)
    {
      v14 = [(MIBUNFCResponse *)self error];
      v15 = [v3 serializeResponseError:v14];

      if (v15)
      {
        v16 = [(MIBUStatusResponse *)self status];
        v17 = [v16 operationError];
        v18 = [v3 serializeOperationError:v17];

        if (v18)
        {
          if ([(MIBUStatusResponse *)self _serializeOperationDetailsWithSerializer:v3]&& [(MIBUStatusResponse *)self _serializeThermalDetailsWithSerializer:v3]&& [(MIBUStatusResponse *)self _serializeBatteryDetailsWithSerializer:v3])
          {
            v19 = [v3 serializedData];
            goto LABEL_10;
          }
        }

        else
        {
          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_21);
          }

          v32 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            v33 = v32;
            v34 = [(MIBUStatusResponse *)self status];
            v35 = [v34 operationError];
            HIDWORD(v47) = HIDWORD(v35);
            OUTLINED_FUNCTION_2_0(&dword_259ABF000, v36, v37, "Failed to serialize operation error: %{public}@", v38, v39, v40, v41, v42, v43, v44, v45, 2u);
          }
        }
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_18);
        }

        v23 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          v25 = [(MIBUNFCResponse *)self error];
          HIDWORD(v47) = HIDWORD(v25);
          OUTLINED_FUNCTION_2_0(&dword_259ABF000, v26, v27, "Failed to serialize response error: %{public}@", v28, v29, v30, v31, v42, v43, v44, v45, 2u);
        }
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_2);
      }

      v22 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_259ABF000, v22, OS_LOG_TYPE_ERROR, "Failed to serialize device status, serial number, and nonce", buf, 2u);
      }
    }
  }

  v19 = 0;
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end