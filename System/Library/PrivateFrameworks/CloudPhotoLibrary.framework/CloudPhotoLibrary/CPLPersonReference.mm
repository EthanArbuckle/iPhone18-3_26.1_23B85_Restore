@interface CPLPersonReference
- (BOOL)isEqual:(id)equal;
- (CPLPersonReference)init;
- (CPLPersonReference)initWithCPLArchiver:(id)archiver;
- (CPLPersonReference)initWithCoder:(id)coder;
- (CPLPersonReference)initWithSerializedString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)plistArchiveWithCPLArchiver:(id)archiver;
- (id)serializedString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLPersonReference

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_personIdentifier;
      personIdentifier = [(CPLPersonReference *)v5 personIdentifier];
      v8 = personIdentifier;
      if (v6 && personIdentifier)
      {
        v9 = [v6 isEqual:personIdentifier];

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
      extraProperties = [(CPLPersonReference *)v5 extraProperties];
      v13 = extraProperties;
      v10 = v11 && extraProperties && ([v11 isEqual:extraProperties] & 1) != 0 || (v11 | v13) == 0;

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
    allKeys = [(NSDictionary *)self->_extraProperties allKeys];
    v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

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

- (CPLPersonReference)initWithSerializedString:(id)string
{
  v28 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v26.receiver = self;
  v26.super_class = CPLPersonReference;
  v21 = [(CPLPersonReference *)&v26 init];
  if (v21)
  {
    v19 = stringCopy;
    v5 = [stringCopy componentsSeparatedByString:@""];;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
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
            v14 = [v13 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v15 = [v12 objectAtIndex:1];
            v16 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

    stringCopy = v19;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  personIdentifier = [(CPLPersonReference *)self personIdentifier];
  [v4 setPersonIdentifier:personIdentifier];

  extraProperties = [(CPLPersonReference *)self extraProperties];
  [v4 setExtraProperties:extraProperties];

  return v4;
}

- (CPLPersonReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPLPersonReference;
  v5 = [(CPLPersonReference *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personIdentifier"];
    [(CPLPersonReference *)v5 setPersonIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extraProperties"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personIdentifier = [(CPLPersonReference *)self personIdentifier];
  if (personIdentifier)
  {
    [coderCopy encodeObject:personIdentifier forKey:@"personIdentifier"];
  }

  extraProperties = [(CPLPersonReference *)self extraProperties];
  if (extraProperties)
  {
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:extraProperties format:200 options:0 error:0];
    if (v6)
    {
      [coderCopy encodeObject:v6 forKey:@"extraProperties"];
    }
  }
}

- (CPLPersonReference)initWithCPLArchiver:(id)archiver
{
  v35 = *MEMORY[0x1E69E9840];
  archiverCopy = archiver;
  v5 = archiverCopy[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [archiverCopy archiverContext];
        v15 = archiverCopy[2];
        v16 = objc_opt_class();
        v17 = archiverCopy[2];
        *buf = 138412802;
        v30 = archiverContext;
        v31 = 2112;
        v32 = v16;
        v33 = 2112;
        v34 = v17;
        v18 = v16;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@: Incorrect string for CPLPersonReference. Found %@: '%@'", buf, 0x20u);
      }
    }

    v19 = archiverCopy[2];
    v20 = objc_opt_class();
    v27 = archiverCopy[2];
    _CPLArchiverFailure(archiverCopy, @"Incorrect string for CPLPersonReference. Found %@: '%@'", v21, v22, v23, v24, v25, v26, v20);
  }

  v28.receiver = self;
  v28.super_class = CPLPersonReference;
  v6 = [(CPLPersonReference *)&v28 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(CPLArchiver *)archiverCopy _decodeKey:v7 class:archiverCopy[2] inDictionary:?];
    v9 = objc_opt_class();
    v10 = [(CPLArchiver *)archiverCopy _decodeKey:v9 class:archiverCopy[2] inDictionary:?];
    [(CPLPersonReference *)v6 setPersonIdentifier:v8];
    [(CPLPersonReference *)v6 setExtraProperties:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)plistArchiveWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  personIdentifier = [(CPLPersonReference *)self personIdentifier];
  if (personIdentifier)
  {
    v7 = [(CPLArchiver *)archiverCopy _encodeKey:?];
    [v5 setObject:personIdentifier forKeyedSubscript:v7];
  }

  extraProperties = [(CPLPersonReference *)self extraProperties];
  if (extraProperties)
  {
    v9 = [(CPLArchiver *)archiverCopy _encodeKey:?];
    [v5 setObject:extraProperties forKeyedSubscript:v9];
  }

  return v5;
}

@end