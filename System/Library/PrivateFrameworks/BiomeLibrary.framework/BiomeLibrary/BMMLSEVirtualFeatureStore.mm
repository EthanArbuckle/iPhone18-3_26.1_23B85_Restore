@interface BMMLSEVirtualFeatureStore
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEVirtualFeatureStore)initWithItemIdentifier:(id)a3 featureVersion:(id)a4 featureVector:(id)a5 deviceIdentifier:(id)a6 shareSessionIdentifier:(id)a7;
- (BMMLSEVirtualFeatureStore)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_featureVectorJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEVirtualFeatureStore

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
    v7 = [v5 itemIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
      v10 = [v5 itemIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (-[BMMLSEVirtualFeatureStore hasFeatureVersion](self, "hasFeatureVersion") || [v5 hasFeatureVersion])
    {
      if (![(BMMLSEVirtualFeatureStore *)self hasFeatureVersion])
      {
        goto LABEL_18;
      }

      if (![v5 hasFeatureVersion])
      {
        goto LABEL_18;
      }

      v13 = [(BMMLSEVirtualFeatureStore *)self featureVersion];
      if (v13 != [v5 featureVersion])
      {
        goto LABEL_18;
      }
    }

    v14 = [(BMMLSEVirtualFeatureStore *)self featureVector];
    v15 = [v5 featureVector];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMLSEVirtualFeatureStore *)self featureVector];
      v18 = [v5 featureVector];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
    v21 = [v5 deviceIdentifier];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
      v24 = [v5 deviceIdentifier];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
    v28 = [v5 shareSessionIdentifier];
    if (v27 == v28)
    {
      v12 = 1;
    }

    else
    {
      v29 = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
      v30 = [v5 shareSessionIdentifier];
      v12 = [v29 isEqual:v30];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
  if ([(BMMLSEVirtualFeatureStore *)self hasFeatureVersion])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStore featureVersion](self, "featureVersion")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMMLSEVirtualFeatureStore *)self _featureVectorJSONArray];
  v6 = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
  v7 = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
  v18 = @"itemIdentifier";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"featureVersion";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"featureVector";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"deviceIdentifier";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"shareSessionIdentifier";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v6)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v5)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_featureVectorJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMLSEVirtualFeatureStore *)self featureVector];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMLSEVirtualFeatureStore)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v87[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"itemIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v24 = a4;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v27 = self;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v55 = objc_opt_class();
        v29 = v28;
        self = v27;
        v30 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v55, @"itemIdentifier"];
        v87[0] = v30;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        v8 = 0;
        v31 = 0;
        *v24 = [v25 initWithDomain:v26 code:2 userInfo:v10];
        goto LABEL_59;
      }

      v8 = 0;
      v31 = 0;
      goto LABEL_60;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"featureVersion"];
  v64 = v9;
  v65 = v7;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v32 = a4;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureVersion"];
        v85 = v11;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v30 = 0;
        v31 = 0;
        *v32 = [v33 initWithDomain:v34 code:2 userInfo:?];

        goto LABEL_58;
      }

      v30 = 0;
      v31 = 0;
      goto LABEL_59;
    }

    v63 = v10;
  }

  else
  {
    v63 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"featureVector"];
  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v58 = a4;
    v59 = self;
    v61 = v8;

    v11 = 0;
  }

  else
  {
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v31 = 0;
          v30 = v63;
          goto LABEL_58;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"featureVector"];
        v83 = v66;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v23 = v46 = a4;
        v47 = [v44 initWithDomain:v45 code:2 userInfo:v23];
        v31 = 0;
        *v46 = v47;
LABEL_45:
        v30 = v63;
        goto LABEL_56;
      }
    }

    v58 = a4;
    v59 = self;
    v61 = v8;
  }

  v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v11 = v11;
  v14 = [v11 countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = *v70;
  v57 = v6;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v70 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v69 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v58;
        if (v58)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"featureVector"];
          v80 = v19;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v39 = v36;
          v40 = v37;
LABEL_37:
          v31 = 0;
          *v35 = [v39 initWithDomain:v40 code:2 userInfo:v38];
LABEL_41:
          v23 = v11;
          v6 = v57;
          self = v59;
          v8 = v61;
          v30 = v63;
          goto LABEL_54;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = v58;
        if (v58)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureVector"];
          v78 = v19;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v39 = v41;
          v40 = v42;
          goto LABEL_37;
        }

LABEL_44:
        v31 = 0;
        v23 = v11;
        v6 = v57;
        self = v59;
        v8 = v61;
        goto LABEL_45;
      }

      v19 = v18;
      v20 = [BMMLSEVirtualFeatureStoreFeature alloc];
      v68 = 0;
      v21 = [(BMMLSEVirtualFeatureStoreFeature *)v20 initWithJSONDictionary:v19 error:&v68];
      v22 = v68;
      if (v22)
      {
        v38 = v22;
        if (v58)
        {
          v43 = v22;
          *v58 = v38;
        }

        v31 = 0;
        goto LABEL_41;
      }

      [v66 addObject:v21];
    }

    v15 = [v11 countByEnumeratingWithState:&v69 objects:v81 count:16];
    v6 = v57;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v19 = [v6 objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v19)
  {
    v23 = 0;
    self = v59;
    goto LABEL_49;
  }

  objc_opt_class();
  self = v59;
  if (objc_opt_isKindOfClass())
  {
    v23 = 0;
LABEL_49:
    v8 = v61;
    v48 = [v6 objectForKeyedSubscript:@"shareSessionIdentifier"];
    if (!v48 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = 0;
      goto LABEL_52;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v48;
LABEL_52:
      v30 = v63;
      self = [(BMMLSEVirtualFeatureStore *)self initWithItemIdentifier:v61 featureVersion:v63 featureVector:v66 deviceIdentifier:v23 shareSessionIdentifier:v38];
      v31 = self;
    }

    else
    {
      if (v58)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shareSessionIdentifier"];
        v74 = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *v58 = [v62 initWithDomain:v60 code:2 userInfo:v54];
      }

      v38 = 0;
      v31 = 0;
      v30 = v63;
    }

LABEL_53:

LABEL_54:
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      goto LABEL_49;
    }

    if (v58)
    {
      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
      v76 = v38;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v52 = [v56 initWithDomain:v51 code:2 userInfo:v48];
      v23 = 0;
      v31 = 0;
      *v58 = v52;
      v8 = v61;
      v30 = v63;
      goto LABEL_53;
    }

    v23 = 0;
    v31 = 0;
    v8 = v61;
    v30 = v63;
  }

LABEL_56:
LABEL_58:

  v10 = v64;
  v7 = v65;
LABEL_59:

LABEL_60:
  v49 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEVirtualFeatureStore *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasFeatureVersion)
  {
    featureVersion = self->_featureVersion;
    PBDataWriterWriteUint32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_featureVector;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shareSessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMMLSEVirtualFeatureStore;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_47;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v36[0] & 0x7F) << v8;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_47;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_39;
        }

        if (v16 == 5)
        {
          v17 = PBReaderReadString();
          v18 = 56;
LABEL_39:
          v28 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || (v26 = [[BMMLSEVirtualFeatureStoreFeature alloc] initByReadFrom:v4]) == 0)
      {
LABEL_51:

        goto LABEL_48;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_46:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_47;
      }
    }

    if (v16 == 1)
    {
      v17 = PBReaderReadString();
      v18 = 32;
      goto LABEL_39;
    }

    if (v16 == 2)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v5->_hasFeatureVersion = 1;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v22 = [v4 position] + 1;
        if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
        {
          v24 = [v4 data];
          [v24 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v21 |= (v36[0] & 0x7F) << v19;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v14 = v20++ >= 9;
        if (v14)
        {
          v25 = 0;
          goto LABEL_45;
        }
      }

      if ([v4 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v21;
      }

LABEL_45:
      v5->_featureVersion = v25;
      goto LABEL_46;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_47:
  v30 = [v6 copy];
  featureVector = v5->_featureVector;
  v5->_featureVector = v30;

  v32 = [v4 hasError];
  if (v32)
  {
LABEL_48:
    v33 = 0;
  }

  else
  {
LABEL_49:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStore featureVersion](self, "featureVersion")}];
  v6 = [(BMMLSEVirtualFeatureStore *)self featureVector];
  v7 = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
  v8 = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
  v9 = [v3 initWithFormat:@"BMMLSEVirtualFeatureStore with itemIdentifier: %@, featureVersion: %@, featureVector: %@, deviceIdentifier: %@, shareSessionIdentifier: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMLSEVirtualFeatureStore)initWithItemIdentifier:(id)a3 featureVersion:(id)a4 featureVector:(id)a5 deviceIdentifier:(id)a6 shareSessionIdentifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = BMMLSEVirtualFeatureStore;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_itemIdentifier, a3);
    if (v14)
    {
      v18->_hasFeatureVersion = 1;
      v19 = [v14 unsignedIntValue];
    }

    else
    {
      v19 = 0;
      v18->_hasFeatureVersion = 0;
    }

    v18->_featureVersion = v19;
    objc_storeStrong(&v18->_featureVector, a5);
    objc_storeStrong(&v18->_deviceIdentifier, a6);
    objc_storeStrong(&v18->_shareSessionIdentifier, a7);
  }

  return v18;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVersion" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVector" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareSessionIdentifier" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureVersion" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"featureVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_2485];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareSessionIdentifier" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __36__BMMLSEVirtualFeatureStore_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _featureVectorJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMLSEVirtualFeatureStore alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end