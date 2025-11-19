@interface BMMLSELabeledDataStore
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSELabeledDataStore)initWithItemIdentifier:(id)a3 featureVersion:(id)a4 featureVector:(id)a5 deviceIdentifier:(id)a6 isPositiveLabeled:(id)a7 labelingPolicyVersion:(id)a8 labelingEvidence:(int)a9 sharingEventUID:(id)a10 configurationInfo:(id)a11;
- (BMMLSELabeledDataStore)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_featureVectorJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSELabeledDataStore

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMLSELabeledDataStore *)self itemIdentifier];
    v7 = [v5 itemIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMLSELabeledDataStore *)self itemIdentifier];
      v10 = [v5 itemIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (-[BMMLSELabeledDataStore hasFeatureVersion](self, "hasFeatureVersion") || [v5 hasFeatureVersion])
    {
      if (![(BMMLSELabeledDataStore *)self hasFeatureVersion])
      {
        goto LABEL_33;
      }

      if (![v5 hasFeatureVersion])
      {
        goto LABEL_33;
      }

      v13 = [(BMMLSELabeledDataStore *)self featureVersion];
      if (v13 != [v5 featureVersion])
      {
        goto LABEL_33;
      }
    }

    v14 = [(BMMLSELabeledDataStore *)self featureVector];
    v15 = [v5 featureVector];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMLSELabeledDataStore *)self featureVector];
      v18 = [v5 featureVector];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_33;
      }
    }

    v20 = [(BMMLSELabeledDataStore *)self deviceIdentifier];
    v21 = [v5 deviceIdentifier];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMMLSELabeledDataStore *)self deviceIdentifier];
      v24 = [v5 deviceIdentifier];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_33;
      }
    }

    if (-[BMMLSELabeledDataStore hasIsPositiveLabeled](self, "hasIsPositiveLabeled") || [v5 hasIsPositiveLabeled])
    {
      if (![(BMMLSELabeledDataStore *)self hasIsPositiveLabeled])
      {
        goto LABEL_33;
      }

      if (![v5 hasIsPositiveLabeled])
      {
        goto LABEL_33;
      }

      v26 = [(BMMLSELabeledDataStore *)self isPositiveLabeled];
      if (v26 != [v5 isPositiveLabeled])
      {
        goto LABEL_33;
      }
    }

    if (-[BMMLSELabeledDataStore hasLabelingPolicyVersion](self, "hasLabelingPolicyVersion") || [v5 hasLabelingPolicyVersion])
    {
      if (![(BMMLSELabeledDataStore *)self hasLabelingPolicyVersion])
      {
        goto LABEL_33;
      }

      if (![v5 hasLabelingPolicyVersion])
      {
        goto LABEL_33;
      }

      v27 = [(BMMLSELabeledDataStore *)self labelingPolicyVersion];
      if (v27 != [v5 labelingPolicyVersion])
      {
        goto LABEL_33;
      }
    }

    v28 = [(BMMLSELabeledDataStore *)self labelingEvidence];
    if (v28 != [v5 labelingEvidence])
    {
      goto LABEL_33;
    }

    v29 = [(BMMLSELabeledDataStore *)self sharingEventUID];
    v30 = [v5 sharingEventUID];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMMLSELabeledDataStore *)self sharingEventUID];
      v33 = [v5 sharingEventUID];
      v34 = [v32 isEqual:v33];

      if (!v34)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v36 = [(BMMLSELabeledDataStore *)self configurationInfo];
    v37 = [v5 configurationInfo];
    if (v36 == v37)
    {
      v12 = 1;
    }

    else
    {
      v38 = [(BMMLSELabeledDataStore *)self configurationInfo];
      v39 = [v5 configurationInfo];
      v12 = [v38 isEqual:v39];
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v34[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMMLSELabeledDataStore *)self itemIdentifier];
  if ([(BMMLSELabeledDataStore *)self hasFeatureVersion])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore featureVersion](self, "featureVersion")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMMLSELabeledDataStore *)self _featureVectorJSONArray];
  v6 = [(BMMLSELabeledDataStore *)self deviceIdentifier];
  if ([(BMMLSELabeledDataStore *)self hasIsPositiveLabeled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStore isPositiveLabeled](self, "isPositiveLabeled")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMLSELabeledDataStore *)self hasLabelingPolicyVersion])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore labelingPolicyVersion](self, "labelingPolicyVersion")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSELabeledDataStore labelingEvidence](self, "labelingEvidence")}];
  v10 = [(BMMLSELabeledDataStore *)self sharingEventUID];
  v11 = [(BMMLSELabeledDataStore *)self configurationInfo];
  v33[0] = @"itemIdentifier";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v12;
  v34[0] = v12;
  v33[1] = @"featureVersion";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v13;
  v34[1] = v13;
  v33[2] = @"featureVector";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v25 = v14;
  v34[2] = v14;
  v33[3] = @"deviceIdentifier";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v24 = v15;
  v34[3] = v15;
  v33[4] = @"isPositiveLabeled";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v5;
  v34[4] = v16;
  v33[5] = @"labelingPolicyVersion";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v7;
  v18 = v6;
  v34[5] = v17;
  v33[6] = @"labelingEvidence";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = v19;
  v33[7] = @"sharingEventUID";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = v20;
  v33[8] = @"configurationInfo";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v34[8] = v21;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:9];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v9)
  {
  }

  if (!v8)
  {
  }

  if (!v29)
  {
  }

  if (!v18)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_40;
    }

LABEL_47:

    if (v32)
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  if (!v31)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v32)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_41:
  v22 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_featureVectorJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMLSELabeledDataStore *)self featureVector];
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

- (BMMLSELabeledDataStore)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v129[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"itemIdentifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v128 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
        v129[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
        v29 = v25;
        v8 = v28;
        v30 = [v29 initWithDomain:v26 code:2 userInfo:v28];
        v7 = 0;
        v31 = 0;
        *a4 = v30;
        goto LABEL_94;
      }

      v7 = 0;
      v31 = 0;
      goto LABEL_95;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"featureVersion"];
  v98 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureVersion"];
        v127 = v9;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v36 = v33;
        v8 = v32;
        v101 = v35;
        v37 = [v36 initWithDomain:v34 code:2 userInfo:?];
        v27 = 0;
        v31 = 0;
        *a4 = v37;

        goto LABEL_93;
      }

      v27 = 0;
      v31 = 0;
      goto LABEL_94;
    }

    v97 = v8;
  }

  else
  {
    v97 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"featureVector"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v90 = v8;
    v91 = self;
    v94 = v7;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v31 = 0;
          v27 = v97;
          goto LABEL_93;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v124 = *MEMORY[0x1E696A578];
        v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"featureVector"];
        v125 = v100;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v48 = [v46 initWithDomain:v47 code:2 userInfo:v21];
        v31 = 0;
        *a4 = v48;
LABEL_48:
        v27 = v97;
        goto LABEL_91;
      }
    }

    v90 = v8;
    v91 = self;
    v94 = v7;
  }

  v100 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v103 objects:v123 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v104;
  v89 = v5;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v104 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v103 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = a4;
        if (a4)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v121 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"featureVector"];
          v122 = v17;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v122;
          v43 = &v121;
LABEL_40:
          v24 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];
          v44 = [v39 initWithDomain:v40 code:2 userInfo:v24];
          v31 = 0;
          *v38 = v44;
LABEL_44:
          v21 = v9;
          v5 = v89;
          v8 = v90;
          self = v91;
          v7 = v94;
          v27 = v97;
          goto LABEL_89;
        }

        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = a4;
        if (a4)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v119 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureVector"];
          v120 = v17;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v120;
          v43 = &v119;
          goto LABEL_40;
        }

LABEL_47:
        v31 = 0;
        v21 = v9;
        v5 = v89;
        v8 = v90;
        self = v91;
        v7 = v94;
        goto LABEL_48;
      }

      v17 = v16;
      v18 = [BMMLSELabeledDataStoreFeature alloc];
      v102 = 0;
      v19 = [(BMMLSELabeledDataStoreFeature *)v18 initWithJSONDictionary:v17 error:&v102];
      v20 = v102;
      if (v20)
      {
        v24 = v20;
        if (a4)
        {
          v45 = v20;
          *a4 = v24;
        }

        v31 = 0;
        goto LABEL_44;
      }

      [v100 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v103 objects:v123 count:16];
    v5 = v89;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [v5 objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = 0;
    self = v91;
    goto LABEL_25;
  }

  objc_opt_class();
  self = v91;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v21 = 0;
      v31 = 0;
      v7 = v94;
      v27 = v97;
      v8 = v90;
      goto LABEL_90;
    }

    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v55 = *MEMORY[0x1E698F240];
    v117 = *MEMORY[0x1E696A578];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
    v118 = v24;
    v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    v56 = [v54 initWithDomain:v55 code:2 userInfo:?];
    v21 = 0;
    v31 = 0;
    *a4 = v56;
    v7 = v94;
    goto LABEL_107;
  }

  v21 = v17;
LABEL_25:
  v22 = [v5 objectForKeyedSubscript:@"isPositiveLabeled"];
  v87 = v22;
  if (!v22)
  {
    v24 = 0;
    v7 = v94;
    goto LABEL_54;
  }

  v23 = v22;
  objc_opt_class();
  v7 = v94;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
      goto LABEL_54;
    }

    if (a4)
    {
      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v115 = *MEMORY[0x1E696A578];
      v58 = v21;
      v59 = objc_alloc(MEMORY[0x1E696AEC0]);
      v79 = objc_opt_class();
      v60 = v59;
      v21 = v58;
      v88 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v79, @"isPositiveLabeled"];
      v116 = v88;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v61 = [v92 initWithDomain:v57 code:2 userInfo:?];
      v24 = 0;
      v31 = 0;
      *a4 = v61;
LABEL_111:
      v8 = v90;
      v27 = v97;
      goto LABEL_87;
    }

    v24 = 0;
    v31 = 0;
LABEL_107:
    v8 = v90;
    v27 = v97;
    goto LABEL_88;
  }

  v24 = 0;
LABEL_54:
  v49 = [v5 objectForKeyedSubscript:@"labelingPolicyVersion"];
  v86 = v21;
  v84 = v49;
  if (v49)
  {
    v50 = v49;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v88 = v50;
        goto LABEL_57;
      }

      if (a4)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v113 = *MEMORY[0x1E696A578];
        v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"labelingPolicyVersion"];
        v114 = v85;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v65 = v63;
        v21 = v86;
        v81 = v64;
        v88 = 0;
        v31 = 0;
        *a4 = [v62 initWithDomain:v65 code:2 userInfo:?];
        v8 = v90;
        v27 = v97;
        goto LABEL_86;
      }

      v88 = 0;
      v31 = 0;
      goto LABEL_111;
    }
  }

  v88 = 0;
LABEL_57:
  v51 = [v5 objectForKeyedSubscript:@"labelingEvidence"];
  v81 = v51;
  if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v85 = 0;
LABEL_76:
    v66 = [v5 objectForKeyedSubscript:@"sharingEventUID"];
    v93 = v66;
    if (v66 && (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = v67;
        goto LABEL_79;
      }

      if (a4)
      {
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v109 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sharingEventUID"];
        v110 = v69;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v74 = [v83 initWithDomain:v73 code:2 userInfo:v68];
        v82 = 0;
        v31 = 0;
        *a4 = v74;
        v27 = v97;
        goto LABEL_83;
      }

      v82 = 0;
      v31 = 0;
      v27 = v97;
    }

    else
    {
      v82 = 0;
LABEL_79:
      v68 = [v5 objectForKeyedSubscript:@"configurationInfo"];
      if (!v68 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v69 = 0;
        goto LABEL_82;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = v68;
LABEL_82:
        LODWORD(v78) = [v85 intValue];
        v27 = v97;
        self = [(BMMLSELabeledDataStore *)self initWithItemIdentifier:v7 featureVersion:v97 featureVector:v100 deviceIdentifier:v86 isPositiveLabeled:v24 labelingPolicyVersion:v88 labelingEvidence:v78 sharingEventUID:v82 configurationInfo:v69];
        v31 = self;
      }

      else
      {
        if (a4)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v80 = *MEMORY[0x1E698F240];
          v107 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"configurationInfo"];
          v108 = v75;
          v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          *a4 = [v95 initWithDomain:v80 code:2 userInfo:v76];
        }

        v69 = 0;
        v31 = 0;
        v27 = v97;
      }

LABEL_83:

      v21 = v86;
    }

    v70 = v93;
LABEL_85:

    v8 = v90;
    goto LABEL_86;
  }

  v53 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = v52;
LABEL_75:
    v21 = v86;
    goto LABEL_76;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSELabeledDataStoreLabelingEvidenceTypeFromString(v52)];
    goto LABEL_75;
  }

  if (a4)
  {
    v96 = objc_alloc(MEMORY[0x1E696ABC0]);
    v77 = *MEMORY[0x1E698F240];
    v111 = *MEMORY[0x1E696A578];
    v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"labelingEvidence"];
    v112 = v82;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v85 = 0;
    v31 = 0;
    *a4 = [v96 initWithDomain:v77 code:2 userInfo:v70];
    v7 = v53;
    v27 = v97;
    v21 = v86;
    goto LABEL_85;
  }

  v85 = 0;
  v31 = 0;
  v8 = v90;
  v27 = v97;
  v21 = v86;
LABEL_86:

LABEL_87:
LABEL_88:

LABEL_89:
LABEL_90:

LABEL_91:
LABEL_93:

  v6 = v98;
LABEL_94:

LABEL_95:
  v71 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSELabeledDataStore *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
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

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_featureVector;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsPositiveLabeled)
  {
    isPositiveLabeled = self->_isPositiveLabeled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasLabelingPolicyVersion)
  {
    labelingPolicyVersion = self->_labelingPolicyVersion;
    PBDataWriterWriteUint32Field();
  }

  labelingEvidence = self->_labelingEvidence;
  PBDataWriterWriteUint32Field();
  if (self->_sharingEventUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_configurationInfo)
  {
    PBDataWriterWriteStringField();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = BMMLSELabeledDataStore;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_94;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_92;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v57[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v57 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v57[0] & 0x7F) << v8;
        if ((v57[0] & 0x80) == 0)
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
        goto LABEL_92;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        break;
      }

      if (v16 <= 2)
      {
        if (v16 == 1)
        {
          v31 = PBReaderReadString();
          v32 = 40;
          goto LABEL_73;
        }

        if (v16 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasFeatureVersion = 1;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:v57 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v57[0] & 0x7F) << v24;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v14 = v25++ >= 9;
            if (v14)
            {
              v30 = 0;
              goto LABEL_79;
            }
          }

          if ([v4 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_79:
          v49 = 24;
          goto LABEL_84;
        }

        goto LABEL_74;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v31 = PBReaderReadString();
          v32 = 56;
LABEL_73:
          v48 = *(&v5->super.super.isa + v32);
          *(&v5->super.super.isa + v32) = v31;

          goto LABEL_91;
        }

        goto LABEL_74;
      }

      v57[0] = 0;
      v57[1] = 0;
      if (!PBReaderPlaceMark() || (v39 = [[BMMLSELabeledDataStoreFeature alloc] initByReadFrom:v4]) == 0)
      {
LABEL_96:

        goto LABEL_93;
      }

      v40 = v39;
      [v6 addObject:v39];
      PBReaderRecallMark();

LABEL_91:
      v50 = [v4 position];
      if (v50 >= [v4 length])
      {
        goto LABEL_92;
      }
    }

    if (v16 <= 6)
    {
      if (v16 == 5)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v5->_hasIsPositiveLabeled = 1;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v44 = [v4 position] + 1;
          if (v44 >= [v4 position] && (v45 = objc_msgSend(v4, "position") + 1, v45 <= objc_msgSend(v4, "length")))
          {
            v46 = [v4 data];
            [v46 getBytes:v57 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v43 |= (v57[0] & 0x7F) << v41;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v14 = v42++ >= 9;
          if (v14)
          {
            LOBYTE(v47) = 0;
            goto LABEL_86;
          }
        }

        v47 = (v43 != 0) & ~[v4 hasError];
LABEL_86:
        v5->_isPositiveLabeled = v47;
        goto LABEL_91;
      }

      if (v16 == 6)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v5->_hasLabelingPolicyVersion = 1;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v36 = [v4 position] + 1;
          if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
          {
            v38 = [v4 data];
            [v38 getBytes:v57 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v35 |= (v57[0] & 0x7F) << v33;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v14 = v34++ >= 9;
          if (v14)
          {
            v30 = 0;
            goto LABEL_83;
          }
        }

        if ([v4 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v35;
        }

LABEL_83:
        v49 = 28;
LABEL_84:
        *(&v5->super.super.isa + v49) = v30;
        goto LABEL_91;
      }
    }

    else
    {
      switch(v16)
      {
        case 9:
          v31 = PBReaderReadString();
          v32 = 72;
          goto LABEL_73;
        case 8:
          v31 = PBReaderReadString();
          v32 = 64;
          goto LABEL_73;
        case 7:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:v57 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v57[0] & 0x7F) << v17;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_89;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 3)
          {
LABEL_89:
            LODWORD(v19) = 0;
          }

          v5->_labelingEvidence = v19;
          goto LABEL_91;
      }
    }

LABEL_74:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_92:
  v51 = [v6 copy];
  featureVector = v5->_featureVector;
  v5->_featureVector = v51;

  v53 = [v4 hasError];
  if (v53)
  {
LABEL_93:
    v54 = 0;
  }

  else
  {
LABEL_94:
    v54 = v5;
  }

  return v54;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMLSELabeledDataStore *)self itemIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore featureVersion](self, "featureVersion")}];
  v6 = [(BMMLSELabeledDataStore *)self featureVector];
  v7 = [(BMMLSELabeledDataStore *)self deviceIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStore isPositiveLabeled](self, "isPositiveLabeled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore labelingPolicyVersion](self, "labelingPolicyVersion")}];
  v10 = BMMLSELabeledDataStoreLabelingEvidenceTypeAsString([(BMMLSELabeledDataStore *)self labelingEvidence]);
  v11 = [(BMMLSELabeledDataStore *)self sharingEventUID];
  v12 = [(BMMLSELabeledDataStore *)self configurationInfo];
  v13 = [v3 initWithFormat:@"BMMLSELabeledDataStore with itemIdentifier: %@, featureVersion: %@, featureVector: %@, deviceIdentifier: %@, isPositiveLabeled: %@, labelingPolicyVersion: %@, labelingEvidence: %@, sharingEventUID: %@, configurationInfo: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMMLSELabeledDataStore)initWithItemIdentifier:(id)a3 featureVersion:(id)a4 featureVector:(id)a5 deviceIdentifier:(id)a6 isPositiveLabeled:(id)a7 labelingPolicyVersion:(id)a8 labelingEvidence:(int)a9 sharingEventUID:(id)a10 configurationInfo:(id)a11
{
  v29 = a3;
  v18 = a4;
  v28 = a5;
  v27 = a6;
  v19 = a7;
  v20 = a8;
  v26 = a10;
  v21 = a11;
  v30.receiver = self;
  v30.super_class = BMMLSELabeledDataStore;
  v22 = [(BMEventBase *)&v30 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_itemIdentifier, a3);
    if (v18)
    {
      v22->_hasFeatureVersion = 1;
      v23 = [v18 unsignedIntValue];
    }

    else
    {
      v23 = 0;
      v22->_hasFeatureVersion = 0;
    }

    v22->_featureVersion = v23;
    objc_storeStrong(&v22->_featureVector, a5);
    objc_storeStrong(&v22->_deviceIdentifier, a6);
    if (v19)
    {
      v22->_hasIsPositiveLabeled = 1;
      v22->_isPositiveLabeled = [v19 BOOLValue];
    }

    else
    {
      v22->_hasIsPositiveLabeled = 0;
      v22->_isPositiveLabeled = 0;
    }

    if (v20)
    {
      v22->_hasLabelingPolicyVersion = 1;
      v24 = [v20 unsignedIntValue];
    }

    else
    {
      v24 = 0;
      v22->_hasLabelingPolicyVersion = 0;
    }

    v22->_labelingPolicyVersion = v24;
    v22->_labelingEvidence = a9;
    objc_storeStrong(&v22->_sharingEventUID, a10);
    objc_storeStrong(&v22->_configurationInfo, a11);
  }

  return v22;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVersion" number:2 type:4 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVector" number:3 type:14 subMessageClass:objc_opt_class()];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPositiveLabeled" number:5 type:12 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelingPolicyVersion" number:6 type:4 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelingEvidence" number:7 type:4 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharingEventUID" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"configurationInfo" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureVersion" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"featureVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_340];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPositiveLabeled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelingPolicyVersion" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelingEvidence" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharingEventUID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"configurationInfo" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __33__BMMLSELabeledDataStore_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMMLSELabeledDataStore alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end