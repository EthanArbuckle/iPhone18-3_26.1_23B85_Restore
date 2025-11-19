@interface BMAdPlatformsTrainingRows
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAdPlatformsTrainingRows)initWithDeploymentID:(id)a3 experimentID:(id)a4 treatmentID:(id)a5 adamID:(id)a6 impressed:(id)a7 tapped:(id)a8 dupe:(id)a9 installed:(id)a10 errorCode:(id)a11 appUsageVector:(id)a12 appDownloadVector:(id)a13 installedAppVector:(id)a14 userQueryVector:(id)a15 serverResponse:(id)a16 recordID:(id)a17;
- (BMAdPlatformsTrainingRows)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_appDownloadVectorJSONArray;
- (id)_appUsageVectorJSONArray;
- (id)_installedAppVectorJSONArray;
- (id)_userQueryVectorJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAdPlatformsTrainingRows

+ (id)columns
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deploymentID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"treatmentID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adamID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"impressed" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tapped" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dupe" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"installed" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appUsageVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_23485];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appDownloadVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_90];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"installedAppVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_92];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userQueryVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_94];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serverResponse" dataType:4 requestOnly:0 fieldNumber:14 protoDataType:14 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recordID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v20[0] = v19;
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v2;
  v20[6] = v3;
  v20[7] = v4;
  v20[8] = v14;
  v20[9] = v13;
  v20[10] = v5;
  v20[11] = v6;
  v20[12] = v12;
  v20[13] = v7;
  v20[14] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAdPlatformsTrainingRows *)self deploymentID];
    v7 = [v5 deploymentID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAdPlatformsTrainingRows *)self deploymentID];
      v10 = [v5 deploymentID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_62;
      }
    }

    v13 = [(BMAdPlatformsTrainingRows *)self experimentID];
    v14 = [v5 experimentID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAdPlatformsTrainingRows *)self experimentID];
      v17 = [v5 experimentID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_62;
      }
    }

    v19 = [(BMAdPlatformsTrainingRows *)self treatmentID];
    v20 = [v5 treatmentID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAdPlatformsTrainingRows *)self treatmentID];
      v23 = [v5 treatmentID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_62;
      }
    }

    v25 = [(BMAdPlatformsTrainingRows *)self adamID];
    v26 = [v5 adamID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAdPlatformsTrainingRows *)self adamID];
      v29 = [v5 adamID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasImpressed](self, "hasImpressed") || [v5 hasImpressed])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasImpressed])
      {
        goto LABEL_62;
      }

      if (![v5 hasImpressed])
      {
        goto LABEL_62;
      }

      v31 = [(BMAdPlatformsTrainingRows *)self impressed];
      if (v31 != [v5 impressed])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasTapped](self, "hasTapped") || [v5 hasTapped])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasTapped])
      {
        goto LABEL_62;
      }

      if (![v5 hasTapped])
      {
        goto LABEL_62;
      }

      v32 = [(BMAdPlatformsTrainingRows *)self tapped];
      if (v32 != [v5 tapped])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasDupe](self, "hasDupe") || [v5 hasDupe])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasDupe])
      {
        goto LABEL_62;
      }

      if (![v5 hasDupe])
      {
        goto LABEL_62;
      }

      v33 = [(BMAdPlatformsTrainingRows *)self dupe];
      if (v33 != [v5 dupe])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasInstalled](self, "hasInstalled") || [v5 hasInstalled])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasInstalled])
      {
        goto LABEL_62;
      }

      if (![v5 hasInstalled])
      {
        goto LABEL_62;
      }

      v34 = [(BMAdPlatformsTrainingRows *)self installed];
      if (v34 != [v5 installed])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasErrorCode](self, "hasErrorCode") || [v5 hasErrorCode])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasErrorCode])
      {
        goto LABEL_62;
      }

      if (![v5 hasErrorCode])
      {
        goto LABEL_62;
      }

      [(BMAdPlatformsTrainingRows *)self errorCode];
      v36 = v35;
      [v5 errorCode];
      if (v36 != v37)
      {
        goto LABEL_62;
      }
    }

    v38 = [(BMAdPlatformsTrainingRows *)self appUsageVector];
    v39 = [v5 appUsageVector];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(BMAdPlatformsTrainingRows *)self appUsageVector];
      v42 = [v5 appUsageVector];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
        goto LABEL_62;
      }
    }

    v44 = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
    v45 = [v5 appDownloadVector];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
      v48 = [v5 appDownloadVector];
      v49 = [v47 isEqual:v48];

      if (!v49)
      {
        goto LABEL_62;
      }
    }

    v50 = [(BMAdPlatformsTrainingRows *)self installedAppVector];
    v51 = [v5 installedAppVector];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [(BMAdPlatformsTrainingRows *)self installedAppVector];
      v54 = [v5 installedAppVector];
      v55 = [v53 isEqual:v54];

      if (!v55)
      {
        goto LABEL_62;
      }
    }

    v56 = [(BMAdPlatformsTrainingRows *)self userQueryVector];
    v57 = [v5 userQueryVector];
    v58 = v57;
    if (v56 == v57)
    {
    }

    else
    {
      v59 = [(BMAdPlatformsTrainingRows *)self userQueryVector];
      v60 = [v5 userQueryVector];
      v61 = [v59 isEqual:v60];

      if (!v61)
      {
        goto LABEL_62;
      }
    }

    v62 = [(BMAdPlatformsTrainingRows *)self serverResponse];
    v63 = [v5 serverResponse];
    v64 = v63;
    if (v62 == v63)
    {
    }

    else
    {
      v65 = [(BMAdPlatformsTrainingRows *)self serverResponse];
      v66 = [v5 serverResponse];
      v67 = [v65 isEqual:v66];

      if (!v67)
      {
LABEL_62:
        v12 = 0;
LABEL_63:

        goto LABEL_64;
      }
    }

    v69 = [(BMAdPlatformsTrainingRows *)self recordID];
    v70 = [v5 recordID];
    if (v69 == v70)
    {
      v12 = 1;
    }

    else
    {
      v71 = [(BMAdPlatformsTrainingRows *)self recordID];
      v72 = [v5 recordID];
      v12 = [v71 isEqual:v72];
    }

    goto LABEL_63;
  }

  v12 = 0;
LABEL_64:

  return v12;
}

- (id)jsonDictionary
{
  v57[15] = *MEMORY[0x1E69E9840];
  v3 = [(BMAdPlatformsTrainingRows *)self deploymentID];
  v4 = [(BMAdPlatformsTrainingRows *)self experimentID];
  v5 = [(BMAdPlatformsTrainingRows *)self treatmentID];
  v6 = [(BMAdPlatformsTrainingRows *)self adamID];
  if ([(BMAdPlatformsTrainingRows *)self hasImpressed])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows impressed](self, "impressed")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMAdPlatformsTrainingRows *)self hasTapped])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows tapped](self, "tapped")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMAdPlatformsTrainingRows *)self hasDupe])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows dupe](self, "dupe")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMAdPlatformsTrainingRows *)self hasInstalled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows installed](self, "installed")}];
  }

  else
  {
    v10 = 0;
  }

  if (![(BMAdPlatformsTrainingRows *)self hasErrorCode]|| ([(BMAdPlatformsTrainingRows *)self errorCode], fabs(v11) == INFINITY))
  {
    v55 = 0;
  }

  else
  {
    [(BMAdPlatformsTrainingRows *)self errorCode];
    v12 = MEMORY[0x1E696AD98];
    [(BMAdPlatformsTrainingRows *)self errorCode];
    v55 = [v12 numberWithDouble:?];
  }

  v54 = [(BMAdPlatformsTrainingRows *)self _appUsageVectorJSONArray];
  v53 = [(BMAdPlatformsTrainingRows *)self _appDownloadVectorJSONArray];
  v52 = [(BMAdPlatformsTrainingRows *)self _installedAppVectorJSONArray];
  v51 = [(BMAdPlatformsTrainingRows *)self _userQueryVectorJSONArray];
  v13 = [(BMAdPlatformsTrainingRows *)self serverResponse];
  v50 = [v13 base64EncodedStringWithOptions:0];

  v14 = [(BMAdPlatformsTrainingRows *)self recordID];
  v56[0] = @"deploymentID";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v15;
  v57[0] = v15;
  v56[1] = @"experimentID";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v16;
  v57[1] = v16;
  v56[2] = @"treatmentID";
  v17 = v5;
  if (!v5)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v17;
  v57[2] = v17;
  v56[3] = @"adamID";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v18;
  v57[3] = v18;
  v56[4] = @"impressed";
  v19 = v7;
  if (!v7)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v19;
  v57[4] = v19;
  v56[5] = @"tapped";
  v20 = v8;
  if (!v8)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v20;
  v57[5] = v20;
  v56[6] = @"dupe";
  v21 = v9;
  if (!v9)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v9;
  v47 = v8;
  v37 = v21;
  v57[6] = v21;
  v56[7] = @"installed";
  v22 = v10;
  if (!v10)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v6;
  v36 = v22;
  v57[7] = v22;
  v56[8] = @"errorCode";
  v23 = v55;
  if (!v55)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v23;
  v57[8] = v23;
  v56[9] = @"appUsageVector";
  v24 = v54;
  if (!v54)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v3;
  v57[9] = v24;
  v56[10] = @"appDownloadVector";
  v25 = v53;
  if (!v53)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v7;
  v26 = v4;
  v57[10] = v25;
  v56[11] = @"installedAppVector";
  v27 = v52;
  if (!v52)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v5;
  v57[11] = v27;
  v56[12] = @"userQueryVector";
  v29 = v51;
  if (!v51)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v57[12] = v29;
  v56[13] = @"serverResponse";
  v30 = v50;
  if (!v50)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v57[13] = v30;
  v56[14] = @"recordID";
  v31 = v14;
  if (!v14)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v57[14] = v31;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:{15, v34}];
  if (!v14)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v10)
  {
  }

  if (v46)
  {
    if (v47)
    {
      goto LABEL_65;
    }
  }

  else
  {

    if (v47)
    {
LABEL_65:
      if (v45)
      {
        goto LABEL_66;
      }

      goto LABEL_75;
    }
  }

  if (v45)
  {
LABEL_66:
    if (v49)
    {
      goto LABEL_67;
    }

    goto LABEL_76;
  }

LABEL_75:

  if (v49)
  {
LABEL_67:
    if (v28)
    {
      goto LABEL_68;
    }

    goto LABEL_77;
  }

LABEL_76:

  if (v28)
  {
LABEL_68:
    if (v26)
    {
      goto LABEL_69;
    }

LABEL_78:

    if (v48)
    {
      goto LABEL_70;
    }

    goto LABEL_79;
  }

LABEL_77:

  if (!v26)
  {
    goto LABEL_78;
  }

LABEL_69:
  if (v48)
  {
    goto LABEL_70;
  }

LABEL_79:

LABEL_70:
  v32 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)_userQueryVectorJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMAdPlatformsTrainingRows *)self userQueryVector];
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

- (id)_installedAppVectorJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMAdPlatformsTrainingRows *)self installedAppVector];
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

- (id)_appDownloadVectorJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
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

- (id)_appUsageVectorJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BMAdPlatformsTrainingRows *)self appUsageVector];
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

- (BMAdPlatformsTrainingRows)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v304[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v236 = [v6 objectForKeyedSubscript:@"deploymentID"];
  if (v236 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v28 = a4;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v303 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deploymentID"];
        v304[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v304 forKeys:&v303 count:1];
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v9];
        v7 = 0;
        v32 = 0;
        *v28 = v31;
        goto LABEL_215;
      }

      v7 = 0;
      v32 = 0;
      goto LABEL_216;
    }

    v7 = v236;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 objectForKeyedSubscript:@"experimentID"];
  v234 = v8;
  v235 = v7;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v33 = a4;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v301 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"experimentID"];
        v302 = v12;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
        v37 = v35;
        v11 = v36;
        v10 = 0;
        v32 = 0;
        *v33 = [v34 initWithDomain:v37 code:2 userInfo:v36];
        goto LABEL_214;
      }

      v10 = 0;
      v32 = 0;
      goto LABEL_215;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"treatmentID"];
  v233 = a4;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = v233;
      if (v233)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v232 = *MEMORY[0x1E698F240];
        v299 = *MEMORY[0x1E696A578];
        v39 = self;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v190 = objc_opt_class();
        v41 = v40;
        self = v39;
        v42 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v190, @"treatmentID"];
        v300 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
        v32 = 0;
        *v233 = [v38 initWithDomain:v232 code:2 userInfo:v43];
        v12 = 0;
        v14 = v42;
        v6 = v16;
        v13 = v43;
        goto LABEL_213;
      }

      v32 = 0;
      goto LABEL_214;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 objectForKeyedSubscript:@"adamID"];
  v230 = v11;
  v231 = v13;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v204 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = v233;
      if (v233)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v297 = *MEMORY[0x1E696A578];
        v56 = self;
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v191 = objc_opt_class();
        v58 = v57;
        self = v56;
        v59 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v191, @"adamID"];
        v298 = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
        v61 = v55;
        v11 = v230;
        v32 = 0;
        *v233 = [v54 initWithDomain:v61 code:2 userInfo:v60];
        v6 = v204;
        v14 = 0;
        goto LABEL_212;
      }

      v32 = 0;
      goto LABEL_213;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"impressed"];
  v228 = v12;
  v229 = self;
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v226 = v15;
      v15 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v233)
        {
          v62 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = *MEMORY[0x1E698F240];
          v295 = *MEMORY[0x1E696A578];
          v60 = v15;
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"impressed"];
          v296 = v18;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
          v64 = v62;
          v65 = v63;
          v11 = v230;
          v13 = v231;
          v227 = 0;
          v32 = 0;
          *v233 = [v64 initWithDomain:v65 code:2 userInfo:v17];
          goto LABEL_211;
        }

        v32 = 0;
        v60 = v15;
        v59 = 0;
        goto LABEL_212;
      }

      v226 = v15;
      v15 = v15;
    }
  }

  else
  {
    v226 = 0;
  }

  v17 = [v6 objectForKeyedSubscript:@"tapped"];
  v227 = v15;
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v233)
      {
        v18 = 0;
        v32 = 0;
        v60 = v226;
        goto LABEL_211;
      }

      v66 = objc_alloc(MEMORY[0x1E696ABC0]);
      v67 = *MEMORY[0x1E698F240];
      v293 = *MEMORY[0x1E696A578];
      v224 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tapped"];
      v294 = v224;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
      v69 = v66;
      v70 = v67;
      v11 = v230;
      v13 = v231;
      v18 = 0;
      v32 = 0;
      *v233 = [v69 initWithDomain:v70 code:2 userInfo:v68];
      v19 = v68;
      goto LABEL_110;
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v6 objectForKeyedSubscript:@"dupe"];
  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v222 = v14;
        v224 = v19;
        goto LABEL_33;
      }

      if (v233)
      {
        v225 = objc_alloc(MEMORY[0x1E696ABC0]);
        v77 = *MEMORY[0x1E698F240];
        v291 = *MEMORY[0x1E696A578];
        v78 = v18;
        v79 = v17;
        v80 = objc_alloc(MEMORY[0x1E696AEC0]);
        v192 = objc_opt_class();
        v81 = v80;
        v17 = v79;
        v18 = v78;
        v219 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v192, @"dupe"];
        v292 = v219;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
        v83 = v77;
        v11 = v230;
        v13 = v231;
        v220 = v82;
        v84 = [v225 initWithDomain:v83 code:2 userInfo:?];
        v224 = 0;
        v32 = 0;
        *v233 = v84;
        v60 = v226;
        goto LABEL_209;
      }

      v224 = 0;
      v32 = 0;
LABEL_110:
      v60 = v226;
      goto LABEL_210;
    }
  }

  v222 = v14;
  v224 = 0;
LABEL_33:
  v20 = [v6 objectForKeyedSubscript:@"installed"];
  v220 = v20;
  if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v217 = v19;
      if (!v233)
      {
        v219 = 0;
        v32 = 0;
        v60 = v226;
        goto LABEL_208;
      }

      v87 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = *MEMORY[0x1E698F240];
      v289 = *MEMORY[0x1E696A578];
      v89 = v18;
      v90 = v17;
      v91 = objc_alloc(MEMORY[0x1E696AEC0]);
      v193 = objc_opt_class();
      v92 = v91;
      v17 = v90;
      v18 = v89;
      v46 = [v92 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v193, @"installed"];
      v290 = v46;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
      v94 = v88;
      v11 = v230;
      v13 = v231;
      v218 = v93;
      v219 = 0;
      v32 = 0;
      *v233 = [v87 initWithDomain:v94 code:2 userInfo:?];
LABEL_118:
      v60 = v226;
      v19 = v217;
      goto LABEL_207;
    }

    v219 = v21;
  }

  else
  {
    v219 = 0;
  }

  v22 = [v6 objectForKeyedSubscript:@"errorCode"];
  v218 = v22;
  if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v212 = v17;
    v221 = 0;
    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v217 = v19;
    if (v233)
    {
      v208 = v10;
      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
      v211 = v18;
      v96 = v6;
      v97 = *MEMORY[0x1E698F240];
      v287 = *MEMORY[0x1E696A578];
      v98 = objc_alloc(MEMORY[0x1E696AEC0]);
      v194 = objc_opt_class();
      v99 = v98;
      v13 = v231;
      v24 = [v99 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v194, @"errorCode"];
      v288 = v24;
      v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
      v101 = v95;
      v102 = v97;
      v6 = v96;
      v10 = v208;
      v18 = v211;
      v215 = v100;
      v46 = 0;
      v32 = 0;
      *v233 = [v101 initWithDomain:v102 code:2 userInfo:?];
      v60 = v226;

      goto LABEL_206;
    }

    v46 = 0;
    v32 = 0;
    goto LABEL_118;
  }

  v212 = v17;
  v221 = v23;
LABEL_39:
  v24 = [v6 objectForKeyedSubscript:@"appUsageVector"];
  v25 = [MEMORY[0x1E695DFB0] null];
  v26 = [v24 isEqual:v25];

  if (v26)
  {
    v216 = v19;
    v207 = v10;
    v210 = v18;
    v27 = v6;

    v24 = 0;
  }

  else
  {
    v13 = v231;
    if (v24)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v233)
        {
          v111 = objc_alloc(MEMORY[0x1E696ABC0]);
          v112 = v18;
          v113 = v6;
          v114 = *MEMORY[0x1E698F240];
          v285 = *MEMORY[0x1E696A578];
          v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appUsageVector"];
          v286 = v214;
          v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
          v116 = v111;
          v117 = v114;
          v6 = v113;
          v18 = v112;
          v13 = v231;
          obj = v115;
          v32 = 0;
          *v233 = [v116 initWithDomain:v117 code:2 userInfo:?];
          v60 = v226;
          v17 = v212;
          goto LABEL_204;
        }

        v32 = 0;
        v60 = v226;
        v17 = v212;
        v46 = v221;
        goto LABEL_206;
      }
    }

    v216 = v19;
    v207 = v10;
    v210 = v18;
    v27 = v6;
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v24 = v24;
  v45 = [v24 countByEnumeratingWithState:&v249 objects:v284 count:16];
  v46 = v221;
  v214 = v44;
  if (v45)
  {
    v47 = v45;
    v48 = *v250;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v250 != v48)
        {
          objc_enumerationMutation(v24);
        }

        v50 = *(*(&v249 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v233)
          {
            v71 = objc_alloc(MEMORY[0x1E696ABC0]);
            v72 = *MEMORY[0x1E698F240];
            v282 = *MEMORY[0x1E696A578];
            v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appUsageVector"];
            v283 = v73;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
            v75 = v71;
            v76 = v72;
LABEL_82:
            v206 = v74;
            v10 = v207;
            v13 = v231;
            v60 = v226;
            v19 = v216;
            v32 = 0;
            *v233 = [v75 initWithDomain:v76 code:2 userInfo:?];
            obj = v24;
            v6 = v27;
            v18 = v210;
            v17 = v212;
            goto LABEL_203;
          }

LABEL_86:
          v32 = 0;
          obj = v24;
          v10 = v207;
          v6 = v27;
          v13 = v231;
LABEL_87:
          v60 = v226;
          v18 = v210;
          v17 = v212;
          v19 = v216;
          goto LABEL_205;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v233)
          {
            v85 = objc_alloc(MEMORY[0x1E696ABC0]);
            v86 = *MEMORY[0x1E698F240];
            v280 = *MEMORY[0x1E696A578];
            v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appUsageVector"];
            v281 = v73;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
            v75 = v85;
            v76 = v86;
            goto LABEL_82;
          }

          goto LABEL_86;
        }

        [v44 addObject:v50];
      }

      v47 = [v24 countByEnumeratingWithState:&v249 objects:v284 count:16];
    }

    while (v47);
  }

  v6 = v27;
  v51 = [v27 objectForKeyedSubscript:@"appDownloadVector"];
  v52 = [MEMORY[0x1E695DFB0] null];
  v53 = [v51 isEqual:v52];

  if (v53)
  {

    v51 = 0;
    v13 = v231;
  }

  else
  {
    v13 = v231;
    if (v51)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v51;
        if (!v233)
        {
          v32 = 0;
          v10 = v207;
          goto LABEL_87;
        }

        v133 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v278 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appDownloadVector"];
        v279 = v73;
        v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
        v32 = 0;
        *v233 = [v133 initWithDomain:v134 code:2 userInfo:?];
LABEL_136:
        v10 = v207;
        goto LABEL_137;
      }
    }
  }

  v73 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v51, "count")}];
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  obj = v51;
  v103 = [obj countByEnumeratingWithState:&v245 objects:v277 count:16];
  if (!v103)
  {
    goto LABEL_103;
  }

  v104 = v103;
  v105 = *v246;
  do
  {
    for (j = 0; j != v104; ++j)
    {
      if (*v246 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v107 = *(*(&v245 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v233)
        {
          v118 = objc_alloc(MEMORY[0x1E696ABC0]);
          v119 = *MEMORY[0x1E698F240];
          v275 = *MEMORY[0x1E696A578];
          v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appDownloadVector"];
          v276 = v203;
          v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
          v121 = v118;
          v122 = v119;
LABEL_115:
          v202 = v120;
          v6 = v27;
          v13 = v231;
          v60 = v226;
          v32 = 0;
          *v233 = [v121 initWithDomain:v122 code:2 userInfo:?];
          v206 = obj;
          v10 = v207;
          goto LABEL_151;
        }

LABEL_119:
        v32 = 0;
        v206 = obj;
        v10 = v207;
        v6 = v27;
        v13 = v231;
LABEL_137:
        v60 = v226;
        v18 = v210;
        v17 = v212;
        v19 = v216;
        goto LABEL_203;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v233)
        {
          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v124 = *MEMORY[0x1E698F240];
          v273 = *MEMORY[0x1E696A578];
          v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appDownloadVector"];
          v274 = v203;
          v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
          v121 = v123;
          v122 = v124;
          goto LABEL_115;
        }

        goto LABEL_119;
      }

      [v73 addObject:v107];
    }

    v104 = [obj countByEnumeratingWithState:&v245 objects:v277 count:16];
    v13 = v231;
  }

  while (v104);
LABEL_103:

  v6 = v27;
  v108 = [v27 objectForKeyedSubscript:@"installedAppVector"];
  v109 = [MEMORY[0x1E695DFB0] null];
  v110 = [v108 isEqual:v109];

  if (!v110)
  {
    if (!v108)
    {
      goto LABEL_123;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_123;
    }

    v206 = v108;
    if (v233)
    {
      v142 = objc_alloc(MEMORY[0x1E696ABC0]);
      v143 = *MEMORY[0x1E698F240];
      v271 = *MEMORY[0x1E696A578];
      v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"installedAppVector"];
      v272 = v203;
      v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
      v32 = 0;
      *v233 = [v142 initWithDomain:v143 code:2 userInfo:?];
      v10 = v207;
      goto LABEL_150;
    }

    v32 = 0;
    goto LABEL_136;
  }

  v108 = 0;
LABEL_123:
  v203 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v108, "count")}];
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v206 = v108;
  v125 = [v206 countByEnumeratingWithState:&v241 objects:v270 count:16];
  if (!v125)
  {
    goto LABEL_132;
  }

  v126 = v125;
  v127 = *v242;
  do
  {
    for (k = 0; k != v126; ++k)
    {
      if (*v242 != v127)
      {
        objc_enumerationMutation(v206);
      }

      v129 = *(*(&v241 + 1) + 8 * k);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v233)
        {
          v135 = objc_alloc(MEMORY[0x1E696ABC0]);
          v136 = *MEMORY[0x1E698F240];
          v268 = *MEMORY[0x1E696A578];
          v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"installedAppVector"];
          v269 = v201;
          v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
          v138 = v135;
          v139 = v136;
LABEL_142:
          v200 = v137;
          v6 = v27;
          v13 = v231;
          v60 = v226;
          v32 = 0;
          *v233 = [v138 initWithDomain:v139 code:2 userInfo:?];
          v10 = v207;
          v202 = v206;
          v18 = v210;
          v17 = v212;
          v19 = v216;
          goto LABEL_200;
        }

LABEL_143:
        v32 = 0;
        v10 = v207;
        v202 = v206;
        v6 = v27;
        v13 = v231;
LABEL_150:
        v60 = v226;
LABEL_151:
        v17 = v212;
        goto LABEL_152;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v233)
        {
          v140 = objc_alloc(MEMORY[0x1E696ABC0]);
          v141 = *MEMORY[0x1E698F240];
          v266 = *MEMORY[0x1E696A578];
          v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"installedAppVector"];
          v267 = v201;
          v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
          v138 = v140;
          v139 = v141;
          goto LABEL_142;
        }

        goto LABEL_143;
      }

      [v203 addObject:v129];
    }

    v126 = [v206 countByEnumeratingWithState:&v241 objects:v270 count:16];
    v13 = v231;
  }

  while (v126);
LABEL_132:

  v6 = v27;
  v130 = [v27 objectForKeyedSubscript:@"userQueryVector"];
  v131 = [MEMORY[0x1E695DFB0] null];
  v132 = [v130 isEqual:v131];

  if (v132)
  {
    v205 = v6;

    v130 = 0;
    goto LABEL_154;
  }

  if (v130)
  {
    objc_opt_class();
    v17 = v212;
    if (objc_opt_isKindOfClass())
    {
      v205 = v6;
      goto LABEL_155;
    }

    v202 = v130;
    if (v233)
    {
      v162 = objc_alloc(MEMORY[0x1E696ABC0]);
      v163 = *MEMORY[0x1E698F240];
      v264 = *MEMORY[0x1E696A578];
      v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"userQueryVector"];
      v265 = v201;
      v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
      v165 = v163;
      v17 = v212;
      v32 = 0;
      *v233 = [v162 initWithDomain:v165 code:2 userInfo:v164];
      v161 = v164;
      v10 = v207;
      v60 = v226;
      goto LABEL_176;
    }

    v32 = 0;
    v10 = v207;
    v60 = v226;
LABEL_152:
    v18 = v210;
    v19 = v216;
    goto LABEL_202;
  }

  v205 = v6;
LABEL_154:
  v17 = v212;
LABEL_155:
  v201 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v130, "count")}];
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v144 = v130;
  v145 = [v144 countByEnumeratingWithState:&v237 objects:v263 count:16];
  v202 = v144;
  if (!v145)
  {
    goto LABEL_164;
  }

  v146 = v145;
  v147 = *v238;
  while (2)
  {
    v148 = v17;
    v149 = 0;
    while (2)
    {
      if (*v238 != v147)
      {
        objc_enumerationMutation(v202);
      }

      v150 = *(*(&v237 + 1) + 8 * v149);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v233)
        {
          v154 = objc_alloc(MEMORY[0x1E696ABC0]);
          v155 = *MEMORY[0x1E698F240];
          v261 = *MEMORY[0x1E696A578];
          v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"userQueryVector"];
          v262 = v199;
          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
          v157 = v154;
          v158 = v155;
LABEL_171:
          v197 = v156;
          v6 = v205;
          v13 = v231;
          v60 = v226;
          v32 = 0;
          *v233 = [v157 initWithDomain:v158 code:2 userInfo:?];
          v200 = v202;
          v17 = v148;
          v10 = v207;
          v18 = v210;
          v19 = v216;

          goto LABEL_199;
        }

LABEL_172:
        v32 = 0;
        v161 = v202;
        v10 = v207;
        v6 = v205;
        v13 = v231;
        v60 = v226;
        v17 = v148;
LABEL_176:
        v18 = v210;
        v19 = v216;
        goto LABEL_201;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v233)
        {
          v159 = objc_alloc(MEMORY[0x1E696ABC0]);
          v160 = *MEMORY[0x1E698F240];
          v259 = *MEMORY[0x1E696A578];
          v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userQueryVector"];
          v260 = v199;
          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
          v157 = v159;
          v158 = v160;
          goto LABEL_171;
        }

        goto LABEL_172;
      }

      [v201 addObject:v150];
      if (v146 != ++v149)
      {
        continue;
      }

      break;
    }

    v146 = [v202 countByEnumeratingWithState:&v237 objects:v263 count:16];
    v17 = v148;
    v144 = v202;
    if (v146)
    {
      continue;
    }

    break;
  }

LABEL_164:

  v151 = [v205 objectForKeyedSubscript:@"serverResponse"];
  v199 = v151;
  if (!v151)
  {
    v153 = v205;
    v200 = 0;
    v10 = v207;
    v19 = v216;
    goto LABEL_183;
  }

  v152 = v151;
  objc_opt_class();
  v10 = v207;
  v19 = v216;
  v153 = v205;
  if (objc_opt_isKindOfClass())
  {
    v200 = 0;
    goto LABEL_183;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v200 = v152;
    goto LABEL_183;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v233)
    {
      v179 = objc_alloc(MEMORY[0x1E696ABC0]);
      v180 = v17;
      v181 = *MEMORY[0x1E698F240];
      v255 = *MEMORY[0x1E696A578];
      v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"serverResponse"];
      v256 = v198;
      v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v256 forKeys:&v255 count:1];
      v183 = v179;
      v10 = v207;
      v184 = v181;
      v17 = v180;
      v195 = v182;
      v200 = 0;
      v32 = 0;
      *v233 = [v183 initWithDomain:v184 code:2 userInfo:?];
      v6 = v205;
      v13 = v231;
      v60 = v226;
LABEL_196:
      v18 = v210;
      goto LABEL_197;
    }

LABEL_219:
    v200 = 0;
    v32 = 0;
    v6 = v205;
    v13 = v231;
    v60 = v226;
    v18 = v210;
    goto LABEL_199;
  }

  v200 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v152 options:0];
  if (!v200)
  {
    v213 = v17;
    if (v233)
    {
      v187 = objc_alloc(MEMORY[0x1E696ABC0]);
      v188 = *MEMORY[0x1E698F240];
      v257 = *MEMORY[0x1E696A578];
      v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"serverResponse"];
      v258 = v198;
      v196 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
      v189 = [v187 initWithDomain:v188 code:2 userInfo:?];
      v200 = 0;
      v32 = 0;
      v13 = v231;
      *v233 = v189;
      v6 = v205;
      v60 = v226;
      v18 = v210;
      v17 = v213;

      goto LABEL_198;
    }

    goto LABEL_219;
  }

LABEL_183:
  v6 = v153;
  v166 = [v153 objectForKeyedSubscript:@"recordID"];
  v195 = v166;
  if (!v166)
  {
    v168 = 0;
    v170 = v228;
    v169 = v229;
    v13 = v231;
    v60 = v226;
    v18 = v210;
    goto LABEL_190;
  }

  v167 = v166;
  objc_opt_class();
  v18 = v210;
  if (objc_opt_isKindOfClass())
  {
    v168 = 0;
    v13 = v231;
    v60 = v226;
    goto LABEL_189;
  }

  objc_opt_class();
  v60 = v226;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v233)
    {
      v209 = v10;
      v171 = objc_alloc(MEMORY[0x1E696ABC0]);
      v172 = v17;
      v173 = *MEMORY[0x1E698F240];
      v253 = *MEMORY[0x1E696A578];
      v174 = v6;
      v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recordID"];
      v254 = v175;
      v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v254 forKeys:&v253 count:1];
      v177 = v171;
      v10 = v209;
      v178 = v173;
      v17 = v172;
      v60 = v226;
      *v233 = [v177 initWithDomain:v178 code:2 userInfo:v176];

      v6 = v174;
    }

    v198 = 0;
    v32 = 0;
    v13 = v231;
    goto LABEL_196;
  }

  v168 = v167;
  v13 = v231;
LABEL_189:
  v170 = v228;
  v169 = v229;
LABEL_190:
  v198 = v168;
  v32 = [(BMAdPlatformsTrainingRows *)v169 initWithDeploymentID:v235 experimentID:v10 treatmentID:v170 adamID:v222 impressed:v227 tapped:v18 dupe:v224 installed:v219 errorCode:v221 appUsageVector:v214 appDownloadVector:v73 installedAppVector:v203 userQueryVector:v201 serverResponse:v200 recordID:v168];
  v229 = v32;
LABEL_197:

LABEL_198:
LABEL_199:

LABEL_200:
  v161 = v200;
LABEL_201:

LABEL_202:
LABEL_203:

LABEL_204:
  v46 = v221;
LABEL_205:

LABEL_206:
  v11 = v230;
LABEL_207:

LABEL_208:
  v14 = v222;
LABEL_209:

LABEL_210:
LABEL_211:

  v12 = v228;
  self = v229;
  v59 = v227;
LABEL_212:

LABEL_213:
LABEL_214:

  v9 = v234;
  v7 = v235;
LABEL_215:

LABEL_216:
  v185 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAdPlatformsTrainingRows *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_deploymentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experimentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adamID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasImpressed)
  {
    impressed = self->_impressed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTapped)
  {
    tapped = self->_tapped;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasDupe)
  {
    dupe = self->_dupe;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasInstalled)
  {
    installed = self->_installed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasErrorCode)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteDoubleField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = self->_appUsageVector;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v43 + 1) + 8 * v14) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v12);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = self->_appDownloadVector;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      v19 = 0;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v39 + 1) + 8 * v19) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v17);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = self->_installedAppVector;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      v24 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v35 + 1) + 8 * v24) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = self->_userQueryVector;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      v29 = 0;
      do
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v31 + 1) + 8 * v29) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v27);
  }

  if (self->_serverResponse)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v86.receiver = self;
  v86.super_class = BMAdPlatformsTrainingRows;
  v5 = [(BMEventBase *)&v86 init];
  if (!v5)
  {
    goto LABEL_105;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    v10 = [v4 position];
    if (v10 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v87) = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (LOBYTE(v87) & 0x7F) << v11;
      if ((LOBYTE(v87) & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [v4 hasError] ? 0 : v13;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    switch((v18 >> 3))
    {
      case 1u:
        v19 = PBReaderReadString();
        v20 = 32;
        goto LABEL_64;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_64;
      case 3u:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_64;
      case 4u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_64;
      case 5u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasImpressed = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v26 |= (LOBYTE(v87) & 0x7F) << v24;
          if ((LOBYTE(v87) & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v17 = v25++ >= 9;
          if (v17)
          {
            LOBYTE(v30) = 0;
            goto LABEL_81;
          }
        }

        v30 = (v26 != 0) & ~[v4 hasError];
LABEL_81:
        v5->_impressed = v30;
        continue;
      case 6u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasTapped = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v47 = [v4 position] + 1;
          if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
          {
            v49 = [v4 data];
            [v49 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v46 |= (LOBYTE(v87) & 0x7F) << v44;
          if ((LOBYTE(v87) & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v17 = v45++ >= 9;
          if (v17)
          {
            LOBYTE(v50) = 0;
            goto LABEL_85;
          }
        }

        v50 = (v46 != 0) & ~[v4 hasError];
LABEL_85:
        v5->_tapped = v50;
        continue;
      case 7u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasDupe = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v55 = [v4 position] + 1;
          if (v55 >= [v4 position] && (v56 = objc_msgSend(v4, "position") + 1, v56 <= objc_msgSend(v4, "length")))
          {
            v57 = [v4 data];
            [v57 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v54 |= (LOBYTE(v87) & 0x7F) << v52;
          if ((LOBYTE(v87) & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v17 = v53++ >= 9;
          if (v17)
          {
            LOBYTE(v58) = 0;
            goto LABEL_87;
          }
        }

        v58 = (v54 != 0) & ~[v4 hasError];
LABEL_87:
        v5->_dupe = v58;
        continue;
      case 8u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasInstalled = 1;
        break;
      case 9u:
        v5->_hasErrorCode = 1;
        v87 = 0.0;
        v62 = [v4 position] + 8;
        if (v62 >= [v4 position] && (v63 = objc_msgSend(v4, "position") + 8, v63 <= objc_msgSend(v4, "length")))
        {
          v74 = [v4 data];
          [v74 getBytes:&v87 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_errorCode = v87;
        continue;
      case 0xAu:
        v34 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v35 = [v4 position] + 8;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
        {
          v70 = [v4 data];
          [v70 getBytes:&v87 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v71 = [v34 numberWithDouble:v87];
        if (!v71)
        {
          goto LABEL_107;
        }

        v66 = v71;
        v67 = v6;
        goto LABEL_100;
      case 0xBu:
        v59 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v60 = [v4 position] + 8;
        if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 8, v61 <= objc_msgSend(v4, "length")))
        {
          v72 = [v4 data];
          [v72 getBytes:&v87 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v73 = [v59 numberWithDouble:v87];
        if (!v73)
        {
          goto LABEL_107;
        }

        v66 = v73;
        v67 = v7;
        goto LABEL_100;
      case 0xCu:
        v21 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v22 = [v4 position] + 8;
        if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 8, v23 <= objc_msgSend(v4, "length")))
        {
          v64 = [v4 data];
          [v64 getBytes:&v87 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v65 = [v21 numberWithDouble:v87];
        if (!v65)
        {
          goto LABEL_107;
        }

        v66 = v65;
        v67 = v8;
        goto LABEL_100;
      case 0xDu:
        v31 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v32 = [v4 position] + 8;
        if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
        {
          v68 = [v4 data];
          [v68 getBytes:&v87 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v69 = [v31 numberWithDouble:v87];
        if (!v69)
        {
          goto LABEL_107;
        }

        v66 = v69;
        v67 = v9;
LABEL_100:
        [v67 addObject:v66];

        continue;
      case 0xEu:
        v19 = PBReaderReadData();
        v20 = 104;
        goto LABEL_64;
      case 0xFu:
        v19 = PBReaderReadString();
        v20 = 112;
LABEL_64:
        v51 = *(&v5->super.super.isa + v20);
        *(&v5->super.super.isa + v20) = v19;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_107:

        goto LABEL_104;
    }

    while (1)
    {
      LOBYTE(v87) = 0;
      v40 = [v4 position] + 1;
      if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
      {
        v42 = [v4 data];
        [v42 getBytes:&v87 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v39 |= (LOBYTE(v87) & 0x7F) << v37;
      if ((LOBYTE(v87) & 0x80) == 0)
      {
        break;
      }

      v37 += 7;
      v17 = v38++ >= 9;
      if (v17)
      {
        LOBYTE(v43) = 0;
        goto LABEL_83;
      }
    }

    v43 = (v39 != 0) & ~[v4 hasError];
LABEL_83:
    v5->_installed = v43;
  }

  v75 = [v6 copy];
  appUsageVector = v5->_appUsageVector;
  v5->_appUsageVector = v75;

  v77 = [v7 copy];
  appDownloadVector = v5->_appDownloadVector;
  v5->_appDownloadVector = v77;

  v79 = [v8 copy];
  installedAppVector = v5->_installedAppVector;
  v5->_installedAppVector = v79;

  v81 = [v9 copy];
  userQueryVector = v5->_userQueryVector;
  v5->_userQueryVector = v81;

  v83 = [v4 hasError];
  if (v83)
  {
LABEL_104:
    v84 = 0;
  }

  else
  {
LABEL_105:
    v84 = v5;
  }

  return v84;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMAdPlatformsTrainingRows *)self deploymentID];
  v21 = [(BMAdPlatformsTrainingRows *)self experimentID];
  v16 = [(BMAdPlatformsTrainingRows *)self treatmentID];
  v15 = [(BMAdPlatformsTrainingRows *)self adamID];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows impressed](self, "impressed")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows tapped](self, "tapped")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows dupe](self, "dupe")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows installed](self, "installed")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMAdPlatformsTrainingRows *)self errorCode];
  v11 = [v3 numberWithDouble:?];
  v4 = [(BMAdPlatformsTrainingRows *)self appUsageVector];
  v5 = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
  v6 = [(BMAdPlatformsTrainingRows *)self installedAppVector];
  v7 = [(BMAdPlatformsTrainingRows *)self userQueryVector];
  v8 = [(BMAdPlatformsTrainingRows *)self serverResponse];
  v9 = [(BMAdPlatformsTrainingRows *)self recordID];
  v19 = [v18 initWithFormat:@"BMAdPlatformsTrainingRows with deploymentID: %@, experimentID: %@, treatmentID: %@, adamID: %@, impressed: %@, tapped: %@, dupe: %@, installed: %@, errorCode: %@, appUsageVector: %@, appDownloadVector: %@, installedAppVector: %@, userQueryVector: %@, serverResponse: %@, recordID: %@", v17, v21, v16, v15, v20, v14, v13, v12, v11, v4, v5, v6, v7, v8, v9];

  return v19;
}

- (BMAdPlatformsTrainingRows)initWithDeploymentID:(id)a3 experimentID:(id)a4 treatmentID:(id)a5 adamID:(id)a6 impressed:(id)a7 tapped:(id)a8 dupe:(id)a9 installed:(id)a10 errorCode:(id)a11 appUsageVector:(id)a12 appDownloadVector:(id)a13 installedAppVector:(id)a14 userQueryVector:(id)a15 serverResponse:(id)a16 recordID:(id)a17
{
  v46 = a3;
  v35 = a4;
  v45 = a4;
  v36 = a5;
  v44 = a5;
  v37 = a6;
  v43 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = v22;
  v25 = a10;
  v26 = v21;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v42 = a14;
  v41 = a15;
  v39 = a16;
  v30 = a17;
  v47.receiver = self;
  v47.super_class = BMAdPlatformsTrainingRows;
  v31 = [(BMEventBase *)&v47 init];
  if (v31)
  {
    v31->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v31->_deploymentID, a3);
    objc_storeStrong(&v31->_experimentID, v35);
    objc_storeStrong(&v31->_treatmentID, v36);
    objc_storeStrong(&v31->_adamID, v37);
    if (v26)
    {
      v31->_hasImpressed = 1;
      v31->_impressed = [v26 BOOLValue];
    }

    else
    {
      v31->_hasImpressed = 0;
      v31->_impressed = 0;
    }

    if (v24)
    {
      v31->_hasTapped = 1;
      v31->_tapped = [v24 BOOLValue];
    }

    else
    {
      v31->_hasTapped = 0;
      v31->_tapped = 0;
    }

    if (v23)
    {
      v31->_hasDupe = 1;
      v31->_dupe = [v23 BOOLValue];
    }

    else
    {
      v31->_hasDupe = 0;
      v31->_dupe = 0;
    }

    if (v25)
    {
      v31->_hasInstalled = 1;
      v31->_installed = [v25 BOOLValue];
    }

    else
    {
      v31->_hasInstalled = 0;
      v31->_installed = 0;
    }

    if (v27)
    {
      v31->_hasErrorCode = 1;
      [v27 doubleValue];
    }

    else
    {
      v31->_hasErrorCode = 0;
      v32 = -1.0;
    }

    v31->_errorCode = v32;
    objc_storeStrong(&v31->_appUsageVector, a12);
    objc_storeStrong(&v31->_appDownloadVector, a13);
    objc_storeStrong(&v31->_installedAppVector, a14);
    objc_storeStrong(&v31->_userQueryVector, a15);
    objc_storeStrong(&v31->_serverResponse, a16);
    objc_storeStrong(&v31->_recordID, a17);
  }

  return v31;
}

+ (id)protoFields
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deploymentID" number:1 type:13 subMessageClass:0];
  v20[0] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentID" number:2 type:13 subMessageClass:0];
  v20[1] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"treatmentID" number:3 type:13 subMessageClass:0];
  v20[2] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adamID" number:4 type:13 subMessageClass:0];
  v20[3] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"impressed" number:5 type:12 subMessageClass:0];
  v20[4] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tapped" number:6 type:12 subMessageClass:0];
  v20[5] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dupe" number:7 type:12 subMessageClass:0];
  v20[6] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"installed" number:8 type:12 subMessageClass:0];
  v20[7] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:9 type:0 subMessageClass:0];
  v20[8] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appUsageVector" number:10 type:0 subMessageClass:0];
  v20[9] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appDownloadVector" number:11 type:0 subMessageClass:0];
  v20[10] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"installedAppVector" number:12 type:0 subMessageClass:0];
  v20[11] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userQueryVector" number:13 type:0 subMessageClass:0];
  v20[12] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverResponse" number:14 type:14 subMessageClass:0];
  v20[13] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recordID" number:15 type:13 subMessageClass:0];
  v20[14] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _userQueryVectorJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _installedAppVectorJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _appDownloadVectorJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _appUsageVectorJSONArray];
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

    v8 = [[BMAdPlatformsTrainingRows alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end