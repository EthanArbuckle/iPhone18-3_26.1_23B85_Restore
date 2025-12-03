@interface FCLocalArea
- (BOOL)containsLocation:(id)location;
- (BOOL)containsPointAtLatitude:(double)latitude longitude:(double)longitude;
- (BOOL)isValue:(double)value betweenValue:(double)betweenValue andValue:(double)andValue;
- (FCLocalArea)init;
- (FCLocalArea)initWithDictionary:(id)dictionary;
- (FCLocalArea)initWithIdentifier:(id)identifier bbox:(id)bbox regionIDs:(id)ds;
- (double)maxLat;
- (double)maxLon;
- (double)minLat;
- (double)minLon;
@end

@implementation FCLocalArea

- (FCLocalArea)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCLocalArea alloc];
  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"id", 0);
  v7 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"bbox", 0);
  v8 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"regionIds", 0);

  v9 = [(FCLocalArea *)v5 initWithIdentifier:v6 bbox:v7 regionIDs:v8];
  return v9;
}

- (FCLocalArea)initWithIdentifier:(id)identifier bbox:(id)bbox regionIDs:(id)ds
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bboxCopy = bbox;
  dsCopy = ds;
  v39.receiver = self;
  v39.super_class = FCLocalArea;
  v11 = [(FCLocalArea *)&v39 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v11->_identifier, identifier);
  objc_storeStrong(&v12->_bbox, bbox);
  objc_storeStrong(&v12->_regionIds, ds);
  v13 = bboxCopy;
  if ([v13 count] != 4)
  {
    v32 = 0;
    goto LABEL_35;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v14)
  {
    v32 = 1;
    goto LABEL_34;
  }

  v15 = v14;
  v37 = *v41;
  v16 = 0x1E696A000uLL;
  v35 = identifierCopy;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v41 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v40 + 1) + 8 * i);
      objc_opt_class();
      if (!v18 || (objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = 0;
LABEL_32:

LABEL_33:
        v32 = 0;
        identifierCopy = v35;
        goto LABEL_34;
      }

      v19 = v18;
      if ([v19 count] != 2)
      {
        goto LABEL_32;
      }

      v20 = *(v16 + 3480);
      objc_opt_class();
      v21 = [v19 objectAtIndexedSubscript:0];
      if (v21)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v24 = v16;
      v25 = *(v16 + 3480);
      objc_opt_class();
      v26 = [v19 objectAtIndexedSubscript:1];
      if (v26)
      {
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      if (!v23 || !v28 || ([v23 doubleValue], fabs(v29) > 90.0))
      {

        goto LABEL_32;
      }

      [v28 doubleValue];
      v31 = fabs(v30);

      if (v31 > 180.0)
      {
        goto LABEL_33;
      }

      v16 = v24;
    }

    v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    v32 = 1;
    identifierCopy = v35;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_34:

LABEL_35:
  v12->_isBboxValid = v32;
LABEL_36:

  v33 = *MEMORY[0x1E69E9840];
  return v12;
}

- (FCLocalArea)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCLocalArea init]";
    v10 = 2080;
    v11 = "FCLocalArea.m";
    v12 = 1024;
    v13 = 54;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCLocalArea init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)containsLocation:(id)location
{
  if (!location)
  {
    return 0;
  }

  locationCopy = location;
  [locationCopy coordinate];
  v6 = v5;
  [locationCopy coordinate];
  v8 = v7;

  return [(FCLocalArea *)self containsPointAtLatitude:v6 longitude:v8];
}

- (BOOL)containsPointAtLatitude:(double)latitude longitude:(double)longitude
{
  if (![(FCLocalArea *)self isBboxValid])
  {
    return 0;
  }

  [(FCLocalArea *)self minLat];
  v8 = v7;
  [(FCLocalArea *)self maxLat];
  if (![(FCLocalArea *)self isValue:latitude betweenValue:v8 andValue:v9])
  {
    return 0;
  }

  [(FCLocalArea *)self minLon];
  v11 = v10;
  [(FCLocalArea *)self maxLon];

  return [(FCLocalArea *)self isValue:longitude betweenValue:v11 andValue:v12];
}

- (BOOL)isValue:(double)value betweenValue:(double)betweenValue andValue:(double)andValue
{
  v5 = value <= betweenValue;
  if (value < andValue)
  {
    v5 = 0;
  }

  return value >= betweenValue && value <= andValue || v5;
}

- (double)minLat
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:2];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maxLat
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)minLon
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maxLon
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:2];
  v4 = [v3 objectAtIndexedSubscript:1];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end