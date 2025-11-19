@interface NRDeviceDiff
- (BOOL)isEqual:(id)a3;
- (NRDeviceDiff)initWithCoder:(id)a3;
- (NRDeviceDiff)initWithDiffPropertyDiffs:(id)a3;
- (NRDeviceDiff)initWithProtobuf:(id)a3;
- (NRPBDeviceDiff)protobuf;
- (id)description;
- (unint64_t)hash;
- (void)_createIndex;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDeviceDiff

- (NRDeviceDiff)initWithDiffPropertyDiffs:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NRDeviceDiff;
  v6 = [(NRDeviceDiff *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_diffPropertyDiffs, a3), ![v5 count]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)_createIndex
{
  v17 = *MEMORY[0x1E69E9840];
  [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:*(a1 + 8) name:@"device property diff type" owner:a1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = *(a1 + 8);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v6 name:@"device property diff type key" classes:v7 owner:a1];

        v8 = [*(a1 + 8) objectForKeyedSubscript:v6];
        v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v8 name:@"device property diff type property" classes:v9 owner:a1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NRDeviceDiff)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRDeviceDiff *)self init];
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
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"properties"];
    diffPropertyDiffs = v5->_diffPropertyDiffs;
    v5->_diffPropertyDiffs = v13;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_diffPropertyDiffs name:@"device property diff type" owner:v5];
    [(NRDeviceDiff *)v5 _createIndex];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDeviceDiff alloc] initWithData:v6];
  v9 = [(NRDeviceDiff *)v5 initWithProtobuf:v8];

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRDeviceDiff *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (NRDeviceDiff)initWithProtobuf:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NRDeviceDiff;
  v5 = [(NRDeviceDiff *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_3:
    for (i = v4[2]; ; i = 0)
    {
      v9 = i;
      v10 = [v9 count];

      if (v7 >= v10)
      {
        break;
      }

      if (v4)
      {
        v11 = v4[2];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [v12 objectAtIndexedSubscript:v7];

      if (v4)
      {
        v14 = v4[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = [v15 objectAtIndexedSubscript:v7];

      v17 = [[NRDevicePropertyDiffType alloc] initWithProtobuf:v16];
      [v6 setObject:v17 forKeyedSubscript:v13];

      ++v7;
      if (v4)
      {
        goto LABEL_3;
      }

LABEL_10:
      ;
    }

    v18 = [v6 copy];
    diffPropertyDiffs = v5->_diffPropertyDiffs;
    v5->_diffPropertyDiffs = v18;

    [(NRDeviceDiff *)v5 _createIndex];
  }

  return v5;
}

- (NRPBDeviceDiff)protobuf
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceDiff *)v3 setNames:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceDiff *)v3 setDiffs:v5];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = 8;
  obj = self->_diffPropertyDiffs;
  v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = @"capabilities";
    v31 = @"capabilities";
    v32 = *v36;
    do
    {
      v11 = 0;
      v33 = v8;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = [*(&self->super.super.isa + v6) objectForKeyedSubscript:{v12, v31, v32}];
        if ([v12 isEqual:v10])
        {
          v14 = v6;
          v15 = self;
          v16 = [v13 diff];
          v17 = [v16 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v19 = [v13 diff];
            v20 = [v19 value];

            v21 = [[NRMiniUUIDSet alloc] initWithUUIDSet:v20];
            v22 = [[NRDevicePropertyDiff alloc] initWithValue:v21];
            v23 = -[NRDevicePropertyDiffType initWithDiff:andChangeType:]([NRDevicePropertyDiffType alloc], "initWithDiff:andChangeType:", v22, [v13 changeType]);

            v13 = v23;
          }

          self = v15;
          v6 = v14;
          v9 = v32;
          v8 = v33;
          v10 = v31;
        }

        if (v3)
        {
          v24 = *(v3 + 16);
          [v24 addObject:v12];

          v25 = *(v3 + 8);
        }

        else
        {
          [0 addObject:v12];
          v25 = 0;
        }

        v26 = v25;
        v27 = [v13 protobuf];
        [v26 addObject:v27];

        ++v11;
      }

      while (v8 != v11);
      v28 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v8 = v28;
    }

    while (v28);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_diffPropertyDiffs;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_diffPropertyDiffs objectForKeyedSubscript:v9, v14];
        v11 = [v9 hash] - v7 + 32 * v7;
        v7 = [v10 hash] - v11 + 32 * v11;
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NRDeviceDiff;
  if ([(NRDiffBase *)&v8 isEqual:v4])
  {
    diffPropertyDiffs = self->_diffPropertyDiffs;
    if (diffPropertyDiffs == v4[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSDictionary *)diffPropertyDiffs isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_diffPropertyDiffs allKeys];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_20];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = &stru_1F5B7BE00;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v8);
        v11 = [(NSDictionary *)self->_diffPropertyDiffs objectForKeyedSubscript:v10];
        v12 = [v10 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
        v13 = [v11 description];
        v14 = [NRTextFormattingUtilities prefixLinesWithString:v12 withText:v13];

        v7 = [(__CFString *)v9 stringByAppendingString:v14];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F5B7BE00;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

@end