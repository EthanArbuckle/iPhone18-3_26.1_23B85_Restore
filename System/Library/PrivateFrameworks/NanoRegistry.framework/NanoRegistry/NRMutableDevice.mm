@interface NRMutableDevice
+ (id)diffFrom:(id)from to:(id)to;
+ (id)diffsToActivate:(BOOL)activate withDate:(id)date;
+ (id)diffsToClearStatusCodeAndCompatibilityState;
+ (id)diffsToPair:(BOOL)pair withDate:(id)date;
+ (id)diffsToSetStatusCode:(unint64_t)code;
+ (id)enclosedClassTypes;
+ (void)parseDiff:(id)diff forPropertyChange:(id)change withBlock:(id)block;
- (BOOL)isActive;
- (BOOL)isAltAccount;
- (BOOL)isArchived;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaired;
- (BOOL)isSetup;
- (BOOL)migratable;
- (BOOL)supportsCapability:(id)capability;
- (NRMutableDevice)init;
- (NRMutableDevice)initWithCoder:(id)coder;
- (NRMutableDevice)initWithProtobuf:(id)protobuf;
- (NRPBMutableDevice)protobuf;
- (NSUUID)pairingID;
- (id)_createIndex:(id)index;
- (id)applyDiff:(id)diff upOnly:(BOOL)only notifyParent:(BOOL)parent unconditional:(BOOL)unconditional;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)propertyForName:(id)name;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)removePropertyForName:(id)name;
- (void)setProperty:(id)property forName:(id)name;
@end

@implementation NRMutableDevice

- (NRMutableDevice)init
{
  v6.receiver = self;
  v6.super_class = NRMutableDevice;
  v2 = [(NRMutableStateBase *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    properties = v2->_properties;
    v2->_properties = dictionary;
  }

  return v2;
}

- (NSUUID)pairingID
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"pairingID"];
  value = [v2 value];

  return value;
}

- (BOOL)isPaired
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isPaired"];
  value = [v2 value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)isSetup
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isSetup"];
  value = [v2 value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)isActive
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isActive"];
  value = [v2 value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)isArchived
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isArchived"];
  value = [v2 value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)isAltAccount
{
  v2 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isAltAccount"];
  value = [v2 value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)migratable
{
  v3 = [(NRMutableDevice *)self objectForKeyedSubscript:@"isArchived"];
  value = [v3 value];

  bOOLValue = [value BOOLValue];
  v6 = [(NRMutableDevice *)self objectForKeyedSubscript:@"migrationConsent"];
  value2 = [v6 value];

  bOOLValue2 = [value2 BOOLValue];
  v9 = [(NRMutableDevice *)self objectForKeyedSubscript:@"migrationConsentDate"];
  value3 = [v9 value];

  if (value3)
  {
    [value3 timeIntervalSinceNow];
    v12 = v11 <= 0.0;
    if (v11 < -86400.0)
    {
      v12 = 0;
    }

    v13 = v12 & bOOLValue2 & bOOLValue;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)supportsCapability:(id)capability
{
  capabilityCopy = capability;
  v5 = [(NRMutableDevice *)self objectForKeyedSubscript:@"capabilities"];
  value = [v5 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [value hasUUID:capabilityCopy];
  }

  else
  {
    v7 = [value containsObject:capabilityCopy];
  }

  v8 = v7;

  return v8;
}

+ (id)diffsToActivate:(BOOL)activate withDate:(id)date
{
  activateCopy = activate;
  v25[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [NRDevicePropertyDiff alloc];
  if (activateCopy)
  {
    v8 = [(NRDevicePropertyDiff *)v7 initWithValue:MEMORY[0x1E695E118]];
    v9 = [(NRDevicePropertyDiffType *)v6 initWithDiff:v8 andChangeType:1];

    v10 = [NRDevicePropertyDiffType alloc];
    v11 = [[NRDevicePropertyDiff alloc] initWithValue:dateCopy];

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
    v18 = [[NRDevicePropertyDiff alloc] initWithValue:dateCopy];

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

+ (id)diffsToPair:(BOOL)pair withDate:(id)date
{
  pairCopy = pair;
  v28[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [NRDevicePropertyDiff alloc];
  if (pairCopy)
  {
    v8 = [(NRDevicePropertyDiff *)v7 initWithValue:MEMORY[0x1E695E118]];
    v9 = [(NRDevicePropertyDiffType *)v6 initWithDiff:v8 andChangeType:1];

    if (dateCopy)
    {
      v10 = [NRDevicePropertyDiffType alloc];
      v11 = [[NRDevicePropertyDiff alloc] initWithValue:dateCopy];
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

+ (id)diffsToSetStatusCode:(unint64_t)code
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [NRDevicePropertyDiff alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:code];
  v6 = [(NRDevicePropertyDiff *)v4 initWithValue:v5];

  v7 = [[NRDevicePropertyDiffType alloc] initWithDiff:v6 andChangeType:0];
  v8 = v7;
  if (code)
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

+ (void)parseDiff:(id)diff forPropertyChange:(id)change withBlock:(id)block
{
  blockCopy = block;
  v7 = [diff objectForKeyedSubscript:change];
  v8 = v7;
  if (v7)
  {
    changeType = [v7 changeType];
    diff = [v8 diff];
    value = [diff value];
    blockCopy[2](blockCopy, changeType, value);
  }
}

- (void)setProperty:(id)property forName:(id)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  propertyCopy = property;
  v8 = [(NRMutableDevice *)self objectForKeyedSubscript:nameCopy];
  v9 = [NRMutableDeviceProperty diffFrom:v8 to:propertyCopy];

  v10 = [[NRDevicePropertyDiffType alloc] initWithDiff:v9 andChangeType:1];
  if (v10)
  {
    v11 = [NRDeviceDiff alloc];
    v16 = nameCopy;
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

- (void)removePropertyForName:(id)name
{
  v12[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v6 = [NRDeviceDiff alloc];
  v11 = nameCopy;
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

- (id)propertyForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:name];
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

+ (id)diffFrom:(id)from to:(id)to
{
  v48 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v7 = fromCopy;
  v8 = toCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = v8;
  if ([v7 count])
  {
    v10 = MEMORY[0x1E695DFD8];
    allKeys = [v7[5] allKeys];
    v12 = [v10 setWithArray:allKeys];
    v13 = [v12 mutableCopy];

    v14 = MEMORY[0x1E695DFD8];
    allKeys2 = [v8[5] allKeys];
    v16 = [v14 setWithArray:allKeys2];

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
          [dictionary setObject:v23 forKeyedSubscript:v22];
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
            [dictionary setObject:v32 forKeyedSubscript:v28];

            v8 = v37;
          }
        }

        v25 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v25);
    }
  }

  if ([dictionary count])
  {
    v33 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:dictionary];
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)applyDiff:(id)diff upOnly:(BOOL)only notifyParent:(BOOL)parent unconditional:(BOOL)unconditional
{
  unconditionalCopy = unconditional;
  parentCopy = parent;
  v40 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if (![diffCopy count])
  {
    v25 = 0;
    v26 = diffCopy;
    goto LABEL_25;
  }

  v30 = __PAIR64__(unconditionalCopy, parentCopy);
  v32 = objc_autoreleasePoolPush();
  selfCopy = self;
  p_isa = &selfCopy->super.super.isa;
  v12 = selfCopy;
  if (!unconditionalCopy)
  {
    v12 = [(NRMutableDevice *)selfCopy copyWithZone:0];
  }

  v31 = v12;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = diffCopy;
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
        diff = [v18 diff];
        value = [diff value];
        v21 = [p_isa[5] objectForKeyedSubscript:v17];
        v22 = v21;
        if (diff)
        {
          if (!v21 || !only)
          {
            [p_isa[5] setObject:value forKeyedSubscript:v17];
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

- (id)_createIndex:(id)index
{
  v24 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = indexCopy;
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

        value = [v11 value];

        if (value)
        {
          value2 = [v11 value];
          [dictionary setObject:value2 forKeyedSubscript:v9];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (NRMutableDevice)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(NRMutableDevice *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:3];
    v12 = [v10 setWithArray:{v11, v18, v19}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"properties"];

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

- (NRMutableDevice)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = NRMutableDevice;
  v5 = [(NRMutableStateBase *)&v21 init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    names = [protobufCopy names];
    v8 = [names count];

    if (v8)
    {
      v9 = 0;
      do
      {
        names2 = [protobufCopy names];
        v11 = [names2 objectAtIndexedSubscript:v9];

        properties = [protobufCopy properties];
        v13 = [properties objectAtIndexedSubscript:v9];

        value = [v13 value];
        if (value)
        {
          v15 = [NRDevicePropertyDiff unpackPropertyValue:value];
          if (v15)
          {
            [(NSMutableDictionary *)dictionary setObject:v15 forKeyedSubscript:v11];
          }
        }

        ++v9;
        names3 = [protobufCopy names];
        v17 = [names3 count];
      }

      while (v9 < v17);
    }

    properties = v5->_properties;
    v5->_properties = dictionary;
    v19 = dictionary;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_properties name:@"device properties dictionary" owner:v5];
  }

  return v5;
}

- (NRPBMutableDevice)protobuf
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  [v3 setNames:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [v3 setProperties:array2];

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
          value = [v10 value];
          v14 = v7;
          v15 = v6;
          selfCopy = self;
          v17 = [[NRMiniUUIDSet alloc] initWithUUIDSet:value];
          v18 = [[NRMutableDeviceProperty alloc] initWithValue:v17];
          protobuf = [(NRMutableDeviceProperty *)v18 protobuf];

          self = selfCopy;
          v6 = v15;
          v7 = v14;
          v3 = v24;
        }

        else
        {
          protobuf = [v10 protobuf];
        }

        names = [v3 names];
        [names addObject:v9];

        if (protobuf)
        {
          properties = [v3 properties];
          [properties addObject:protobuf];
        }
      }

      v25 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRMutableDevice *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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
  allKeys = [(NSMutableDictionary *)self->_properties allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_8];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        [dictionary setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:dictionary];
  v14 = [v17 applyDiff:v13 upOnly:0 notifyParent:0 unconditional:1];

  v15 = *MEMORY[0x1E69E9840];
  return v17;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v8 = [(NSMutableDictionary *)self->_properties copy];
  v9 = [v8 countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

@end