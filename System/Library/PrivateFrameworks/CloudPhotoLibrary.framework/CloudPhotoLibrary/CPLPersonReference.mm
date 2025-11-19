@interface CPLPersonReference
- (BOOL)isEqual:(id)a3;
- (CPLPersonReference)init;
- (CPLPersonReference)initWithCPLArchiver:(id)a3;
- (CPLPersonReference)initWithCoder:(id)a3;
- (CPLPersonReference)initWithSerializedString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)plistArchiveWithCPLArchiver:(id)a3;
- (id)serializedString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLPersonReference

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_personIdentifier;
      v7 = [(CPLPersonReference *)v5 personIdentifier];
      v8 = v7;
      if (v6 && v7)
      {
        v9 = [v6 isEqual:v7];

        if ((v9 & 1) == 0)
        {
LABEL_6:
          v10 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {

        if (v6 | v8)
        {
          goto LABEL_6;
        }
      }

      v11 = self->_extraProperties;
      v12 = [(CPLPersonReference *)v5 extraProperties];
      v13 = v12;
      v10 = v11 && v12 && ([v11 isEqual:v12] & 1) != 0 || (v11 | v13) == 0;

      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)serializedString
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@%@%@", @"id", @"=", self->_personIdentifier];
  if ([(NSDictionary *)self->_extraProperties count])
  {
    v4 = [(NSDictionary *)self->_extraProperties allKeys];
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [(NSDictionary *)self->_extraProperties objectForKeyedSubscript:v11];
          [v3 appendFormat:@"%@%@%@%@", @";", v11, @"=", v12, v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CPLPersonReference)initWithSerializedString:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CPLPersonReference;
  v21 = [(CPLPersonReference *)&v26 init];
  if (v21)
  {
    v19 = v4;
    v5 = [v4 componentsSeparatedByString:@""];;
    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v22 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndex:0];
            v14 = [v13 stringByTrimmingCharactersInSet:v6];

            v15 = [v12 objectAtIndex:1];
            v16 = [v15 stringByTrimmingCharactersInSet:v6];

            if ([v14 isEqualToString:@"id"])
            {
              objc_storeStrong(&v21->_personIdentifier, v16);
            }

            else
            {
              [v20 setValue:v16 forKey:v14];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    if ([v20 count])
    {
      objc_storeStrong(&v21->_extraProperties, v20);
    }

    v4 = v19;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v21;
}

- (CPLPersonReference)init
{
  v3.receiver = self;
  v3.super_class = CPLPersonReference;
  return [(CPLPersonReference *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(CPLPersonReference *)self personIdentifier];
  [v4 setPersonIdentifier:v5];

  v6 = [(CPLPersonReference *)self extraProperties];
  [v4 setExtraProperties:v6];

  return v4;
}

- (CPLPersonReference)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPLPersonReference;
  v5 = [(CPLPersonReference *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personIdentifier"];
    [(CPLPersonReference *)v5 setPersonIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extraProperties"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
      if (v8)
      {
        [(CPLPersonReference *)v5 setExtraProperties:v8];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CPLPersonReference *)self personIdentifier];
  if (v4)
  {
    [v7 encodeObject:v4 forKey:@"personIdentifier"];
  }

  v5 = [(CPLPersonReference *)self extraProperties];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:0];
    if (v6)
    {
      [v7 encodeObject:v6 forKey:@"extraProperties"];
    }
  }
}

- (CPLPersonReference)initWithCPLArchiver:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v4 archiverContext];
        v15 = v4[2];
        v16 = objc_opt_class();
        v17 = v4[2];
        *buf = 138412802;
        v30 = v14;
        v31 = 2112;
        v32 = v16;
        v33 = 2112;
        v34 = v17;
        v18 = v16;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@: Incorrect string for CPLPersonReference. Found %@: '%@'", buf, 0x20u);
      }
    }

    v19 = v4[2];
    v20 = objc_opt_class();
    v27 = v4[2];
    _CPLArchiverFailure(v4, @"Incorrect string for CPLPersonReference. Found %@: '%@'", v21, v22, v23, v24, v25, v26, v20);
  }

  v28.receiver = self;
  v28.super_class = CPLPersonReference;
  v6 = [(CPLPersonReference *)&v28 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(CPLArchiver *)v4 _decodeKey:v7 class:v4[2] inDictionary:?];
    v9 = objc_opt_class();
    v10 = [(CPLArchiver *)v4 _decodeKey:v9 class:v4[2] inDictionary:?];
    [(CPLPersonReference *)v6 setPersonIdentifier:v8];
    [(CPLPersonReference *)v6 setExtraProperties:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)plistArchiveWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(CPLPersonReference *)self personIdentifier];
  if (v6)
  {
    v7 = [(CPLArchiver *)v4 _encodeKey:?];
    [v5 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [(CPLPersonReference *)self extraProperties];
  if (v8)
  {
    v9 = [(CPLArchiver *)v4 _encodeKey:?];
    [v5 setObject:v8 forKeyedSubscript:v9];
  }

  return v5;
}

@end