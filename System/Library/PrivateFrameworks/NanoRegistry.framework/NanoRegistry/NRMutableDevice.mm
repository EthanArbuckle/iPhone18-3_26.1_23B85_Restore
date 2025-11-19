@interface NRMutableDevice
+ (id)diffFrom:(id)a3 to:(id)a4;
+ (id)diffsToActivate:(BOOL)a3 withDate:(id)a4;
+ (id)diffsToClearStatusCodeAndCompatibilityState;
+ (id)diffsToPair:(BOOL)a3 withDate:(id)a4;
+ (id)diffsToSetStatusCode:(unint64_t)a3;
+ (id)enclosedClassTypes;
+ (void)parseDiff:(id)a3 forPropertyChange:(id)a4 withBlock:(id)a5;
- (BOOL)isActive;
- (BOOL)isAltAccount;
- (BOOL)isArchived;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPaired;
- (BOOL)isSetup;
- (BOOL)migratable;
- (BOOL)supportsCapability:(id)a3;
- (NRMutableDevice)init;
- (NRMutableDevice)initWithCoder:(id)a3;
- (NRMutableDevice)initWithProtobuf:(id)a3;
- (NRPBMutableDevice)protobuf;
- (NSUUID)pairingID;
- (id)_createIndex:(id)a3;
- (id)applyDiff:(id)a3 upOnly:(BOOL)a4 notifyParent:(BOOL)a5 unconditional:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)propertyForName:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)removePropertyForName:(id)a3;
- (void)setProperty:(id)a3 forName:(id)a4;
@end

@implementation NRMutableDevice

- (NRMutableDevice)init
{
  v6.receiver = self;
  v6.super_class = NRMutableDevice;
  v2 = [(NRMutableStateBase *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    properties = v2->_properties;
    v2->_properties = v3;
  }

  return v2;
}

- (NSUUID)pairingID
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"pairingID"];
  v3 = [v2 value];

  return v3;
}

- (BOOL)isPaired
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isPaired"];
  v3 = [v2 value];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isSetup
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isSetup"];
  v3 = [v2 value];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isActive
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isActive"];
  v3 = [v2 value];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isArchived
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isArchived"];
  v3 = [v2 value];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isAltAccount
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isAltAccount"];
  v3 = [v2 value];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)migratable
{
  v3 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isArchived"];
  v4 = [v3 value];

  v5 = [v4 BOOLValue];
  v6 = [(NRMutableDevice *)self objectForKeyedSubscript:@"migrationConsent"];
  v7 = [v6 value];

  v8 = [v7 BOOLValue];
  v9 = [(NRMutableDevice *)self objectForKeyedSubscript:@"migrationConsentDate"];
  v10 = [v9 value];

  if (v10)
  {
    [v10 timeIntervalSinceNow];
    v12 = v11 <= 0.0;
    if (v11 < -86400.0)
    {
      v12 = 0;
    }

    v13 = v12 & v8 & v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)supportsCapability:(id)a3
{
  v4 = a3;
  v5 = [(NRMutableDevice *)self objectForKeyedSubscript:@"capabilities"];
  v6 = [v5 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 hasUUID:v4];
  }

  else
  {
    v7 = [v6 containsObject:v4];
  }

  v8 = v7;

  return v8;
}

+ (id)diffsToActivate:(BOOL)a3 withDate:(id)a4
{
  v4 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [NRDevicePropertyDiff alloc];
  if (v4)
  {
    v8 = [(NRDevicePropertyDiff *)v7 initWithValue:MEMORY[0x1E695E118]];
    v9 = [(NRDevicePropertyDiffType *)v6 initWithDiff:v8 andChangeType:1];

    v10 = [NRDevicePropertyDiffType alloc];
    v11 = [[NRDevicePropertyDiff alloc] initWithValue:v5];

    v12 = [(NRDevicePropertyDiffType *)v10 initWithDiff:v11 andChangeType:1];
    v24[0] = @"isActive";
    v24[1] = @"lastActiveDate";
    v25[0] = v9;
    v25[1] = v12;
    v13 = MEMORY[0x1E695DF20];
    v14 = v25;
    v15 = v24;
  }

  else
  {
    v16 = [(NRDevicePropertyDiff *)v7 initWithValue:MEMORY[0x1E695E110]];
    v9 = [(NRDevicePropertyDiffType *)v6 initWithDiff:v16 andChangeType:1];

    v17 = [NRDevicePropertyDiffType alloc];
    v18 = [[NRDevicePropertyDiff alloc] initWithValue:v5];

    v12 = [(NRDevicePropertyDiffType *)v17 initWithDiff:v18 andChangeType:1];
    v22[0] = @"isActive";
    v22[1] = @"lastInactiveDate";
    v23[0] = v9;
    v23[1] = v12;
    v13 = MEMORY[0x1E695DF20];
    v14 = v23;
    v15 = v22;
  }

  v19 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:2];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)diffsToPair:(BOOL)a3 withDate:(id)a4
{
  v4 = a3;
  v28[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [NRDevicePropertyDiff alloc];
  if (v4)
  {
    v8 = [(NRDevicePropertyDiff *)v7 initWithValue:MEMORY[0x1E695E118]];
    v9 = [(NRDevicePropertyDiffType *)v6 initWithDiff:v8 andChangeType:1];

    if (v5)
    {
      v10 = [NRDevicePropertyDiffType alloc];
      v11 = [[NRDevicePropertyDiff alloc] initWithValue:v5];
      v12 = [(NRDevicePropertyDiffType *)v10 initWithDiff:v11 andChangeType:1];
    }

    else
    {
      v12 = 0;
    }

    v15 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
    v16 = v15;
    if (v12)
    {
      v27[0] = @"isPaired";
      v27[1] = @"pairedDate";
      v28[0] = v9;
      v28[1] = v12;
      v27[2] = @"isArchived";
      v28[2] = v15;
      v17 = MEMORY[0x1E695DF20];
      v18 = v28;
      v19 = v27;
      v20 = 3;
    }

    else
    {
      v25[0] = @"isPaired";
      v25[1] = @"isArchived";
      v26[0] = v9;
      v26[1] = v15;
      v17 = MEMORY[0x1E695DF20];
      v18 = v26;
      v19 = v25;
      v20 = 2;
    }

    v14 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  }

  else
  {
    v13 = [(NRDevicePropertyDiff *)v7 initWithValue:MEMORY[0x1E695E110]];
    v9 = [(NRDevicePropertyDiffType *)v6 initWithDiff:v13 andChangeType:1];

    v23 = @"isPaired";
    v24 = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)diffsToSetStatusCode:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [NRDevicePropertyDiff alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(NRDevicePropertyDiff *)v4 initWithValue:v5];

  v7 = [[NRDevicePropertyDiffType alloc] initWithDiff:v6 andChangeType:0];
  v8 = v7;
  if (a3)
  {
    v12 = @"statusCode";
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)diffsToClearStatusCodeAndCompatibilityState
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v3 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v7[0] = @"compatibilityState";
  v7[1] = @"statusCode";
  v8[0] = v3;
  v8[1] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)parseDiff:(id)a3 forPropertyChange:(id)a4 withBlock:(id)a5
{
  v12 = a5;
  v7 = [a3 objectForKeyedSubscript:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 changeType];
    v10 = [v8 diff];
    v11 = [v10 value];
    v12[2](v12, v9, v11);
  }
}

- (void)setProperty:(id)a3 forName:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(NRMutableDevice *)self objectForKeyedSubscript:v6];
  v9 = [NRMutableDeviceProperty diffFrom:v8 to:v7];

  v10 = [[NRDevicePropertyDiffType alloc] initWithDiff:v9 andChangeType:1];
  if (v10)
  {
    v11 = [NRDeviceDiff alloc];
    v16 = v6;
    v17[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [(NRDeviceDiff *)v11 initWithDiffPropertyDiffs:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NRMutableStateBase *)self applyDiff:v13];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removePropertyForName:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v6 = [NRDeviceDiff alloc];
  v11 = v4;
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v8 = [(NRDeviceDiff *)v6 initWithDiffPropertyDiffs:v7];
  v9 = [(NRMutableStateBase *)self applyDiff:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = NRMutableDevice;
  [(NRMutableStateBase *)&v4 invalidate];
  properties = self->_properties;
  self->_properties = 0;
}

- (id)propertyForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = [[NRMutableDeviceProperty alloc] initWithValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)diffFrom:(id)a3 to:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v37 = v8;
  if ([v7 count])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = [v7[5] allKeys];
    v12 = [v10 setWithArray:v11];
    v13 = [v12 mutableCopy];

    v14 = MEMORY[0x1E695DFD8];
    v15 = [v8[5] allKeys];
    v16 = [v14 setWithArray:v15];

    [v13 minusSet:v16];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
          [v9 setObject:v23 forKeyedSubscript:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v19);
    }
  }

  if ([v8 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v8[5];
    v24 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v38 + 1) + 8 * j);
          if (v7)
          {
            v29 = [v7 objectForKeyedSubscript:*(*(&v38 + 1) + 8 * j)];
          }

          else
          {
            v29 = 0;
          }

          v30 = [v8 objectForKeyedSubscript:v28];
          v31 = [NRMutableDeviceProperty diffFrom:v29 to:v30];
          if (v31)
          {
            v32 = [[NRDevicePropertyDiffType alloc] initWithDiff:v31 andChangeType:v29 != 0];
            [v9 setObject:v32 forKeyedSubscript:v28];

            v8 = v37;
          }
        }

        v25 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v25);
    }
  }

  if ([v9 count])
  {
    v33 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v9];
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)applyDiff:(id)a3 upOnly:(BOOL)a4 notifyParent:(BOOL)a5 unconditional:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (![v9 count])
  {
    v25 = 0;
    v26 = v9;
    goto LABEL_25;
  }

  v30 = __PAIR64__(v6, v7);
  v32 = objc_autoreleasePoolPush();
  v10 = self;
  p_isa = &v10->super.super.isa;
  v12 = v10;
  if (!v6)
  {
    v12 = [(NRMutableDevice *)v10 copyWithZone:0];
  }

  v31 = v12;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v34 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:{v17, v30}];
        v19 = [v18 diff];
        v20 = [v19 value];
        v21 = [p_isa[5] objectForKeyedSubscript:v17];
        v22 = v21;
        if (v19)
        {
          if (!v21 || !a4)
          {
            [p_isa[5] setObject:v20 forKeyedSubscript:v17];
          }
        }

        else
        {
          [p_isa[5] removeObjectForKey:v17];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  if ((v30 & 0x100000000) != 0)
  {
    v23 = v32;
    v24 = v31;
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v30)
    {
      [p_isa notifyParentWithDiff:v13];
    }

    [p_isa notifyObserversWithDiff:{v13, v30}];
    goto LABEL_24;
  }

  v24 = v31;
  v27 = [objc_opt_class() diffFrom:v31 to:p_isa];

  v13 = v27;
  v23 = v32;
  if (v13)
  {
    goto LABEL_21;
  }

LABEL_24:

  objc_autoreleasePoolPop(v23);
  v26 = v13;
  v25 = v26;
LABEL_25:

  v28 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)_createIndex:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v18)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v9 name:@"device property key" classes:v10 owner:self];

        v11 = [v5 objectForKeyedSubscript:v9];
        v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v11 name:@"device property value" classes:v12 owner:self];

        v13 = [v11 value];

        if (v13)
        {
          v14 = [v11 value];
          [v17 setObject:v14 forKeyedSubscript:v9];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NRMutableDevice)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRMutableDevice *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:3];
    v12 = [v10 setWithArray:{v11, v18, v19}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"properties"];

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_properties name:@"device properties dictionary" owner:v5];
    v14 = [(NRMutableDevice *)v5 _createIndex:v13];
    properties = v5->_properties;
    v5->_properties = v14;

LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBMutableDevice alloc] initWithData:v6];
  v9 = [(NRMutableDevice *)v5 initWithProtobuf:v8];

LABEL_6:
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NRMutableDevice)initWithProtobuf:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NRMutableDevice;
  v5 = [(NRMutableStateBase *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [v4 names];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = [v4 names];
        v11 = [v10 objectAtIndexedSubscript:v9];

        v12 = [v4 properties];
        v13 = [v12 objectAtIndexedSubscript:v9];

        v14 = [v13 value];
        if (v14)
        {
          v15 = [NRDevicePropertyDiff unpackPropertyValue:v14];
          if (v15)
          {
            [(NSMutableDictionary *)v6 setObject:v15 forKeyedSubscript:v11];
          }
        }

        ++v9;
        v16 = [v4 names];
        v17 = [v16 count];
      }

      while (v9 < v17);
    }

    properties = v5->_properties;
    v5->_properties = v6;
    v19 = v6;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_properties name:@"device properties dictionary" owner:v5];
  }

  return v5;
}

- (NRPBMutableDevice)protobuf
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 setNames:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  [v3 setProperties:v5];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_properties;
  v25 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v7 = *v27;
    v24 = v3;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [(NRMutableDevice *)self objectForKeyedSubscript:v9];
        if ([v9 isEqual:@"capabilities"] && (objc_msgSend(v10, "value"), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) != 0))
        {
          v13 = [v10 value];
          v14 = v7;
          v15 = v6;
          v16 = self;
          v17 = [[NRMiniUUIDSet alloc] initWithUUIDSet:v13];
          v18 = [[NRMutableDeviceProperty alloc] initWithValue:v17];
          v19 = [(NRMutableDeviceProperty *)v18 protobuf];

          self = v16;
          v6 = v15;
          v7 = v14;
          v3 = v24;
        }

        else
        {
          v19 = [v10 protobuf];
        }

        v20 = [v3 names];
        [v20 addObject:v9];

        if (v19)
        {
          v21 = [v3 properties];
          [v21 addObject:v19];
        }
      }

      v25 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRMutableDevice *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

+ (id)enclosedClassTypes
{
  v2 = +[NRMutableDeviceProperty enclosedClassTypes];
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_properties;
  v3 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) hash] - v6 + 32 * v6;
      }

      v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_8;
  }

  properties = self->_properties;
  if (properties == v5->_properties)
  {
LABEL_6:
    v7 = 1;
  }

  else
  {
    v7 = [(NSMutableDictionary *)properties isEqual:?];
  }

LABEL_8:

  return v7;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"NRMutableDevice[%p]", self];
  v4 = [(NSMutableDictionary *)self->_properties allKeys];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [(NRMutableDevice *)self objectForKeyedSubscript:v10];
        v13 = [v10 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
        v14 = [v12 description];
        v15 = [NRTextFormattingUtilities prefixLinesWithString:v13 withText:v14];

        [v3 appendString:v15];
        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_properties;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(NRMutableDevice *)self objectForKeyedSubscript:v9];
        v11 = [NRMutableDeviceProperty diffFrom:0 to:v10];
        v12 = [[NRDevicePropertyDiffType alloc] initWithDiff:v11 andChangeType:0];
        [v4 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v4];
  v14 = [v17 applyDiff:v13 upOnly:0 notifyParent:0 unconditional:1];

  v15 = *MEMORY[0x1E69E9840];
  return v17;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(NSMutableDictionary *)self->_properties copy];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

@end