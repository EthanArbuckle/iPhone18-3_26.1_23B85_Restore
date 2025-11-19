@interface BMAppleIDChildSetup
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppleIDChildSetup)initWithIsNewChildAccount:(id)a3 startDate:(id)a4 endDate:(id)a5 completedSetup:(id)a6 lastViewedScreen:(int)a7 appUsage:(id)a8 askToBuy:(id)a9 commSafety:(id)a10 screenDistance:(id)a11 age:(id)a12 flowType:(int)a13;
- (BMAppleIDChildSetup)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppleIDChildSetup

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNewChildAccount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completedSetup" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastViewedScreen" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appUsage" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"askToBuy" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"commSafety" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"screenDistance" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"age" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowType" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMAppleIDChildSetup hasIsNewChildAccount](self, "hasIsNewChildAccount") || [v5 hasIsNewChildAccount])
    {
      if (![(BMAppleIDChildSetup *)self hasIsNewChildAccount])
      {
        goto LABEL_48;
      }

      if (![v5 hasIsNewChildAccount])
      {
        goto LABEL_48;
      }

      v6 = [(BMAppleIDChildSetup *)self isNewChildAccount];
      if (v6 != [v5 isNewChildAccount])
      {
        goto LABEL_48;
      }
    }

    v7 = [(BMAppleIDChildSetup *)self startDate];
    v8 = [v5 startDate];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMAppleIDChildSetup *)self startDate];
      v11 = [v5 startDate];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_48;
      }
    }

    v14 = [(BMAppleIDChildSetup *)self endDate];
    v15 = [v5 endDate];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMAppleIDChildSetup *)self endDate];
      v18 = [v5 endDate];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_48;
      }
    }

    if (!-[BMAppleIDChildSetup hasCompletedSetup](self, "hasCompletedSetup") && ![v5 hasCompletedSetup] || -[BMAppleIDChildSetup hasCompletedSetup](self, "hasCompletedSetup") && objc_msgSend(v5, "hasCompletedSetup") && (v20 = -[BMAppleIDChildSetup completedSetup](self, "completedSetup"), v20 == objc_msgSend(v5, "completedSetup")))
    {
      v21 = [(BMAppleIDChildSetup *)self lastViewedScreen];
      if (v21 == [v5 lastViewedScreen])
      {
        if (!-[BMAppleIDChildSetup hasAppUsage](self, "hasAppUsage") && ![v5 hasAppUsage] || -[BMAppleIDChildSetup hasAppUsage](self, "hasAppUsage") && objc_msgSend(v5, "hasAppUsage") && (v22 = -[BMAppleIDChildSetup appUsage](self, "appUsage"), v22 == objc_msgSend(v5, "appUsage")))
        {
          if (!-[BMAppleIDChildSetup hasAskToBuy](self, "hasAskToBuy") && ![v5 hasAskToBuy] || -[BMAppleIDChildSetup hasAskToBuy](self, "hasAskToBuy") && objc_msgSend(v5, "hasAskToBuy") && (v23 = -[BMAppleIDChildSetup askToBuy](self, "askToBuy"), v23 == objc_msgSend(v5, "askToBuy")))
          {
            if (!-[BMAppleIDChildSetup hasCommSafety](self, "hasCommSafety") && ![v5 hasCommSafety] || -[BMAppleIDChildSetup hasCommSafety](self, "hasCommSafety") && objc_msgSend(v5, "hasCommSafety") && (v24 = -[BMAppleIDChildSetup commSafety](self, "commSafety"), v24 == objc_msgSend(v5, "commSafety")))
            {
              if (!-[BMAppleIDChildSetup hasScreenDistance](self, "hasScreenDistance") && ![v5 hasScreenDistance] || -[BMAppleIDChildSetup hasScreenDistance](self, "hasScreenDistance") && objc_msgSend(v5, "hasScreenDistance") && (v25 = -[BMAppleIDChildSetup screenDistance](self, "screenDistance"), v25 == objc_msgSend(v5, "screenDistance")))
              {
                if (!-[BMAppleIDChildSetup hasAge](self, "hasAge") && ![v5 hasAge] || -[BMAppleIDChildSetup hasAge](self, "hasAge") && objc_msgSend(v5, "hasAge") && (v26 = -[BMAppleIDChildSetup age](self, "age"), v26 == objc_msgSend(v5, "age")))
                {
                  v27 = [(BMAppleIDChildSetup *)self flowType];
                  v13 = v27 == [v5 flowType];
LABEL_49:

                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }

LABEL_48:
    v13 = 0;
    goto LABEL_49;
  }

  v13 = 0;
LABEL_50:

  return v13;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
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
  v44[11] = *MEMORY[0x1E69E9840];
  if ([(BMAppleIDChildSetup *)self hasIsNewChildAccount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup isNewChildAccount](self, "isNewChildAccount")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMAppleIDChildSetup *)self startDate];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMAppleIDChildSetup *)self startDate];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMAppleIDChildSetup *)self endDate];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMAppleIDChildSetup *)self endDate];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasCompletedSetup])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup completedSetup](self, "completedSetup")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIDChildSetup lastViewedScreen](self, "lastViewedScreen")}];
  if ([(BMAppleIDChildSetup *)self hasAppUsage])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup appUsage](self, "appUsage")}];
  }

  else
  {
    v42 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasAskToBuy])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup askToBuy](self, "askToBuy")}];
  }

  else
  {
    v41 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasCommSafety])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup commSafety](self, "commSafety")}];
  }

  else
  {
    v40 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasScreenDistance])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup screenDistance](self, "screenDistance")}];
  }

  else
  {
    v39 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasAge])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppleIDChildSetup age](self, "age")}];
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIDChildSetup flowType](self, "flowType")}];
  v43[0] = @"isNewChildAccount";
  v16 = v3;
  if (!v3)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v16;
  v44[0] = v16;
  v43[1] = @"startDate";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v17;
  v44[1] = v17;
  v43[2] = @"endDate";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v18;
  v44[2] = v18;
  v43[3] = @"completedSetup";
  v19 = v12;
  if (!v12)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v3;
  v31 = v19;
  v44[3] = v19;
  v43[4] = @"lastViewedScreen";
  v20 = v13;
  if (!v13)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v7;
  v30 = v20;
  v44[4] = v20;
  v43[5] = @"appUsage";
  v21 = v42;
  if (!v42)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v11;
  v44[5] = v21;
  v43[6] = @"askToBuy";
  v22 = v41;
  if (!v41)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v44[6] = v22;
  v43[7] = @"commSafety";
  v23 = v40;
  if (!v40)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v13;
  v44[7] = v23;
  v43[8] = @"screenDistance";
  v25 = v39;
  if (!v39)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v44[8] = v25;
  v43[9] = @"age";
  v26 = v14;
  if (!v14)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v44[9] = v26;
  v43[10] = @"flowType";
  v27 = v15;
  if (!v15)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v44[10] = v27;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:11];
  if (v15)
  {
    if (v14)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_52;
    }
  }

LABEL_52:
  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v24)
  {
  }

  if (v12)
  {
    if (v36)
    {
      goto LABEL_64;
    }
  }

  else
  {

    if (v36)
    {
LABEL_64:
      if (v37)
      {
        goto LABEL_65;
      }

LABEL_73:

      if (v38)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }
  }

  if (!v37)
  {
    goto LABEL_73;
  }

LABEL_65:
  if (v38)
  {
    goto LABEL_66;
  }

LABEL_74:

LABEL_66:
  v28 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMAppleIDChildSetup)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v147[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"isNewChildAccount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"startDate"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = MEMORY[0x1E695DF00];
        v22 = v9;
        v23 = [v21 alloc];
        [v22 doubleValue];
        v25 = v24;

        v10 = [v23 initWithTimeIntervalSince1970:v25];
      }

      else
      {
        v45 = a4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v10 = [v46 dateFromString:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v10 = 0;
              goto LABEL_98;
            }

            v89 = objc_alloc(MEMORY[0x1E696ABC0]);
            v90 = *MEMORY[0x1E698F240];
            v144 = *MEMORY[0x1E696A578];
            v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
            v145 = v125;
            v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
            v91 = [v89 initWithDomain:v90 code:2 userInfo:?];
            v10 = 0;
            v45 = 0;
            *a4 = v91;
            goto LABEL_97;
          }

          v10 = v9;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"endDate"];
    v123 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = MEMORY[0x1E695DF00];
        v27 = v12;
        v28 = [v26 alloc];
        [v27 doubleValue];
        v30 = v29;

        v125 = [v28 initWithTimeIntervalSince1970:v30];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v125 = [v47 dateFromString:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v125 = 0;
              v45 = 0;
              goto LABEL_97;
            }

            v92 = objc_alloc(MEMORY[0x1E696ABC0]);
            v118 = v10;
            v93 = *MEMORY[0x1E698F240];
            v142 = *MEMORY[0x1E696A578];
            v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
            v143 = v55;
            v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
            v95 = v93;
            v10 = v118;
            v122 = v94;
            v96 = [v92 initWithDomain:v95 code:2 userInfo:?];
            v125 = 0;
            v45 = 0;
            *a4 = v96;
            goto LABEL_96;
          }

          v125 = v12;
        }
      }
    }

    else
    {
      v125 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"completedSetup"];
    v122 = v13;
    if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = v7;
      v16 = v8;
      v121 = 0;
LABEL_13:
      v17 = [v6 objectForKeyedSubscript:@"lastViewedScreen"];
      v115 = v17;
      if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v124 = v18;
        }

        else
        {
          v114 = self;
          v56 = a4;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v124 = 0;
              v45 = 0;
              self = v114;
              v55 = v121;
              v52 = v18;
              v8 = v16;
              v7 = v15;
              goto LABEL_95;
            }

            v77 = objc_alloc(MEMORY[0x1E696ABC0]);
            v117 = v10;
            v78 = *MEMORY[0x1E698F240];
            v138 = *MEMORY[0x1E696A578];
            v79 = objc_alloc(MEMORY[0x1E696AEC0]);
            v100 = objc_opt_class();
            v80 = v79;
            v52 = v18;
            v120 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v100, @"lastViewedScreen"];
            v139 = v120;
            v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
            v82 = v78;
            v10 = v117;
            v119 = v81;
            v83 = [v77 initWithDomain:v82 code:2 userInfo:?];
            v124 = 0;
            v45 = 0;
            *v56 = v83;
            self = v114;
            v55 = v121;
            v8 = v16;
            v7 = v15;
            goto LABEL_94;
          }

          v124 = [MEMORY[0x1E696AD98] numberWithInt:BMAppleIDChildSetupChildSetupScreenFromString(v18)];
          self = v114;
        }
      }

      else
      {
        v124 = 0;
      }

      v19 = [v6 objectForKeyedSubscript:@"appUsage"];
      v8 = v16;
      v111 = v9;
      v119 = v19;
      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        v7 = v15;
        if (objc_opt_isKindOfClass())
        {
          v120 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v120 = 0;
              v45 = 0;
              v55 = v121;
              v52 = v115;
              goto LABEL_94;
            }

            v57 = v10;
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v107 = a4;
            v59 = *MEMORY[0x1E698F240];
            v136 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appUsage"];
            v137 = v32;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
            v60 = v58;
            v10 = v57;
            v120 = 0;
            v45 = 0;
            *v107 = [v60 initWithDomain:v59 code:2 userInfo:v31];
            goto LABEL_106;
          }

          v120 = v20;
        }
      }

      else
      {
        v120 = 0;
        v7 = v15;
      }

      v31 = [v6 objectForKeyedSubscript:@"askToBuy"];
      v116 = v10;
      if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v32 = 0;
LABEL_35:
        v33 = [v6 objectForKeyedSubscript:@"commSafety"];
        v110 = v8;
        v106 = a4;
        v108 = v32;
        if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v112 = 0;
              v45 = 0;
              goto LABEL_92;
            }

            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v132 = *MEMORY[0x1E696A578];
            v68 = v7;
            v69 = objc_alloc(MEMORY[0x1E696AEC0]);
            v99 = objc_opt_class();
            v70 = v69;
            v7 = v68;
            v109 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v99, @"commSafety"];
            v133 = v109;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
            v71 = v67;
            v32 = v108;
            v112 = 0;
            v45 = 0;
            *v106 = [v66 initWithDomain:v71 code:2 userInfo:v34];
            goto LABEL_91;
          }

          v112 = v33;
        }

        else
        {
          v112 = 0;
        }

        v34 = [v6 objectForKeyedSubscript:@"screenDistance"];
        v105 = v7;
        if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v109 = 0;
              v45 = 0;
              goto LABEL_91;
            }

            v72 = objc_alloc(MEMORY[0x1E696ABC0]);
            v73 = self;
            v74 = *MEMORY[0x1E698F240];
            v130 = *MEMORY[0x1E696A578];
            v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"screenDistance"];
            v131 = v37;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
            v75 = v72;
            v32 = v108;
            v76 = v74;
            self = v73;
            v109 = 0;
            v45 = 0;
            *v106 = [v75 initWithDomain:v76 code:2 userInfo:v35];
LABEL_90:

            v7 = v105;
LABEL_91:

            v8 = v110;
            goto LABEL_92;
          }

          v109 = v34;
        }

        else
        {
          v109 = 0;
        }

        v35 = [v6 objectForKeyedSubscript:@"age"];
        if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v106)
            {
              v37 = 0;
              v45 = 0;
              goto LABEL_90;
            }

            v36 = self;
            v103 = objc_alloc(MEMORY[0x1E696ABC0]);
            v84 = *MEMORY[0x1E698F240];
            v128 = *MEMORY[0x1E696A578];
            v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"age"];
            v129 = v39;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
            v85 = [v103 initWithDomain:v84 code:2 userInfo:v38];
            v37 = 0;
            v45 = 0;
            *v106 = v85;
            goto LABEL_89;
          }

          v36 = self;
          v37 = v35;
        }

        else
        {
          v36 = self;
          v37 = 0;
        }

        v38 = [v6 objectForKeyedSubscript:@"flowType"];
        if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v61 = v38;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v106)
              {
                v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                v102 = *MEMORY[0x1E698F240];
                v126 = *MEMORY[0x1E696A578];
                v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"flowType"];
                v127 = v97;
                v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                *v106 = [v104 initWithDomain:v102 code:2 userInfo:v98];
              }

              v39 = 0;
              v45 = 0;
              goto LABEL_89;
            }

            v61 = [MEMORY[0x1E696AD98] numberWithInt:BMAppleIDChildSetupFlowTypeFromString(v38)];
          }

          v39 = v61;
        }

        else
        {
          v39 = 0;
        }

        v86 = [v124 intValue];
        LODWORD(v101) = [v39 intValue];
        v45 = [(BMAppleIDChildSetup *)v36 initWithIsNewChildAccount:v110 startDate:v116 endDate:v125 completedSetup:v121 lastViewedScreen:v86 appUsage:v120 askToBuy:v108 commSafety:v112 screenDistance:v109 age:v37 flowType:v101];
        v36 = v45;
LABEL_89:

        self = v36;
        v32 = v108;
        goto LABEL_90;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
        goto LABEL_35;
      }

      if (a4)
      {
        v62 = a4;
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v134 = *MEMORY[0x1E696A578];
        v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"askToBuy"];
        v135 = v112;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v65 = [v63 initWithDomain:v64 code:2 userInfo:v33];
        v32 = 0;
        v45 = 0;
        *v62 = v65;
LABEL_92:
        v55 = v121;
        v52 = v115;

        v10 = v116;
LABEL_93:

        v9 = v111;
LABEL_94:

        goto LABEL_95;
      }

      v32 = 0;
      v45 = 0;
LABEL_106:
      v55 = v121;
      v52 = v115;
      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v7;
      v16 = v8;
      v121 = v14;
      goto LABEL_13;
    }

    if (a4)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = v10;
      v50 = *MEMORY[0x1E698F240];
      v140 = *MEMORY[0x1E696A578];
      v113 = self;
      v51 = a4;
      v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"completedSetup"];
      v141 = v124;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
      v53 = v50;
      v10 = v49;
      v54 = [v48 initWithDomain:v53 code:2 userInfo:v52];
      v55 = 0;
      v45 = 0;
      *v51 = v54;
      self = v113;
LABEL_95:

      goto LABEL_96;
    }

    v55 = 0;
    v45 = 0;
LABEL_96:

LABEL_97:
    goto LABEL_98;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v40 = objc_alloc(MEMORY[0x1E696ABC0]);
    v41 = *MEMORY[0x1E698F240];
    v146 = *MEMORY[0x1E696A578];
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNewChildAccount"];
    v147[0] = v42;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
    v43 = v41;
    v10 = v42;
    v44 = [v40 initWithDomain:v43 code:2 userInfo:v9];
    v8 = 0;
    v45 = 0;
    *a4 = v44;
LABEL_98:

    goto LABEL_99;
  }

  v8 = 0;
  v45 = 0;
LABEL_99:

  v87 = *MEMORY[0x1E69E9840];
  return v45;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppleIDChildSetup *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  if (self->_hasIsNewChildAccount)
  {
    isNewChildAccount = self->_isNewChildAccount;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endDate)
  {
    raw_endDate = self->_raw_endDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasCompletedSetup)
  {
    completedSetup = self->_completedSetup;
    PBDataWriterWriteBOOLField();
  }

  lastViewedScreen = self->_lastViewedScreen;
  PBDataWriterWriteUint32Field();
  if (self->_hasAppUsage)
  {
    appUsage = self->_appUsage;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAskToBuy)
  {
    askToBuy = self->_askToBuy;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCommSafety)
  {
    commSafety = self->_commSafety;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasScreenDistance)
  {
    screenDistance = self->_screenDistance;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAge)
  {
    age = self->_age;
    PBDataWriterWriteUint32Field();
  }

  flowType = self->_flowType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v85.receiver = self;
  v85.super_class = BMAppleIDChildSetup;
  v5 = [(BMEventBase *)&v85 init];
  if (!v5)
  {
    goto LABEL_155;
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
        LOBYTE(v86) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v86 & 0x7F) << v7;
        if ((v86 & 0x80) == 0)
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
        if (v15 <= 2)
        {
          if (v15 != 1)
          {
            if (v15 != 2)
            {
LABEL_119:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_154;
              }

              goto LABEL_152;
            }

            v5->_hasRaw_startDate = 1;
            v86 = 0;
            v35 = [v4 position] + 8;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
            {
              v78 = [v4 data];
              [v78 getBytes:&v86 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v79 = v86;
            v80 = 24;
            goto LABEL_151;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasIsNewChildAccount = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v40 = [v4 position] + 1;
            if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v39 |= (v86 & 0x7F) << v37;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_122;
            }
          }

          v22 = (v39 != 0) & ~[v4 hasError];
LABEL_122:
          v76 = 48;
          goto LABEL_146;
        }

        if (v15 == 3)
        {
          v5->_hasRaw_endDate = 1;
          v86 = 0;
          v62 = [v4 position] + 8;
          if (v62 >= [v4 position] && (v63 = objc_msgSend(v4, "position") + 8, v63 <= objc_msgSend(v4, "length")))
          {
            v81 = [v4 data];
            [v81 getBytes:&v86 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v79 = v86;
          v80 = 40;
LABEL_151:
          *(&v5->super.super.isa + v80) = v79;
          goto LABEL_152;
        }

        if (v15 == 4)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasCompletedSetup = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v46 = [v4 position] + 1;
            if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v45 |= (v86 & 0x7F) << v43;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_124;
            }
          }

          v22 = (v45 != 0) & ~[v4 hasError];
LABEL_124:
          v76 = 50;
          goto LABEL_146;
        }

        if (v15 != 5)
        {
          goto LABEL_119;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (v86 & 0x7F) << v23;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v29 = v24++ > 8;
          if (v29)
          {
            goto LABEL_133;
          }
        }

        if (([v4 hasError] & 1) != 0 || v25 > 0xE)
        {
LABEL_133:
          LODWORD(v25) = 0;
        }

        v77 = 68;
      }

      else
      {
        if (v15 <= 8)
        {
          switch(v15)
          {
            case 6:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v5->_hasAppUsage = 1;
              while (1)
              {
                LOBYTE(v86) = 0;
                v67 = [v4 position] + 1;
                if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 1, v68 <= objc_msgSend(v4, "length")))
                {
                  v69 = [v4 data];
                  [v69 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v66 |= (v86 & 0x7F) << v64;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v13 = v65++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_143;
                }
              }

              v22 = (v66 != 0) & ~[v4 hasError];
LABEL_143:
              v76 = 52;
              break;
            case 7:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v5->_hasAskToBuy = 1;
              while (1)
              {
                LOBYTE(v86) = 0;
                v52 = [v4 position] + 1;
                if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
                {
                  v54 = [v4 data];
                  [v54 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v51 |= (v86 & 0x7F) << v49;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v13 = v50++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_126;
                }
              }

              v22 = (v51 != 0) & ~[v4 hasError];
LABEL_126:
              v76 = 54;
              break;
            case 8:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v5->_hasCommSafety = 1;
              while (1)
              {
                LOBYTE(v86) = 0;
                v19 = [v4 position] + 1;
                if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
                {
                  v21 = [v4 data];
                  [v21 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v18 |= (v86 & 0x7F) << v16;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v13 = v17++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_136;
                }
              }

              v22 = (v18 != 0) & ~[v4 hasError];
LABEL_136:
              v76 = 56;
              break;
            default:
              goto LABEL_119;
          }

          goto LABEL_146;
        }

        if (v15 == 9)
        {
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v5->_hasScreenDistance = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v73 = [v4 position] + 1;
            if (v73 >= [v4 position] && (v74 = objc_msgSend(v4, "position") + 1, v74 <= objc_msgSend(v4, "length")))
            {
              v75 = [v4 data];
              [v75 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v72 |= (v86 & 0x7F) << v70;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v13 = v71++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_145;
            }
          }

          v22 = (v72 != 0) & ~[v4 hasError];
LABEL_145:
          v76 = 58;
LABEL_146:
          *(&v5->super.super.isa + v76) = v22;
          goto LABEL_152;
        }

        if (v15 == 10)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasAge = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v58 = [v4 position] + 1;
            if (v58 >= [v4 position] && (v59 = objc_msgSend(v4, "position") + 1, v59 <= objc_msgSend(v4, "length")))
            {
              v60 = [v4 data];
              [v60 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v57 |= (v86 & 0x7F) << v55;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              v61 = 0;
              goto LABEL_130;
            }
          }

          if ([v4 hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v57;
          }

LABEL_130:
          v5->_age = v61;
          goto LABEL_152;
        }

        if (v15 != 11)
        {
          goto LABEL_119;
        }

        v30 = 0;
        v31 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v86 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (v86 & 0x7F) << v30;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v29 = v31++ > 8;
          if (v29)
          {
            goto LABEL_139;
          }
        }

        if (([v4 hasError] & 1) != 0 || v25 > 2)
        {
LABEL_139:
          LODWORD(v25) = 0;
        }

        v77 = 76;
      }

      *(&v5->super.super.isa + v77) = v25;
LABEL_152:
      v82 = [v4 position];
    }

    while (v82 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_154:
    v83 = 0;
  }

  else
  {
LABEL_155:
    v83 = v5;
  }

  return v83;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup isNewChildAccount](self, "isNewChildAccount")}];
  v13 = [(BMAppleIDChildSetup *)self startDate];
  v3 = [(BMAppleIDChildSetup *)self endDate];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup completedSetup](self, "completedSetup")}];
  v4 = BMAppleIDChildSetupChildSetupScreenAsString([(BMAppleIDChildSetup *)self lastViewedScreen]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup appUsage](self, "appUsage")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup askToBuy](self, "askToBuy")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup commSafety](self, "commSafety")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup screenDistance](self, "screenDistance")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppleIDChildSetup age](self, "age")}];
  v10 = BMAppleIDChildSetupFlowTypeAsString([(BMAppleIDChildSetup *)self flowType]);
  v16 = [v15 initWithFormat:@"BMAppleIDChildSetup with isNewChildAccount: %@, startDate: %@, endDate: %@, completedSetup: %@, lastViewedScreen: %@, appUsage: %@, askToBuy: %@, commSafety: %@, screenDistance: %@, age: %@, flowType: %@", v14, v13, v3, v12, v4, v5, v6, v7, v8, v9, v10];

  return v16;
}

- (BMAppleIDChildSetup)initWithIsNewChildAccount:(id)a3 startDate:(id)a4 endDate:(id)a5 completedSetup:(id)a6 lastViewedScreen:(int)a7 appUsage:(id)a8 askToBuy:(id)a9 commSafety:(id)a10 screenDistance:(id)a11 age:(id)a12 flowType:(int)a13
{
  v18 = a3;
  v32 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v33.receiver = self;
  v33.super_class = BMAppleIDChildSetup;
  v26 = [(BMEventBase *)&v33 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v18)
    {
      v26->_hasIsNewChildAccount = 1;
      v26->_isNewChildAccount = [v18 BOOLValue];
    }

    else
    {
      v18 = 0;
      v26->_hasIsNewChildAccount = 0;
      v26->_isNewChildAccount = 0;
    }

    if (v32)
    {
      v26->_hasRaw_startDate = 1;
      [v32 timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_startDate = 0;
      v27 = -1.0;
    }

    v26->_raw_startDate = v27;
    if (v19)
    {
      v26->_hasRaw_endDate = 1;
      [v19 timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_endDate = 0;
      v28 = -1.0;
    }

    v26->_raw_endDate = v28;
    if (v20)
    {
      v26->_hasCompletedSetup = 1;
      v26->_completedSetup = [v20 BOOLValue];
    }

    else
    {
      v26->_hasCompletedSetup = 0;
      v26->_completedSetup = 0;
    }

    v26->_lastViewedScreen = a7;
    if (v21)
    {
      v26->_hasAppUsage = 1;
      v26->_appUsage = [v21 BOOLValue];
    }

    else
    {
      v26->_hasAppUsage = 0;
      v26->_appUsage = 0;
    }

    if (v22)
    {
      v26->_hasAskToBuy = 1;
      v26->_askToBuy = [v22 BOOLValue];
    }

    else
    {
      v26->_hasAskToBuy = 0;
      v26->_askToBuy = 0;
    }

    if (v23)
    {
      v26->_hasCommSafety = 1;
      v26->_commSafety = [v23 BOOLValue];
    }

    else
    {
      v26->_hasCommSafety = 0;
      v26->_commSafety = 0;
    }

    if (v24)
    {
      v26->_hasScreenDistance = 1;
      v26->_screenDistance = [v24 BOOLValue];
    }

    else
    {
      v26->_hasScreenDistance = 0;
      v26->_screenDistance = 0;
    }

    if (v25)
    {
      v26->_hasAge = 1;
      v29 = [v25 unsignedIntValue];
    }

    else
    {
      v29 = 0;
      v26->_hasAge = 0;
    }

    v26->_age = v29;
    v26->_flowType = a13;
  }

  return v26;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNewChildAccount" number:1 type:12 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:2 type:0 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:3 type:0 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completedSetup" number:4 type:12 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastViewedScreen" number:5 type:4 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appUsage" number:6 type:12 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"askToBuy" number:7 type:12 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"commSafety" number:8 type:12 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"screenDistance" number:9 type:12 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"age" number:10 type:4 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowType" number:11 type:4 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMAppleIDChildSetup alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[16] = 0;
    }
  }

  return v4;
}

@end