@interface BMAeroMLPhotosSearchSession
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAeroMLPhotosSearchSession)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAeroMLPhotosSearchSession)initWithQueryRaw:(id)a3 queryEmbedding:(id)a4 presentedAssets:(id)a5 language:(id)a6 region:(id)a7 version:(id)a8 libraryProcessingProgress:(id)a9 librarySizeBucket:(int)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_presentedAssetsJSONArray;
- (id)_queryEmbeddingJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAeroMLPhotosSearchSession

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryRaw" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"queryEmbedding_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_216];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"presentedAssets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_218];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"libraryProcessingProgress" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"librarySizeBucket" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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
    v6 = [(BMAeroMLPhotosSearchSession *)self queryRaw];
    v7 = [v5 queryRaw];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAeroMLPhotosSearchSession *)self queryRaw];
      v10 = [v5 queryRaw];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
    v14 = [v5 queryEmbedding];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
      v17 = [v5 queryEmbedding];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
    v20 = [v5 presentedAssets];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
      v23 = [v5 presentedAssets];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    v25 = [(BMAeroMLPhotosSearchSession *)self language];
    v26 = [v5 language];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAeroMLPhotosSearchSession *)self language];
      v29 = [v5 language];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    v31 = [(BMAeroMLPhotosSearchSession *)self region];
    v32 = [v5 region];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMAeroMLPhotosSearchSession *)self region];
      v35 = [v5 region];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    v37 = [(BMAeroMLPhotosSearchSession *)self version];
    v38 = [v5 version];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMAeroMLPhotosSearchSession *)self version];
      v41 = [v5 version];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    if (!-[BMAeroMLPhotosSearchSession hasLibraryProcessingProgress](self, "hasLibraryProcessingProgress") && ![v5 hasLibraryProcessingProgress] || -[BMAeroMLPhotosSearchSession hasLibraryProcessingProgress](self, "hasLibraryProcessingProgress") && objc_msgSend(v5, "hasLibraryProcessingProgress") && (v43 = -[BMAeroMLPhotosSearchSession libraryProcessingProgress](self, "libraryProcessingProgress"), v43 == objc_msgSend(v5, "libraryProcessingProgress")))
    {
      v44 = [(BMAeroMLPhotosSearchSession *)self librarySizeBucket];
      v12 = v44 == [v5 librarySizeBucket];
LABEL_34:

      goto LABEL_35;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v27[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMAeroMLPhotosSearchSession *)self queryRaw];
  v4 = [(BMAeroMLPhotosSearchSession *)self _queryEmbeddingJSONArray];
  v5 = [(BMAeroMLPhotosSearchSession *)self _presentedAssetsJSONArray];
  v25 = [(BMAeroMLPhotosSearchSession *)self language];
  v24 = [(BMAeroMLPhotosSearchSession *)self region];
  v23 = [(BMAeroMLPhotosSearchSession *)self version];
  if ([(BMAeroMLPhotosSearchSession *)self hasLibraryProcessingProgress])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchSession libraryProcessingProgress](self, "libraryProcessingProgress")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchSession librarySizeBucket](self, "librarySizeBucket")}];
  v26[0] = @"queryRaw";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v8;
  v27[0] = v8;
  v26[1] = @"queryEmbedding";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v27[1] = v9;
  v26[2] = @"presentedAssets";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v10;
  v27[2] = v10;
  v26[3] = @"language";
  v11 = v25;
  if (!v25)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v27[3] = v11;
  v26[4] = @"region";
  v12 = v24;
  if (!v24)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v12;
  v26[5] = @"version";
  v13 = v23;
  if (!v23)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = v13;
  v26[6] = @"libraryProcessingProgress";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v14;
  v26[7] = @"librarySizeBucket";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[7] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:8];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v6)
    {
      goto LABEL_22;
    }
  }

LABEL_22:
  if (!v23)
  {
  }

  if (!v24)
  {
  }

  if (v25)
  {
    if (v5)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v5)
    {
LABEL_28:
      if (v4)
      {
        goto LABEL_29;
      }

LABEL_37:

      if (v22)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  if (!v4)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v22)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_presentedAssetsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
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

- (id)_queryEmbeddingJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:v11];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAeroMLPhotosSearchSession)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v144[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"queryRaw"];
  v105 = v6;
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryRaw"];
        v144[0] = v9;
        v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
        v8 = 0;
        v30 = 0;
        *a4 = [v31 initWithDomain:v32 code:2 userInfo:?];

        goto LABEL_105;
      }

      v8 = 0;
      v30 = 0;
      goto LABEL_106;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"queryEmbedding"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  v100 = self;
  if (v11)
  {
    v98 = v8;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v141 = *MEMORY[0x1E696A578];
          v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"queryEmbedding"];
          v142 = v108;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          v30 = 0;
          *a4 = [v43 initWithDomain:v44 code:2 userInfo:v18];
          goto LABEL_104;
        }

        v30 = 0;
        goto LABEL_105;
      }
    }

    v98 = v8;
  }

  v108 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v115 objects:v140 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v116;
    do
    {
      v15 = v5;
      for (i = 0; i != v13; ++i)
      {
        if (*v116 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v115 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = a4;
          if (a4)
          {
            v22 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v138 = *MEMORY[0x1E696A578];
            v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"queryEmbedding"];
            v139 = v107;
            v24 = MEMORY[0x1E695DF20];
            v25 = &v139;
            v26 = &v138;
            goto LABEL_26;
          }

LABEL_28:
          v30 = 0;
          v18 = v9;
          v5 = v15;
          v8 = v98;
          goto LABEL_104;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            goto LABEL_28;
          }

          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v136 = *MEMORY[0x1E696A578];
          v27 = objc_alloc(MEMORY[0x1E696AEC0]);
          v85 = objc_opt_class();
          v28 = v27;
          v21 = a4;
          v107 = [v28 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v85, @"queryEmbedding"];
          v137 = v107;
          v24 = MEMORY[0x1E695DF20];
          v25 = &v137;
          v26 = &v136;
LABEL_26:
          v29 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
          v5 = v15;
          v30 = 0;
          *v21 = [v22 initWithDomain:v23 code:2 userInfo:?];
          v18 = v9;
LABEL_27:
          v8 = v98;
          goto LABEL_103;
        }

        [v108 addObject:v17];
      }

      v13 = [v9 countByEnumeratingWithState:&v115 objects:v140 count:16];
      v5 = v15;
    }

    while (v13);
  }

  v18 = [v5 objectForKeyedSubscript:@"presentedAssets"];
  v19 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:v19];

  if (v20)
  {
    v97 = v5;

    v18 = 0;
  }

  else
  {
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v30 = 0;
          v8 = v98;
          goto LABEL_104;
        }

        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v134 = *MEMORY[0x1E696A578];
        v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"presentedAssets"];
        v135 = v107;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v56 = [v54 initWithDomain:v55 code:2 userInfo:v29];
        v30 = 0;
        *a4 = v56;
        goto LABEL_27;
      }
    }

    v97 = v5;
  }

  v107 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v18 = v18;
  v33 = [v18 countByEnumeratingWithState:&v111 objects:v133 count:16];
  v104 = v18;
  if (!v33)
  {
    goto LABEL_44;
  }

  v34 = v33;
  v35 = *v112;
  while (2)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v112 != v35)
      {
        objc_enumerationMutation(v18);
      }

      v37 = *(*(&v111 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = a4;
        if (a4)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v48 = v18;
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"presentedAssets"];
          v132 = v38;
          v49 = MEMORY[0x1E695DF20];
          v50 = &v132;
          v51 = &v131;
LABEL_58:
          v42 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:1];
          v52 = [v46 initWithDomain:v47 code:2 userInfo:v42];
          v30 = 0;
          *v45 = v52;
          v29 = v48;
LABEL_62:
          v5 = v97;
          v8 = v98;
          self = v100;
          goto LABEL_101;
        }

LABEL_65:
        v30 = 0;
        v29 = v18;
        v5 = v97;
        self = v100;
        goto LABEL_27;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v45 = a4;
        if (a4)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v129 = *MEMORY[0x1E696A578];
          v48 = v18;
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"presentedAssets"];
          v130 = v38;
          v49 = MEMORY[0x1E695DF20];
          v50 = &v130;
          v51 = &v129;
          goto LABEL_58;
        }

        goto LABEL_65;
      }

      v38 = v37;
      v39 = [BMAeroMLPhotosSearchSessionAsset alloc];
      v110 = 0;
      v40 = [(BMAeroMLPhotosSearchSessionAsset *)v39 initWithJSONDictionary:v38 error:&v110];
      v41 = v110;
      if (v41)
      {
        v42 = v41;
        if (a4)
        {
          v53 = v41;
          *a4 = v42;
        }

        v30 = 0;
        v29 = v104;
        goto LABEL_62;
      }

      [v107 addObject:v40];

      v18 = v104;
    }

    v34 = [v104 countByEnumeratingWithState:&v111 objects:v133 count:16];
    self = v100;
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_44:

  v5 = v97;
  v38 = [v97 objectForKeyedSubscript:@"language"];
  if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v29 = 0;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v38;
LABEL_47:
    v42 = [v97 objectForKeyedSubscript:@"region"];
    v8 = v98;
    v94 = v42;
    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = 0;
        goto LABEL_70;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = v42;
        goto LABEL_70;
      }

      v42 = a4;
      if (a4)
      {
        v101 = objc_alloc(MEMORY[0x1E696ABC0]);
        v66 = *MEMORY[0x1E698F240];
        v125 = *MEMORY[0x1E696A578];
        v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"region"];
        v126 = v96;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v68 = v66;
        v69 = v67;
        v42 = 0;
        v30 = 0;
        *a4 = [v101 initWithDomain:v68 code:2 userInfo:v67];
        goto LABEL_99;
      }

      v30 = 0;
LABEL_100:

LABEL_101:
      goto LABEL_102;
    }

LABEL_70:
    v57 = [v97 objectForKeyedSubscript:@"version"];
    if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v57;
        v96 = v57;
        goto LABEL_73;
      }

      v69 = v57;
      if (a4)
      {
        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v102 = *MEMORY[0x1E698F240];
        v123 = *MEMORY[0x1E696A578];
        v71 = v29;
        v72 = objc_alloc(MEMORY[0x1E696AEC0]);
        v86 = objc_opt_class();
        v73 = v72;
        v29 = v71;
        v93 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v86, @"version"];
        v124 = v93;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v74 = [v70 initWithDomain:v102 code:2 userInfo:?];
        v96 = 0;
        v30 = 0;
        *a4 = v74;
        v8 = v98;
        goto LABEL_98;
      }

      v96 = 0;
      v30 = 0;
    }

    else
    {
      v91 = v57;
      v96 = 0;
LABEL_73:
      v58 = [v97 objectForKeyedSubscript:@"libraryProcessingProgress"];
      v92 = v58;
      if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v93 = v59;
          goto LABEL_76;
        }

        if (a4)
        {
          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v103 = *MEMORY[0x1E698F240];
          v121 = *MEMORY[0x1E696A578];
          v76 = v29;
          v77 = objc_alloc(MEMORY[0x1E696AEC0]);
          v87 = objc_opt_class();
          v78 = v77;
          v29 = v76;
          v62 = [v78 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v87, @"libraryProcessingProgress"];
          v122 = v62;
          v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
          v79 = [v75 initWithDomain:v103 code:2 userInfo:?];
          v93 = 0;
          v30 = 0;
          *a4 = v79;
          goto LABEL_97;
        }

        v93 = 0;
        v30 = 0;
        v69 = v91;
      }

      else
      {
        v93 = 0;
LABEL_76:
        v60 = [v97 objectForKeyedSubscript:@"librarySizeBucket"];
        v99 = v60;
        if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v62 = 0;
          goto LABEL_96;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = v61;
          goto LABEL_96;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString(v61)];
          self = v100;
LABEL_96:
          LODWORD(v88) = [v62 intValue];
          self = [(BMAeroMLPhotosSearchSession *)self initWithQueryRaw:v8 queryEmbedding:v108 presentedAssets:v107 language:v29 region:v42 version:v96 libraryProcessingProgress:v93 librarySizeBucket:v88];
          v30 = self;
        }

        else
        {
          if (a4)
          {
            v90 = objc_alloc(MEMORY[0x1E696ABC0]);
            v89 = *MEMORY[0x1E698F240];
            v119 = *MEMORY[0x1E696A578];
            v82 = v29;
            v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"librarySizeBucket"];
            v120 = v83;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
            *a4 = [v90 initWithDomain:v89 code:2 userInfo:v84];

            v29 = v82;
          }

          v62 = 0;
          v30 = 0;
          self = v100;
        }

LABEL_97:
        v69 = v91;
      }

LABEL_98:
    }

LABEL_99:

    goto LABEL_100;
  }

  if (a4)
  {
    v63 = objc_alloc(MEMORY[0x1E696ABC0]);
    v64 = *MEMORY[0x1E698F240];
    v127 = *MEMORY[0x1E696A578];
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
    v128 = v42;
    v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v65 = [v63 initWithDomain:v64 code:2 userInfo:?];
    v29 = 0;
    v30 = 0;
    *a4 = v65;
    v8 = v98;

    goto LABEL_101;
  }

  v29 = 0;
  v30 = 0;
  v8 = v98;
LABEL_102:

  v18 = v104;
LABEL_103:

LABEL_104:
LABEL_105:

  v7 = v105;
LABEL_106:

  v80 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchSession *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_queryRaw)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_queryEmbedding;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * i) doubleValue];
        PBDataWriterWriteDoubleField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_presentedAssets;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * j);
        PBDataWriterPlaceMark();
        [v15 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_region)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasLibraryProcessingProgress)
  {
    libraryProcessingProgress = self->_libraryProcessingProgress;
    PBDataWriterWriteUint32Field();
  }

  librarySizeBucket = self->_librarySizeBucket;
  PBDataWriterWriteUint32Field();

  v18 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMAeroMLPhotosSearchSession;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (LOBYTE(v51[0]) & 0x7F) << v9;
        if ((LOBYTE(v51[0]) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasLibraryProcessingProgress = 1;
            while (1)
            {
              LOBYTE(v51[0]) = 0;
              v36 = [v4 position] + 1;
              if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
              {
                v38 = [v4 data];
                [v38 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v35 |= (LOBYTE(v51[0]) & 0x7F) << v33;
              if ((LOBYTE(v51[0]) & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v15 = v34++ >= 9;
              if (v15)
              {
                v39 = 0;
                goto LABEL_63;
              }
            }

            if ([v4 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_63:
            v5->_libraryProcessingProgress = v39;
            goto LABEL_72;
          }

          if (v17 == 8)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v51[0]) = 0;
              v26 = [v4 position] + 1;
              if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
              {
                v28 = [v4 data];
                [v28 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v25 |= (LOBYTE(v51[0]) & 0x7F) << v23;
              if ((LOBYTE(v51[0]) & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_66;
              }
            }

            if (([v4 hasError] & 1) != 0 || v25 > 0xA)
            {
LABEL_66:
              LODWORD(v25) = 0;
            }

            v5->_librarySizeBucket = v25;
            goto LABEL_72;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v21 = PBReaderReadString();
            v22 = 64;
            goto LABEL_45;
          }

          if (v17 == 6)
          {
            v21 = PBReaderReadString();
            v22 = 72;
LABEL_45:
            v30 = *(&v5->super.super.isa + v22);
            *(&v5->super.super.isa + v22) = v21;

            goto LABEL_72;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v51[0] = 0.0;
          v51[1] = 0.0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_77;
          }

          v31 = [[BMAeroMLPhotosSearchSessionAsset alloc] initByReadFrom:v4];
          if (!v31)
          {
            goto LABEL_77;
          }

          v32 = v31;
          [v7 addObject:v31];
          PBReaderRecallMark();
LABEL_71:

          goto LABEL_72;
        }

        if (v17 == 4)
        {
          v21 = PBReaderReadString();
          v22 = 56;
          goto LABEL_45;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_45;
        }

        if (v17 == 2)
        {
          v18 = MEMORY[0x1E696AD98];
          v51[0] = 0.0;
          v19 = [v4 position] + 8;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:v51 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v41 = [v18 numberWithDouble:v51[0]];
          if (!v41)
          {
LABEL_77:

            goto LABEL_74;
          }

          v32 = v41;
          [v6 addObject:v41];
          goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_72:
      v42 = [v4 position];
    }

    while (v42 < [v4 length]);
  }

  v43 = [v6 copy];
  queryEmbedding = v5->_queryEmbedding;
  v5->_queryEmbedding = v43;

  v45 = [v7 copy];
  presentedAssets = v5->_presentedAssets;
  v5->_presentedAssets = v45;

  v47 = [v4 hasError];
  if (v47)
  {
LABEL_74:
    v48 = 0;
  }

  else
  {
LABEL_75:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAeroMLPhotosSearchSession *)self queryRaw];
  v5 = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
  v6 = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
  v7 = [(BMAeroMLPhotosSearchSession *)self language];
  v8 = [(BMAeroMLPhotosSearchSession *)self region];
  v9 = [(BMAeroMLPhotosSearchSession *)self version];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchSession libraryProcessingProgress](self, "libraryProcessingProgress")}];
  v11 = BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketAsString([(BMAeroMLPhotosSearchSession *)self librarySizeBucket]);
  v12 = [v3 initWithFormat:@"BMAeroMLPhotosSearchSession with queryRaw: %@, queryEmbedding: %@, presentedAssets: %@, language: %@, region: %@, version: %@, libraryProcessingProgress: %@, librarySizeBucket: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMAeroMLPhotosSearchSession)initWithQueryRaw:(id)a3 queryEmbedding:(id)a4 presentedAssets:(id)a5 language:(id)a6 region:(id)a7 version:(id)a8 libraryProcessingProgress:(id)a9 librarySizeBucket:(int)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = BMAeroMLPhotosSearchSession;
  v20 = [(BMEventBase *)&v27 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_queryRaw, a3);
    objc_storeStrong(&v20->_queryEmbedding, a4);
    objc_storeStrong(&v20->_presentedAssets, a5);
    objc_storeStrong(&v20->_language, a6);
    objc_storeStrong(&v20->_region, a7);
    objc_storeStrong(&v20->_version, a8);
    if (v19)
    {
      v20->_hasLibraryProcessingProgress = 1;
      v21 = [v19 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v20->_hasLibraryProcessingProgress = 0;
    }

    v20->_libraryProcessingProgress = v21;
    v20->_librarySizeBucket = a10;
  }

  return v20;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryRaw" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryEmbedding" number:2 type:0 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"presentedAssets" number:3 type:14 subMessageClass:objc_opt_class()];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"libraryProcessingProgress" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"librarySizeBucket" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __38__BMAeroMLPhotosSearchSession_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _presentedAssetsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __38__BMAeroMLPhotosSearchSession_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _queryEmbeddingJSONArray];
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

    v8 = [[BMAeroMLPhotosSearchSession alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end