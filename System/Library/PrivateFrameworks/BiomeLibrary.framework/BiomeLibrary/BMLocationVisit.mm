@interface BMLocationVisit
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocationVisit)initWithDetectionDate:(id)date type:(int)type location:(id)location entryDate:(id)entryDate exitDate:(id)exitDate confidence:(id)confidence source:(int)source placeInference:(id)self0;
- (BMLocationVisit)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)detectionDate;
- (NSDate)entryDate;
- (NSDate)exitDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocationVisit

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"detectionDate" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"location_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_414];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entryDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"exitDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"placeInference_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_416];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    detectionDate = [(BMLocationVisit *)self detectionDate];
    detectionDate2 = [v5 detectionDate];
    v8 = detectionDate2;
    if (detectionDate == detectionDate2)
    {
    }

    else
    {
      detectionDate3 = [(BMLocationVisit *)self detectionDate];
      detectionDate4 = [v5 detectionDate];
      v11 = [detectionDate3 isEqual:detectionDate4];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    type = [(BMLocationVisit *)self type];
    if (type == [v5 type])
    {
      location = [(BMLocationVisit *)self location];
      location2 = [v5 location];
      v16 = location2;
      if (location == location2)
      {
      }

      else
      {
        location3 = [(BMLocationVisit *)self location];
        location4 = [v5 location];
        v19 = [location3 isEqual:location4];

        if (!v19)
        {
          goto LABEL_28;
        }
      }

      entryDate = [(BMLocationVisit *)self entryDate];
      entryDate2 = [v5 entryDate];
      v22 = entryDate2;
      if (entryDate == entryDate2)
      {
      }

      else
      {
        entryDate3 = [(BMLocationVisit *)self entryDate];
        entryDate4 = [v5 entryDate];
        v25 = [entryDate3 isEqual:entryDate4];

        if (!v25)
        {
          goto LABEL_28;
        }
      }

      exitDate = [(BMLocationVisit *)self exitDate];
      exitDate2 = [v5 exitDate];
      v28 = exitDate2;
      if (exitDate == exitDate2)
      {
      }

      else
      {
        exitDate3 = [(BMLocationVisit *)self exitDate];
        exitDate4 = [v5 exitDate];
        v31 = [exitDate3 isEqual:exitDate4];

        if (!v31)
        {
          goto LABEL_28;
        }
      }

      if (!-[BMLocationVisit hasConfidence](self, "hasConfidence") && ![v5 hasConfidence] || -[BMLocationVisit hasConfidence](self, "hasConfidence") && objc_msgSend(v5, "hasConfidence") && (-[BMLocationVisit confidence](self, "confidence"), v33 = v32, objc_msgSend(v5, "confidence"), v33 == v34))
      {
        source = [(BMLocationVisit *)self source];
        if (source == [v5 source])
        {
          placeInference = [(BMLocationVisit *)self placeInference];
          placeInference2 = [v5 placeInference];
          if (placeInference == placeInference2)
          {
            v12 = 1;
          }

          else
          {
            placeInference3 = [(BMLocationVisit *)self placeInference];
            placeInference4 = [v5 placeInference];
            v12 = [placeInference3 isEqual:placeInference4];
          }

          goto LABEL_29;
        }
      }
    }

LABEL_28:
    v12 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v12 = 0;
LABEL_30:

  return v12;
}

- (NSDate)exitDate
{
  if (self->_hasRaw_exitDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_exitDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)entryDate
{
  if (self->_hasRaw_entryDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_entryDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)detectionDate
{
  if (self->_hasRaw_detectionDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_detectionDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v42[8] = *MEMORY[0x1E69E9840];
  detectionDate = [(BMLocationVisit *)self detectionDate];
  if (detectionDate)
  {
    v4 = MEMORY[0x1E696AD98];
    detectionDate2 = [(BMLocationVisit *)self detectionDate];
    [detectionDate2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationVisit type](self, "type")}];
  location = [(BMLocationVisit *)self location];
  jsonDictionary = [location jsonDictionary];

  entryDate = [(BMLocationVisit *)self entryDate];
  if (entryDate)
  {
    v11 = MEMORY[0x1E696AD98];
    entryDate2 = [(BMLocationVisit *)self entryDate];
    [entryDate2 timeIntervalSince1970];
    v40 = [v11 numberWithDouble:?];
  }

  else
  {
    v40 = 0;
  }

  exitDate = [(BMLocationVisit *)self exitDate];
  if (exitDate)
  {
    v14 = MEMORY[0x1E696AD98];
    exitDate2 = [(BMLocationVisit *)self exitDate];
    [exitDate2 timeIntervalSince1970];
    v39 = [v14 numberWithDouble:?];
  }

  else
  {
    v39 = 0;
  }

  if (![(BMLocationVisit *)self hasConfidence]|| ([(BMLocationVisit *)self confidence], fabs(v16) == INFINITY))
  {
    v18 = 0;
  }

  else
  {
    [(BMLocationVisit *)self confidence];
    v17 = MEMORY[0x1E696AD98];
    [(BMLocationVisit *)self confidence];
    v18 = [v17 numberWithDouble:?];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationVisit source](self, "source")}];
  placeInference = [(BMLocationVisit *)self placeInference];
  jsonDictionary2 = [placeInference jsonDictionary];

  v41[0] = @"detectionDate";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null;
  v42[0] = null;
  v41[1] = @"type";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null2;
  v42[1] = null2;
  v41[2] = @"location";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v34 = null3;
  v42[2] = null3;
  v41[3] = @"entryDate";
  null4 = v40;
  if (!v40)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v7;
  v42[3] = null4;
  v41[4] = @"exitDate";
  null5 = v39;
  if (!v39)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = jsonDictionary;
  v42[4] = null5;
  v41[5] = @"confidence";
  null6 = v18;
  if (!v18)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v42[5] = null6;
  v41[6] = @"source";
  null7 = v19;
  if (!v19)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v42[6] = null7;
  v41[7] = @"placeInference";
  null8 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v42[7] = null8;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:8];
  if (jsonDictionary2)
  {
    if (v19)
    {
      goto LABEL_32;
    }

LABEL_44:

    if (v18)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

  if (!v19)
  {
    goto LABEL_44;
  }

LABEL_32:
  if (v18)
  {
    goto LABEL_33;
  }

LABEL_45:

LABEL_33:
  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (v27)
  {
    if (v37)
    {
      goto LABEL_39;
    }

LABEL_47:

    if (v38)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  if (!v37)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (v38)
  {
    goto LABEL_40;
  }

LABEL_48:

LABEL_40:
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BMLocationVisit)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v122[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"detectionDate"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v104 = v7;
    v102 = v15;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v16;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v17 = 0;
            v25 = 0;
            goto LABEL_90;
          }

          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = v6;
          v66 = *MEMORY[0x1E698F240];
          v119 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v120 = v23;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
          v68 = v66;
          v6 = v65;
          v17 = 0;
          v25 = 0;
          *error = [v64 initWithDomain:v68 code:2 userInfo:v67];
          v26 = v67;
          goto LABEL_88;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationVisitTypeFromString(v16)];
      }

      v17 = v18;
    }

    else
    {
      v17 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v25 = 0;
LABEL_89:

          v16 = v102;
          goto LABEL_90;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v6;
        v41 = *MEMORY[0x1E698F240];
        v117 = *MEMORY[0x1E696A578];
        v42 = v17;
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v91 = objc_opt_class();
        v44 = v43;
        v17 = v42;
        v45 = [v44 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v91, @"location"];
        v118 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v47 = v41;
        v6 = v40;
        v26 = v45;
        *error = [v39 initWithDomain:v47 code:2 userInfo:v46];

        v25 = 0;
        goto LABEL_87;
      }

      v23 = v19;
      v106 = 0;
      v98 = [[BMLocationVisitLocation alloc] initWithJSONDictionary:v23 error:&v106];
      v24 = v106;
      if (v24)
      {
        if (error)
        {
          v24 = v24;
          *error = v24;
        }

        v25 = 0;
        v26 = v98;
        goto LABEL_88;
      }
    }

    else
    {
      v98 = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"entryDate"];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = MEMORY[0x1E695DF00];
        v28 = v20;
        v29 = v20;
        v30 = [v27 alloc];
        [v29 doubleValue];
        v32 = v31;

        v20 = v28;
        v101 = [v30 initWithTimeIntervalSince1970:v32];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v101 = [v48 dateFromString:v20];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v101 = 0;
              v25 = 0;
              v26 = v98;
              goto LABEL_86;
            }

            v80 = v20;
            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = v17;
            v83 = *MEMORY[0x1E698F240];
            v115 = *MEMORY[0x1E696A578];
            v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"entryDate"];
            v116 = v100;
            v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
            v84 = v81;
            v20 = v80;
            v85 = v83;
            v17 = v82;
            v101 = 0;
            v25 = 0;
            *error = [v84 initWithDomain:v85 code:2 userInfo:v73];
            v26 = v98;
LABEL_85:

LABEL_86:
LABEL_87:
            v23 = v19;
LABEL_88:

            v19 = v23;
            goto LABEL_89;
          }

          v101 = v20;
        }
      }
    }

    else
    {
      v101 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"exitDate"];
    v95 = v20;
    v96 = v21;
    if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v100 = 0;
      goto LABEL_42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = MEMORY[0x1E695DF00];
      v34 = v22;
      v35 = [v33 alloc];
      [v34 doubleValue];
      v37 = v36;

      v38 = [v35 initWithTimeIntervalSince1970:v37];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v100 = [v49 dateFromString:v22];

LABEL_42:
        v50 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
        v94 = v6;
        if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          selfCopy3 = self;
          v99 = 0;
LABEL_45:
          v52 = [dictionaryCopy objectForKeyedSubscript:@"source"];
          v97 = v17;
          if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = v52;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v53 = 0;
                  v25 = 0;
                  v26 = v98;
                  goto LABEL_82;
                }

                v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                v71 = *MEMORY[0x1E698F240];
                v109 = *MEMORY[0x1E696A578];
                v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"source"];
                v110 = v54;
                v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
                v72 = [v70 initWithDomain:v71 code:2 userInfo:v55];
                v53 = 0;
                v25 = 0;
                *error = v72;
                goto LABEL_79;
              }

              v53 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationVisitSourceFromString(v52)];
            }
          }

          else
          {
            v53 = 0;
          }

          v54 = [dictionaryCopy objectForKeyedSubscript:@"placeInference"];
          if (!v54 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v55 = 0;
LABEL_51:
            intValue = [v97 intValue];
            LODWORD(v90) = [v53 intValue];
            v57 = intValue;
            v26 = v98;
            v25 = [(BMLocationVisit *)selfCopy3 initWithDetectionDate:v7 type:v57 location:v98 entryDate:v101 exitDate:v100 confidence:v99 source:v90 placeInference:v55];
            selfCopy3 = v25;
LABEL_80:

LABEL_81:
            v17 = v97;
            goto LABEL_82;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = v54;
            v105 = 0;
            v55 = [[BMPlaceInference alloc] initWithJSONDictionary:v58 error:&v105];
            v59 = v105;
            if (!v59)
            {

              goto LABEL_51;
            }

            if (error)
            {
              v59 = v59;
              *error = v59;
            }

            v25 = 0;
            v54 = v58;
          }

          else
          {
            if (!error)
            {
              v25 = 0;
              v26 = v98;
              goto LABEL_81;
            }

            v93 = objc_alloc(MEMORY[0x1E696ABC0]);
            v92 = *MEMORY[0x1E698F240];
            v107 = *MEMORY[0x1E696A578];
            v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"placeInference"];
            v108 = v55;
            v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
            *error = [v93 initWithDomain:v92 code:2 userInfo:v69];

            v25 = 0;
          }

LABEL_79:
          v26 = v98;
          goto LABEL_80;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          selfCopy3 = self;
          v99 = v50;
          goto LABEL_45;
        }

        if (error)
        {
          selfCopy3 = self;
          v60 = v17;
          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
          v112 = v53;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v63 = v61;
          v17 = v60;
          v99 = 0;
          v25 = 0;
          *error = [v63 initWithDomain:v62 code:2 userInfo:v52];
          v26 = v98;
LABEL_82:

          self = selfCopy3;
          v6 = v94;
LABEL_83:
          v20 = v95;

LABEL_84:
          v73 = v96;
          goto LABEL_85;
        }

        v99 = 0;
        v25 = 0;
LABEL_102:
        v26 = v98;
        goto LABEL_83;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v100 = 0;
          v25 = 0;
          v26 = v98;
          goto LABEL_84;
        }

        v86 = objc_alloc(MEMORY[0x1E696ABC0]);
        v87 = v17;
        v88 = *MEMORY[0x1E698F240];
        v113 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"exitDate"];
        v114 = v99;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v89 = v88;
        v17 = v87;
        v100 = 0;
        v25 = 0;
        *error = [v86 initWithDomain:v89 code:2 userInfo:v50];
        goto LABEL_102;
      }

      v38 = v22;
    }

    v100 = v38;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v7 = [v14 dateFromString:v6];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
    goto LABEL_6;
  }

  if (!error)
  {
    v104 = 0;
    v25 = 0;
    goto LABEL_91;
  }

  v76 = objc_alloc(MEMORY[0x1E696ABC0]);
  v77 = v6;
  v78 = *MEMORY[0x1E698F240];
  v121 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"detectionDate"];
  v122[0] = v17;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
  v79 = v78;
  v6 = v77;
  v104 = 0;
  v25 = 0;
  *error = [v76 initWithDomain:v79 code:2 userInfo:v16];
LABEL_90:

LABEL_91:
  v74 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationVisit *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_detectionDate)
  {
    raw_detectionDate = self->_raw_detectionDate;
    PBDataWriterWriteDoubleField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_location)
  {
    PBDataWriterPlaceMark();
    [(BMLocationVisitLocation *)self->_location writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasRaw_entryDate)
  {
    raw_entryDate = self->_raw_entryDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_exitDate)
  {
    raw_exitDate = self->_raw_exitDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }

  source = self->_source;
  PBDataWriterWriteUint32Field();
  if (self->_placeInference)
  {
    PBDataWriterPlaceMark();
    [(BMPlaceInference *)self->_placeInference writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMLocationVisit;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_89;
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
        LOBYTE(v50) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v50 & 0x7F) << v7;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 <= 6)
        {
          if (v15 == 5)
          {
            v5->_hasRaw_exitDate = 1;
            v50 = 0;
            v34 = [fromCopy position] + 8;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 8, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 = v50;
            v42 = 56;
          }

          else
          {
            if (v15 != 6)
            {
              goto LABEL_66;
            }

            v5->_hasConfidence = 1;
            v50 = 0;
            v23 = [fromCopy position] + 8;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 = v50;
            v42 = 88;
          }

          goto LABEL_85;
        }

        if (v15 != 8)
        {
          if (v15 != 7)
          {
LABEL_66:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_86;
          }

          v27 = 0;
          v28 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v50 & 0x7F) << v27;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v22 = v28++ > 8;
            if (v22)
            {
              goto LABEL_74;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
          {
LABEL_74:
            LODWORD(v18) = 0;
          }

          v39 = 76;
LABEL_76:
          *(&v5->super.super.isa + v39) = v18;
          goto LABEL_86;
        }

        v50 = 0;
        v51 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_88;
        }

        v36 = [[BMPlaceInference alloc] initByReadFrom:fromCopy];
        if (!v36)
        {
          goto LABEL_88;
        }

        v37 = 96;
      }

      else
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v5->_hasRaw_detectionDate = 1;
            v50 = 0;
            v32 = [fromCopy position] + 8;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 = v50;
            v42 = 24;
LABEL_85:
            *(&v5->super.super.isa + v42) = v41;
            goto LABEL_86;
          }

          if (v15 != 2)
          {
            goto LABEL_66;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v50 & 0x7F) << v16;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_70;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
          {
LABEL_70:
            LODWORD(v18) = 0;
          }

          v39 = 72;
          goto LABEL_76;
        }

        if (v15 != 3)
        {
          if (v15 != 4)
          {
            goto LABEL_66;
          }

          v5->_hasRaw_entryDate = 1;
          v50 = 0;
          v25 = [fromCopy position] + 8;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 = v50;
          v42 = 40;
          goto LABEL_85;
        }

        v50 = 0;
        v51 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_88;
        }

        v36 = [[BMLocationVisitLocation alloc] initByReadFrom:fromCopy];
        if (!v36)
        {
          goto LABEL_88;
        }

        v37 = 80;
      }

      v38 = *(&v5->super.super.isa + v37);
      *(&v5->super.super.isa + v37) = v36;

      PBReaderRecallMark();
LABEL_86:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_88:
    v47 = 0;
  }

  else
  {
LABEL_89:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  detectionDate = [(BMLocationVisit *)self detectionDate];
  v5 = BMLocationVisitTypeAsString([(BMLocationVisit *)self type]);
  location = [(BMLocationVisit *)self location];
  entryDate = [(BMLocationVisit *)self entryDate];
  exitDate = [(BMLocationVisit *)self exitDate];
  v9 = MEMORY[0x1E696AD98];
  [(BMLocationVisit *)self confidence];
  v10 = [v9 numberWithDouble:?];
  v11 = BMLocationVisitSourceAsString([(BMLocationVisit *)self source]);
  placeInference = [(BMLocationVisit *)self placeInference];
  v13 = [v3 initWithFormat:@"BMLocationVisit with detectionDate: %@, type: %@, location: %@, entryDate: %@, exitDate: %@, confidence: %@, source: %@, placeInference: %@", detectionDate, v5, location, entryDate, exitDate, v10, v11, placeInference];

  return v13;
}

- (BMLocationVisit)initWithDetectionDate:(id)date type:(int)type location:(id)location entryDate:(id)entryDate exitDate:(id)exitDate confidence:(id)confidence source:(int)source placeInference:(id)self0
{
  dateCopy = date;
  locationCopy = location;
  entryDateCopy = entryDate;
  exitDateCopy = exitDate;
  confidenceCopy = confidence;
  inferenceCopy = inference;
  v28.receiver = self;
  v28.super_class = BMLocationVisit;
  v22 = [(BMEventBase *)&v28 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (dateCopy)
    {
      v22->_hasRaw_detectionDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_detectionDate = 0;
      v23 = -1.0;
    }

    v22->_raw_detectionDate = v23;
    v22->_type = type;
    objc_storeStrong(&v22->_location, location);
    if (entryDateCopy)
    {
      v22->_hasRaw_entryDate = 1;
      [entryDateCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_entryDate = 0;
      v24 = -1.0;
    }

    v22->_raw_entryDate = v24;
    if (exitDateCopy)
    {
      v22->_hasRaw_exitDate = 1;
      [exitDateCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_exitDate = 0;
      v25 = -1.0;
    }

    v22->_raw_exitDate = v25;
    if (confidenceCopy)
    {
      v22->_hasConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v22->_hasConfidence = 0;
      v26 = -1.0;
    }

    v22->_confidence = v26;
    v22->_source = source;
    objc_storeStrong(&v22->_placeInference, inference);
  }

  return v22;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"detectionDate" number:1 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:4 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"location" number:3 type:14 subMessageClass:objc_opt_class()];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entryDate" number:4 type:0 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"exitDate" number:5 type:0 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placeInference" number:8 type:14 subMessageClass:objc_opt_class()];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __26__BMLocationVisit_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 placeInference];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __26__BMLocationVisit_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 location];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMLocationVisit alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end