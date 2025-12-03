@interface IMMessagePartSyndicationAssetDescriptor
+ (id)descriptorFromSerializedString:(id)string;
- (BOOL)isEqual:(id)equal;
- (IMMessagePartSyndicationAssetDescriptor)initWithAssetSyndications:(id)syndications;
- (IMMessagePartSyndicationAssetDescriptor)initWithCoder:(id)coder;
- (NSString)serializedString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)syndicationForPartIndex:(unint64_t)index asset:(int64_t)asset;
- (void)encodeWithCoder:(id)coder;
- (void)removeSyndicationAssetsInfoFor:(int64_t)for;
- (void)replaceSyndicationAssetsInfoWith:(id)with asset:(int64_t)asset;
- (void)updateSyndicationAssetWithInfo:(id)info asset:(int64_t)asset;
@end

@implementation IMMessagePartSyndicationAssetDescriptor

- (IMMessagePartSyndicationAssetDescriptor)initWithAssetSyndications:(id)syndications
{
  syndicationsCopy = syndications;
  v9.receiver = self;
  v9.super_class = IMMessagePartSyndicationAssetDescriptor;
  v6 = [(IMMessagePartSyndicationAssetDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetSyndications, syndications);
  }

  return v7;
}

- (id)syndicationForPartIndex:(unint64_t)index asset:(int64_t)asset
{
  assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];

  if (assetSyndications)
  {
    assetSyndications2 = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
    v10 = [assetSyndications2 objectForKey:v9];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
      v12 = [v10 objectForKey:v11];

      if (v12)
      {
        v12 = v12;
        v13 = v12;
      }

      else
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
        intValue = [v15 intValue];

        v17 = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C2160(index, intValue, v17);
        }

        v13 = 0;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
      [v14 intValue];

      v12 = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C21FC();
      }

      v13 = 0;
    }
  }

  else
  {
    assetSyndications2 = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
    if (os_log_type_enabled(assetSyndications2, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2284();
    }

    v13 = 0;
  }

  return v13;
}

- (void)updateSyndicationAssetWithInfo:(id)info asset:(int64_t)asset
{
  v36[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = infoCopy;
  if (infoCopy && [infoCopy count])
  {
    assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];

    if (assetSyndications)
    {
      assetSyndications2 = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
      v10 = [assetSyndications2 mutableCopy];

      assetSyndications3 = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
      v13 = [assetSyndications3 objectForKey:v12];
      v14 = [v13 mutableCopy];

      v15 = [v7 copy];
      if (v14 && v15)
      {
        v28 = v15;
        v29 = v10;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * i);
              v22 = [v16 objectForKey:{v21, v28}];
              v23 = v22;
              if (v21)
              {
                v24 = v22 == 0;
              }

              else
              {
                v24 = 1;
              }

              if (!v24)
              {
                [(NSString *)v14 setObject:v22 forKeyedSubscript:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v18);
        }

        v25 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
        v10 = v29;
        [v29 setObject:v14 forKeyedSubscript:v25];

        [(IMMessagePartSyndicationAssetDescriptor *)self setAssetSyndications:v29];
        serializedString = self->_serializedString;
        self->_serializedString = 0;

        v15 = v28;
      }
    }

    else
    {
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
      v35 = v27;
      v36[0] = v7;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];

      [(IMMessagePartSyndicationAssetDescriptor *)self setAssetSyndications:v10];
      v14 = self->_serializedString;
      self->_serializedString = 0;
    }
  }
}

- (void)replaceSyndicationAssetsInfoWith:(id)with asset:(int64_t)asset
{
  v17[1] = *MEMORY[0x1E69E9840];
  withCopy = with;
  v7 = withCopy;
  if (withCopy && [withCopy count])
  {
    assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];

    if (assetSyndications)
    {
      assetSyndications2 = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
      v10 = [assetSyndications2 mutableCopy];

      v11 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
      [v10 setObject:v7 forKeyedSubscript:v11];

      [(IMMessagePartSyndicationAssetDescriptor *)self setAssetSyndications:v10];
      serializedString = self->_serializedString;
      self->_serializedString = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
      v16 = v13;
      v17[0] = v7;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

      [(IMMessagePartSyndicationAssetDescriptor *)self setAssetSyndications:v14];
      v15 = self->_serializedString;
      self->_serializedString = 0;
    }
  }
}

- (void)removeSyndicationAssetsInfoFor:(int64_t)for
{
  assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];

  if (assetSyndications)
  {
    assetSyndications2 = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
    v9 = [assetSyndications2 mutableCopy];

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:for];
    [v9 removeObjectForKey:v7];

    [(IMMessagePartSyndicationAssetDescriptor *)self setAssetSyndications:v9];
    serializedString = self->_serializedString;
    self->_serializedString = 0;
  }
}

- (NSString)serializedString
{
  v39 = *MEMORY[0x1E69E9840];
  serializedString = self->_serializedString;
  if (!serializedString)
  {
    v4 = [(NSDictionary *)self->_assetSyndications copy];
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (v4 && [v4 count])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v34;
        v24 = *v34;
        v25 = v6;
        do
        {
          v10 = 0;
          v26 = v8;
          do
          {
            if (*v34 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v28 = v10;
            v11 = *(*(&v33 + 1) + 8 * v10);
            if (v11)
            {
              [v5 appendFormat:@"%i", objc_msgSend(v11, "intValue")];
              [v5 appendString:@"="];
              v12 = [v6 objectForKey:v11];
              v13 = v12;
              if (v12)
              {
                v27 = v12;
                v14 = [v12 count];
                v13 = v27;
                if (v14)
                {
                  [v5 appendString:@"["];
                  v31 = 0u;
                  v32 = 0u;
                  v29 = 0u;
                  v30 = 0u;
                  v15 = v27;
                  v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
                  if (v16)
                  {
                    v17 = v16;
                    v18 = *v30;
                    do
                    {
                      for (i = 0; i != v17; ++i)
                      {
                        if (*v30 != v18)
                        {
                          objc_enumerationMutation(v15);
                        }

                        v20 = *(*(&v29 + 1) + 8 * i);
                        if (v20)
                        {
                          v21 = [v15 objectForKey:*(*(&v29 + 1) + 8 * i)];
                          if (v21)
                          {
                            [v5 appendFormat:@"%i%@%i", objc_msgSend(v20, "intValue"), @":", objc_msgSend(v21, "intValue")];
                            [v5 appendString:@"-"];
                          }
                        }
                      }

                      v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
                    }

                    while (v17);
                  }

                  [v5 deleteCharactersInRange:{objc_msgSend(v5, "length") - 1, 1}];
                  [v5 appendString:@"]"];
                  [v5 appendString:@";"];
                  v6 = v25;
                  v8 = v26;
                  v9 = v24;
                  v13 = v27;
                }
              }
            }

            v10 = v28 + 1;
          }

          while (v28 + 1 != v8);
          v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v8);
      }

      [v5 deleteCharactersInRange:{objc_msgSend(v5, "length") - 1, 1}];
    }

    v22 = self->_serializedString;
    self->_serializedString = v5;

    serializedString = self->_serializedString;
  }

  return serializedString;
}

+ (id)descriptorFromSerializedString:(id)string
{
  v66 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:@""];;
  v37 = stringCopy;
  v38 = v4;
  if (!v4 || ![v4 count])
  {
    v50 = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2380();
    }

    goto LABEL_43;
  }

  v50 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v38, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = v38;
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = v6;
  v8 = *v57;
  v39 = *v57;
  v40 = v5;
  do
  {
    v9 = 0;
    v41 = v7;
    do
    {
      if (*v57 != v8)
      {
        v10 = v9;
        objc_enumerationMutation(v5);
        v9 = v10;
      }

      v45 = v9;
      v11 = *(*(&v56 + 1) + 8 * v9);
      v12 = [v11 componentsSeparatedByString:@"="];
      v51 = v12;
      if ([v12 count] == 2)
      {
        log = [v12 objectAtIndex:0];
        v47 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject integerValue](log, "integerValue")}];
        v13 = [v12 objectAtIndex:1];
        v14 = [v13 stringByReplacingOccurrencesOfString:@"[" withString:&stru_1F1BB91F0];
        v15 = [v14 stringByReplacingOccurrencesOfString:@"]" withString:&stru_1F1BB91F0];

        v44 = v15;
        v16 = [v15 componentsSeparatedByString:@"-"];
        v43 = v16;
        if (v16 && (v17 = v16, [v16 count]))
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          obj = v17;
          v18 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v18)
          {
            v42 = v13;
            v19 = *v53;
            v20 = v18;
            v21 = v47;
            do
            {
              v22 = 0;
              v48 = v20;
              do
              {
                if (*v53 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v52 + 1) + 8 * v22);
                v24 = [v23 componentsSeparatedByString:@":"];
                if ([v24 count] == 2)
                {
                  v25 = [v24 objectAtIndex:0];
                  v26 = [v24 objectAtIndex:1];
                  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSObject intValue](v25, "intValue")}];
                  v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "intValue")}];
                  v29 = [v50 objectForKey:v21];
                  v30 = v21;
                  v31 = v29;
                  if (v29)
                  {
                    [v29 setObject:v28 forKeyedSubscript:v27];
                    [v50 setObject:v31 forKeyedSubscript:v30];
                  }

                  else
                  {
                    v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](obj, "count")}];
                    [v33 setObject:v28 forKeyedSubscript:v27];
                    [v50 setObject:v33 forKeyedSubscript:v30];
                  }

                  v32 = v51;
                  v21 = v47;
                  v20 = v48;
                }

                else
                {
                  v25 = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v62 = "+[IMMessagePartSyndicationAssetDescriptor descriptorFromSerializedString:]";
                    v63 = 2112;
                    v64 = v23;
                    _os_log_error_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_ERROR, "%s invalid number of tokens present in keyValuePair string %@", buf, 0x16u);
                  }

                  v32 = v51;
                }

                ++v22;
              }

              while (v20 != v22);
              v20 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v20);
            v8 = v39;
            v5 = v40;
            v7 = v41;
            v13 = v42;
            goto LABEL_33;
          }
        }

        else
        {
          obj = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v62 = "+[IMMessagePartSyndicationAssetDescriptor descriptorFromSerializedString:]";
            v63 = 2112;
            v64 = v15;
            _os_log_error_impl(&dword_1A85E5000, obj, OS_LOG_TYPE_ERROR, "%s no asset info key value pairs present in string %@, skipping", buf, 0x16u);
          }
        }

        v32 = v51;
LABEL_33:

        goto LABEL_34;
      }

      log = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v62 = "+[IMMessagePartSyndicationAssetDescriptor descriptorFromSerializedString:]";
        v63 = 2112;
        v64 = v11;
        _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "%s invalid token for asset to asset info dictionary, could not parse %@", buf, 0x16u);
      }

      v32 = v12;
LABEL_34:

      v9 = v45 + 1;
    }

    while (v45 + 1 != v7);
    v7 = [v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
  }

  while (v7);
LABEL_36:

  if ([v50 count])
  {
    v34 = [[IMMessagePartSyndicationAssetDescriptor alloc] initWithAssetSyndications:v50];
    goto LABEL_44;
  }

  v35 = IMLogHandleForCategory("IMMessagePartSyndicationAssetDescriptor");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C2304();
  }

LABEL_43:
  v34 = 0;
LABEL_44:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
  v6 = [v4 initWithAssetSyndications:assetSyndications];

  return v6;
}

- (IMMessagePartSyndicationAssetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IMMessagePartSyndicationAssetDescriptor;
  v5 = [(IMMessagePartSyndicationAssetDescriptor *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"assetSyndications"];
    assetSyndications = v5->_assetSyndications;
    v5->_assetSyndications = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
  [coderCopy encodeObject:assetSyndications forKey:@"assetSyndications"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  serializedString = [(IMMessagePartSyndicationAssetDescriptor *)self serializedString];
  v4 = [v2 stringWithFormat:@"serializedString: %@", serializedString];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    assetSyndications = [(IMMessagePartSyndicationAssetDescriptor *)self assetSyndications];
    assetSyndications2 = [equalCopy assetSyndications];
    v6 = [assetSyndications isEqualToDictionary:assetSyndications2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end