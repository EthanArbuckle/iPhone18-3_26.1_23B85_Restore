@interface BMMADownloadResultEvent
+ (BMMADownloadResultEvent)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)columns;
+ (id)protoFields;
- (BMMADownloadResultEvent)initWithAssetMetaData:(id)data cellularAccessRequest:(id)request cellularAccessResponse:(id)response constrainedNetworkAccessRequest:(id)accessRequest constrainedNetworkAccessResponse:(id)accessResponse expensiveNetworkAccessRequest:(id)networkAccessRequest expensiveNetworkAccessResponse:(id)networkAccessResponse isMAAutoAsset:(id)self0 isDiscretionary:(id)self1 IsUserPriority:(id)self2 result:(id)self3;
- (BMMADownloadResultEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMADownloadResultEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetMetaData = [(BMMADownloadResultEvent *)self assetMetaData];
    assetMetaData2 = [v5 assetMetaData];
    v8 = assetMetaData2;
    if (assetMetaData == assetMetaData2)
    {
    }

    else
    {
      assetMetaData3 = [(BMMADownloadResultEvent *)self assetMetaData];
      assetMetaData4 = [v5 assetMetaData];
      v11 = [assetMetaData3 isEqual:assetMetaData4];

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
                      result = [(BMMADownloadResultEvent *)self result];
                      result2 = [v5 result];
                      if (result == result2)
                      {
                        v12 = 1;
                      }

                      else
                      {
                        result3 = [(BMMADownloadResultEvent *)self result];
                        result4 = [v5 result];
                        v12 = [result3 isEqual:result4];
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
  assetMetaData = [(BMMADownloadResultEvent *)self assetMetaData];
  jsonDictionary = [assetMetaData jsonDictionary];

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

  result = [(BMMADownloadResultEvent *)self result];
  v38[0] = @"assetMetaData";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v39[0] = null;
  v38[1] = @"cellularAccessRequest";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v39[1] = null2;
  v38[2] = @"cellularAccessResponse";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null3;
  v39[2] = null3;
  v38[3] = @"constrainedNetworkAccessRequest";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = jsonDictionary;
  v26 = null4;
  v39[3] = null4;
  v38[4] = @"constrainedNetworkAccessResponse";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v25 = null5;
  v39[4] = null5;
  v38[5] = @"expensiveNetworkAccessRequest";
  null6 = v37;
  if (!v37)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v39[5] = null6;
  v38[6] = @"expensiveNetworkAccessResponse";
  null7 = v36;
  if (!v36)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v39[6] = null7;
  v38[7] = @"isMAAutoAsset";
  null8 = v35;
  if (!v35)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = null8;
  v38[8] = @"isDiscretionary";
  null9 = v34;
  if (!v34)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null9;
  v38[9] = @"IsUserPriority";
  null10 = v9;
  if (!v9)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = null10;
  v38[10] = @"result";
  null11 = result;
  if (!result)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = null11;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (result)
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

- (BMMADownloadResultEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v147[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"assetMetaData"];
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
      if (error)
      {
        v24 = v24;
        *error = v24;
      }

      error = 0;
      goto LABEL_72;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"cellularAccessRequest"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          goto LABEL_71;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
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
        error = 0;
        *errorCopy = v37;
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

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cellularAccessResponse"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          goto LABEL_70;
        }

        v38 = v9;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v7;
        v41 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellularAccessResponse"];
        v143 = v123;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
        v43 = v39;
        v9 = v38;
        v44 = v41;
        v7 = v40;
        v45 = v42;
        v35 = 0;
        error = 0;
        *errorCopy2 = [v43 initWithDomain:v44 code:2 userInfo:v42];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"constrainedNetworkAccessRequest"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        errorCopy3 = error;
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
        error = 0;
        *errorCopy3 = [v58 initWithDomain:v59 code:2 userInfo:?];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"constrainedNetworkAccessResponse"];
    v10 = v12;
    v120 = v14;
    if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v121 = 0;
LABEL_16:
      v8 = v11;
      v16 = [dictionaryCopy objectForKeyedSubscript:@"expensiveNetworkAccessRequest"];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
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
          errorCopy4 = error;
          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"expensiveNetworkAccessRequest"];
          v137 = v117;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v70 = v66;
          v9 = v116;
          v71 = v68;
          v7 = v67;
          v113 = v69;
          v119 = 0;
          error = 0;
          *errorCopy4 = [v70 initWithDomain:v71 code:2 userInfo:?];
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

      v18 = [dictionaryCopy objectForKeyedSubscript:@"expensiveNetworkAccessResponse"];
      v113 = v18;
      if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
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
          errorCopy5 = error;
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
          error = 0;
          *errorCopy5 = [v78 initWithDomain:v79 code:2 userInfo:?];
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
        errorCopy7 = error;
        v117 = v19;
      }

      else
      {
        v97 = v6;
        v20 = v7;
        errorCopy7 = error;
        v117 = 0;
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"isMAAutoAsset"];
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
            error = errorCopy7;
            if (!errorCopy7)
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
            errorCopy8 = error;
            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMAAutoAsset"];
            v133 = v111;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
            v85 = v82;
            v7 = v81;
            v96 = v84;
            v112 = 0;
            error = 0;
            *errorCopy8 = [v80 initWithDomain:v85 code:2 userInfo:?];
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

      v46 = [dictionaryCopy objectForKeyedSubscript:@"isDiscretionary"];
      v35 = v122;
      error = errorCopy7;
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
          if (!error)
          {
            v111 = 0;
            goto LABEL_63;
          }

          v86 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy9 = error;
          v88 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDiscretionary"];
          v131 = v49;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          v89 = [v86 initWithDomain:v88 code:2 userInfo:v48];
          v111 = 0;
          error = 0;
          *errorCopy9 = v89;
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

      v48 = [dictionaryCopy objectForKeyedSubscript:@"IsUserPriority"];
      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v49 = 0;
            goto LABEL_62;
          }

          errorCopy10 = error;
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"IsUserPriority"];
          v129 = v51;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v92 = [v90 initWithDomain:v91 code:2 userInfo:v50];
          v49 = 0;
          error = 0;
          *errorCopy10 = v92;
          goto LABEL_61;
        }

        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = [dictionaryCopy objectForKeyedSubscript:@"result"];
      if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v110 = objc_alloc(MEMORY[0x1E696ABC0]);
            v98 = *MEMORY[0x1E698F240];
            v126 = *MEMORY[0x1E696A578];
            errorCopy11 = error;
            v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"result"];
            v127 = v94;
            v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
            *errorCopy11 = [v110 initWithDomain:v98 code:2 userInfo:v95];

            v51 = 0;
            error = 0;
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
      error = [(BMMADownloadResultEvent *)self initWithAssetMetaData:v99 cellularAccessRequest:v114 cellularAccessResponse:v122 constrainedNetworkAccessRequest:v123 constrainedNetworkAccessResponse:v121 expensiveNetworkAccessRequest:v119 expensiveNetworkAccessResponse:v117 isMAAutoAsset:v112 isDiscretionary:v111 IsUserPriority:v49 result:v51];
      self = error;
LABEL_61:

      goto LABEL_62;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = v15;
      goto LABEL_16;
    }

    if (error)
    {
      v60 = v9;
      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = v7;
      v63 = *MEMORY[0x1E698F240];
      v138 = *MEMORY[0x1E696A578];
      errorCopy12 = error;
      v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"constrainedNetworkAccessResponse"];
      v139 = v119;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v64 = v61;
      v9 = v60;
      v65 = v63;
      v7 = v62;
      v121 = 0;
      error = 0;
      *errorCopy12 = [v64 initWithDomain:v65 code:2 userInfo:v101];
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

  if (error)
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
    errorCopy13 = error;
    error = 0;
    *errorCopy13 = v29;
LABEL_72:
  }

  v52 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMADownloadResultEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_assetMetaData)
  {
    PBDataWriterPlaceMark();
    [(BMMAAssetMetadata *)self->_assetMetaData writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v79.receiver = self;
  v79.super_class = BMMADownloadResultEvent;
  v5 = [(BMEventBase *)&v79 init];
  if (!v5)
  {
    goto LABEL_141;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v80[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
                v60 = [fromCopy position] + 1;
                if (v60 >= [fromCopy position] && (v61 = objc_msgSend(fromCopy, "position") + 1, v61 <= objc_msgSend(fromCopy, "length")))
                {
                  data2 = [fromCopy data];
                  [data2 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v22 = (v59 != 0) & ~[fromCopy hasError];
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
                v42 = [fromCopy position] + 1;
                if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
                {
                  data3 = [fromCopy data];
                  [data3 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v22 = (v41 != 0) & ~[fromCopy hasError];
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
                v26 = [fromCopy position] + 1;
                if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v22 = (v25 != 0) & ~[fromCopy hasError];
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
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v22 = (v33 != 0) & ~[fromCopy hasError];
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

        v37 = [[BMMAAssetMetadata alloc] initByReadFrom:fromCopy];
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
                v66 = [fromCopy position] + 1;
                if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
                {
                  data6 = [fromCopy data];
                  [data6 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v22 = (v65 != 0) & ~[fromCopy hasError];
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
                v48 = [fromCopy position] + 1;
                if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
                {
                  data7 = [fromCopy data];
                  [data7 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v22 = (v47 != 0) & ~[fromCopy hasError];
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
                v19 = [fromCopy position] + 1;
                if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
                {
                  data8 = [fromCopy data];
                  [data8 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v22 = (v18 != 0) & ~[fromCopy hasError];
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
            v72 = [fromCopy position] + 1;
            if (v72 >= [fromCopy position] && (v73 = objc_msgSend(fromCopy, "position") + 1, v73 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v22 = (v71 != 0) & ~[fromCopy hasError];
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
            v54 = [fromCopy position] + 1;
            if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v22 = (v53 != 0) & ~[fromCopy hasError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  assetMetaData = [(BMMADownloadResultEvent *)self assetMetaData];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent cellularAccessRequest](self, "cellularAccessRequest")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent cellularAccessResponse](self, "cellularAccessResponse")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent constrainedNetworkAccessRequest](self, "constrainedNetworkAccessRequest")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent constrainedNetworkAccessResponse](self, "constrainedNetworkAccessResponse")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent expensiveNetworkAccessRequest](self, "expensiveNetworkAccessRequest")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent expensiveNetworkAccessResponse](self, "expensiveNetworkAccessResponse")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent isMAAutoAsset](self, "isMAAutoAsset")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent isDiscretionary](self, "isDiscretionary")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMADownloadResultEvent IsUserPriority](self, "IsUserPriority")}];
  result = [(BMMADownloadResultEvent *)self result];
  v16 = [v15 initWithFormat:@"BMMADownloadResultEvent with assetMetaData: %@, cellularAccessRequest: %@, cellularAccessResponse: %@, constrainedNetworkAccessRequest: %@, constrainedNetworkAccessResponse: %@, expensiveNetworkAccessRequest: %@, expensiveNetworkAccessResponse: %@, isMAAutoAsset: %@, isDiscretionary: %@, IsUserPriority: %@, result: %@", assetMetaData, v3, v13, v4, v5, v6, v7, v8, v9, v10, result];

  return v16;
}

- (BMMADownloadResultEvent)initWithAssetMetaData:(id)data cellularAccessRequest:(id)request cellularAccessResponse:(id)response constrainedNetworkAccessRequest:(id)accessRequest constrainedNetworkAccessResponse:(id)accessResponse expensiveNetworkAccessRequest:(id)networkAccessRequest expensiveNetworkAccessResponse:(id)networkAccessResponse isMAAutoAsset:(id)self0 isDiscretionary:(id)self1 IsUserPriority:(id)self2 result:(id)self3
{
  dataCopy = data;
  requestCopy = request;
  responseCopy = response;
  accessRequestCopy = accessRequest;
  accessResponseCopy = accessResponse;
  networkAccessRequestCopy = networkAccessRequest;
  networkAccessResponseCopy = networkAccessResponse;
  assetCopy = asset;
  discretionaryCopy = discretionary;
  priorityCopy = priority;
  resultCopy = result;
  v33.receiver = self;
  v33.super_class = BMMADownloadResultEvent;
  v27 = [(BMEventBase *)&v33 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_assetMetaData, data);
    if (requestCopy)
    {
      v27->_hasCellularAccessRequest = 1;
      v27->_cellularAccessRequest = [requestCopy BOOLValue];
    }

    else
    {
      v27->_hasCellularAccessRequest = 0;
      v27->_cellularAccessRequest = 0;
    }

    if (responseCopy)
    {
      v27->_hasCellularAccessResponse = 1;
      v27->_cellularAccessResponse = [responseCopy BOOLValue];
    }

    else
    {
      v27->_hasCellularAccessResponse = 0;
      v27->_cellularAccessResponse = 0;
    }

    if (accessRequestCopy)
    {
      v27->_hasConstrainedNetworkAccessRequest = 1;
      v27->_constrainedNetworkAccessRequest = [accessRequestCopy BOOLValue];
    }

    else
    {
      v27->_hasConstrainedNetworkAccessRequest = 0;
      v27->_constrainedNetworkAccessRequest = 0;
    }

    if (accessResponseCopy)
    {
      v27->_hasConstrainedNetworkAccessResponse = 1;
      v27->_constrainedNetworkAccessResponse = [accessResponseCopy BOOLValue];
    }

    else
    {
      v27->_hasConstrainedNetworkAccessResponse = 0;
      v27->_constrainedNetworkAccessResponse = 0;
    }

    if (networkAccessRequestCopy)
    {
      v27->_hasExpensiveNetworkAccessRequest = 1;
      v27->_expensiveNetworkAccessRequest = [networkAccessRequestCopy BOOLValue];
    }

    else
    {
      v27->_hasExpensiveNetworkAccessRequest = 0;
      v27->_expensiveNetworkAccessRequest = 0;
    }

    if (networkAccessResponseCopy)
    {
      v27->_hasExpensiveNetworkAccessResponse = 1;
      v27->_expensiveNetworkAccessResponse = [networkAccessResponseCopy BOOLValue];
    }

    else
    {
      v27->_hasExpensiveNetworkAccessResponse = 0;
      v27->_expensiveNetworkAccessResponse = 0;
    }

    if (assetCopy)
    {
      v27->_hasIsMAAutoAsset = 1;
      v27->_isMAAutoAsset = [assetCopy BOOLValue];
    }

    else
    {
      v27->_hasIsMAAutoAsset = 0;
      v27->_isMAAutoAsset = 0;
    }

    if (discretionaryCopy)
    {
      v27->_hasIsDiscretionary = 1;
      v27->_isDiscretionary = [discretionaryCopy BOOLValue];
    }

    else
    {
      v27->_hasIsDiscretionary = 0;
      v27->_isDiscretionary = 0;
    }

    if (priorityCopy)
    {
      v27->_hasIsUserPriority = 1;
      v27->_IsUserPriority = [priorityCopy BOOLValue];
    }

    else
    {
      v27->_hasIsUserPriority = 0;
      v27->_IsUserPriority = 0;
    }

    objc_storeStrong(&v27->_result, result);
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

+ (BMMADownloadResultEvent)eventWithData:(id)data dataVersion:(unsigned int)version
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