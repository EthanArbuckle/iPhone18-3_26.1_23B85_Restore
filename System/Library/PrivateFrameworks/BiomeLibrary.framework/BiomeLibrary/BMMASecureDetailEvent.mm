@interface BMMASecureDetailEvent
+ (BMMASecureDetailEvent)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)columns;
+ (id)protoFields;
- (BMMASecureDetailEvent)initWithAssetMetaData:(id)data clientName:(id)name fromLocation:(id)location graftingFailureReason:(id)reason graftingResult:(id)result mapExclaveFailureReason:(id)failureReason mapExclaveFailureResult:(id)failureResult mountingFailureReason:(id)self0 mountingFailureResult:(id)self1 maSecureOperationType:(int)self2 personalizeFailureReason:(id)self3 personalizeFailureResult:(id)self4 secureReason:(id)self5 result:(id)self6;
- (BMMASecureDetailEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMASecureDetailEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetMetaData = [(BMMASecureDetailEvent *)self assetMetaData];
    assetMetaData2 = [v5 assetMetaData];
    v8 = assetMetaData2;
    if (assetMetaData == assetMetaData2)
    {
    }

    else
    {
      assetMetaData3 = [(BMMASecureDetailEvent *)self assetMetaData];
      assetMetaData4 = [v5 assetMetaData];
      v11 = [assetMetaData3 isEqual:assetMetaData4];

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

      clientName = [(BMMASecureDetailEvent *)self clientName];
      if (clientName != [v5 clientName])
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

      fromLocation = [(BMMASecureDetailEvent *)self fromLocation];
      if (fromLocation != [v5 fromLocation])
      {
        goto LABEL_56;
      }
    }

    graftingFailureReason = [(BMMASecureDetailEvent *)self graftingFailureReason];
    graftingFailureReason2 = [v5 graftingFailureReason];
    v17 = graftingFailureReason2;
    if (graftingFailureReason == graftingFailureReason2)
    {
    }

    else
    {
      graftingFailureReason3 = [(BMMASecureDetailEvent *)self graftingFailureReason];
      graftingFailureReason4 = [v5 graftingFailureReason];
      v20 = [graftingFailureReason3 isEqual:graftingFailureReason4];

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

      graftingResult = [(BMMASecureDetailEvent *)self graftingResult];
      if (graftingResult != [v5 graftingResult])
      {
        goto LABEL_56;
      }
    }

    mapExclaveFailureReason = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
    mapExclaveFailureReason2 = [v5 mapExclaveFailureReason];
    v24 = mapExclaveFailureReason2;
    if (mapExclaveFailureReason == mapExclaveFailureReason2)
    {
    }

    else
    {
      mapExclaveFailureReason3 = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
      mapExclaveFailureReason4 = [v5 mapExclaveFailureReason];
      v27 = [mapExclaveFailureReason3 isEqual:mapExclaveFailureReason4];

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

      mapExclaveFailureResult = [(BMMASecureDetailEvent *)self mapExclaveFailureResult];
      if (mapExclaveFailureResult != [v5 mapExclaveFailureResult])
      {
        goto LABEL_56;
      }
    }

    mountingFailureReason = [(BMMASecureDetailEvent *)self mountingFailureReason];
    mountingFailureReason2 = [v5 mountingFailureReason];
    v31 = mountingFailureReason2;
    if (mountingFailureReason == mountingFailureReason2)
    {
    }

    else
    {
      mountingFailureReason3 = [(BMMASecureDetailEvent *)self mountingFailureReason];
      mountingFailureReason4 = [v5 mountingFailureReason];
      v34 = [mountingFailureReason3 isEqual:mountingFailureReason4];

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

      mountingFailureResult = [(BMMASecureDetailEvent *)self mountingFailureResult];
      if (mountingFailureResult != [v5 mountingFailureResult])
      {
        goto LABEL_56;
      }
    }

    maSecureOperationType = [(BMMASecureDetailEvent *)self maSecureOperationType];
    if (maSecureOperationType != [v5 maSecureOperationType])
    {
      goto LABEL_56;
    }

    personalizeFailureReason = [(BMMASecureDetailEvent *)self personalizeFailureReason];
    personalizeFailureReason2 = [v5 personalizeFailureReason];
    v39 = personalizeFailureReason2;
    if (personalizeFailureReason == personalizeFailureReason2)
    {
    }

    else
    {
      personalizeFailureReason3 = [(BMMASecureDetailEvent *)self personalizeFailureReason];
      personalizeFailureReason4 = [v5 personalizeFailureReason];
      v42 = [personalizeFailureReason3 isEqual:personalizeFailureReason4];

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

      personalizeFailureResult = [(BMMASecureDetailEvent *)self personalizeFailureResult];
      if (personalizeFailureResult != [v5 personalizeFailureResult])
      {
        goto LABEL_56;
      }
    }

    secureReason = [(BMMASecureDetailEvent *)self secureReason];
    secureReason2 = [v5 secureReason];
    v46 = secureReason2;
    if (secureReason == secureReason2)
    {
    }

    else
    {
      secureReason3 = [(BMMASecureDetailEvent *)self secureReason];
      secureReason4 = [v5 secureReason];
      v49 = [secureReason3 isEqual:secureReason4];

      if (!v49)
      {
LABEL_56:
        v12 = 0;
LABEL_57:

        goto LABEL_58;
      }
    }

    result = [(BMMASecureDetailEvent *)self result];
    result2 = [v5 result];
    if (result == result2)
    {
      v12 = 1;
    }

    else
    {
      result3 = [(BMMASecureDetailEvent *)self result];
      result4 = [v5 result];
      v12 = [result3 isEqual:result4];
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
  assetMetaData = [(BMMASecureDetailEvent *)self assetMetaData];
  jsonDictionary = [assetMetaData jsonDictionary];

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

  graftingFailureReason = [(BMMASecureDetailEvent *)self graftingFailureReason];
  if ([(BMMASecureDetailEvent *)self hasGraftingResult])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent graftingResult](self, "graftingResult")}];
  }

  else
  {
    v8 = 0;
  }

  mapExclaveFailureReason = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
  if ([(BMMASecureDetailEvent *)self hasMapExclaveFailureResult])
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mapExclaveFailureResult](self, "mapExclaveFailureResult")}];
  }

  else
  {
    v45 = 0;
  }

  mountingFailureReason = [(BMMASecureDetailEvent *)self mountingFailureReason];
  if ([(BMMASecureDetailEvent *)self hasMountingFailureResult])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mountingFailureResult](self, "mountingFailureResult")}];
  }

  else
  {
    v43 = 0;
  }

  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMASecureDetailEvent maSecureOperationType](self, "maSecureOperationType")}];
  personalizeFailureReason = [(BMMASecureDetailEvent *)self personalizeFailureReason];
  if ([(BMMASecureDetailEvent *)self hasPersonalizeFailureResult])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent personalizeFailureResult](self, "personalizeFailureResult")}];
  }

  else
  {
    v9 = 0;
  }

  secureReason = [(BMMASecureDetailEvent *)self secureReason];
  result = [(BMMASecureDetailEvent *)self result];
  v47[0] = @"assetMetaData";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v48[0] = null;
  v47[1] = @"clientName";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v48[1] = null2;
  v47[2] = @"fromLocation";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v48[2] = null3;
  v47[3] = @"graftingFailureReason";
  null4 = graftingFailureReason;
  if (!graftingFailureReason)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null4;
  v48[3] = null4;
  v47[4] = @"graftingResult";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null5;
  v48[4] = null5;
  v47[5] = @"mapExclaveFailureReason";
  null6 = mapExclaveFailureReason;
  if (!mapExclaveFailureReason)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v39 = v5;
  v48[5] = null6;
  v47[6] = @"mapExclaveFailureResult";
  null7 = v45;
  if (!v45)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = graftingFailureReason;
  v48[6] = null7;
  v47[7] = @"mountingFailureReason";
  null8 = mountingFailureReason;
  if (!mountingFailureReason)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v8;
  v48[7] = null8;
  v47[8] = @"mountingFailureResult";
  null9 = v43;
  if (!v43)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null6;
  v48[8] = null9;
  v47[9] = @"maSecureOperationType";
  null10 = v42;
  if (!v42)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = jsonDictionary;
  v48[9] = null10;
  v47[10] = @"personalizeFailureReason";
  null11 = personalizeFailureReason;
  if (!personalizeFailureReason)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v48[10] = null11;
  v47[11] = @"personalizeFailureResult";
  null12 = v9;
  if (!v9)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null7;
  v48[11] = null12;
  v47[12] = @"secureReason";
  null13 = secureReason;
  if (!secureReason)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v48[12] = null13;
  v47[13] = @"result";
  null14 = result;
  if (!result)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v48[13] = null14;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:14];
  if (!result)
  {
  }

  if (secureReason)
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
  if (!personalizeFailureReason)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!mountingFailureReason)
  {
  }

  if (!v45)
  {
  }

  if (mapExclaveFailureReason)
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

- (BMMASecureDetailEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
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
    v119 = 0;
    v7 = [[BMMAAssetMetadata alloc] initWithJSONDictionary:v9 error:&v119];
    v16 = v119;
    if (v16)
    {
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      v17 = 0;
      goto LABEL_128;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientName"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          v17 = 0;
LABEL_127:

          goto LABEL_128;
        }

        errorCopy = error;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientName"];
        v145 = v40;
        v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v41 = [v38 initWithDomain:v39 code:2 userInfo:?];
        v9 = 0;
        v17 = 0;
        *errorCopy = v41;
        goto LABEL_126;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fromLocation"];
    v116 = v7;
    v117 = v10;
    if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy3 = error;
      v114 = 0;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      errorCopy3 = error;
      v114 = v11;
LABEL_10:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"graftingFailureReason"];
      v115 = v12;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"graftingResult"];
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
          v21 = [dictionaryCopy objectForKeyedSubscript:@"mapExclaveFailureReason"];
          v108 = v21;
          if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
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
              *errorCopy3 = v62;
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

          [dictionaryCopy objectForKeyedSubscript:@"mapExclaveFailureResult"];
          v113 = v6 = v15;
          if (v113 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
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
              *errorCopy3 = v67;
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

          v23 = [dictionaryCopy objectForKeyedSubscript:@"mountingFailureReason"];
          v103 = v23;
          if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
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
              *errorCopy3 = v69;
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

          v25 = [dictionaryCopy objectForKeyedSubscript:@"mountingFailureResult"];
          v101 = v25;
          if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
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
              *errorCopy3 = v74;
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

          v27 = [dictionaryCopy objectForKeyedSubscript:@"maSecureOperationType"];
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
                if (!errorCopy3)
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
                *errorCopy3 = v88;
                goto LABEL_135;
              }

              v100 = [MEMORY[0x1E696AD98] numberWithInt:BMMASecureOperationTypeFromString(v28)];
            }
          }

          else
          {
            v100 = 0;
          }

          v29 = [dictionaryCopy objectForKeyedSubscript:@"personalizeFailureReason"];
          v94 = v29;
          if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v98 = 0;
LABEL_50:
            v31 = [dictionaryCopy objectForKeyedSubscript:@"personalizeFailureResult"];
            v93 = v31;
            if (v31 && (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy3)
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
                *errorCopy3 = v78;
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

            v33 = [dictionaryCopy objectForKeyedSubscript:@"secureReason"];
            if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy3)
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
                *errorCopy3 = v81;
                goto LABEL_113;
              }

              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v35 = [dictionaryCopy objectForKeyedSubscript:@"result"];
            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy3)
                {
                  v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v91 = *MEMORY[0x1E698F240];
                  v120 = *MEMORY[0x1E696A578];
                  v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"result"];
                  v121 = v82;
                  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  *errorCopy3 = [v92 initWithDomain:v91 code:2 userInfo:v83];
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

          if (errorCopy3)
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
            *errorCopy3 = v76;
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

        if (errorCopy3)
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
          *errorCopy3 = v60;
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

      if (errorCopy3)
      {
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"graftingFailureReason"];
        v141 = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v53 = [v49 initWithDomain:v50 code:2 userInfo:v52];
        v17 = 0;
        *errorCopy3 = v53;
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

    if (error)
    {
      errorCopy4 = error;
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
      *errorCopy4 = v48;
      v13 = v45;
      goto LABEL_125;
    }

    v40 = 0;
    v17 = 0;
LABEL_126:

    goto LABEL_127;
  }

  if (error)
  {
    errorCopy5 = error;
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v146 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetMetaData"];
    v147[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
    v17 = 0;
    *errorCopy5 = [v19 initWithDomain:v20 code:2 userInfo:v9];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v68.receiver = self;
  v68.super_class = BMMASecureDetailEvent;
  v5 = [(BMEventBase *)&v68 init];
  if (!v5)
  {
    goto LABEL_114;
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
        LOBYTE(v69[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v15 = [[BMMAAssetMetadata alloc] initByReadFrom:fromCopy];
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
            v48 = [fromCopy position] + 1;
            if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v47 != 0) & ~[fromCopy hasError];
          goto LABEL_105;
        case 3u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasFromLocation = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v41 != 0) & ~[fromCopy hasError];
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
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v26 != 0) & ~[fromCopy hasError];
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
            v54 = [fromCopy position] + 1;
            if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v53 != 0) & ~[fromCopy hasError];
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
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v60 != 0) & ~[fromCopy hasError];
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
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v34 > 7)
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
        v20 = [fromCopy position] + 1;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_95:
      v64 = 26;
LABEL_110:
      *(&v5->super.super.isa + v64) = v23;
LABEL_111:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  assetMetaData = [(BMMASecureDetailEvent *)self assetMetaData];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent clientName](self, "clientName")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent fromLocation](self, "fromLocation")}];
  graftingFailureReason = [(BMMASecureDetailEvent *)self graftingFailureReason];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent graftingResult](self, "graftingResult")}];
  mapExclaveFailureReason = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mapExclaveFailureResult](self, "mapExclaveFailureResult")}];
  mountingFailureReason = [(BMMASecureDetailEvent *)self mountingFailureReason];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mountingFailureResult](self, "mountingFailureResult")}];
  v7 = BMMASecureOperationTypeAsString([(BMMASecureDetailEvent *)self maSecureOperationType]);
  personalizeFailureReason = [(BMMASecureDetailEvent *)self personalizeFailureReason];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent personalizeFailureResult](self, "personalizeFailureResult")}];
  secureReason = [(BMMASecureDetailEvent *)self secureReason];
  result = [(BMMASecureDetailEvent *)self result];
  v16 = [v15 initWithFormat:@"BMMASecureDetailEvent with assetMetaData: %@, clientName: %@, fromLocation: %@, graftingFailureReason: %@, graftingResult: %@, mapExclaveFailureReason: %@, mapExclaveFailureResult: %@, mountingFailureReason: %@, mountingFailureResult: %@, maSecureOperationType: %@, personalizeFailureReason: %@, personalizeFailureResult: %@, secureReason: %@, result: %@", assetMetaData, v18, v17, graftingFailureReason, v13, mapExclaveFailureReason, v4, mountingFailureReason, v6, v7, personalizeFailureReason, v9, secureReason, result];

  return v16;
}

- (BMMASecureDetailEvent)initWithAssetMetaData:(id)data clientName:(id)name fromLocation:(id)location graftingFailureReason:(id)reason graftingResult:(id)result mapExclaveFailureReason:(id)failureReason mapExclaveFailureResult:(id)failureResult mountingFailureReason:(id)self0 mountingFailureResult:(id)self1 maSecureOperationType:(int)self2 personalizeFailureReason:(id)self3 personalizeFailureResult:(id)self4 secureReason:(id)self5 result:(id)self6
{
  dataCopy = data;
  nameCopy = name;
  locationCopy = location;
  reasonCopy = reason;
  resultCopy = result;
  failureReasonCopy = failureReason;
  failureReasonCopy2 = failureReason;
  v24 = locationCopy;
  failureResultCopy = failureResult;
  mountingFailureReasonCopy = mountingFailureReason;
  mountingFailureResultCopy = mountingFailureResult;
  personalizeFailureReasonCopy = personalizeFailureReason;
  personalizeFailureResultCopy = personalizeFailureResult;
  secureReasonCopy = secureReason;
  v35 = a16;
  v40.receiver = self;
  v40.super_class = BMMASecureDetailEvent;
  v30 = [(BMEventBase *)&v40 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_assetMetaData, data);
    if (nameCopy)
    {
      v30->_hasClientName = 1;
      v30->_clientName = [nameCopy BOOLValue];
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

    objc_storeStrong(&v30->_graftingFailureReason, reason);
    if (resultCopy)
    {
      v30->_hasGraftingResult = 1;
      v30->_graftingResult = [resultCopy BOOLValue];
    }

    else
    {
      v30->_hasGraftingResult = 0;
      v30->_graftingResult = 0;
    }

    objc_storeStrong(&v30->_mapExclaveFailureReason, failureReasonCopy);
    if (failureResultCopy)
    {
      v30->_hasMapExclaveFailureResult = 1;
      v30->_mapExclaveFailureResult = [failureResultCopy BOOLValue];
    }

    else
    {
      v30->_hasMapExclaveFailureResult = 0;
      v30->_mapExclaveFailureResult = 0;
    }

    objc_storeStrong(&v30->_mountingFailureReason, mountingFailureReason);
    if (mountingFailureResultCopy)
    {
      v30->_hasMountingFailureResult = 1;
      v30->_mountingFailureResult = [mountingFailureResultCopy BOOLValue];
    }

    else
    {
      v30->_hasMountingFailureResult = 0;
      v30->_mountingFailureResult = 0;
    }

    v30->_maSecureOperationType = type;
    objc_storeStrong(&v30->_personalizeFailureReason, personalizeFailureReason);
    if (personalizeFailureResultCopy)
    {
      v30->_hasPersonalizeFailureResult = 1;
      v30->_personalizeFailureResult = [personalizeFailureResultCopy BOOLValue];
    }

    else
    {
      v30->_hasPersonalizeFailureResult = 0;
      v30->_personalizeFailureResult = 0;
    }

    objc_storeStrong(&v30->_secureReason, secureReason);
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

+ (BMMASecureDetailEvent)eventWithData:(id)data dataVersion:(unsigned int)version
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