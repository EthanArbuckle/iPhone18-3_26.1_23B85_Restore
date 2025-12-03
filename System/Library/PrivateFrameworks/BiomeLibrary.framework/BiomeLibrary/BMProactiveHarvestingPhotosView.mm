@interface BMProactiveHarvestingPhotosView
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosView)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingPhotosView)initWithLocations:(id)locations absoluteTimestamp:(id)timestamp uniqueID:(id)d contentProtection:(id)protection personaId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_locationsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingPhotosView

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    locations = [(BMProactiveHarvestingPhotosView *)self locations];
    locations2 = [v5 locations];
    v8 = locations2;
    if (locations == locations2)
    {
    }

    else
    {
      locations3 = [(BMProactiveHarvestingPhotosView *)self locations];
      locations4 = [v5 locations];
      v11 = [locations3 isEqual:locations4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingPhotosView *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingPhotosView *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    uniqueID = [(BMProactiveHarvestingPhotosView *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v21 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingPhotosView *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v24 = [uniqueID3 isEqual:uniqueID4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    contentProtection = [(BMProactiveHarvestingPhotosView *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v27 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingPhotosView *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v30 = [contentProtection3 isEqual:contentProtection4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    personaId = [(BMProactiveHarvestingPhotosView *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingPhotosView *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  _locationsJSONArray = [(BMProactiveHarvestingPhotosView *)self _locationsJSONArray];
  absoluteTimestamp = [(BMProactiveHarvestingPhotosView *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingPhotosView *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  uniqueID = [(BMProactiveHarvestingPhotosView *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingPhotosView *)self contentProtection];
  personaId = [(BMProactiveHarvestingPhotosView *)self personaId];
  v21 = @"locations";
  null = _locationsJSONArray;
  if (!_locationsJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"uniqueID";
  null3 = uniqueID;
  if (!uniqueID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"contentProtection";
  null4 = contentProtection;
  if (!contentProtection)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"personaId";
  null5 = personaId;
  if (!personaId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (contentProtection)
    {
LABEL_16:
      if (uniqueID)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (uniqueID)
  {
LABEL_17:
    if (v7)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (_locationsJSONArray)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (_locationsJSONArray)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_locationsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  locations = [(BMProactiveHarvestingPhotosView *)self locations];
  v5 = [locations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(locations);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [locations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMProactiveHarvestingPhotosView)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v80[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"locations"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    selfCopy2 = self;

    v6 = 0;
LABEL_6:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v62 objects:v78 count:16];
    errorCopy = error;
    if (!v10)
    {
      goto LABEL_15;
    }

    v12 = v10;
    v13 = *v63;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v62 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v20 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locations"];
          v75 = v17;
          v21 = MEMORY[0x1E695DF20];
          v22 = &v75;
          v23 = &v74;
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      [v9 addObject:v15];
      if (v12 == ++v14)
      {
        v12 = [v6 countByEnumeratingWithState:&v62 objects:v78 count:16];
        error = errorCopy;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_15:

        v16 = dictionaryCopy;
        v17 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_32;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = MEMORY[0x1E695DF00];
          v29 = v17;
          v30 = [v28 alloc];
          [v29 doubleValue];
          v32 = v31;

          v16 = dictionaryCopy;
          v33 = [v30 initWithTimeIntervalSinceReferenceDate:v32];
          goto LABEL_28;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v18 = [v34 dateFromString:v17];

          goto LABEL_32;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v17;
LABEL_28:
          v18 = v33;
LABEL_32:
          v24 = [v16 objectForKeyedSubscript:@"uniqueID"];
          v58 = v24;
          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = 0;
              goto LABEL_37;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v24;
              goto LABEL_37;
            }

            if (error)
            {
              v40 = objc_alloc(MEMORY[0x1E696ABC0]);
              v41 = *MEMORY[0x1E698F240];
              v70 = *MEMORY[0x1E696A578];
              v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
              v71 = v42;
              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
              v35 = v43 = error;
              v44 = [v40 initWithDomain:v41 code:2 userInfo:v35];
              v24 = 0;
              v25 = 0;
              *v43 = v44;
              errorCopy = v42;
              goto LABEL_45;
            }

            v24 = 0;
            v25 = 0;
LABEL_46:

LABEL_47:
            goto LABEL_48;
          }

LABEL_37:
          v35 = [v16 objectForKeyedSubscript:@"contentProtection"];
          if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = v35;
              v16 = dictionaryCopy;
              goto LABEL_40;
            }

            if (!errorCopy)
            {
              v25 = 0;
LABEL_45:

              v16 = dictionaryCopy;
              goto LABEL_46;
            }

            v57 = objc_alloc(MEMORY[0x1E696ABC0]);
            v45 = *MEMORY[0x1E698F240];
            v68 = *MEMORY[0x1E696A578];
            v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
            v69 = v37;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            v46 = [v57 initWithDomain:v45 code:2 userInfo:v36];
            v25 = 0;
            *errorCopy = v46;
            errorCopy = 0;
          }

          else
          {
            v56 = 0;
LABEL_40:
            v36 = [v16 objectForKeyedSubscript:@"personaId"];
            if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v37 = 0;
              goto LABEL_43;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
LABEL_43:
              errorCopy = v56;
              v25 = [(BMProactiveHarvestingPhotosView *)selfCopy2 initWithLocations:v9 absoluteTimestamp:v18 uniqueID:v24 contentProtection:v56 personaId:v37];
              selfCopy2 = v25;
            }

            else
            {
              if (errorCopy)
              {
                v55 = objc_alloc(MEMORY[0x1E696ABC0]);
                v54 = *MEMORY[0x1E698F240];
                v66 = *MEMORY[0x1E696A578];
                v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                v67 = v47;
                v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                *errorCopy = [v55 initWithDomain:v54 code:2 userInfo:v48];
              }

              v37 = 0;
              v25 = 0;
              errorCopy = v56;
            }
          }

          goto LABEL_45;
        }

        if (error)
        {
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v73 = v24;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v52 = v49;
          v16 = dictionaryCopy;
          v59 = v51;
          v53 = [v52 initWithDomain:v50 code:2 userInfo:?];
          v18 = 0;
          v25 = 0;
          *error = v53;

          goto LABEL_47;
        }

        v18 = 0;
        v25 = 0;
LABEL_48:

        self = selfCopy2;
LABEL_49:

        goto LABEL_50;
      }
    }

    if (errorCopy)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v76 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"locations"];
      v77 = v17;
      v21 = MEMORY[0x1E695DF20];
      v22 = &v77;
      v23 = &v76;
LABEL_22:
      v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
      v25 = 0;
      *errorCopy = [v19 initWithDomain:v20 code:2 userInfo:v24];
      v18 = v6;
      v16 = dictionaryCopy;
      goto LABEL_47;
    }

LABEL_23:
    v25 = 0;
    v18 = v6;
    self = selfCopy2;
    v16 = dictionaryCopy;
    goto LABEL_49;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    goto LABEL_6;
  }

  if (error)
  {
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E698F240];
    v79 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"locations"];
    v80[0] = v9;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    v25 = 0;
    *error = [v26 initWithDomain:v27 code:2 userInfo:v18];
    v16 = dictionaryCopy;
    goto LABEL_49;
  }

  v25 = 0;
  v16 = dictionaryCopy;
LABEL_50:

  v38 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPhotosView *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_locations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingPhotosView;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_38;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v32) & 0x7F) << v8;
        if ((LOBYTE(v32) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_38;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          v5->_hasRaw_absoluteTimestamp = 1;
          v32 = 0.0;
          v19 = [fromCopy position] + 8;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_absoluteTimestamp = v32;
          goto LABEL_37;
        }

LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
LABEL_42:

          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v22 = PBReaderReadString();
      if (!v22)
      {
        goto LABEL_42;
      }

      v23 = v22;
      [v6 addObject:v22];

LABEL_37:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_38;
      }
    }

    switch(v16)
    {
      case 3:
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_30;
      case 4:
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_30;
      case 5:
        v17 = PBReaderReadString();
        v18 = 64;
LABEL_30:
        v21 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_38:
  v26 = [v6 copy];
  locations = v5->_locations;
  v5->_locations = v26;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_39:
    v29 = 0;
  }

  else
  {
LABEL_40:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  locations = [(BMProactiveHarvestingPhotosView *)self locations];
  absoluteTimestamp = [(BMProactiveHarvestingPhotosView *)self absoluteTimestamp];
  uniqueID = [(BMProactiveHarvestingPhotosView *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingPhotosView *)self contentProtection];
  personaId = [(BMProactiveHarvestingPhotosView *)self personaId];
  v9 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosView with locations: %@, absoluteTimestamp: %@, uniqueID: %@, contentProtection: %@, personaId: %@", locations, absoluteTimestamp, uniqueID, contentProtection, personaId];

  return v9;
}

- (BMProactiveHarvestingPhotosView)initWithLocations:(id)locations absoluteTimestamp:(id)timestamp uniqueID:(id)d contentProtection:(id)protection personaId:(id)id
{
  locationsCopy = locations;
  timestampCopy = timestamp;
  dCopy = d;
  protectionCopy = protection;
  idCopy = id;
  v21.receiver = self;
  v21.super_class = BMProactiveHarvestingPhotosView;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_locations, locations);
    if (timestampCopy)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_uniqueID, d);
    objc_storeStrong(&v18->_contentProtection, protection);
    objc_storeStrong(&v18->_personaId, id);
  }

  return v18;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locations" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"locations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __42__BMProactiveHarvestingPhotosView_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _locationsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingPhotosView alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end