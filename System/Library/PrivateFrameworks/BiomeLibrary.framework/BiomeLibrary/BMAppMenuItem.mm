@interface BMAppMenuItem
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppMenuItem)initWithBundleID:(id)d bundleURL:(id)l path:(id)path;
- (BMAppMenuItem)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_pathJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppMenuItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMAppMenuItem *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppMenuItem *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    bundleURL = [(BMAppMenuItem *)self bundleURL];
    bundleURL2 = [v5 bundleURL];
    v15 = bundleURL2;
    if (bundleURL == bundleURL2)
    {
    }

    else
    {
      bundleURL3 = [(BMAppMenuItem *)self bundleURL];
      bundleURL4 = [v5 bundleURL];
      v18 = [bundleURL3 isEqual:bundleURL4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    path = [(BMAppMenuItem *)self path];
    path2 = [v5 path];
    if (path == path2)
    {
      v12 = 1;
    }

    else
    {
      path3 = [(BMAppMenuItem *)self path];
      path4 = [v5 path];
      v12 = [path3 isEqual:path4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  bundleID = [(BMAppMenuItem *)self bundleID];
  bundleURL = [(BMAppMenuItem *)self bundleURL];
  _pathJSONArray = [(BMAppMenuItem *)self _pathJSONArray];
  v12[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"bundleURL";
  null2 = bundleURL;
  if (!bundleURL)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"path";
  null3 = _pathJSONArray;
  if (!_pathJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_pathJSONArray)
  {
    if (bundleURL)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (bundleID)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!bundleURL)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (bundleID)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_pathJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  path = [(BMAppMenuItem *)self path];
  v5 = [path countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(path);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [path countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppMenuItem)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v65[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!p_isa)
      {
        v8 = 0;
        goto LABEL_36;
      }

      v31 = v7;
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
      v65[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
      v34 = v32;
      v7 = v31;
      v35 = [v34 initWithDomain:v33 code:2 userInfo:v9];
      v8 = 0;
      v36 = p_isa;
      p_isa = 0;
      *v36 = v35;
      goto LABEL_35;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleURL"];
  v49 = p_isa;
  v50 = v7;
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v48 = v8;
    v10 = 0;
LABEL_7:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"path"];
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:null];

    if (v13)
    {
      v45 = v9;
      selfCopy2 = self;

      v11 = 0;
LABEL_12:
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = v15;
      v17 = *v52;
LABEL_14:
      v18 = dictionaryCopy;
      v19 = v10;
      v20 = 0;
      while (1)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v51 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = v19;
          dictionaryCopy = v18;
          v9 = v45;
          if (v49)
          {
            v22 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v55 = *MEMORY[0x1E696A578];
            v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"path"];
            v56 = v24;
            v25 = MEMORY[0x1E695DF20];
            v26 = &v56;
            v27 = &v55;
LABEL_30:
            v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
            *v49 = [v22 initWithDomain:v23 code:2 userInfo:v28];
          }

          goto LABEL_31;
        }

        [v14 addObject:v21];
        if (v16 == ++v20)
        {
          v16 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
          v10 = v19;
          dictionaryCopy = v18;
          if (v16)
          {
            goto LABEL_14;
          }

LABEL_21:

          v8 = v48;
          self = [(BMAppMenuItem *)selfCopy2 initWithBundleID:v48 bundleURL:v10 path:v14];
          p_isa = &self->super.super.isa;
          v9 = v45;
LABEL_33:

          goto LABEL_34;
        }
      }

      v10 = v19;
      dictionaryCopy = v18;
      v9 = v45;
      if (v49)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"path"];
        v58 = v24;
        v25 = MEMORY[0x1E695DF20];
        v26 = &v58;
        v27 = &v57;
        goto LABEL_30;
      }

LABEL_31:

      p_isa = 0;
      self = selfCopy2;
      goto LABEL_32;
    }

    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = v9;
      selfCopy2 = self;
      goto LABEL_12;
    }

    if (p_isa)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = p_isa;
      v43 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"path"];
      v61 = v14;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *v42 = [v47 initWithDomain:v43 code:2 userInfo:v44];

      p_isa = 0;
LABEL_32:
      v8 = v48;
      goto LABEL_33;
    }

    v8 = v48;
LABEL_34:

    v7 = v50;
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v8;
    v10 = v9;
    goto LABEL_7;
  }

  if (p_isa)
  {
    v37 = v8;
    v38 = objc_alloc(MEMORY[0x1E696ABC0]);
    v39 = *MEMORY[0x1E698F240];
    v62 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleURL"];
    v63 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v40 = v38;
    v8 = v37;
    v41 = [v40 initWithDomain:v39 code:2 userInfo:v14];
    v10 = 0;
    p_isa = 0;
    *v49 = v41;
    goto LABEL_33;
  }

  v10 = 0;
LABEL_35:

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppMenuItem *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleURL)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_path;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMAppMenuItem;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_29;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v28 & 0x7F) << v8;
        if ((v28 & 0x80) == 0)
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
        goto LABEL_29;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_23:
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
LABEL_26:

        goto LABEL_28;
      }

      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 24;
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_33:

        goto LABEL_30;
      }

LABEL_28:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_29;
      }
    }

    v20 = PBReaderReadString();
    if (!v20)
    {
      goto LABEL_33;
    }

    v19 = v20;
    [v6 addObject:v20];
    goto LABEL_26;
  }

LABEL_29:
  v22 = [v6 copy];
  path = v5->_path;
  v5->_path = v22;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_30:
    v25 = 0;
  }

  else
  {
LABEL_31:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMAppMenuItem *)self bundleID];
  bundleURL = [(BMAppMenuItem *)self bundleURL];
  path = [(BMAppMenuItem *)self path];
  v7 = [v3 initWithFormat:@"BMAppMenuItem with bundleID: %@, bundleURL: %@, path: %@", bundleID, bundleURL, path];

  return v7;
}

- (BMAppMenuItem)initWithBundleID:(id)d bundleURL:(id)l path:(id)path
{
  dCopy = d;
  lCopy = l;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = BMAppMenuItem;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_bundleID, d);
    objc_storeStrong(&v12->_bundleURL, l);
    objc_storeStrong(&v12->_path, path);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleURL" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"path" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleURL" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"path_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_99306];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __24__BMAppMenuItem_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _pathJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMAppMenuItem alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end