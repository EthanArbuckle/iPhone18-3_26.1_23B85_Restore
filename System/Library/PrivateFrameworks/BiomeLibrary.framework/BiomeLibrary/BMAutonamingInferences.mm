@interface BMAutonamingInferences
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAutonamingInferences)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)a3 inferredName:(id)a4 inferredContactIdentifier:(id)a5 inferredRelationshipToDeviceOwner:(id)a6 confidence:(id)a7;
- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)a3 inferredName:(id)a4 inferredContactIdentifier:(id)a5 inferredRelationshipToDeviceOwner:(id)a6 confidence:(id)a7 imageMessageIdentifier:(id)a8 contextMessageIdentifiers:(id)a9 modelVersion:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_contextMessageIdentifiersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAutonamingInferences

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photosPersonIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredContactIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredRelationshipToDeviceOwner" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imageMessageIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextMessageIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_41127];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAutonamingInferences *)self photosPersonIdentifier];
    v7 = [v5 photosPersonIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAutonamingInferences *)self photosPersonIdentifier];
      v10 = [v5 photosPersonIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v13 = [(BMAutonamingInferences *)self inferredName];
    v14 = [v5 inferredName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAutonamingInferences *)self inferredName];
      v17 = [v5 inferredName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    v19 = [(BMAutonamingInferences *)self inferredContactIdentifier];
    v20 = [v5 inferredContactIdentifier];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAutonamingInferences *)self inferredContactIdentifier];
      v23 = [v5 inferredContactIdentifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    v25 = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
    v26 = [v5 inferredRelationshipToDeviceOwner];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
      v29 = [v5 inferredRelationshipToDeviceOwner];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    if (-[BMAutonamingInferences hasConfidence](self, "hasConfidence") || [v5 hasConfidence])
    {
      if (![(BMAutonamingInferences *)self hasConfidence])
      {
        goto LABEL_30;
      }

      if (![v5 hasConfidence])
      {
        goto LABEL_30;
      }

      [(BMAutonamingInferences *)self confidence];
      v32 = v31;
      [v5 confidence];
      if (v32 != v33)
      {
        goto LABEL_30;
      }
    }

    v34 = [(BMAutonamingInferences *)self imageMessageIdentifier];
    v35 = [v5 imageMessageIdentifier];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(BMAutonamingInferences *)self imageMessageIdentifier];
      v38 = [v5 imageMessageIdentifier];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_30;
      }
    }

    v40 = [(BMAutonamingInferences *)self contextMessageIdentifiers];
    v41 = [v5 contextMessageIdentifiers];
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      v43 = [(BMAutonamingInferences *)self contextMessageIdentifiers];
      v44 = [v5 contextMessageIdentifiers];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
LABEL_30:
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    v47 = [(BMAutonamingInferences *)self modelVersion];
    v48 = [v5 modelVersion];
    if (v47 == v48)
    {
      v12 = 1;
    }

    else
    {
      v49 = [(BMAutonamingInferences *)self modelVersion];
      v50 = [v5 modelVersion];
      v12 = [v49 isEqual:v50];
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v32[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMAutonamingInferences *)self photosPersonIdentifier];
  v4 = [(BMAutonamingInferences *)self inferredName];
  v5 = [(BMAutonamingInferences *)self inferredContactIdentifier];
  v6 = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
  if (![(BMAutonamingInferences *)self hasConfidence]|| ([(BMAutonamingInferences *)self confidence], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMAutonamingInferences *)self confidence];
    v8 = MEMORY[0x1E696AD98];
    [(BMAutonamingInferences *)self confidence];
    v9 = [v8 numberWithDouble:?];
  }

  v10 = [(BMAutonamingInferences *)self imageMessageIdentifier];
  v11 = [(BMAutonamingInferences *)self _contextMessageIdentifiersJSONArray];
  v12 = [(BMAutonamingInferences *)self modelVersion];
  v31[0] = @"photosPersonIdentifier";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v13;
  v32[0] = v13;
  v31[1] = @"inferredName";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v3;
  v25 = v14;
  v32[1] = v14;
  v31[2] = @"inferredContactIdentifier";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v4;
  v24 = v15;
  v32[2] = v15;
  v31[3] = @"inferredRelationshipToDeviceOwner";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v5;
  v32[3] = v16;
  v31[4] = @"confidence";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v6;
  v32[4] = v17;
  v31[5] = @"imageMessageIdentifier";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v18;
  v31[6] = @"contextMessageIdentifiers";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v19;
  v31[7] = @"modelVersion";
  v20 = v12;
  if (!v12)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_36:

    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (!v11)
  {
    goto LABEL_36;
  }

LABEL_23:
  if (v10)
  {
    goto LABEL_24;
  }

LABEL_37:

LABEL_24:
  if (!v9)
  {
  }

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  if (v29)
  {
    if (v30)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (v30)
    {
      goto LABEL_32;
    }
  }

LABEL_32:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_contextMessageIdentifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMAutonamingInferences *)self contextMessageIdentifiers];
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

- (BMAutonamingInferences)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v122[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"photosPersonIdentifier"];
  v97 = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v19 = a4;
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v121 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"photosPersonIdentifier"];
        v122[0] = v22;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
        v23 = v21;
        v10 = v22;
        v8 = 0;
        v24 = 0;
        *v19 = [v20 initWithDomain:v23 code:2 userInfo:v9];
        self = v97;
        goto LABEL_89;
      }

      v8 = 0;
      v24 = 0;
      goto LABEL_90;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"inferredName"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v10 = 0;
        v24 = 0;
        goto LABEL_89;
      }

      v38 = a4;
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v119 = *MEMORY[0x1E696A578];
      v41 = v8;
      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      v79 = objc_opt_class();
      v43 = v42;
      v8 = v41;
      v44 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v79, @"inferredName"];
      v120 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v46 = v39;
      v11 = v45;
      v47 = [v46 initWithDomain:v40 code:2 userInfo:v45];
      v10 = 0;
      v24 = 0;
      *v38 = v47;
LABEL_76:
      self = v97;
      goto LABEL_88;
    }

    v96 = a4;
    v10 = v9;
  }

  else
  {
    v96 = a4;
    v10 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"inferredContactIdentifier"];
  v94 = v10;
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v92 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v96)
    {
      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v117 = *MEMORY[0x1E696A578];
      v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"inferredContactIdentifier"];
      v118 = v95;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v49 = v48;
      v10 = v94;
      v44 = 0;
      v24 = 0;
      *v96 = [v93 initWithDomain:v49 code:2 userInfo:v12];
      goto LABEL_86;
    }

    v44 = 0;
    v24 = 0;
    goto LABEL_76;
  }

  v92 = v11;
LABEL_10:
  v12 = [v6 objectForKeyedSubscript:@"inferredRelationshipToDeviceOwner"];
  v90 = v11;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v85 = v7;
    v14 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v96)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"inferredRelationshipToDeviceOwner"];
        v116 = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v59 = v55;
        v11 = v90;
        v60 = v56;
        v10 = v94;
        v91 = v58;
        v95 = 0;
        v24 = 0;
        *v96 = [v59 initWithDomain:v60 code:2 userInfo:?];
        v36 = v57;
        v44 = v92;
        v7 = v85;
        goto LABEL_85;
      }

      v95 = 0;
      v24 = 0;
      v44 = v92;
      v7 = v85;
      goto LABEL_87;
    }

    v95 = v12;
    v13 = v85;
  }

  else
  {
    v13 = v7;
    v14 = v8;
    v95 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"confidence"];
  v89 = v12;
  v91 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v96)
      {
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v113 = *MEMORY[0x1E696A578];
        v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v114 = v88;
        v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v66 = v63;
        v11 = v90;
        v67 = v64;
        v10 = v94;
        v87 = v65;
        v24 = 0;
        *v96 = [v66 initWithDomain:v67 code:2 userInfo:?];
        v44 = v92;
        v8 = v14;
        v7 = v13;
        v36 = 0;
        goto LABEL_84;
      }

      v24 = 0;
      v44 = v92;
      v8 = v14;
      v7 = v13;
      v36 = 0;
      goto LABEL_85;
    }

    v83 = v16;
  }

  else
  {
    v83 = 0;
  }

  v17 = [v6 objectForKeyedSubscript:@"imageMessageIdentifier"];
  v8 = v14;
  v82 = v9;
  v87 = v17;
  if (v17)
  {
    v18 = v17;
    objc_opt_class();
    v84 = v13;
    if (objc_opt_isKindOfClass())
    {
      v88 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v96)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"imageMessageIdentifier"];
          v112 = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v70 = v68;
          v11 = v90;
          v71 = [v70 initWithDomain:v69 code:2 userInfo:v28];
          v88 = 0;
          v24 = 0;
          *v96 = v71;
          v36 = v83;
          v7 = v84;
          goto LABEL_82;
        }

        v88 = 0;
        v24 = 0;
        v44 = v92;
        v36 = v83;
        v7 = v84;
        goto LABEL_84;
      }

      v88 = v18;
    }

    v7 = v13;
  }

  else
  {
    v88 = 0;
    v7 = v13;
  }

  v25 = [v6 objectForKeyedSubscript:@"contextMessageIdentifiers"];
  v26 = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:v26];

  if (v27)
  {
    v86 = v8;

    v25 = 0;
  }

  else
  {
    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = v83;
        if (!v96)
        {
          v24 = 0;
          v11 = v90;
          goto LABEL_83;
        }

        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v109 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contextMessageIdentifiers"];
        v110 = v28;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v74 = [v72 initWithDomain:v73 code:2 userInfo:v37];
        v24 = 0;
        *v96 = v74;
LABEL_72:
        v12 = v89;
        goto LABEL_81;
      }
    }

    v86 = v8;
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v25 = v25;
  v29 = [v25 countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (!v29)
  {
    goto LABEL_49;
  }

  v30 = v29;
  v31 = *v99;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v99 != v31)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v98 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v96)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contextMessageIdentifiers"];
          v107 = v34;
          v52 = MEMORY[0x1E695DF20];
          v53 = &v107;
          v54 = &v106;
LABEL_62:
          v61 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:1];
          v62 = [v50 initWithDomain:v51 code:2 userInfo:v61];
          v8 = v86;
          v12 = v89;
          *v96 = v62;

          v24 = 0;
          v37 = v25;
          goto LABEL_63;
        }

        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v96)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextMessageIdentifiers"];
          v105 = v34;
          v52 = MEMORY[0x1E695DF20];
          v53 = &v105;
          v54 = &v104;
          goto LABEL_62;
        }

LABEL_66:
        v24 = 0;
        v37 = v25;
        v36 = v83;
        v8 = v86;
        goto LABEL_72;
      }

      [v28 addObject:v33];
    }

    v30 = [v25 countByEnumeratingWithState:&v98 objects:v108 count:16];
    v12 = v89;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v34 = [v6 objectForKeyedSubscript:@"modelVersion"];
  if (!v34)
  {
    v37 = 0;
    v35 = v97;
    v36 = v83;
    v8 = v86;
    goto LABEL_79;
  }

  objc_opt_class();
  v35 = v97;
  v36 = v83;
  v8 = v86;
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
    goto LABEL_79;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v34;
    v12 = v89;
LABEL_79:
    v24 = [(BMAutonamingInferences *)v35 initWithPhotosPersonIdentifier:v8 inferredName:v94 inferredContactIdentifier:v92 inferredRelationshipToDeviceOwner:v95 confidence:v36 imageMessageIdentifier:v88 contextMessageIdentifiers:v28 modelVersion:v37];
    v97 = v24;
  }

  else
  {
    if (v96)
    {
      v81 = objc_alloc(MEMORY[0x1E696ABC0]);
      v80 = *MEMORY[0x1E698F240];
      v102 = *MEMORY[0x1E696A578];
      v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
      v103 = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      *v96 = [v81 initWithDomain:v80 code:2 userInfo:v78];
    }

    v37 = 0;
    v24 = 0;
    v12 = v89;
LABEL_63:
    v36 = v83;
  }

LABEL_81:
  v11 = v90;
LABEL_82:

  v10 = v94;
LABEL_83:
  v44 = v92;

  v9 = v82;
LABEL_84:

LABEL_85:
LABEL_86:
  self = v97;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
  v75 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAutonamingInferences *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_photosPersonIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inferredName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inferredContactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inferredRelationshipToDeviceOwner)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteFloatField();
  }

  if (self->_imageMessageIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_contextMessageIdentifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMAutonamingInferences;
  v5 = [(BMEventBase *)&v31 init];
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
        LOBYTE(v32) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_47;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 <= 6)
      {
        if (v16 == 5)
        {
          v5->_hasConfidence = 1;
          v32 = 0.0;
          v19 = [v4 position] + 4;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 4, v20 <= objc_msgSend(v4, "length")))
          {
            v25 = [v4 data];
            [v25 getBytes:&v32 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_confidence = v32;
          goto LABEL_39;
        }

        if (v16 == 6)
        {
          v17 = PBReaderReadString();
          v18 = 64;
          goto LABEL_38;
        }

        goto LABEL_43;
      }

      if (v16 != 7)
      {
        if (v16 == 8)
        {
          v17 = PBReaderReadString();
          v18 = 80;
          goto LABEL_38;
        }

LABEL_43:
        if (!PBReaderSkipValueWithTag())
        {
LABEL_51:

          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v23 = PBReaderReadString();
      if (!v23)
      {
        goto LABEL_51;
      }

      v24 = v23;
      [v6 addObject:v23];

LABEL_39:
      v22 = [v4 position];
      if (v22 >= [v4 length])
      {
        goto LABEL_47;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = PBReaderReadString();
        v18 = 40;
        goto LABEL_38;
      }

      if (v16 == 4)
      {
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_38;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 24;
        goto LABEL_38;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_38:
        v21 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_39;
      }
    }

    goto LABEL_43;
  }

LABEL_47:
  v26 = [v6 copy];
  contextMessageIdentifiers = v5->_contextMessageIdentifiers;
  v5->_contextMessageIdentifiers = v26;

  v28 = [v4 hasError];
  if (v28)
  {
LABEL_48:
    v29 = 0;
  }

  else
  {
LABEL_49:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAutonamingInferences *)self photosPersonIdentifier];
  v5 = [(BMAutonamingInferences *)self inferredName];
  v6 = [(BMAutonamingInferences *)self inferredContactIdentifier];
  v7 = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
  v8 = MEMORY[0x1E696AD98];
  [(BMAutonamingInferences *)self confidence];
  v9 = [v8 numberWithDouble:?];
  v10 = [(BMAutonamingInferences *)self imageMessageIdentifier];
  v11 = [(BMAutonamingInferences *)self contextMessageIdentifiers];
  v12 = [(BMAutonamingInferences *)self modelVersion];
  v13 = [v3 initWithFormat:@"BMAutonamingInferences with photosPersonIdentifier: %@, inferredName: %@, inferredContactIdentifier: %@, inferredRelationshipToDeviceOwner: %@, confidence: %@, imageMessageIdentifier: %@, contextMessageIdentifiers: %@, modelVersion: %@", v4, v5, v6, v7, v9, v10, v11, v12];

  return v13;
}

- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)a3 inferredName:(id)a4 inferredContactIdentifier:(id)a5 inferredRelationshipToDeviceOwner:(id)a6 confidence:(id)a7 imageMessageIdentifier:(id)a8 contextMessageIdentifiers:(id)a9 modelVersion:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v17 = a7;
  v24 = a8;
  v23 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = BMAutonamingInferences;
  v19 = [(BMEventBase *)&v29 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_photosPersonIdentifier, a3);
    objc_storeStrong(&v19->_inferredName, a4);
    objc_storeStrong(&v19->_inferredContactIdentifier, a5);
    objc_storeStrong(&v19->_inferredRelationshipToDeviceOwner, a6);
    if (v17)
    {
      v19->_hasConfidence = 1;
      [v17 floatValue];
      v21 = v20;
    }

    else
    {
      v19->_hasConfidence = 0;
      v21 = -1.0;
    }

    v19->_confidence = v21;
    objc_storeStrong(&v19->_imageMessageIdentifier, a8);
    objc_storeStrong(&v19->_contextMessageIdentifiers, a9);
    objc_storeStrong(&v19->_modelVersion, a10);
  }

  return v19;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photosPersonIdentifier" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredName" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredContactIdentifier" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredRelationshipToDeviceOwner" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:5 type:1 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imageMessageIdentifier" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextMessageIdentifiers" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __33__BMAutonamingInferences_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contextMessageIdentifiersJSONArray];
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

    v8 = [[BMAutonamingInferences alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)a3 inferredName:(id)a4 inferredContactIdentifier:(id)a5 inferredRelationshipToDeviceOwner:(id)a6 confidence:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  v18 = [(BMAutonamingInferences *)self initWithPhotosPersonIdentifier:v16 inferredName:v15 inferredContactIdentifier:v14 inferredRelationshipToDeviceOwner:v13 confidence:v12 imageMessageIdentifier:0 contextMessageIdentifiers:v17];

  return v18;
}

@end