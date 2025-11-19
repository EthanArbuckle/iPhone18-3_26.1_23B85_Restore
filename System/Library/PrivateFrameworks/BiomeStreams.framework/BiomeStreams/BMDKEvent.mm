@interface BMDKEvent
+ (id)eventWithDKEvent:(id)a3;
- (BMDKEvent)initWithCoder:(id)a3;
- (BMDKEvent)initWithDKEvent:(id)a3;
- (BMDKEvent)initWithProto:(id)a3;
- (BMDKEvent)initWithProtoData:(id)a3;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMDKEvent

- (id)encodeAsProto
{
  v3 = [BMDKEventCodec codecWithVersion:2];
  v4 = [v3 encodeAsProtoData:self];

  return v4;
}

+ (id)eventWithDKEvent:(id)a3
{
  v3 = a3;
  v4 = [[BMDKEvent alloc] initWithDKEvent:v3];

  return v4;
}

- (BMDKEvent)initWithDKEvent:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(BMDKEvent *)a2 initWithDKEvent:?];
  }

  v10.receiver = self;
  v10.super_class = BMDKEvent;
  v7 = [(BMDKEvent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dkEvent, a3);
  }

  return v8;
}

- (id)jsonDict
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v4 = [(_DKEvent *)self->_dkEvent metadata];
  v5 = [v4 countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v73;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v73 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v72 + 1) + 8 * i);
        v10 = [(_DKEvent *)self->_dkEvent metadata];
        v11 = [v10 objectForKeyedSubscript:v9];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = [v11 description];

            v11 = v12;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          v13 = [v9 description];
          [v3 setObject:v11 forKeyedSubscript:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v6);
  }

  v14 = objc_opt_new();
  v15 = [(_DKEvent *)self->_dkEvent source];

  if (v15)
  {
    v16 = [(_DKEvent *)self->_dkEvent source];
    v17 = [v16 sourceID];
    if (v17)
    {
      [v14 setObject:v17 forKeyedSubscript:@"sourceID"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:v18 forKeyedSubscript:@"sourceID"];
    }

    v19 = [(_DKEvent *)self->_dkEvent source];
    v20 = [v19 bundleID];
    if (v20)
    {
      [v14 setObject:v20 forKeyedSubscript:@"bundleID"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:v21 forKeyedSubscript:@"bundleID"];
    }

    v22 = [(_DKEvent *)self->_dkEvent source];
    v23 = [v22 itemID];
    if (v23)
    {
      [v14 setObject:v23 forKeyedSubscript:@"itemID"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:v24 forKeyedSubscript:@"itemID"];
    }

    v25 = [(_DKEvent *)self->_dkEvent source];
    v26 = [v25 groupID];
    if (v26)
    {
      [v14 setObject:v26 forKeyedSubscript:@"groupID"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:v27 forKeyedSubscript:@"groupID"];
    }

    v28 = [(_DKEvent *)self->_dkEvent source];
    v29 = [v28 deviceID];
    if (v29)
    {
      [v14 setObject:v29 forKeyedSubscript:@"deviceID"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:v30 forKeyedSubscript:@"deviceID"];
    }

    v31 = [(_DKEvent *)self->_dkEvent source];
    v32 = [v31 userID];
    if (v32)
    {
      [v14 setObject:v32 forKeyedSubscript:@"userID"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:v33 forKeyedSubscript:@"userID"];
    }
  }

  v34 = [(_DKEvent *)self->_dkEvent value];

  if (v34)
  {
    v35 = [(_DKEvent *)self->_dkEvent value];
    v36 = [v35 stringValue];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = [(_DKEvent *)self->_dkEvent description];
    }

    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v76[0] = @"UUID";
  v69 = [(_DKEvent *)self->_dkEvent UUID];
  v40 = [v69 UUIDString];
  v41 = v40;
  if (!v40)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v40;
  v77[0] = v40;
  v76[1] = @"startDate";
  v67 = [(_DKEvent *)self->_dkEvent startDate];
  v42 = [v67 description];
  v66 = v42;
  if (!v42)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v42;
  v77[1] = v42;
  v76[2] = @"endDate";
  v65 = [(_DKEvent *)self->_dkEvent endDate];
  v43 = [v65 description];
  v44 = v43;
  if (!v43)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v43;
  v77[2] = v43;
  v76[3] = @"timeZone";
  v64 = [(_DKEvent *)self->_dkEvent timeZone];
  v45 = [v64 description];
  v46 = v45;
  if (!v45)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v45;
  v77[3] = v45;
  v76[4] = @"value";
  v47 = v39;
  v70 = v39;
  if (!v39)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v41;
  v77[4] = v47;
  v77[5] = v3;
  v76[5] = @"metadata";
  v76[6] = @"confidence";
  v48 = MEMORY[0x1E696AD98];
  [(_DKEvent *)self->_dkEvent confidence];
  v49 = [v48 numberWithDouble:?];
  v77[6] = v49;
  v77[7] = v14;
  v71 = v14;
  v76[7] = @"source";
  v76[8] = @"creationDate";
  v50 = [(_DKEvent *)self->_dkEvent creationDate];
  v51 = [v50 description];
  v52 = v51;
  if (!v51)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v77[8] = v52;
  v76[9] = @"localCreationDate";
  v53 = [(_DKEvent *)self->_dkEvent localCreationDate];
  v54 = [v53 description];
  v55 = v54;
  if (!v54)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v77[9] = v55;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:10];
  if (!v54)
  {
  }

  if (!v51)
  {
  }

  if (!v70)
  {
  }

  if (!v46)
  {
  }

  if (!v44)
  {
  }

  if (!v66)
  {
  }

  if (!v68)
  {
  }

  v56 = *MEMORY[0x1E69E9840];

  return v63;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMDKEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDKEvent *)v5 json];
    }
  }

  return v4;
}

- (BMDKEvent)initWithProto:(id)a3
{
  v4 = a3;
  v5 = [BMDKEventCodec codecWithVersion:2];
  v6 = [v5 decodeWithProto:v4];

  return v6;
}

- (BMDKEvent)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [BMDKEventCodec codecWithVersion:2];
  v6 = [v5 decodeWithProtoData:v4];

  return v6;
}

- (id)proto
{
  v3 = [BMDKEventCodec codecWithVersion:2];
  v4 = [v3 encodeAsProto:self];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMDKEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMDKEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMDKEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDKEvent *)self proto];
    v7 = [v5 proto];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  dkEvent = self->_dkEvent;
  if (a4 && !dkEvent)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return dkEvent != 0;
}

@end