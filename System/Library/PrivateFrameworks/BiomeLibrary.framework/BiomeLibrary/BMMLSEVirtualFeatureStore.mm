@interface BMMLSEVirtualFeatureStore
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEVirtualFeatureStore)initWithItemIdentifier:(id)identifier featureVersion:(id)version featureVector:(id)vector deviceIdentifier:(id)deviceIdentifier shareSessionIdentifier:(id)sessionIdentifier;
- (BMMLSEVirtualFeatureStore)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_featureVectorJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEVirtualFeatureStore

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    itemIdentifier = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
    itemIdentifier2 = [v5 itemIdentifier];
    v8 = itemIdentifier2;
    if (itemIdentifier == itemIdentifier2)
    {
    }

    else
    {
      itemIdentifier3 = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
      itemIdentifier4 = [v5 itemIdentifier];
      v11 = [itemIdentifier3 isEqual:itemIdentifier4];

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

      featureVersion = [(BMMLSEVirtualFeatureStore *)self featureVersion];
      if (featureVersion != [v5 featureVersion])
      {
        goto LABEL_18;
      }
    }

    featureVector = [(BMMLSEVirtualFeatureStore *)self featureVector];
    featureVector2 = [v5 featureVector];
    v16 = featureVector2;
    if (featureVector == featureVector2)
    {
    }

    else
    {
      featureVector3 = [(BMMLSEVirtualFeatureStore *)self featureVector];
      featureVector4 = [v5 featureVector];
      v19 = [featureVector3 isEqual:featureVector4];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    deviceIdentifier = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
    deviceIdentifier2 = [v5 deviceIdentifier];
    v22 = deviceIdentifier2;
    if (deviceIdentifier == deviceIdentifier2)
    {
    }

    else
    {
      deviceIdentifier3 = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
      deviceIdentifier4 = [v5 deviceIdentifier];
      v25 = [deviceIdentifier3 isEqual:deviceIdentifier4];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    shareSessionIdentifier = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
    shareSessionIdentifier2 = [v5 shareSessionIdentifier];
    if (shareSessionIdentifier == shareSessionIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      shareSessionIdentifier3 = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
      shareSessionIdentifier4 = [v5 shareSessionIdentifier];
      v12 = [shareSessionIdentifier3 isEqual:shareSessionIdentifier4];
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
  itemIdentifier = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
  if ([(BMMLSEVirtualFeatureStore *)self hasFeatureVersion])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStore featureVersion](self, "featureVersion")}];
  }

  else
  {
    v4 = 0;
  }

  _featureVectorJSONArray = [(BMMLSEVirtualFeatureStore *)self _featureVectorJSONArray];
  deviceIdentifier = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
  shareSessionIdentifier = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
  v18 = @"itemIdentifier";
  null = itemIdentifier;
  if (!itemIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"featureVersion";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"featureVector";
  null3 = _featureVectorJSONArray;
  if (!_featureVectorJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"deviceIdentifier";
  null4 = deviceIdentifier;
  if (!deviceIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"shareSessionIdentifier";
  null5 = shareSessionIdentifier;
  if (!shareSessionIdentifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (shareSessionIdentifier)
  {
    if (deviceIdentifier)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (deviceIdentifier)
    {
LABEL_16:
      if (_featureVectorJSONArray)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (_featureVectorJSONArray)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (itemIdentifier)
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
  if (itemIdentifier)
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
  featureVector = [(BMMLSEVirtualFeatureStore *)self featureVector];
  v5 = [featureVector countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(featureVector);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [featureVector countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMLSEVirtualFeatureStore)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        errorCopy = error;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v55 = objc_opt_class();
        v29 = v28;
        self = selfCopy;
        v30 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v55, @"itemIdentifier"];
        v87[0] = v30;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        v8 = 0;
        selfCopy4 = 0;
        *errorCopy = [v25 initWithDomain:v26 code:2 userInfo:v10];
        goto LABEL_59;
      }

      v8 = 0;
      selfCopy4 = 0;
      goto LABEL_60;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"featureVersion"];
  v64 = v9;
  v65 = v7;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        errorCopy2 = error;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureVersion"];
        v85 = v11;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v30 = 0;
        selfCopy4 = 0;
        *errorCopy2 = [v33 initWithDomain:v34 code:2 userInfo:?];

        goto LABEL_58;
      }

      v30 = 0;
      selfCopy4 = 0;
      goto LABEL_59;
    }

    v63 = v10;
  }

  else
  {
    v63 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"featureVector"];
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:null];

  if (v13)
  {
    errorCopy4 = error;
    selfCopy3 = self;
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
        if (!error)
        {
          selfCopy4 = 0;
          v30 = v63;
          goto LABEL_58;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"featureVector"];
        v83 = v66;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v23 = v46 = error;
        v47 = [v44 initWithDomain:v45 code:2 userInfo:v23];
        selfCopy4 = 0;
        *v46 = v47;
LABEL_45:
        v30 = v63;
        goto LABEL_56;
      }
    }

    errorCopy4 = error;
    selfCopy3 = self;
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
  v57 = dictionaryCopy;
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
        v35 = errorCopy4;
        if (errorCopy4)
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
          selfCopy4 = 0;
          *v35 = [v39 initWithDomain:v40 code:2 userInfo:v38];
LABEL_41:
          v23 = v11;
          dictionaryCopy = v57;
          self = selfCopy3;
          v8 = v61;
          v30 = v63;
          goto LABEL_54;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = errorCopy4;
        if (errorCopy4)
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
        selfCopy4 = 0;
        v23 = v11;
        dictionaryCopy = v57;
        self = selfCopy3;
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
        if (errorCopy4)
        {
          v43 = v22;
          *errorCopy4 = v38;
        }

        selfCopy4 = 0;
        goto LABEL_41;
      }

      [v66 addObject:v21];
    }

    v15 = [v11 countByEnumeratingWithState:&v69 objects:v81 count:16];
    dictionaryCopy = v57;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v19 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v19)
  {
    v23 = 0;
    self = selfCopy3;
    goto LABEL_49;
  }

  objc_opt_class();
  self = selfCopy3;
  if (objc_opt_isKindOfClass())
  {
    v23 = 0;
LABEL_49:
    v8 = v61;
    v48 = [dictionaryCopy objectForKeyedSubscript:@"shareSessionIdentifier"];
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
      selfCopy4 = self;
    }

    else
    {
      if (errorCopy4)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shareSessionIdentifier"];
        v74 = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *errorCopy4 = [v62 initWithDomain:v60 code:2 userInfo:v54];
      }

      v38 = 0;
      selfCopy4 = 0;
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

    if (errorCopy4)
    {
      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
      v76 = v38;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v52 = [v56 initWithDomain:v51 code:2 userInfo:v48];
      v23 = 0;
      selfCopy4 = 0;
      *errorCopy4 = v52;
      v8 = v61;
      v30 = v63;
      goto LABEL_53;
    }

    v23 = 0;
    selfCopy4 = 0;
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
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEVirtualFeatureStore *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v11 writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMMLSEVirtualFeatureStore;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_47;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
      if (!PBReaderPlaceMark() || (v26 = [[BMMLSEVirtualFeatureStoreFeature alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_51:

        goto LABEL_48;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_46:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
        v22 = [fromCopy position] + 1;
        if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      if ([fromCopy hasError])
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  itemIdentifier = [(BMMLSEVirtualFeatureStore *)self itemIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStore featureVersion](self, "featureVersion")}];
  featureVector = [(BMMLSEVirtualFeatureStore *)self featureVector];
  deviceIdentifier = [(BMMLSEVirtualFeatureStore *)self deviceIdentifier];
  shareSessionIdentifier = [(BMMLSEVirtualFeatureStore *)self shareSessionIdentifier];
  v9 = [v3 initWithFormat:@"BMMLSEVirtualFeatureStore with itemIdentifier: %@, featureVersion: %@, featureVector: %@, deviceIdentifier: %@, shareSessionIdentifier: %@", itemIdentifier, v5, featureVector, deviceIdentifier, shareSessionIdentifier];

  return v9;
}

- (BMMLSEVirtualFeatureStore)initWithItemIdentifier:(id)identifier featureVersion:(id)version featureVector:(id)vector deviceIdentifier:(id)deviceIdentifier shareSessionIdentifier:(id)sessionIdentifier
{
  identifierCopy = identifier;
  versionCopy = version;
  vectorCopy = vector;
  deviceIdentifierCopy = deviceIdentifier;
  sessionIdentifierCopy = sessionIdentifier;
  v21.receiver = self;
  v21.super_class = BMMLSEVirtualFeatureStore;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_itemIdentifier, identifier);
    if (versionCopy)
    {
      v18->_hasFeatureVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v18->_hasFeatureVersion = 0;
    }

    v18->_featureVersion = unsignedIntValue;
    objc_storeStrong(&v18->_featureVector, vector);
    objc_storeStrong(&v18->_deviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v18->_shareSessionIdentifier, sessionIdentifier);
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