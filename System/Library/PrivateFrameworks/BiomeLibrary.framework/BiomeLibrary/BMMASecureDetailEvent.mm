@interface BMMASecureDetailEvent
+ (BMMASecureDetailEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)columns;
+ (id)protoFields;
- (BMMASecureDetailEvent)initWithAssetMetaData:(id)a3 clientName:(id)a4 fromLocation:(id)a5 graftingFailureReason:(id)a6 graftingResult:(id)a7 mapExclaveFailureReason:(id)a8 mapExclaveFailureResult:(id)a9 mountingFailureReason:(id)a10 mountingFailureResult:(id)a11 maSecureOperationType:(int)a12 personalizeFailureReason:(id)a13 personalizeFailureResult:(id)a14 secureReason:(id)a15 result:(id)a16;
- (BMMASecureDetailEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMASecureDetailEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMASecureDetailEvent *)self assetMetaData];
    v7 = [v5 assetMetaData];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMASecureDetailEvent *)self assetMetaData];
      v10 = [v5 assetMetaData];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasClientName](self, "hasClientName") || [v5 hasClientName])
    {
      if (![(BMMASecureDetailEvent *)self hasClientName])
      {
        goto LABEL_56;
      }

      if (![v5 hasClientName])
      {
        goto LABEL_56;
      }

      v13 = [(BMMASecureDetailEvent *)self clientName];
      if (v13 != [v5 clientName])
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasFromLocation](self, "hasFromLocation") || [v5 hasFromLocation])
    {
      if (![(BMMASecureDetailEvent *)self hasFromLocation])
      {
        goto LABEL_56;
      }

      if (![v5 hasFromLocation])
      {
        goto LABEL_56;
      }

      v14 = [(BMMASecureDetailEvent *)self fromLocation];
      if (v14 != [v5 fromLocation])
      {
        goto LABEL_56;
      }
    }

    v15 = [(BMMASecureDetailEvent *)self graftingFailureReason];
    v16 = [v5 graftingFailureReason];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMMASecureDetailEvent *)self graftingFailureReason];
      v19 = [v5 graftingFailureReason];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasGraftingResult](self, "hasGraftingResult") || [v5 hasGraftingResult])
    {
      if (![(BMMASecureDetailEvent *)self hasGraftingResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasGraftingResult])
      {
        goto LABEL_56;
      }

      v21 = [(BMMASecureDetailEvent *)self graftingResult];
      if (v21 != [v5 graftingResult])
      {
        goto LABEL_56;
      }
    }

    v22 = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
    v23 = [v5 mapExclaveFailureReason];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
      v26 = [v5 mapExclaveFailureReason];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasMapExclaveFailureResult](self, "hasMapExclaveFailureResult") || [v5 hasMapExclaveFailureResult])
    {
      if (![(BMMASecureDetailEvent *)self hasMapExclaveFailureResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasMapExclaveFailureResult])
      {
        goto LABEL_56;
      }

      v28 = [(BMMASecureDetailEvent *)self mapExclaveFailureResult];
      if (v28 != [v5 mapExclaveFailureResult])
      {
        goto LABEL_56;
      }
    }

    v29 = [(BMMASecureDetailEvent *)self mountingFailureReason];
    v30 = [v5 mountingFailureReason];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMMASecureDetailEvent *)self mountingFailureReason];
      v33 = [v5 mountingFailureReason];
      v34 = [v32 isEqual:v33];

      if (!v34)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasMountingFailureResult](self, "hasMountingFailureResult") || [v5 hasMountingFailureResult])
    {
      if (![(BMMASecureDetailEvent *)self hasMountingFailureResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasMountingFailureResult])
      {
        goto LABEL_56;
      }

      v35 = [(BMMASecureDetailEvent *)self mountingFailureResult];
      if (v35 != [v5 mountingFailureResult])
      {
        goto LABEL_56;
      }
    }

    v36 = [(BMMASecureDetailEvent *)self maSecureOperationType];
    if (v36 != [v5 maSecureOperationType])
    {
      goto LABEL_56;
    }

    v37 = [(BMMASecureDetailEvent *)self personalizeFailureReason];
    v38 = [v5 personalizeFailureReason];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMMASecureDetailEvent *)self personalizeFailureReason];
      v41 = [v5 personalizeFailureReason];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasPersonalizeFailureResult](self, "hasPersonalizeFailureResult") || [v5 hasPersonalizeFailureResult])
    {
      if (![(BMMASecureDetailEvent *)self hasPersonalizeFailureResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasPersonalizeFailureResult])
      {
        goto LABEL_56;
      }

      v43 = [(BMMASecureDetailEvent *)self personalizeFailureResult];
      if (v43 != [v5 personalizeFailureResult])
      {
        goto LABEL_56;
      }
    }

    v44 = [(BMMASecureDetailEvent *)self secureReason];
    v45 = [v5 secureReason];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [(BMMASecureDetailEvent *)self secureReason];
      v48 = [v5 secureReason];
      v49 = [v47 isEqual:v48];

      if (!v49)
      {
LABEL_56:
        v12 = 0;
LABEL_57:

        goto LABEL_58;
      }
    }

    v51 = [(BMMASecureDetailEvent *)self result];
    v52 = [v5 result];
    if (v51 == v52)
    {
      v12 = 1;
    }

    else
    {
      v53 = [(BMMASecureDetailEvent *)self result];
      v54 = [v5 result];
      v12 = [v53 isEqual:v54];
    }

    goto LABEL_57;
  }

  v12 = 0;
LABEL_58:

  return v12;
}

- (id)jsonDictionary
{
  v48[14] = *MEMORY[0x1E69E9840];
  v3 = [(BMMASecureDetailEvent *)self assetMetaData];
  v4 = [v3 jsonDictionary];

  if ([(BMMASecureDetailEvent *)self hasClientName])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent clientName](self, "clientName")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMASecureDetailEvent *)self hasFromLocation])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent fromLocation](self, "fromLocation")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMASecureDetailEvent *)self graftingFailureReason];
  if ([(BMMASecureDetailEvent *)self hasGraftingResult])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent graftingResult](self, "graftingResult")}];
  }

  else
  {
    v8 = 0;
  }

  v46 = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
  if ([(BMMASecureDetailEvent *)self hasMapExclaveFailureResult])
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mapExclaveFailureResult](self, "mapExclaveFailureResult")}];
  }

  else
  {
    v45 = 0;
  }

  v44 = [(BMMASecureDetailEvent *)self mountingFailureReason];
  if ([(BMMASecureDetailEvent *)self hasMountingFailureResult])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mountingFailureResult](self, "mountingFailureResult")}];
  }

  else
  {
    v43 = 0;
  }

  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMASecureDetailEvent maSecureOperationType](self, "maSecureOperationType")}];
  v41 = [(BMMASecureDetailEvent *)self personalizeFailureReason];
  if ([(BMMASecureDetailEvent *)self hasPersonalizeFailureResult])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent personalizeFailureResult](self, "personalizeFailureResult")}];
  }

  else
  {
    v9 = 0;
  }

  v40 = [(BMMASecureDetailEvent *)self secureReason];
  v10 = [(BMMASecureDetailEvent *)self result];
  v47[0] = @"assetMetaData";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v11;
  v48[0] = v11;
  v47[1] = @"clientName";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v12;
  v48[1] = v12;
  v47[2] = @"fromLocation";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v13;
  v48[2] = v13;
  v47[3] = @"graftingFailureReason";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v14;
  v48[3] = v14;
  v47[4] = @"graftingResult";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v15;
  v48[4] = v15;
  v47[5] = @"mapExclaveFailureReason";
  v16 = v46;
  if (!v46)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v39 = v5;
  v48[5] = v16;
  v47[6] = @"mapExclaveFailureResult";
  v17 = v45;
  if (!v45)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v7;
  v48[6] = v17;
  v47[7] = @"mountingFailureReason";
  v18 = v44;
  if (!v44)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v8;
  v48[7] = v18;
  v47[8] = @"mountingFailureResult";
  v19 = v43;
  if (!v43)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v16;
  v48[8] = v19;
  v47[9] = @"maSecureOperationType";
  v20 = v42;
  if (!v42)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v48[9] = v20;
  v47[10] = @"personalizeFailureReason";
  v22 = v41;
  if (!v41)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v48[10] = v22;
  v47[11] = @"personalizeFailureResult";
  v23 = v9;
  if (!v9)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v17;
  v48[11] = v23;
  v47[12] = @"secureReason";
  v24 = v40;
  if (!v40)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v48[12] = v24;
  v47[13] = @"result";
  v25 = v10;
  if (!v10)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v48[13] = v25;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:14];
  if (!v10)
  {
  }

  if (v40)
  {
    if (v9)
    {
      goto LABEL_51;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_51;
    }
  }

LABEL_51:
  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (v46)
  {
    if (v36)
    {
      goto LABEL_63;
    }
  }

  else
  {

    if (v36)
    {
LABEL_63:
      if (v37)
      {
        goto LABEL_64;
      }

      goto LABEL_74;
    }
  }

  if (v37)
  {
LABEL_64:
    if (v38)
    {
      goto LABEL_65;
    }

    goto LABEL_75;
  }

LABEL_74:

  if (v38)
  {
LABEL_65:
    if (v39)
    {
      goto LABEL_66;
    }

LABEL_76:

    if (v21)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

LABEL_75:

  if (!v39)
  {
    goto LABEL_76;
  }

LABEL_66:
  if (v21)
  {
    goto LABEL_67;
  }

LABEL_77:

LABEL_67:
  v26 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMMASecureDetailEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
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
    v119 = 0;
    v7 = [[BMMAAssetMetadata alloc] initWithJSONDictionary:v9 error:&v119];
    v16 = v119;
    if (v16)
    {
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

      v17 = 0;
      goto LABEL_128;
    }

LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"clientName"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v9 = 0;
          v17 = 0;
LABEL_127:

          goto LABEL_128;
        }

        v37 = a4;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientName"];
        v145 = v40;
        v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v41 = [v38 initWithDomain:v39 code:2 userInfo:?];
        v9 = 0;
        v17 = 0;
        *v37 = v41;
        goto LABEL_126;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"fromLocation"];
    v116 = v7;
    v117 = v10;
    if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v112 = a4;
      v114 = 0;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v112 = a4;
      v114 = v11;
LABEL_10:
      v12 = [v5 objectForKeyedSubscript:@"graftingFailureReason"];
      v115 = v12;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        v14 = [v5 objectForKeyedSubscript:@"graftingResult"];
        v111 = v13;
        if (!v14)
        {
          v15 = v6;
          v106 = 0;
          goto LABEL_32;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v6;
          v106 = v14;
          v14 = 0;
LABEL_32:
          v21 = [v5 objectForKeyedSubscript:@"mapExclaveFailureReason"];
          v108 = v21;
          if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v112)
              {
                v109 = 0;
                v17 = 0;
                v40 = v114;
                v52 = v106;
                v6 = v15;
                v13 = v111;
LABEL_123:

                goto LABEL_124;
              }

              v110 = objc_alloc(MEMORY[0x1E696ABC0]);
              v61 = *MEMORY[0x1E698F240];
              v136 = *MEMORY[0x1E696A578];
              v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mapExclaveFailureReason"];
              v137 = v107;
              v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
              v62 = [v110 initWithDomain:v61 code:2 userInfo:v113];
              v109 = 0;
              v17 = 0;
              *v112 = v62;
              v40 = v114;
              v52 = v106;
              v6 = v15;
              goto LABEL_121;
            }

            v109 = v22;
          }

          else
          {
            v109 = 0;
          }

          [v5 objectForKeyedSubscript:@"mapExclaveFailureResult"];
          v113 = v6 = v15;
          if (v113 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v112)
              {
                v107 = 0;
                v17 = 0;
                v40 = v114;
                v52 = v106;
LABEL_121:

                goto LABEL_122;
              }

              v63 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E698F240];
              v134 = *MEMORY[0x1E696A578];
              v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mapExclaveFailureResult"];
              v135 = v104;
              v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
              v66 = v63;
              v12 = v115;
              v103 = v65;
              v67 = [v66 initWithDomain:v64 code:2 userInfo:?];
              v107 = 0;
              v17 = 0;
              *v112 = v67;
              v40 = v114;
              v52 = v106;
LABEL_120:

              goto LABEL_121;
            }

            v107 = v113;
          }

          else
          {
            v107 = 0;
          }

          v23 = [v5 objectForKeyedSubscript:@"mountingFailureReason"];
          v103 = v23;
          if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v112)
              {
                v104 = 0;
                v17 = 0;
                v40 = v114;
                v52 = v106;
                goto LABEL_120;
              }

              v105 = objc_alloc(MEMORY[0x1E696ABC0]);
              v68 = *MEMORY[0x1E698F240];
              v132 = *MEMORY[0x1E696A578];
              v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mountingFailureReason"];
              v133 = v102;
              v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
              v69 = [v105 initWithDomain:v68 code:2 userInfo:?];
              v104 = 0;
              v17 = 0;
              *v112 = v69;
              v40 = v114;
              v52 = v106;
              goto LABEL_119;
            }

            v104 = v24;
          }

          else
          {
            v104 = 0;
          }

          v25 = [v5 objectForKeyedSubscript:@"mountingFailureResult"];
          v101 = v25;
          if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v112)
              {
                v102 = 0;
                v17 = 0;
                v40 = v114;
                v52 = v106;
                goto LABEL_119;
              }

              v70 = objc_alloc(MEMORY[0x1E696ABC0]);
              v71 = *MEMORY[0x1E698F240];
              v130 = *MEMORY[0x1E696A578];
              v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mountingFailureResult"];
              v131 = v100;
              v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
              v73 = v70;
              v12 = v115;
              v97 = v72;
              v74 = [v73 initWithDomain:v71 code:2 userInfo:?];
              v102 = 0;
              v17 = 0;
              *v112 = v74;
              v40 = v114;
              v52 = v106;
LABEL_118:

LABEL_119:
              goto LABEL_120;
            }

            v102 = v26;
          }

          else
          {
            v102 = 0;
          }

          v27 = [v5 objectForKeyedSubscript:@"maSecureOperationType"];
          v97 = v27;
          if (v27 && (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v100 = v28;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v112)
                {
                  v100 = 0;
                  v17 = 0;
                  v40 = v114;
                  v52 = v106;
                  goto LABEL_118;
                }

                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = *MEMORY[0x1E698F240];
                v128 = *MEMORY[0x1E696A578];
                v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"maSecureOperationType"];
                v129 = v98;
                v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                v88 = [v86 initWithDomain:v87 code:2 userInfo:?];
                v100 = 0;
                v17 = 0;
                *v112 = v88;
                goto LABEL_135;
              }

              v100 = [MEMORY[0x1E696AD98] numberWithInt:BMMASecureOperationTypeFromString(v28)];
            }
          }

          else
          {
            v100 = 0;
          }

          v29 = [v5 objectForKeyedSubscript:@"personalizeFailureReason"];
          v94 = v29;
          if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v98 = 0;
LABEL_50:
            v31 = [v5 objectForKeyedSubscript:@"personalizeFailureResult"];
            v93 = v31;
            if (v31 && (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v112)
                {
                  v95 = 0;
                  v17 = 0;
                  v40 = v114;
                  goto LABEL_115;
                }

                v96 = objc_alloc(MEMORY[0x1E696ABC0]);
                v77 = *MEMORY[0x1E698F240];
                v124 = *MEMORY[0x1E696A578];
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"personalizeFailureResult"];
                v125 = v34;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
                v78 = [v96 initWithDomain:v77 code:2 userInfo:v33];
                v95 = 0;
                v17 = 0;
                *v112 = v78;
LABEL_114:

                v40 = v114;
                v12 = v115;
LABEL_115:
                v52 = v106;
                goto LABEL_116;
              }

              v95 = v32;
            }

            else
            {
              v95 = 0;
            }

            v33 = [v5 objectForKeyedSubscript:@"secureReason"];
            if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v112)
                {
                  v34 = 0;
                  v17 = 0;
                  goto LABEL_114;
                }

                v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                v80 = *MEMORY[0x1E698F240];
                v122 = *MEMORY[0x1E696A578];
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"secureReason"];
                v123 = v36;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                v81 = [v79 initWithDomain:v80 code:2 userInfo:v35];
                v34 = 0;
                v17 = 0;
                *v112 = v81;
                goto LABEL_113;
              }

              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v35 = [v5 objectForKeyedSubscript:@"result"];
            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v112)
                {
                  v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v91 = *MEMORY[0x1E698F240];
                  v120 = *MEMORY[0x1E696A578];
                  v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"result"];
                  v121 = v82;
                  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  *v112 = [v92 initWithDomain:v91 code:2 userInfo:v83];
                }

                v36 = 0;
                v17 = 0;
                goto LABEL_113;
              }

              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            LODWORD(v90) = [v100 intValue];
            v17 = [(BMMASecureDetailEvent *)self initWithAssetMetaData:v116 clientName:v9 fromLocation:v114 graftingFailureReason:v111 graftingResult:v14 mapExclaveFailureReason:v109 mapExclaveFailureResult:v107 mountingFailureReason:v104 mountingFailureResult:v102 maSecureOperationType:v90 personalizeFailureReason:v98 personalizeFailureResult:v95 secureReason:v34 result:v36];
            self = v17;
LABEL_113:

            goto LABEL_114;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v98 = v30;
            goto LABEL_50;
          }

          if (v112)
          {
            v99 = objc_alloc(MEMORY[0x1E696ABC0]);
            v75 = *MEMORY[0x1E698F240];
            v126 = *MEMORY[0x1E696A578];
            v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personalizeFailureReason"];
            v127 = v95;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
            v76 = [v99 initWithDomain:v75 code:2 userInfo:?];
            v98 = 0;
            v17 = 0;
            *v112 = v76;
            v40 = v114;
            v52 = v106;
LABEL_116:

LABEL_117:
            goto LABEL_118;
          }

          v98 = 0;
          v17 = 0;
LABEL_135:
          v40 = v114;
          v12 = v115;
          v52 = v106;
          goto LABEL_117;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v6;
          v106 = v14;
          v14 = v14;
          goto LABEL_32;
        }

        if (v112)
        {
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v138 = *MEMORY[0x1E696A578];
          v56 = objc_alloc(MEMORY[0x1E696AEC0]);
          v89 = objc_opt_class();
          v57 = v56;
          v52 = v14;
          v109 = [v57 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v89, @"graftingResult"];
          v139 = v109;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          v59 = v54;
          v12 = v115;
          v108 = v58;
          v60 = [v59 initWithDomain:v55 code:2 userInfo:?];
          v14 = 0;
          v17 = 0;
          *v112 = v60;
          v40 = v114;
LABEL_122:
          v13 = v111;
          goto LABEL_123;
        }

        v17 = 0;
        v40 = v114;
        v52 = v14;
        v14 = 0;
LABEL_124:

        goto LABEL_125;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        goto LABEL_13;
      }

      if (v112)
      {
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"graftingFailureReason"];
        v141 = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v53 = [v49 initWithDomain:v50 code:2 userInfo:v52];
        v17 = 0;
        *v112 = v53;
        v14 = v51;
        v13 = 0;
        v40 = v114;
        goto LABEL_124;
      }

      v13 = 0;
      v17 = 0;
      v40 = v114;
LABEL_125:

      v7 = v116;
      goto LABEL_126;
    }

    if (a4)
    {
      v42 = a4;
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v142 = *MEMORY[0x1E696A578];
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fromLocation"];
      v143 = v45;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
      v47 = v43;
      v12 = v46;
      v48 = [v47 initWithDomain:v44 code:2 userInfo:v46];
      v40 = 0;
      v17 = 0;
      *v42 = v48;
      v13 = v45;
      goto LABEL_125;
    }

    v40 = 0;
    v17 = 0;
LABEL_126:

    goto LABEL_127;
  }

  if (a4)
  {
    v18 = a4;
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v146 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetMetaData"];
    v147[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
    v17 = 0;
    *v18 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_128:

    goto LABEL_129;
  }

  v17 = 0;
LABEL_129:

  v84 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMASecureDetailEvent *)self writeTo:v3];
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

  if (self->_hasClientName)
  {
    clientName = self->_clientName;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFromLocation)
  {
    fromLocation = self->_fromLocation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_graftingFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasGraftingResult)
  {
    graftingResult = self->_graftingResult;
    PBDataWriterWriteBOOLField();
  }

  if (self->_mapExclaveFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMapExclaveFailureResult)
  {
    mapExclaveFailureResult = self->_mapExclaveFailureResult;
    PBDataWriterWriteBOOLField();
  }

  if (self->_mountingFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMountingFailureResult)
  {
    mountingFailureResult = self->_mountingFailureResult;
    PBDataWriterWriteBOOLField();
  }

  maSecureOperationType = self->_maSecureOperationType;
  PBDataWriterWriteUint32Field();
  if (self->_personalizeFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPersonalizeFailureResult)
  {
    personalizeFailureResult = self->_personalizeFailureResult;
    PBDataWriterWriteBOOLField();
  }

  if (self->_secureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_result)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = BMMASecureDetailEvent;
  v5 = [(BMEventBase *)&v68 init];
  if (!v5)
  {
    goto LABEL_114;
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
        LOBYTE(v69[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v69[0] & 0x7F) << v7;
        if ((v69[0] & 0x80) == 0)
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

      switch((v14 >> 3))
      {
        case 1u:
          v69[0] = 0;
          v69[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_113;
          }

          v15 = [[BMMAAssetMetadata alloc] initByReadFrom:v4];
          if (!v15)
          {
            goto LABEL_113;
          }

          assetMetaData = v5->_assetMetaData;
          v5->_assetMetaData = v15;

          PBReaderRecallMark();
          goto LABEL_111;
        case 2u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v5->_hasClientName = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v48 = [v4 position] + 1;
            if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
            {
              v50 = [v4 data];
              [v50 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v47 |= (v69[0] & 0x7F) << v45;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v13 = v46++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
LABEL_105:
              v64 = 16;
              goto LABEL_110;
            }
          }

          v23 = (v47 != 0) & ~[v4 hasError];
          goto LABEL_105;
        case 3u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasFromLocation = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v42 = [v4 position] + 1;
            if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
            {
              v44 = [v4 data];
              [v44 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v41 |= (v69[0] & 0x7F) << v39;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v13 = v40++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_103;
            }
          }

          v23 = (v41 != 0) & ~[v4 hasError];
LABEL_103:
          v64 = 18;
          goto LABEL_110;
        case 4u:
          v30 = PBReaderReadString();
          v31 = 48;
          goto LABEL_82;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasGraftingResult = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v69[0] & 0x7F) << v24;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_97;
            }
          }

          v23 = (v26 != 0) & ~[v4 hasError];
LABEL_97:
          v64 = 20;
          goto LABEL_110;
        case 6u:
          v30 = PBReaderReadString();
          v31 = 56;
          goto LABEL_82;
        case 7u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v5->_hasMapExclaveFailureResult = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v54 = [v4 position] + 1;
            if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
            {
              v56 = [v4 data];
              [v56 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v53 |= (v69[0] & 0x7F) << v51;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v13 = v52++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_107;
            }
          }

          v23 = (v53 != 0) & ~[v4 hasError];
LABEL_107:
          v64 = 22;
          goto LABEL_110;
        case 8u:
          v30 = PBReaderReadString();
          v31 = 64;
          goto LABEL_82;
        case 9u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v5->_hasMountingFailureResult = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v61 = [v4 position] + 1;
            if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 1, v62 <= objc_msgSend(v4, "length")))
            {
              v63 = [v4 data];
              [v63 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v60 |= (v69[0] & 0x7F) << v58;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v13 = v59++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_109;
            }
          }

          v23 = (v60 != 0) & ~[v4 hasError];
LABEL_109:
          v64 = 24;
          goto LABEL_110;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 |= (v69[0] & 0x7F) << v32;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            if (v33++ > 8)
            {
              goto LABEL_100;
            }
          }

          if (([v4 hasError] & 1) != 0 || v34 > 7)
          {
LABEL_100:
            LODWORD(v34) = 0;
          }

          v5->_maSecureOperationType = v34;
          goto LABEL_111;
        case 0xBu:
          v30 = PBReaderReadString();
          v31 = 72;
          goto LABEL_82;
        case 0xCu:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v5->_hasPersonalizeFailureResult = 1;
          break;
        case 0xDu:
          v30 = PBReaderReadString();
          v31 = 80;
          goto LABEL_82;
        case 0xEu:
          v30 = PBReaderReadString();
          v31 = 88;
LABEL_82:
          v57 = *(&v5->super.super.isa + v31);
          *(&v5->super.super.isa + v31) = v30;

          goto LABEL_111;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_111;
      }

      while (1)
      {
        LOBYTE(v69[0]) = 0;
        v20 = [v4 position] + 1;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:v69 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v69[0] & 0x7F) << v17;
        if ((v69[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v13 = v18++ >= 9;
        if (v13)
        {
          LOBYTE(v23) = 0;
          goto LABEL_95;
        }
      }

      v23 = (v19 != 0) & ~[v4 hasError];
LABEL_95:
      v64 = 26;
LABEL_110:
      *(&v5->super.super.isa + v64) = v23;
LABEL_111:
      v65 = [v4 position];
    }

    while (v65 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_113:
    v66 = 0;
  }

  else
  {
LABEL_114:
    v66 = v5;
  }

  return v66;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = [(BMMASecureDetailEvent *)self assetMetaData];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent clientName](self, "clientName")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent fromLocation](self, "fromLocation")}];
  v14 = [(BMMASecureDetailEvent *)self graftingFailureReason];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent graftingResult](self, "graftingResult")}];
  v3 = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mapExclaveFailureResult](self, "mapExclaveFailureResult")}];
  v5 = [(BMMASecureDetailEvent *)self mountingFailureReason];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mountingFailureResult](self, "mountingFailureResult")}];
  v7 = BMMASecureOperationTypeAsString([(BMMASecureDetailEvent *)self maSecureOperationType]);
  v8 = [(BMMASecureDetailEvent *)self personalizeFailureReason];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent personalizeFailureResult](self, "personalizeFailureResult")}];
  v10 = [(BMMASecureDetailEvent *)self secureReason];
  v11 = [(BMMASecureDetailEvent *)self result];
  v16 = [v15 initWithFormat:@"BMMASecureDetailEvent with assetMetaData: %@, clientName: %@, fromLocation: %@, graftingFailureReason: %@, graftingResult: %@, mapExclaveFailureReason: %@, mapExclaveFailureResult: %@, mountingFailureReason: %@, mountingFailureResult: %@, maSecureOperationType: %@, personalizeFailureReason: %@, personalizeFailureResult: %@, secureReason: %@, result: %@", v19, v18, v17, v14, v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v16;
}

- (BMMASecureDetailEvent)initWithAssetMetaData:(id)a3 clientName:(id)a4 fromLocation:(id)a5 graftingFailureReason:(id)a6 graftingResult:(id)a7 mapExclaveFailureReason:(id)a8 mapExclaveFailureResult:(id)a9 mountingFailureReason:(id)a10 mountingFailureResult:(id)a11 maSecureOperationType:(int)a12 personalizeFailureReason:(id)a13 personalizeFailureResult:(id)a14 secureReason:(id)a15 result:(id)a16
{
  v39 = a3;
  v21 = a4;
  v22 = a5;
  v38 = a6;
  v23 = a7;
  v33 = a8;
  v37 = a8;
  v24 = v22;
  v25 = a9;
  v36 = a10;
  v26 = a11;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v35 = a16;
  v40.receiver = self;
  v40.super_class = BMMASecureDetailEvent;
  v30 = [(BMEventBase *)&v40 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_assetMetaData, a3);
    if (v21)
    {
      v30->_hasClientName = 1;
      v30->_clientName = [v21 BOOLValue];
    }

    else
    {
      v30->_hasClientName = 0;
      v30->_clientName = 0;
    }

    if (v24)
    {
      v30->_hasFromLocation = 1;
      v30->_fromLocation = [v24 BOOLValue];
    }

    else
    {
      v30->_hasFromLocation = 0;
      v30->_fromLocation = 0;
    }

    objc_storeStrong(&v30->_graftingFailureReason, a6);
    if (v23)
    {
      v30->_hasGraftingResult = 1;
      v30->_graftingResult = [v23 BOOLValue];
    }

    else
    {
      v30->_hasGraftingResult = 0;
      v30->_graftingResult = 0;
    }

    objc_storeStrong(&v30->_mapExclaveFailureReason, v33);
    if (v25)
    {
      v30->_hasMapExclaveFailureResult = 1;
      v30->_mapExclaveFailureResult = [v25 BOOLValue];
    }

    else
    {
      v30->_hasMapExclaveFailureResult = 0;
      v30->_mapExclaveFailureResult = 0;
    }

    objc_storeStrong(&v30->_mountingFailureReason, a10);
    if (v26)
    {
      v30->_hasMountingFailureResult = 1;
      v30->_mountingFailureResult = [v26 BOOLValue];
    }

    else
    {
      v30->_hasMountingFailureResult = 0;
      v30->_mountingFailureResult = 0;
    }

    v30->_maSecureOperationType = a12;
    objc_storeStrong(&v30->_personalizeFailureReason, a13);
    if (v28)
    {
      v30->_hasPersonalizeFailureResult = 1;
      v30->_personalizeFailureResult = [v28 BOOLValue];
    }

    else
    {
      v30->_hasPersonalizeFailureResult = 0;
      v30->_personalizeFailureResult = 0;
    }

    objc_storeStrong(&v30->_secureReason, a15);
    objc_storeStrong(&v30->_result, a16);
  }

  return v30;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetMetaData" number:1 type:14 subMessageClass:objc_opt_class()];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientName" number:2 type:12 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromLocation" number:3 type:12 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"graftingFailureReason" number:4 type:13 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"graftingResult" number:5 type:12 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mapExclaveFailureReason" number:6 type:13 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mapExclaveFailureResult" number:7 type:12 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mountingFailureReason" number:8 type:13 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mountingFailureResult" number:9 type:12 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maSecureOperationType" number:10 type:4 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizeFailureReason" number:11 type:13 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizeFailureResult" number:12 type:12 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"secureReason" number:13 type:13 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:14 type:13 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetMetaData_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_367];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientName" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromLocation" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"graftingFailureReason" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"graftingResult" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mapExclaveFailureReason" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mapExclaveFailureResult" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mountingFailureReason" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mountingFailureResult" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maSecureOperationType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizeFailureReason" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizeFailureResult" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"secureReason" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v6;
  v19[9] = v14;
  v19[10] = v7;
  v19[11] = v13;
  v19[12] = v8;
  v19[13] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __32__BMMASecureDetailEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 assetMetaData];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (BMMASecureDetailEvent)eventWithData:(id)a3 dataVersion:(unsigned int)a4
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

    v8 = [[BMMASecureDetailEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end