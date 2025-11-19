@interface BMHomeKitClientActionSet
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHomeKitClientActionSet)initWithBase:(id)a3 actionSetUniqueIdentifier:(id)a4 actionSetType:(id)a5 associatedAccessoryUniqueIdentifiers:(id)a6 actionSetName:(id)a7 homeName:(id)a8;
- (BMHomeKitClientActionSet)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_associatedAccessoryUniqueIdentifiersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMHomeKitClientActionSet

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"base_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_46531];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionSetUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionSetType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedAccessoryUniqueIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_50];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionSetName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeName" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMHomeKitClientActionSet *)self base];
    v7 = [v5 base];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMHomeKitClientActionSet *)self base];
      v10 = [v5 base];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMHomeKitClientActionSet *)self actionSetUniqueIdentifier];
    v14 = [v5 actionSetUniqueIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMHomeKitClientActionSet *)self actionSetUniqueIdentifier];
      v17 = [v5 actionSetUniqueIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMHomeKitClientActionSet *)self actionSetType];
    v20 = [v5 actionSetType];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMHomeKitClientActionSet *)self actionSetType];
      v23 = [v5 actionSetType];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMHomeKitClientActionSet *)self associatedAccessoryUniqueIdentifiers];
    v26 = [v5 associatedAccessoryUniqueIdentifiers];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMHomeKitClientActionSet *)self associatedAccessoryUniqueIdentifiers];
      v29 = [v5 associatedAccessoryUniqueIdentifiers];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMHomeKitClientActionSet *)self actionSetName];
    v32 = [v5 actionSetName];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMHomeKitClientActionSet *)self actionSetName];
      v35 = [v5 actionSetName];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMHomeKitClientActionSet *)self homeName];
    v39 = [v5 homeName];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMHomeKitClientActionSet *)self homeName];
      v41 = [v5 homeName];
      v12 = [v40 isEqual:v41];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMHomeKitClientActionSet *)self base];
  v4 = [v3 jsonDictionary];

  v5 = [(BMHomeKitClientActionSet *)self actionSetUniqueIdentifier];
  v6 = [(BMHomeKitClientActionSet *)self actionSetType];
  v7 = [(BMHomeKitClientActionSet *)self _associatedAccessoryUniqueIdentifiersJSONArray];
  v8 = [(BMHomeKitClientActionSet *)self actionSetName];
  v9 = [(BMHomeKitClientActionSet *)self homeName];
  v23[0] = @"base";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v10;
  v24[0] = v10;
  v23[1] = @"actionSetUniqueIdentifier";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v24[1] = v11;
  v23[2] = @"actionSetType";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v4;
  v24[2] = v12;
  v23[3] = @"associatedAccessoryUniqueIdentifiers";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v13;
  v23[4] = @"actionSetName";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v14;
  v23[5] = @"homeName";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (v6)
  {
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_associatedAccessoryUniqueIdentifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMHomeKitClientActionSet *)self associatedAccessoryUniqueIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMHomeKitClientActionSet)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v89[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"base"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v88 = *MEMORY[0x1E696A578];
        v89[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"base"];
        v8 = v89[0];
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
        v30 = v28;
        v10 = v29;
        v17 = 0;
        *a4 = [v27 initWithDomain:v30 code:2 userInfo:v29];
        goto LABEL_68;
      }

      v17 = 0;
      goto LABEL_69;
    }

    v10 = v7;
    v72 = 0;
    v8 = [[BMHomeKitBase alloc] initWithJSONDictionary:v10 error:&v72];
    v16 = v72;
    if (v16)
    {
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

      v17 = 0;
      goto LABEL_68;
    }

    v67 = v7;
  }

  else
  {
    v67 = v7;
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"actionSetUniqueIdentifier"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionSetUniqueIdentifier"];
        v87 = v38;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v41 = [v39 initWithDomain:v40 code:2 userInfo:?];
        v10 = 0;
        v17 = 0;
        *a4 = v41;
        goto LABEL_66;
      }

      v10 = 0;
      v17 = 0;
      goto LABEL_67;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"actionSetType"];
  v65 = v9;
  v66 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v42 = v10;
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionSetType"];
        v85 = v13;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v45 = v43;
        v10 = v42;
        v46 = [v45 initWithDomain:v44 code:2 userInfo:v18];
        v38 = 0;
        v17 = 0;
        *a4 = v46;
        goto LABEL_64;
      }

      v38 = 0;
      v17 = 0;
      goto LABEL_66;
    }

    v64 = v10;
    v63 = v12;
  }

  else
  {
    v63 = 0;
    v64 = v10;
  }

  v13 = [v6 objectForKeyedSubscript:@"associatedAccessoryUniqueIdentifiers"];
  v14 = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v60 = self;
    v62 = v8;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v38 = v63;
          v10 = v64;
          goto LABEL_65;
        }

        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedAccessoryUniqueIdentifiers"];
        v83 = v18;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v49 = [v47 initWithDomain:v48 code:2 userInfo:v26];
        v17 = 0;
        *a4 = v49;
LABEL_50:
        v38 = v63;
        v10 = v64;
        goto LABEL_63;
      }
    }

    v60 = self;
    v62 = v8;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = v13;
  v19 = [v13 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = v19;
  v21 = *v69;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v69 != v21)
      {
        objc_enumerationMutation(v13);
      }

      v23 = *(*(&v68 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedAccessoryUniqueIdentifiers"];
          v80 = v59;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v34 = v31;
          v35 = v32;
LABEL_42:
          self = v60;
          v38 = v63;
          v17 = 0;
          *a4 = [v34 initWithDomain:v35 code:2 userInfo:v33];
          v26 = v13;
          goto LABEL_61;
        }

        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"associatedAccessoryUniqueIdentifiers"];
          v78 = v59;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v34 = v36;
          v35 = v37;
          goto LABEL_42;
        }

LABEL_45:
        v17 = 0;
        v26 = v13;
        self = v60;
        v8 = v62;
        goto LABEL_50;
      }

      [v18 addObject:v23];
    }

    v20 = [v13 countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v24 = [v6 objectForKeyedSubscript:@"actionSetName"];
  v59 = v24;
  if (!v24)
  {
    v26 = 0;
    self = v60;
    goto LABEL_56;
  }

  v25 = v24;
  objc_opt_class();
  self = v60;
  if (objc_opt_isKindOfClass())
  {
    v26 = 0;
LABEL_56:
    v50 = [v6 objectForKeyedSubscript:@"homeName"];
    if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v33 = 0;
      v38 = v63;
      goto LABEL_59;
    }

    objc_opt_class();
    v38 = v63;
    if (objc_opt_isKindOfClass())
    {
      v33 = v50;
LABEL_59:
      self = [(BMHomeKitClientActionSet *)self initWithBase:v62 actionSetUniqueIdentifier:v64 actionSetType:v38 associatedAccessoryUniqueIdentifiers:v18 actionSetName:v26 homeName:v33];
      v17 = self;
    }

    else
    {
      if (a4)
      {
        v61 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeName"];
        v74 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *a4 = [v61 initWithDomain:v58 code:2 userInfo:v57];
      }

      v33 = 0;
      v17 = 0;
    }

LABEL_60:

LABEL_61:
    v8 = v62;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
      goto LABEL_56;
    }

    if (a4)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v54 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionSetName"];
      v76 = v33;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v55 = [v53 initWithDomain:v54 code:2 userInfo:v50];
      v26 = 0;
      v17 = 0;
      *a4 = v55;
      v38 = v63;
      goto LABEL_60;
    }

    v26 = 0;
    v17 = 0;
    v8 = v62;
    v38 = v63;
  }

  v10 = v64;
LABEL_63:

LABEL_64:
LABEL_65:

  v9 = v65;
LABEL_66:

LABEL_67:
  v7 = v67;
LABEL_68:

LABEL_69:
  v51 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitClientActionSet *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_base)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMHomeKitBase *)self->_base writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_actionSetUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionSetType)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_associatedAccessoryUniqueIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_actionSetName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = BMHomeKitClientActionSet;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_38;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v31 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v31[0] & 0x7F) << v8;
        if ((v31[0] & 0x80) == 0)
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_38;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 3)
      {
        break;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
          goto LABEL_36;
        }

        if (v16 == 3)
        {
          v17 = PBReaderReadString();
          v18 = 40;
LABEL_36:
          v23 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_37;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      v31[0] = 0;
      v31[1] = 0;
      if (!PBReaderPlaceMark() || (v19 = [[BMHomeKitBase alloc] initByReadFrom:v4]) == 0)
      {
LABEL_42:

        goto LABEL_39;
      }

      base = v5->_base;
      v5->_base = v19;

      PBReaderRecallMark();
LABEL_37:
      v24 = [v4 position];
      if (v24 >= [v4 length])
      {
        goto LABEL_38;
      }
    }

    switch(v16)
    {
      case 4:
        v21 = PBReaderReadString();
        if (!v21)
        {
          goto LABEL_42;
        }

        v22 = v21;
        [v6 addObject:v21];

        goto LABEL_37;
      case 5:
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_36;
      case 6:
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_38:
  v25 = [v6 copy];
  associatedAccessoryUniqueIdentifiers = v5->_associatedAccessoryUniqueIdentifiers;
  v5->_associatedAccessoryUniqueIdentifiers = v25;

  v27 = [v4 hasError];
  if (v27)
  {
LABEL_39:
    v28 = 0;
  }

  else
  {
LABEL_40:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMHomeKitClientActionSet *)self base];
  v5 = [(BMHomeKitClientActionSet *)self actionSetUniqueIdentifier];
  v6 = [(BMHomeKitClientActionSet *)self actionSetType];
  v7 = [(BMHomeKitClientActionSet *)self associatedAccessoryUniqueIdentifiers];
  v8 = [(BMHomeKitClientActionSet *)self actionSetName];
  v9 = [(BMHomeKitClientActionSet *)self homeName];
  v10 = [v3 initWithFormat:@"BMHomeKitClientActionSet with base: %@, actionSetUniqueIdentifier: %@, actionSetType: %@, associatedAccessoryUniqueIdentifiers: %@, actionSetName: %@, homeName: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMHomeKitClientActionSet)initWithBase:(id)a3 actionSetUniqueIdentifier:(id)a4 actionSetType:(id)a5 associatedAccessoryUniqueIdentifiers:(id)a6 actionSetName:(id)a7 homeName:(id)a8
{
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMHomeKitClientActionSet;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_base, a3);
    objc_storeStrong(&v18->_actionSetUniqueIdentifier, a4);
    objc_storeStrong(&v18->_actionSetType, a5);
    objc_storeStrong(&v18->_associatedAccessoryUniqueIdentifiers, a6);
    objc_storeStrong(&v18->_actionSetName, a7);
    objc_storeStrong(&v18->_homeName, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"base" number:1 type:14 subMessageClass:objc_opt_class()];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionSetUniqueIdentifier" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionSetType" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedAccessoryUniqueIdentifiers" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionSetName" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeName" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __35__BMHomeKitClientActionSet_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _associatedAccessoryUniqueIdentifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __35__BMHomeKitClientActionSet_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 base];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMHomeKitClientActionSet alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end