@interface NRDeviceCollectionDiff
- (BOOL)isEqual:(id)a3;
- (NRDeviceCollectionDiff)initWithCoder:(id)a3;
- (NRDeviceCollectionDiff)initWithDeviceCollectionDiffDeviceDiffs:(id)a3;
- (NRDeviceCollectionDiff)initWithProtobuf:(id)a3;
- (NRPBDeviceCollectionDiff)protobuf;
- (id)description;
- (unint64_t)hash;
- (void)_createIndex;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDeviceCollectionDiff

- (NRDeviceCollectionDiff)initWithDeviceCollectionDiffDeviceDiffs:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NRDeviceCollectionDiff;
  v6 = [(NRDeviceCollectionDiff *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_diffDeviceDiffs, a3), ![v5 count]))
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
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v6 name:@"device collection diff type key" classes:v7 owner:a1];

        v8 = [*(a1 + 8) objectForKeyedSubscript:v6];
        v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v8 name:@"device collection diff type value" classes:v9 owner:a1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NRDeviceCollectionDiff)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRDeviceCollectionDiff *)self init];
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
    diffDeviceDiffs = v5->_diffDeviceDiffs;
    v5->_diffDeviceDiffs = v13;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_diffDeviceDiffs name:@"device collection diff type" owner:v5];
    [(NRDeviceCollectionDiff *)v5 _createIndex];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDeviceCollectionDiff alloc] initWithData:v6];
  v9 = [(NRDeviceCollectionDiff *)v5 initWithProtobuf:v8];

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRDeviceCollectionDiff *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (NRDeviceCollectionDiff)initWithProtobuf:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NRDeviceCollectionDiff;
  v5 = [(NRDeviceCollectionDiff *)&v25 init];
  v6 = v5;
  if (v5)
  {
    v24 = v5;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = 0;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_3:
    for (i = v4[2]; ; i = 0)
    {
      v10 = i;
      v11 = [v10 count];

      if (v8 >= v11)
      {
        break;
      }

      if (v4)
      {
        v12 = v4[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 objectAtIndexedSubscript:v8];

      if ([v14 length] == 16)
      {
        v15 = [v14 toUUID];
        v16 = [NRDeviceDiffType alloc];
        if (v4)
        {
          v17 = v4[1];
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v19 = [v18 objectAtIndexedSubscript:v8];
        v20 = [(NRDeviceDiffType *)v16 initWithProtobuf:v19];
        [v7 setObject:v20 forKeyedSubscript:v15];
      }

      ++v8;
      if (v4)
      {
        goto LABEL_3;
      }

LABEL_12:
      ;
    }

    v21 = [v7 copy];
    v6 = v24;
    v22 = *(v24 + 8);
    *(v24 + 8) = v21;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v6->_diffDeviceDiffs name:@"device collection diff type" owner:v6];
    [(NRDeviceCollectionDiff *)v24 _createIndex];
  }

  return v6;
}

- (NRPBDeviceCollectionDiff)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceCollectionDiff *)v3 setPairingIDs:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceCollectionDiff *)v3 setDiffs:v5];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_diffDeviceDiffs;
  v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [(NSDictionary *)self->_diffDeviceDiffs objectForKeyedSubscript:v10];
        if (v3)
        {
          v12 = *(v3 + 16);
          v13 = [MEMORY[0x1E695DEF0] fromUUID:v10];
          [v12 addObject:v13];

          v14 = *(v3 + 8);
        }

        else
        {
          v17 = [MEMORY[0x1E695DEF0] fromUUID:v10];
          [0 addObject:v17];

          v14 = 0;
        }

        v15 = v14;
        v16 = [v11 protobuf];
        [v15 addObject:v16];

        ++v9;
      }

      while (v7 != v9);
      v18 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_diffDeviceDiffs;
  v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

      v4 = [(NSDictionary *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v8.receiver = self;
  v8.super_class = NRDeviceCollectionDiff;
  if ([(NRDiffBase *)&v8 isEqual:v4])
  {
    diffDeviceDiffs = self->_diffDeviceDiffs;
    if (diffDeviceDiffs == v4[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSDictionary *)diffDeviceDiffs isEqual:?];
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
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_diffDeviceDiffs allKeys];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_10];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = &stru_1F5B7BE00;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = [(NSDictionary *)self->_diffDeviceDiffs objectForKeyedSubscript:v10];
        v12 = [v10 UUIDString];
        v13 = [v12 stringByPaddingToLength:36 withString:@" " startingAtIndex:0];

        v14 = [v11 description];
        v15 = [NRTextFormattingUtilities prefixLinesWithString:v13 withText:v14];

        v7 = [(__CFString *)v9 stringByAppendingString:v15];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F5B7BE00;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __37__NRDeviceCollectionDiff_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 UUIDString];
  v6 = [v4 UUIDString];

  v7 = [v5 compare:v6 options:0];
  return v7;
}

@end