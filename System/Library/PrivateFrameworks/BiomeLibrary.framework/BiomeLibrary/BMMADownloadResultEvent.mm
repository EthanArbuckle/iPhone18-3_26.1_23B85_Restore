@interface BMMADownloadResultEvent
+ (BMMADownloadResultEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)columns;
+ (id)protoFields;
- (BMMADownloadResultEvent)initWithAssetMetaData:(id)a3 cellularAccessRequest:(id)a4 cellularAccessResponse:(id)a5 constrainedNetworkAccessRequest:(id)a6 constrainedNetworkAccessResponse:(id)a7 expensiveNetworkAccessRequest:(id)a8 expensiveNetworkAccessResponse:(id)a9 isMAAutoAsset:(id)a10 isDiscretionary:(id)a11 IsUserPriority:(id)a12 result:(id)a13;
- (BMMADownloadResultEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMADownloadResultEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMADownloadResultEvent *)self assetMetaData];
    v7 = [v5 assetMetaData];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMADownloadResultEvent *)self assetMetaData];
      v10 = [v5 assetMetaData];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_52;
      }
    }

    if (!-[BMMADownloadResultEvent hasCellularAccessRequest](self, "hasCellularAccessRequest") && ![v5 hasCellularAccessRequest] || -[BMMADownloadResultEvent hasCellularAccessRequest](self, "hasCellularAccessRequest") && objc_msgSend(v5, "hasCellularAccessRequest") && (v13 = -[BMMADownloadResultEvent cellularAccessRequest](self, "cellularAccessRequest"), v13 == objc_msgSend(v5, "cellularAccessRequest")))
    {
      if (!-[BMMADownloadResultEvent hasCellularAccessResponse](self, "hasCellularAccessResponse") && ![v5 hasCellularAccessResponse] || -[BMMADownloadResultEvent hasCellularAccessResponse](self, "hasCellularAccessResponse") && objc_msgSend(v5, "hasCellularAccessResponse") && (v14 = -[BMMADownloadResultEvent cellularAccessResponse](self, "cellularAccessResponse"), v14 == objc_msgSend(v5, "cellularAccessResponse")))
      {
        if (!-[BMMADownloadResultEvent hasConstrainedNetworkAccessRequest](self, "hasConstrainedNetworkAccessRequest") && ![v5 hasConstrainedNetworkAccessRequest] || -[BMMADownloadResultEvent hasConstrainedNetworkAccessRequest](self, "hasConstrainedNetworkAccessRequest") && objc_msgSend(v5, "hasConstrainedNetworkAccessRequest") && (v15 = -[BMMADownloadResultEvent constrainedNetworkAccessRequest](self, "constrainedNetworkAccessRequest"), v15 == objc_msgSend(v5, "constrainedNetworkAccessRequest")))
        {
          if (!-[BMMADownloadResultEvent hasConstrainedNetworkAccessResponse](self, "hasConstrainedNetworkAccessResponse") && ![v5 hasConstrainedNetworkAccessResponse] || -[BMMADownloadResultEvent hasConstrainedNetworkAccessResponse](self, "hasConstrainedNetworkAccessResponse") && objc_msgSend(v5, "hasConstrainedNetworkAccessResponse") && (v16 = -[BMMADownloadResultEvent constrainedNetworkAccessResponse](self, "constrainedNetworkAccessResponse"), v16 == objc_msgSend(v5, "constrainedNetworkAccessResponse")))
          {
            if (!-[BMMADownloadResultEvent hasExpensiveNetworkAccessRequest](self, "hasExpensiveNetworkAccessRequest") && ![v5 hasExpensiveNetworkAccessRequest] || -[BMMADownloadResultEvent hasExpensiveNetworkAccessRequest](self, "hasExpensiveNetworkAccessRequest") && objc_msgSend(v5, "hasExpensiveNetworkAccessRequest") && (v17 = -[BMMADownloadResultEvent expensiveNetworkAccessRequest](self, "expensiveNetworkAccessRequest"), v17 == objc_msgSend(v5, "expensiveNetworkAccessRequest")))
            {
              if (!-[BMMADownloadResultEvent hasExpensiveNetworkAccessResponse](self, "hasExpensiveNetworkAccessResponse") && ![v5 hasExpensiveNetworkAccessResponse] || -[BMMADownloadResultEvent hasExpensiveNetworkAccessResponse](self, "hasExpensiveNetworkAccessResponse") && objc_msgSend(v5, "hasExpensiveNetworkAccessResponse") && (v18 = -[BMMADownloadResultEvent expensiveNetworkAccessResponse](self, "expensiveNetworkAccessResponse"), v18 == objc_msgSend(v5, "expensiveNetworkAccessResponse")))
              {
                if (!-[BMMADownloadResultEvent hasIsMAAutoAsset](self, "hasIsMAAutoAsset") && ![v5 hasIsMAAutoAsset] || -[BMMADownloadResultEvent hasIsMAAutoAsset](self, "hasIsMAAutoAsset") && objc_msgSend(v5, "hasIsMAAutoAsset") && (v19 = -[BMMADownloadResultEvent isMAAutoAsset](self, "isMAAutoAsset"), v19 == objc_msgSend(v5, "isMAAutoAsset")))
                {
                  if (!-[BMMADownloadResultEvent hasIsDiscretionary](self, "hasIsDiscretionary") && ![v5 hasIsDiscretionary] || -[BMMADownloadResultEvent hasIsDiscretionary](self, "hasIsDiscretionary") && objc_msgSend(v5, "hasIsDiscretionary") && (v20 = -[BMMADownloadResultEvent isDiscretionary](self, "isDiscretionary"), v20 == objc_msgSend(v5, "isDiscretionary")))
                  {
                    if (!-[BMMADownloadResultEvent hasIsUserPriority](self, "hasIsUserPriority") && ![v5 hasIsUserPriority] || -[BMMADownloadResultEvent hasIsUserPriority](self, "hasIsUserPriority") && objc_msgSend(v5, "hasIsUserPriority") && (v21 = -[BMMADownloadResultEvent IsUserPriority](self, "IsUserPriority"), v21 == objc_msgSend(v5, "IsUserPriority")))
                    {
                      v23 = [(BMMADownloadResultEvent *)self result];
                      v24 = [v5 result];
                      if (v23 == v24)
                      {
                        v12 = 1;
                      }

                      else
                      {
                        v25 = [(BMMADownloadResultEvent *)self result];
                        v26 = [v5 result];
                        v12 = [v25 isEqual:v26];
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_52:
    v12 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v12 = 0;
LABEL_54:

  return v12;
}

- (id)jsonDictionary
{
  v39[11] = *MEMORY[0x1E69E9840];
  v3 = [(BMMADownloadResultEvent *)self assetMetaData];
  v4 = [v3 jsonDictionary];

  if ([(BMMADownloadResultEvent *)self hasCellularAccessRequest])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent cellularAccessRequest](self, "cellularAccessRequest")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasCellularAccessResponse])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent cellularAccessResponse](self, "cellularAccessResponse")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasConstrainedNetworkAccessRequest])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent constrainedNetworkAccessRequest](self, "constrainedNetworkAccessRequest")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasConstrainedNetworkAccessResponse])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent constrainedNetworkAccessResponse](self, "constrainedNetworkAccessResponse")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasExpensiveNetworkAccessRequest])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent expensiveNetworkAccessRequest](self, "expensiveNetworkAccessRequest")}];
  }

  else
  {
    v37 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasExpensiveNetworkAccessResponse])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent expensiveNetworkAccessResponse](self, "expensiveNetworkAccessResponse")}];
  }

  else
  {
    v36 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasIsMAAutoAsset])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent isMAAutoAsset](self, "isMAAutoAsset")}];
  }

  else
  {
    v35 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasIsDiscretionary])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent isDiscretionary](self, "isDiscretionary")}];
  }

  else
  {
    v34 = 0;
  }

  if ([(BMMADownloadResultEvent *)self hasIsUserPriority])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent IsUserPriority](self, "IsUserPriority")}];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMMADownloadResultEvent *)self result];
  v38[0] = @"assetMetaData";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v11;
  v39[0] = v11;
  v38[1] = @"cellularAccessRequest";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v12;
  v39[1] = v12;
  v38[2] = @"cellularAccessResponse";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v13;
  v39[2] = v13;
  v38[3] = @"constrainedNetworkAccessRequest";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v4;
  v26 = v14;
  v39[3] = v14;
  v38[4] = @"constrainedNetworkAccessResponse";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v25 = v15;
  v39[4] = v15;
  v38[5] = @"expensiveNetworkAccessRequest";
  v16 = v37;
  if (!v37)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v39[5] = v16;
  v38[6] = @"expensiveNetworkAccessResponse";
  v17 = v36;
  if (!v36)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v39[6] = v17;
  v38[7] = @"isMAAutoAsset";
  v19 = v35;
  if (!v35)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = v19;
  v38[8] = @"isDiscretionary";
  v20 = v34;
  if (!v34)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = v20;
  v38[9] = @"IsUserPriority";
  v21 = v9;
  if (!v9)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = v21;
  v38[10] = @"result";
  v22 = v10;
  if (!v10)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = v22;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_52;
    }
  }

LABEL_52:
  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (!v8)
  {
  }

  if (v18)
  {
    if (v31)
    {
      goto LABEL_64;
    }
  }

  else
  {

    if (v31)
    {
LABEL_64:
      if (v32)
      {
        goto LABEL_65;
      }

LABEL_73:

      if (v33)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }
  }

  if (!v32)
  {
    goto LABEL_73;
  }

LABEL_65:
  if (v33)
  {
    goto LABEL_66;
  }

LABEL_74:

LABEL_66:
  v23 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BMMADownloadResultEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v147[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"assetMetaData"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v125 = 0;
    v7 = [[BMMAAssetMetadata alloc] initWithJSONDictionary:v9 error:&v125];
    v24 = v125;
    if (v24)
    {
      if (a4)
      {
        v24 = v24;
        *a4 = v24;
      }

      a4 = 0;
      goto LABEL_72;
    }

LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"cellularAccessRequest"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v9 = 0;
          goto LABEL_71;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = a4;
        v33 = v7;
        v34 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellularAccessRequest"];
        v145 = v35;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v36 = v34;
        v7 = v33;
        v37 = [v31 initWithDomain:v36 code:2 userInfo:v10];
        v9 = 0;
        a4 = 0;
        *v32 = v37;
LABEL_70:

LABEL_71:
        goto LABEL_72;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"cellularAccessResponse"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v35 = 0;
          goto LABEL_70;
        }

        v38 = v9;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v7;
        v41 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        v105 = a4;
        v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellularAccessResponse"];
        v143 = v123;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
        v43 = v39;
        v9 = v38;
        v44 = v41;
        v7 = v40;
        v45 = v42;
        v35 = 0;
        a4 = 0;
        *v105 = [v43 initWithDomain:v44 code:2 userInfo:v42];
        goto LABEL_69;
      }

      v11 = v8;
      v12 = v10;
      v122 = v10;
    }

    else
    {
      v11 = v8;
      v12 = v10;
      v122 = 0;
    }

    v13 = [v5 objectForKeyedSubscript:@"constrainedNetworkAccessRequest"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v123 = 0;
          v35 = v122;
          v45 = v13;
          v10 = v12;
          v8 = v11;
          goto LABEL_69;
        }

        v115 = v9;
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = v7;
        v56 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v106 = a4;
        v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"constrainedNetworkAccessRequest"];
        v141 = v121;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v58 = v54;
        v9 = v115;
        v59 = v56;
        v7 = v55;
        v45 = v13;
        v120 = v57;
        v123 = 0;
        a4 = 0;
        *v106 = [v58 initWithDomain:v59 code:2 userInfo:?];
        v35 = v122;
        v10 = v12;
        goto LABEL_99;
      }

      v118 = v13;
      v123 = v13;
    }

    else
    {
      v118 = v13;
      v123 = 0;
    }

    v14 = [v5 objectForKeyedSubscript:@"constrainedNetworkAccessResponse"];
    v10 = v12;
    v120 = v14;
    if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v121 = 0;
LABEL_16:
      v8 = v11;
      v16 = [v5 objectForKeyedSubscript:@"expensiveNetworkAccessRequest"];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v119 = 0;
            v35 = v122;
            v45 = v118;
            goto LABEL_67;
          }

          v116 = v9;
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = v7;
          v68 = *MEMORY[0x1E698F240];
          v136 = *MEMORY[0x1E696A578];
          v108 = a4;
          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"expensiveNetworkAccessRequest"];
          v137 = v117;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v70 = v66;
          v9 = v116;
          v71 = v68;
          v7 = v67;
          v113 = v69;
          v119 = 0;
          a4 = 0;
          *v108 = [v70 initWithDomain:v71 code:2 userInfo:?];
          v35 = v122;
          v45 = v118;
          goto LABEL_66;
        }

        v104 = v8;
        v17 = v10;
        v119 = v16;
      }

      else
      {
        v104 = v8;
        v17 = v10;
        v119 = 0;
      }

      v18 = [v5 objectForKeyedSubscript:@"expensiveNetworkAccessResponse"];
      v113 = v18;
      if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v117 = 0;
            v35 = v122;
            v45 = v118;
            v10 = v17;
            v8 = v104;
            goto LABEL_66;
          }

          v102 = v16;
          v72 = v9;
          v73 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = v7;
          v75 = *MEMORY[0x1E698F240];
          v134 = *MEMORY[0x1E696A578];
          v76 = a4;
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"expensiveNetworkAccessResponse"];
          v135 = v112;
          v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
          v78 = v73;
          v9 = v72;
          v16 = v102;
          v79 = v75;
          v7 = v74;
          v103 = v77;
          v117 = 0;
          a4 = 0;
          *v76 = [v78 initWithDomain:v79 code:2 userInfo:?];
          v35 = v122;
          v45 = v118;
          v10 = v17;
          v8 = v104;
LABEL_65:

LABEL_66:
LABEL_67:

LABEL_68:
LABEL_69:

          goto LABEL_70;
        }

        v97 = v6;
        v20 = v7;
        v21 = a4;
        v117 = v19;
      }

      else
      {
        v97 = v6;
        v20 = v7;
        v21 = a4;
        v117 = 0;
      }

      v22 = [v5 objectForKeyedSubscript:@"isMAAutoAsset"];
      v10 = v17;
      v114 = v9;
      v103 = v22;
      if (v22)
      {
        v23 = v22;
        objc_opt_class();
        v8 = v104;
        if (objc_opt_isKindOfClass())
        {
          v112 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            a4 = v21;
            if (!v21)
            {
              v112 = 0;
              v35 = v122;
              v45 = v118;
              v7 = v20;
              v6 = v97;
              goto LABEL_65;
            }

            v80 = objc_alloc(MEMORY[0x1E696ABC0]);
            v81 = v20;
            v82 = *MEMORY[0x1E698F240];
            v132 = *MEMORY[0x1E696A578];
            v83 = a4;
            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMAAutoAsset"];
            v133 = v111;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
            v85 = v82;
            v7 = v81;
            v96 = v84;
            v112 = 0;
            a4 = 0;
            *v83 = [v80 initWithDomain:v85 code:2 userInfo:?];
            v35 = v122;
            v45 = v118;
            v6 = v97;
            goto LABEL_64;
          }

          v112 = v23;
        }
      }

      else
      {
        v112 = 0;
        v8 = v104;
      }

      v46 = [v5 objectForKeyedSubscript:@"isDiscretionary"];
      v35 = v122;
      a4 = v21;
      v99 = v20;
      v100 = v16;
      v96 = v46;
      if (v46 && (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v7 = v20;
        objc_opt_class();
        v6 = v97;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v111 = 0;
            goto LABEL_63;
          }

          v86 = objc_alloc(MEMORY[0x1E696ABC0]);
          v87 = a4;
          v88 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDiscretionary"];
          v131 = v49;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          v89 = [v86 initWithDomain:v88 code:2 userInfo:v48];
          v111 = 0;
          a4 = 0;
          *v87 = v89;
LABEL_62:

          v7 = v99;
          v16 = v100;
LABEL_63:
          v45 = v118;
LABEL_64:

          v9 = v114;
          goto LABEL_65;
        }

        v111 = v47;
      }

      else
      {
        v111 = 0;
        v6 = v97;
      }

      v48 = [v5 objectForKeyedSubscript:@"IsUserPriority"];
      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v49 = 0;
            goto LABEL_62;
          }

          v109 = a4;
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"IsUserPriority"];
          v129 = v51;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v92 = [v90 initWithDomain:v91 code:2 userInfo:v50];
          v49 = 0;
          a4 = 0;
          *v109 = v92;
          goto LABEL_61;
        }

        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = [v5 objectForKeyedSubscript:@"result"];
      if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v110 = objc_alloc(MEMORY[0x1E696ABC0]);
            v98 = *MEMORY[0x1E698F240];
            v126 = *MEMORY[0x1E696A578];
            v93 = a4;
            v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"result"];
            v127 = v94;
            v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
            *v93 = [v110 initWithDomain:v98 code:2 userInfo:v95];

            v51 = 0;
            a4 = 0;
          }

          else
          {
            v51 = 0;
          }

          v35 = v122;
          goto LABEL_61;
        }

        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      v35 = v122;
      a4 = [(BMMADownloadResultEvent *)self initWithAssetMetaData:v99 cellularAccessRequest:v114 cellularAccessResponse:v122 constrainedNetworkAccessRequest:v123 constrainedNetworkAccessResponse:v121 expensiveNetworkAccessRequest:v119 expensiveNetworkAccessResponse:v117 isMAAutoAsset:v112 isDiscretionary:v111 IsUserPriority:v49 result:v51];
      self = a4;
LABEL_61:

      goto LABEL_62;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = v15;
      goto LABEL_16;
    }

    if (a4)
    {
      v60 = v9;
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = v7;
      v63 = *MEMORY[0x1E698F240];
      v138 = *MEMORY[0x1E696A578];
      v107 = a4;
      v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"constrainedNetworkAccessResponse"];
      v139 = v119;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v64 = v61;
      v9 = v60;
      v65 = v63;
      v7 = v62;
      v121 = 0;
      a4 = 0;
      *v107 = [v64 initWithDomain:v65 code:2 userInfo:v101];
      v35 = v122;
      v45 = v118;
      v8 = v11;
      v16 = v101;
      goto LABEL_67;
    }

    v121 = 0;
    v35 = v122;
    v45 = v118;
LABEL_99:
    v8 = v11;
    goto LABEL_68;
  }

  if (a4)
  {
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = *MEMORY[0x1E698F240];
    v146 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetMetaData"];
    v147[0] = v7;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
    v28 = v25;
    v9 = v27;
    v29 = [v28 initWithDomain:v26 code:2 userInfo:v27];
    v30 = a4;
    a4 = 0;
    *v30 = v29;
LABEL_72:
  }

  v52 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMADownloadResultEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_assetMetaData)
  {
    PBDataWriterPlaceMark();
    [(BMMAAssetMetadata *)self->_assetMetaData writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasCellularAccessRequest)
  {
    cellularAccessRequest = self->_cellularAccessRequest;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCellularAccessResponse)
  {
    cellularAccessResponse = self->_cellularAccessResponse;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasConstrainedNetworkAccessRequest)
  {
    constrainedNetworkAccessRequest = self->_constrainedNetworkAccessRequest;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasConstrainedNetworkAccessResponse)
  {
    constrainedNetworkAccessResponse = self->_constrainedNetworkAccessResponse;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasExpensiveNetworkAccessRequest)
  {
    expensiveNetworkAccessRequest = self->_expensiveNetworkAccessRequest;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasExpensiveNetworkAccessResponse)
  {
    expensiveNetworkAccessResponse = self->_expensiveNetworkAccessResponse;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMAAutoAsset)
  {
    isMAAutoAsset = self->_isMAAutoAsset;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDiscretionary)
  {
    isDiscretionary = self->_isDiscretionary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUserPriority)
  {
    IsUserPriority = self->_IsUserPriority;
    PBDataWriterWriteBOOLField();
  }

  if (self->_result)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v79.receiver = self;
  v79.super_class = BMMADownloadResultEvent;
  v5 = [(BMEventBase *)&v79 init];
  if (!v5)
  {
    goto LABEL_141;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v80[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v80[0] & 0x7F) << v7;
        if ((v80[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 5)
      {
        if (v15 > 2)
        {
          switch(v15)
          {
            case 3:
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v5->_hasCellularAccessResponse = 1;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v60 = [v4 position] + 1;
                if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 1, v61 <= objc_msgSend(v4, "length")))
                {
                  v62 = [v4 data];
                  [v62 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v59 |= (v80[0] & 0x7F) << v57;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                v13 = v58++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_130;
                }
              }

              v22 = (v59 != 0) & ~[v4 hasError];
LABEL_130:
              v75 = 18;
              break;
            case 4:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v5->_hasConstrainedNetworkAccessRequest = 1;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v42 = [v4 position] + 1;
                if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
                {
                  v44 = [v4 data];
                  [v44 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v41 |= (v80[0] & 0x7F) << v39;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v13 = v40++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_122;
                }
              }

              v22 = (v41 != 0) & ~[v4 hasError];
LABEL_122:
              v75 = 20;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v5->_hasConstrainedNetworkAccessResponse = 1;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v26 = [v4 position] + 1;
                if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
                {
                  v28 = [v4 data];
                  [v28 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v25 |= (v80[0] & 0x7F) << v23;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v13 = v24++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_128;
                }
              }

              v22 = (v25 != 0) & ~[v4 hasError];
LABEL_128:
              v75 = 22;
              break;
            default:
              goto LABEL_117;
          }

          goto LABEL_137;
        }

        if (v15 != 1)
        {
          if (v15 != 2)
          {
LABEL_117:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_140;
            }

            goto LABEL_138;
          }

          v31 = 0;
          v32 = 0;
          v33 = 0;
          v5->_hasCellularAccessRequest = 1;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v34 = [v4 position] + 1;
            if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
            {
              v36 = [v4 data];
              [v36 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v33 |= (v80[0] & 0x7F) << v31;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v13 = v32++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_120;
            }
          }

          v22 = (v33 != 0) & ~[v4 hasError];
LABEL_120:
          v75 = 16;
          goto LABEL_137;
        }

        v80[0] = 0;
        v80[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_140;
        }

        v37 = [[BMMAAssetMetadata alloc] initByReadFrom:v4];
        if (!v37)
        {
          goto LABEL_140;
        }

        assetMetaData = v5->_assetMetaData;
        v5->_assetMetaData = v37;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 <= 8)
        {
          switch(v15)
          {
            case 6:
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v5->_hasExpensiveNetworkAccessRequest = 1;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v66 = [v4 position] + 1;
                if (v66 >= [v4 position] && (v67 = objc_msgSend(v4, "position") + 1, v67 <= objc_msgSend(v4, "length")))
                {
                  v68 = [v4 data];
                  [v68 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v65 |= (v80[0] & 0x7F) << v63;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v13 = v64++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_134;
                }
              }

              v22 = (v65 != 0) & ~[v4 hasError];
LABEL_134:
              v75 = 24;
              break;
            case 7:
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v5->_hasExpensiveNetworkAccessResponse = 1;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v48 = [v4 position] + 1;
                if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
                {
                  v50 = [v4 data];
                  [v50 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v47 |= (v80[0] & 0x7F) << v45;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v13 = v46++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_124;
                }
              }

              v22 = (v47 != 0) & ~[v4 hasError];
LABEL_124:
              v75 = 26;
              break;
            case 8:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v5->_hasIsMAAutoAsset = 1;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v19 = [v4 position] + 1;
                if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
                {
                  v21 = [v4 data];
                  [v21 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v18 |= (v80[0] & 0x7F) << v16;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v13 = v17++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_132;
                }
              }

              v22 = (v18 != 0) & ~[v4 hasError];
LABEL_132:
              v75 = 28;
              break;
            default:
              goto LABEL_117;
          }

          goto LABEL_137;
        }

        if (v15 == 9)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v5->_hasIsDiscretionary = 1;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v72 = [v4 position] + 1;
            if (v72 >= [v4 position] && (v73 = objc_msgSend(v4, "position") + 1, v73 <= objc_msgSend(v4, "length")))
            {
              v74 = [v4 data];
              [v74 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v71 |= (v80[0] & 0x7F) << v69;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v13 = v70++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_136;
            }
          }

          v22 = (v71 != 0) & ~[v4 hasError];
LABEL_136:
          v75 = 30;
          goto LABEL_137;
        }

        if (v15 == 10)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v5->_hasIsUserPriority = 1;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v54 = [v4 position] + 1;
            if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
            {
              v56 = [v4 data];
              [v56 getBytes:v80 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v53 |= (v80[0] & 0x7F) << v51;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v13 = v52++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_126;
            }
          }

          v22 = (v53 != 0) & ~[v4 hasError];
LABEL_126:
          v75 = 32;
LABEL_137:
          *(&v5->super.super.isa + v75) = v22;
          goto LABEL_138;
        }

        if (v15 != 11)
        {
          goto LABEL_117;
        }

        v29 = PBReaderReadString();
        v30 = v5->_result;
        v5->_result = v29;
      }

LABEL_138:
      v76 = [v4 position];
    }

    while (v76 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_140:
    v77 = 0;
  }

  else
  {
LABEL_141:
    v77 = v5;
  }

  return v77;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(BMMADownloadResultEvent *)self assetMetaData];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent cellularAccessRequest](self, "cellularAccessRequest")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent cellularAccessResponse](self, "cellularAccessResponse")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent constrainedNetworkAccessRequest](self, "constrainedNetworkAccessRequest")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent constrainedNetworkAccessResponse](self, "constrainedNetworkAccessResponse")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent expensiveNetworkAccessRequest](self, "expensiveNetworkAccessRequest")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent expensiveNetworkAccessResponse](self, "expensiveNetworkAccessResponse")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent isMAAutoAsset](self, "isMAAutoAsset")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent isDiscretionary](self, "isDiscretionary")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent IsUserPriority](self, "IsUserPriority")}];
  v11 = [(BMMADownloadResultEvent *)self result];
  v16 = [v15 initWithFormat:@"BMMADownloadResultEvent with assetMetaData: %@, cellularAccessRequest: %@, cellularAccessResponse: %@, constrainedNetworkAccessRequest: %@, constrainedNetworkAccessResponse: %@, expensiveNetworkAccessRequest: %@, expensiveNetworkAccessResponse: %@, isMAAutoAsset: %@, isDiscretionary: %@, IsUserPriority: %@, result: %@", v14, v3, v13, v4, v5, v6, v7, v8, v9, v10, v11];

  return v16;
}

- (BMMADownloadResultEvent)initWithAssetMetaData:(id)a3 cellularAccessRequest:(id)a4 cellularAccessResponse:(id)a5 constrainedNetworkAccessRequest:(id)a6 constrainedNetworkAccessResponse:(id)a7 expensiveNetworkAccessRequest:(id)a8 expensiveNetworkAccessResponse:(id)a9 isMAAutoAsset:(id)a10 isDiscretionary:(id)a11 IsUserPriority:(id)a12 result:(id)a13
{
  v31 = a3;
  v32 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v33.receiver = self;
  v33.super_class = BMMADownloadResultEvent;
  v27 = [(BMEventBase *)&v33 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_assetMetaData, a3);
    if (v32)
    {
      v27->_hasCellularAccessRequest = 1;
      v27->_cellularAccessRequest = [v32 BOOLValue];
    }

    else
    {
      v27->_hasCellularAccessRequest = 0;
      v27->_cellularAccessRequest = 0;
    }

    if (v18)
    {
      v27->_hasCellularAccessResponse = 1;
      v27->_cellularAccessResponse = [v18 BOOLValue];
    }

    else
    {
      v27->_hasCellularAccessResponse = 0;
      v27->_cellularAccessResponse = 0;
    }

    if (v19)
    {
      v27->_hasConstrainedNetworkAccessRequest = 1;
      v27->_constrainedNetworkAccessRequest = [v19 BOOLValue];
    }

    else
    {
      v27->_hasConstrainedNetworkAccessRequest = 0;
      v27->_constrainedNetworkAccessRequest = 0;
    }

    if (v20)
    {
      v27->_hasConstrainedNetworkAccessResponse = 1;
      v27->_constrainedNetworkAccessResponse = [v20 BOOLValue];
    }

    else
    {
      v27->_hasConstrainedNetworkAccessResponse = 0;
      v27->_constrainedNetworkAccessResponse = 0;
    }

    if (v21)
    {
      v27->_hasExpensiveNetworkAccessRequest = 1;
      v27->_expensiveNetworkAccessRequest = [v21 BOOLValue];
    }

    else
    {
      v27->_hasExpensiveNetworkAccessRequest = 0;
      v27->_expensiveNetworkAccessRequest = 0;
    }

    if (v22)
    {
      v27->_hasExpensiveNetworkAccessResponse = 1;
      v27->_expensiveNetworkAccessResponse = [v22 BOOLValue];
    }

    else
    {
      v27->_hasExpensiveNetworkAccessResponse = 0;
      v27->_expensiveNetworkAccessResponse = 0;
    }

    if (v23)
    {
      v27->_hasIsMAAutoAsset = 1;
      v27->_isMAAutoAsset = [v23 BOOLValue];
    }

    else
    {
      v27->_hasIsMAAutoAsset = 0;
      v27->_isMAAutoAsset = 0;
    }

    if (v24)
    {
      v27->_hasIsDiscretionary = 1;
      v27->_isDiscretionary = [v24 BOOLValue];
    }

    else
    {
      v27->_hasIsDiscretionary = 0;
      v27->_isDiscretionary = 0;
    }

    if (v25)
    {
      v27->_hasIsUserPriority = 1;
      v27->_IsUserPriority = [v25 BOOLValue];
    }

    else
    {
      v27->_hasIsUserPriority = 0;
      v27->_IsUserPriority = 0;
    }

    objc_storeStrong(&v27->_result, a13);
  }

  return v27;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetMetaData" number:1 type:14 subMessageClass:objc_opt_class()];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellularAccessRequest" number:2 type:12 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellularAccessResponse" number:3 type:12 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"constrainedNetworkAccessRequest" number:4 type:12 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"constrainedNetworkAccessResponse" number:5 type:12 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expensiveNetworkAccessRequest" number:6 type:12 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expensiveNetworkAccessResponse" number:7 type:12 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMAAutoAsset" number:8 type:12 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDiscretionary" number:9 type:12 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"IsUserPriority" number:10 type:12 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:11 type:13 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetMetaData_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_223_110947];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellularAccessRequest" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellularAccessResponse" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"constrainedNetworkAccessRequest" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"constrainedNetworkAccessResponse" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expensiveNetworkAccessRequest" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expensiveNetworkAccessResponse" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMAAutoAsset" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDiscretionary" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"IsUserPriority" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __34__BMMADownloadResultEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 assetMetaData];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (BMMADownloadResultEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4
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

    v8 = [[BMMADownloadResultEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end