@interface CCDiscoveredSet
+ (id)_enumerateAndCopySets:(id)a3 setOptionsUsingBlock:(id)a4;
+ (id)addOptions:(unsigned __int8)a3 toSets:(id)a4;
+ (id)removeOptions:(unsigned __int8)a3 fromSets:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiscoveredSet:(id)a3;
- (CCDiscoveredSet)initWithSet:(id)a3 deviceSite:(id)a4 relayedDeviceSites:(id)a5 discoveryErrorCode:(unint64_t)a6 error:(id *)a7;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (unint64_t)hash;
@end

@implementation CCDiscoveredSet

- (CCDiscoveredSet)initWithSet:(id)a3 deviceSite:(id)a4 relayedDeviceSites:(id)a5 discoveryErrorCode:(unint64_t)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = CCDiscoveredSet;
  v15 = [(CCSet *)&v18 initWithSet:a3 error:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceSite, a4);
    objc_storeStrong(&v16->_relayedDeviceSites, a5);
    v16->_discoveryErrorCode = a6;
  }

  return v16;
}

- (id)description
{
  discoveryErrorCode = self->_discoveryErrorCode;
  if (discoveryErrorCode)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = CCRapportSyncErrorDescription(discoveryErrorCode);
    v10.receiver = self;
    v10.super_class = CCDiscoveredSet;
    v6 = [(CCSet *)&v10 description];
    v7 = [v4 stringWithFormat:@"(%@) %@", v5, v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CCDiscoveredSet;
    v7 = [(CCSet *)&v9 description];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDiscoveredSet *)self isEqualToDiscoveredSet:v5];
  }

  return v6;
}

- (BOOL)isEqualToDiscoveredSet:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CCDiscoveredSet;
  if (![(CCSet *)&v17 isEqual:v5])
  {
    v10 = 0;
    goto LABEL_24;
  }

  v6 = 48;
  deviceSite = self->_deviceSite;
  v8 = deviceSite;
  if (!deviceSite)
  {
    v3 = [v5 deviceSite];
    if (!v3)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v8 = self->_deviceSite;
  }

  v6 = [v5 deviceSite];
  if (([v8 isEqual:v6] & 1) == 0)
  {

    v10 = 0;
    goto LABEL_22;
  }

  v9 = 1;
LABEL_10:
  v11 = 56;
  relayedDeviceSites = self->_relayedDeviceSites;
  v13 = relayedDeviceSites;
  if (!relayedDeviceSites)
  {
    v8 = [v5 relayedDeviceSites];
    if (!v8)
    {
      v14 = 0;
LABEL_17:
      discoveryErrorCode = self->_discoveryErrorCode;
      v10 = discoveryErrorCode == [v5 discoveryErrorCode];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v13 = self->_relayedDeviceSites;
  }

  v11 = [v5 relayedDeviceSites];
  if ([(NSArray *)v13 isEqual:v11])
  {
    v14 = 1;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_18:

LABEL_19:
  if (relayedDeviceSites)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v9)
  {
LABEL_21:
  }

LABEL_22:
  if (!deviceSite)
  {
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = CCDiscoveredSet;
  v3 = [(CCSet *)&v9 hash];
  v4 = [(CCDeviceSite *)self->_deviceSite hash]^ v3;
  v5 = v4 ^ [(NSArray *)self->_relayedDeviceSites hash];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_discoveryErrorCode];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)initFromDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CCDiscoveredSet;
  v5 = [(CCSet *)&v30 initFromDictionary:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69939E0]);
    v7 = [v4 objectForKeyedSubscript:@"deviceSite"];
    v8 = [v6 initFromDictionary:v7];
    v9 = v5[6];
    v24 = v5;
    v5[6] = v8;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v4;
    v10 = [v4 objectForKeyedSubscript:@"relayedDeviceSites"];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [objc_alloc(MEMORY[0x1E69939E0]) initFromDictionary:v16];
          if (v17)
          {
            if (!v13)
            {
              v13 = objc_opt_new();
            }

            [v13 addObject:{v17, v24}];
          }

          else
          {
            v18 = __biome_log_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v16;
              _os_log_error_impl(&dword_1DA444000, v18, OS_LOG_TYPE_ERROR, "Failed to decode relayed device site: %@", buf, 0xCu);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v19 = [v13 copy];
    v5 = v24;
    v20 = v24[7];
    v24[7] = v19;

    v4 = v25;
    v21 = [v25 objectForKeyedSubscript:@"errorCode"];
    v24[8] = [v21 unsignedIntegerValue];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  deviceSite = self->_deviceSite;
  if (deviceSite)
  {
    v5 = [(CCDeviceSite *)deviceSite dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"deviceSite"];
  }

  if (self->_relayedDeviceSites)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_relayedDeviceSites, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_relayedDeviceSites;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"relayedDeviceSites"];
  }

  if (self->_discoveryErrorCode)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v3 setObject:v13 forKeyedSubscript:@"errorCode"];
  }

  v17.receiver = self;
  v17.super_class = CCDiscoveredSet;
  v14 = [(CCSet *)&v17 dictionaryRepresentation];
  [v3 addEntriesFromDictionary:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)addOptions:(unsigned __int8)a3 toSets:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CCDiscoveredSet_addOptions_toSets___block_invoke;
  v6[3] = &__block_descriptor_33_e8_C12__0C8l;
  v7 = a3;
  v4 = [a1 _enumerateAndCopySets:a4 setOptionsUsingBlock:v6];

  return v4;
}

+ (id)removeOptions:(unsigned __int8)a3 fromSets:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CCDiscoveredSet_removeOptions_fromSets___block_invoke;
  v6[3] = &__block_descriptor_33_e8_C12__0C8l;
  v7 = a3;
  v4 = [a1 _enumerateAndCopySets:a4 setOptionsUsingBlock:v6];

  return v4;
}

+ (id)_enumerateAndCopySets:(id)a3 setOptionsUsingBlock:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    *&v8 = 138412802;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = v6[2](v6, [v12 options]);
        v25 = 0;
        v14 = [v12 copyWithOptions:v13 error:&v25];
        v15 = v25;
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          [v23 addObject:v14];
        }

        else
        {
          v18 = __biome_log_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = BMResourceOptionsDescription();
            *buf = v22;
            v31 = v19;
            v32 = 2112;
            v33 = v12;
            v34 = 2112;
            v35 = v16;
            _os_log_error_impl(&dword_1DA444000, v18, OS_LOG_TYPE_ERROR, "Failed to add options %@ to set %@ with error %@", buf, 0x20u);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v23;
}

@end