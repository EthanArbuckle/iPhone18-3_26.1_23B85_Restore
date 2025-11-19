@interface NRMutableDeviceCollection
+ (id)diffFrom:(id)a3 to:(id)a4;
+ (void)parseDiff:(id)a3 forPropertyChange:(id)a4 withBlock:(id)a5;
- (BOOL)allAltAccount;
- (BOOL)isEqual:(id)a3;
- (BOOL)paired;
- (NRMutableDevice)activeDevice;
- (NRMutableDeviceCollection)init;
- (NRMutableDeviceCollection)initWithCoder:(id)a3;
- (NRMutableDeviceCollection)initWithProtobuf:(id)a3;
- (NRPBMutableDeviceCollection)protobuf;
- (NSUUID)activeDeviceID;
- (id)_diffsToChangeActiveDeviceToDeviceID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)_createIndex;
- (void)child:(id)a3 didApplyDiff:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)removeDeviceForPairingID:(id)a3;
- (void)setActiveDeviceID:(id)a3;
- (void)setDevice:(id)a3 forPairingID:(id)a4;
@end

@implementation NRMutableDeviceCollection

- (NRMutableDeviceCollection)init
{
  v8.receiver = self;
  v8.super_class = NRMutableDeviceCollection;
  v2 = [(NRMutableStateBase *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    deviceCollection = v2->_deviceCollection;
    v2->_deviceCollection = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    childMap = v2->_childMap;
    v2->_childMap = v5;
  }

  return v2;
}

- (void)setDevice:(id)a3 forPairingID:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  deviceCollection = self->_deviceCollection;
  v8 = a3;
  v9 = [(NSMutableDictionary *)deviceCollection objectForKeyedSubscript:v6];
  v10 = [NRMutableDevice diffFrom:v9 to:v8];

  if (v10)
  {
    v11 = [[NRDeviceDiffType alloc] initWithDiff:v10 andChangeType:1];
    v12 = [NRDeviceCollectionDiff alloc];
    v17 = v6;
    v18[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [(NRDeviceCollectionDiff *)v12 initWithDeviceCollectionDiffDeviceDiffs:v13];

    v15 = [(NRMutableStateBase *)self applyDiff:v14];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeDeviceForPairingID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
  v6 = [NRDeviceCollectionDiff alloc];
  v11 = v4;
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v8 = [(NRDeviceCollectionDiff *)v6 initWithDeviceCollectionDiffDeviceDiffs:v7];
  v9 = [(NRMutableStateBase *)self applyDiff:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NRMutableDeviceCollection;
  [(NRMutableStateBase *)&v14 invalidate];
  [(NSMutableDictionary *)self->_childMap removeAllObjects];
  v3 = [(NSMutableDictionary *)self->_deviceCollection allValues];
  [(NSMutableDictionary *)self->_deviceCollection removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)diffFrom:(id)a3 to:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = 0x1ED6EF000uLL;
  v41 = v8;
  if ([v7 count])
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = [v7[5] allKeys];
    v13 = [v11 setWithArray:v12];
    v14 = [v13 mutableCopy];

    v15 = MEMORY[0x1E695DFD8];
    v16 = [v8[5] allKeys];
    v17 = [v15 setWithArray:v16];

    [v14 minusSet:v17];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v46 + 1) + 8 * i);
          v24 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
          [v9 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v20);
    }

    v10 = 0x1ED6EF000uLL;
  }

  if ([v8 count])
  {
    v25 = MEMORY[0x1E695DFD8];
    v26 = [v8[5] allKeys];
    v27 = [v25 setWithArray:v26];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v27;
    v28 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v42 + 1) + 8 * j);
          if (v7)
          {
            v33 = [*(v7 + *(v10 + 372)) objectForKeyedSubscript:*(*(&v42 + 1) + 8 * j)];
          }

          else
          {
            v33 = 0;
          }

          v34 = [*(v8 + *(v10 + 372)) objectForKeyedSubscript:v32];
          v35 = [NRMutableDevice diffFrom:v33 to:v34];
          if (v35)
          {
            v36 = [[NRDeviceDiffType alloc] initWithDiff:v35 andChangeType:v33 != 0];
            [v9 setObject:v36 forKeyedSubscript:v32];

            v8 = v41;
          }

          v10 = 0x1ED6EF000;
        }

        v29 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v29);
    }
  }

  if ([v9 count])
  {
    v37 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v9];
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (void)child:(id)a3 didApplyDiff:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 count];
  v9 = [NRDeviceDiffType alloc];
  if (v8)
  {
    v10 = v6;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 2;
  }

  v12 = [(NRDeviceDiffType *)v9 initWithDiff:v10 andChangeType:v11];
  childMap = self->_childMap;
  v14 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];

  v15 = [(NSMutableDictionary *)childMap objectForKeyedSubscript:v14];

  v16 = [NRDeviceCollectionDiff alloc];
  v20 = v15;
  v21[0] = v12;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v18 = [(NRDeviceCollectionDiff *)v16 initWithDeviceCollectionDiffDeviceDiffs:v17];

  if (v18)
  {
    [(NRMutableStateBase *)self notifyParentWithDiff:v18];
    [(NRMutableStateBase *)self notifyObserversWithDiff:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_createIndex
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_deviceCollection;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v7 name:@"device collection dictionary key" classes:v8 owner:self];

        v9 = [(NSMutableDictionary *)self->_deviceCollection objectForKeyedSubscript:v7];
        v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v9 name:@"device collection dictionary value" classes:v10 owner:self];

        [v9 setParentDelegate:self];
        childMap = self->_childMap;
        v12 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v9];
        [(NSMutableDictionary *)childMap setObject:v7 forKeyedSubscript:v12];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NRMutableDeviceCollection)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRMutableDeviceCollection *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:3];
    v12 = [v10 setWithArray:{v11, v17, v18}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"devices"];
    deviceCollection = v5->_deviceCollection;
    v5->_deviceCollection = v13;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_deviceCollection name:@"device collection dictionary" owner:v5];
    [(NRMutableDeviceCollection *)v5 _createIndex];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBMutableDeviceCollection alloc] initWithData:v6];
  v9 = [(NRMutableDeviceCollection *)v5 initWithProtobuf:v8];

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NRMutableDeviceCollection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [(NRMutableDeviceCollection *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [v4 pairingIDs];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = [v4 pairingIDs];
        v11 = [v10 objectAtIndexedSubscript:v9];

        if ([v11 length] == 16)
        {
          v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v11, "bytes")}];
          v13 = [v4 devices];
          v14 = [v13 objectAtIndexedSubscript:v9];

          v15 = [[NRMutableDevice alloc] initWithProtobuf:v14];
          [(NSMutableDictionary *)v6 setObject:v15 forKeyedSubscript:v12];
        }

        ++v9;
        v16 = [v4 pairingIDs];
        v17 = [v16 count];
      }

      while (v9 < v17);
    }

    deviceCollection = v5->_deviceCollection;
    v5->_deviceCollection = v6;

    [(NRMutableDeviceCollection *)v5 _createIndex];
  }

  return v5;
}

- (NRPBMutableDeviceCollection)protobuf
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 setPairingIDs:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  [v3 setDevices:v5];

  v6 = [(NSMutableDictionary *)self->_deviceCollection copy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v20}];
        v14 = [v3 pairingIDs];
        v15 = [MEMORY[0x1E695DEF0] fromUUID:v12];
        [v14 addObject:v15];

        v16 = [v3 devices];
        v17 = [v13 protobuf];
        [v16 addObject:v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRMutableDeviceCollection *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_deviceCollection;
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

  deviceCollection = self->_deviceCollection;
  if (deviceCollection == v5->_deviceCollection)
  {
LABEL_6:
    v7 = 1;
  }

  else
  {
    v7 = [(NSMutableDictionary *)deviceCollection isEqual:?];
  }

LABEL_8:

  return v7;
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableDictionary *)self->_deviceCollection allKeys];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = &stru_1F5B7BE00;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v8);
        v11 = objc_autoreleasePoolPush();
        v12 = [(NSMutableDictionary *)self->_deviceCollection objectForKeyedSubscript:v10];
        v13 = [v10 UUIDString];
        v14 = [v13 stringByPaddingToLength:36 withString:@" " startingAtIndex:0];

        v15 = [v12 description];
        v16 = [NRTextFormattingUtilities prefixLinesWithString:v14 withText:v15];

        v7 = [(__CFString *)v9 stringByAppendingString:v16];

        objc_autoreleasePoolPop(v11);
        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F5B7BE00;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __40__NRMutableDeviceCollection_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 UUIDString];
  v6 = [v4 UUIDString];

  v7 = [v5 compare:v6 options:0];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self;
  v6 = [(NRMutableDeviceCollection *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NRMutableDeviceCollection *)v5 objectForKeyedSubscript:v10];
        v12 = [NRMutableDevice diffFrom:0 to:v11];
        v13 = [[NRDeviceDiffType alloc] initWithDiff:v12 andChangeType:0];
        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [(NRMutableDeviceCollection *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
  v15 = [v18 applyDiff:v14 upOnly:0 notifyParent:0 unconditional:1];

  v16 = *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(NSMutableDictionary *)self->_deviceCollection copy];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (NRMutableDevice)activeDevice
{
  v3 = [(NRMutableDeviceCollection *)self activeDeviceID];
  v4 = [(NRMutableDeviceCollection *)self objectForKeyedSubscript:v3];

  return v4;
}

- (NSUUID)activeDeviceID
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self;
  v3 = [(NRMutableDeviceCollection *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [(NRMutableDeviceCollection *)v2 objectForKeyedSubscript:v7, v14];
        v9 = [v8 objectForKeyedSubscript:@"isActive"];
        v10 = [v9 value];
        if ([v10 BOOLValue])
        {
          v11 = v7;

          goto LABEL_11;
        }
      }

      v4 = [(NRMutableDeviceCollection *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setActiveDeviceID:(id)a3
{
  v4 = [(NRMutableDeviceCollection *)self _diffsToChangeActiveDeviceToDeviceID:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
    v6 = [(NRMutableStateBase *)self applyDiff:v5];

    v4 = v7;
  }
}

- (id)_diffsToChangeActiveDeviceToDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(NRMutableDeviceCollection *)self activeDeviceID];
  v6 = v5;
  if (v5 == v4 || ([v5 isEqual:v4] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E695DF00] date];
    if (v6)
    {
      v9 = [NRDeviceDiff alloc];
      v10 = [NRMutableDevice diffsToActivate:0 withDate:v8];
      v11 = [(NRDeviceDiff *)v9 initWithDiffPropertyDiffs:v10];

      v12 = [[NRDeviceDiffType alloc] initWithDiff:v11 andChangeType:1];
      [v7 setObject:v12 forKeyedSubscript:v6];
    }

    if (v4)
    {
      v13 = [NRDeviceDiff alloc];
      v14 = [NRMutableDevice diffsToActivate:1 withDate:v8];
      v15 = [(NRDeviceDiff *)v13 initWithDiffPropertyDiffs:v14];

      v16 = [[NRDeviceDiffType alloc] initWithDiff:v15 andChangeType:1];
      [v7 setObject:v16 forKeyedSubscript:v4];
    }
  }

  return v7;
}

- (BOOL)paired
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self;
  v3 = [(NRMutableDeviceCollection *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [(NRMutableDeviceCollection *)v2 objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i), v10];
        v7 = [v6 isPaired];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NRMutableDeviceCollection *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)allAltAccount
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self;
  v3 = [(NRMutableDeviceCollection *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [(NRMutableDeviceCollection *)v2 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        if ([v8 isPaired] && (objc_msgSend(v8, "isArchived") & 1) == 0)
        {
          v9 = [v8 isAltAccount];
          v4 |= v9;
          v5 |= v9 ^ 1;
        }
      }

      v3 = [(NRMutableDeviceCollection *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
    LOBYTE(v3) = (v5 ^ 1) & v4;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

+ (void)parseDiff:(id)a3 forPropertyChange:(id)a4 withBlock:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v23 = a4;
  v21 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = *v25;
    v20 = v21 + 16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:{v11, v20}];
        v13 = [v12 diff];
        v14 = [v13 objectForKeyedSubscript:v23];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 changeType];
          v17 = [v15 diff];
          v18 = [v17 value];
          (*(v21 + 2))(v21, v11, v16, v18);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end