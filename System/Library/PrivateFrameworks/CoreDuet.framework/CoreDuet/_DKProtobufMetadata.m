@interface _DKProtobufMetadata
+ (id)createFromData:(id)a3;
+ (id)fromPBCodable:(id)a3;
- (_DKProtobufMetadata)initWithDictionary:(id)a3;
- (id)asData;
- (id)toPBCodable;
@end

@implementation _DKProtobufMetadata

- (id)toPBCodable
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(_DKProtobufMetadata *)self dictionary];
  v4 = [v3 count];

  if (v4)
  {
    v18 = objc_alloc_init(_DKPRMetadata);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(_DKProtobufMetadata *)self dictionary];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = [(_DKProtobufMetadata *)self dictionary];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = objc_alloc_init(_DKPRMetadataEntry);
          [(_DKPRMetadataEntry *)v13 setKey:v10];
          v14 = [v12 toPBCodable];
          [(_DKPRMetadataEntry *)v13 setValue:v14];

          v15 = [(_DKPRMetadataEntry *)v13 value];

          if (v15)
          {
            [(_DKPRMetadata *)v18 addEntry:v13];
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [(_DKEvent(Protobuf) *)buf toPBCodableUseStructuredMetadata:v10, &v24];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v18 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)fromPBCodable:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPRMetadata *)v4 entrys];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E695DF90];
      v8 = [(_DKPRMetadata *)v4 entrys];
      v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v4;
      v10 = [(_DKPRMetadata *)v4 entrys];
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            v16 = MEMORY[0x1E69E58C0];
            v17 = [(_DKPRMetadataEntry *)v15 value];
            v18 = [v16 fromPBCodable:v17];
            v19 = [(_DKPRMetadataEntry *)v15 key];
            [v9 setObject:v18 forKeyedSubscript:v19];
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      v6 = [[_DKProtobufMetadata alloc] initWithDictionary:v9];
      v4 = v22;
    }
  }

  else
  {
    v6 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (_DKProtobufMetadata)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DKProtobufMetadata;
  v6 = [(_DKProtobufMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  return v7;
}

+ (id)createFromData:(id)a3
{
  v3 = a3;
  v4 = [[_DKPRMetadata alloc] initWithData:v3];

  v5 = [_DKProtobufMetadata fromPBCodable:v4];

  return v5;
}

- (id)asData
{
  v2 = [(_DKProtobufMetadata *)self toPBCodable];
  v3 = [v2 data];

  return v3;
}

@end