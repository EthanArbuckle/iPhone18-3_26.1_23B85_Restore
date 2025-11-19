@interface BMVisualIntelligenceCameraLookupEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEvent)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMVisualIntelligenceCameraLookupEvent)initWithSessionId:(id)a3 dimensionContext:(id)a4 visualIntelligenceContext:(id)a5 serverRequestContext:(id)a6 displayContext:(id)a7 userInteractionDetected:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEvent *)self sessionId];
    v7 = [v5 sessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraLookupEvent *)self sessionId];
      v10 = [v5 sessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMVisualIntelligenceCameraLookupEvent *)self dimensionContext];
    v14 = [v5 dimensionContext];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMVisualIntelligenceCameraLookupEvent *)self dimensionContext];
      v17 = [v5 dimensionContext];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMVisualIntelligenceCameraLookupEvent *)self visualIntelligenceContext];
    v20 = [v5 visualIntelligenceContext];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMVisualIntelligenceCameraLookupEvent *)self visualIntelligenceContext];
      v23 = [v5 visualIntelligenceContext];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMVisualIntelligenceCameraLookupEvent *)self serverRequestContext];
    v26 = [v5 serverRequestContext];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMVisualIntelligenceCameraLookupEvent *)self serverRequestContext];
      v29 = [v5 serverRequestContext];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMVisualIntelligenceCameraLookupEvent *)self displayContext];
    v32 = [v5 displayContext];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMVisualIntelligenceCameraLookupEvent *)self displayContext];
      v35 = [v5 displayContext];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMVisualIntelligenceCameraLookupEvent *)self userInteractionDetected];
    v39 = [v5 userInteractionDetected];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMVisualIntelligenceCameraLookupEvent *)self userInteractionDetected];
      v41 = [v5 userInteractionDetected];
      v12 = [v40 isEqual:v41];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v28[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMVisualIntelligenceCameraLookupEvent *)self sessionId];
  v4 = [(BMVisualIntelligenceCameraLookupEvent *)self dimensionContext];
  v5 = [v4 jsonDictionary];

  v6 = [(BMVisualIntelligenceCameraLookupEvent *)self visualIntelligenceContext];
  v7 = [v6 jsonDictionary];

  v8 = [(BMVisualIntelligenceCameraLookupEvent *)self serverRequestContext];
  v9 = [v8 jsonDictionary];

  v10 = [(BMVisualIntelligenceCameraLookupEvent *)self displayContext];
  v11 = [v10 jsonDictionary];

  v12 = [(BMVisualIntelligenceCameraLookupEvent *)self userInteractionDetected];
  v13 = [v12 jsonDictionary];

  v27[0] = @"sessionId";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v14;
  v26 = v3;
  v28[0] = v14;
  v27[1] = @"dimensionContext";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v15;
  v28[1] = v15;
  v27[2] = @"visualIntelligenceContext";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[2] = v16;
  v27[3] = @"serverRequestContext";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v17;
  v27[4] = @"displayContext";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v18;
  v27[5] = @"userInteractionDetected";
  v19 = v13;
  if (!v13)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{6, v23}];
  if (v13)
  {
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v11)
    {
LABEL_15:
      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  if (v9)
  {
LABEL_16:
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_26:

    if (v5)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_27:

LABEL_18:
  if (!v26)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMVisualIntelligenceCameraLookupEvent)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"dimensionContext"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v16 = 0;
LABEL_82:

          goto LABEL_83;
        }

        v44 = p_isa;
        v25 = v8;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dimensionContext"];
        v69 = v19;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v29 = v26;
        v8 = v25;
        *v44 = [v29 initWithDomain:v27 code:2 userInfo:v28];

        v16 = 0;
        goto LABEL_80;
      }

      v17 = v9;
      v59 = 0;
      v54 = [[BMVisualIntelligenceCameraLookupEventDimensionContext alloc] initWithJSONDictionary:v17 error:&v59];
      v18 = v59;
      if (v18)
      {
        if (p_isa)
        {
          v18 = v18;
          *p_isa = v18;
        }

        v16 = 0;
        v19 = v54;
        goto LABEL_81;
      }
    }

    else
    {
      v54 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"visualIntelligenceContext"];
    v53 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = p_isa;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v19 = v54;
LABEL_79:

LABEL_80:
          v17 = v9;
          goto LABEL_81;
        }

        v52 = v8;
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = p_isa;
        v32 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualIntelligenceContext"];
        v15 = v67;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v33 = v31;
        v8 = v52;
        v34 = [v33 initWithDomain:v32 code:2 userInfo:v11];
        v16 = 0;
        *v45 = v34;
        v19 = v54;
        goto LABEL_78;
      }

      v11 = v10;
      v58 = 0;
      v15 = [[BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext alloc] initWithJSONDictionary:v11 error:&v58];
      v20 = v58;
      if (v20)
      {
        v19 = v54;
        if (v16)
        {
          v20 = v20;
          v16->super.super.isa = v20;
        }

        v16 = 0;
        goto LABEL_78;
      }

      v49 = v15;

      p_isa = &v16->super.super.isa;
    }

    else
    {
      v49 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"serverRequestContext"];
    v51 = v8;
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v50 = 0;
LABEL_13:
      v12 = [v6 objectForKeyedSubscript:@"displayContext"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v47 = 0;
LABEL_16:
        v13 = [v6 objectForKeyedSubscript:@"userInteractionDetected"];
        if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = 0;
LABEL_19:
          v15 = v49;
          v16 = [(BMVisualIntelligenceCameraLookupEvent *)v53 initWithSessionId:v51 dimensionContext:v54 visualIntelligenceContext:v49 serverRequestContext:v50 displayContext:v47 userInteractionDetected:v14];
          v53 = v16;
LABEL_63:

          v19 = v54;
LABEL_76:

          goto LABEL_77;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v13;
          v55 = 0;
          v14 = [[BMVisualIntelligenceCameraLookupEventUserInteractionDetected alloc] initWithJSONDictionary:v35 error:&v55];
          v36 = v55;
          if (!v36)
          {

            goto LABEL_19;
          }

          if (p_isa)
          {
            v36 = v36;
            *p_isa = v36;
          }

LABEL_62:
          v16 = 0;
          v15 = v49;
          goto LABEL_63;
        }

        if (p_isa)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v60 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userInteractionDetected"];
          v61 = v14;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          *p_isa = [v46 initWithDomain:v43 code:2 userInfo:v35];
          goto LABEL_62;
        }

        v16 = 0;
        goto LABEL_74;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v56 = 0;
        v47 = [[BMVisualIntelligenceCameraLookupEventDisplayContext alloc] initWithJSONDictionary:v13 error:&v56];
        v30 = v56;
        if (v30)
        {
          v19 = v54;
          if (p_isa)
          {
            v30 = v30;
            *p_isa = v30;
          }

          v16 = 0;
          goto LABEL_75;
        }

        goto LABEL_16;
      }

      if (p_isa)
      {
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"displayContext"];
        v63 = v47;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v16 = 0;
        *p_isa = [v42 initWithDomain:v39 code:2 userInfo:v13];
LABEL_74:
        v19 = v54;
LABEL_75:
        v15 = v49;
        goto LABEL_76;
      }

      v16 = 0;
      goto LABEL_70;
    }

    v16 = p_isa;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      v57 = 0;
      v50 = [[BMVisualIntelligenceCameraLookupEventServerRequestContext alloc] initWithJSONDictionary:v12 error:&v57];
      v24 = v57;
      if (v24)
      {
        v19 = v54;
        if (p_isa)
        {
          v24 = v24;
          *p_isa = v24;
        }

        v16 = 0;
        goto LABEL_71;
      }

      goto LABEL_13;
    }

    if (p_isa)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"serverRequestContext"];
      v65 = v50;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v38 = [v48 initWithDomain:v37 code:2 userInfo:v12];
      v16 = 0;
      *p_isa = v38;
LABEL_70:
      v19 = v54;
LABEL_71:
      v15 = v49;
LABEL_77:

      v8 = v51;
      goto LABEL_78;
    }

    v19 = v54;
    v15 = v49;
LABEL_78:

    self = v53;
    goto LABEL_79;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (p_isa)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E698F240];
    v70 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
    v71[0] = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v23 = [v21 initWithDomain:v22 code:2 userInfo:v19];
    v8 = 0;
    v16 = 0;
    *p_isa = v23;
LABEL_81:

    v9 = v17;
    goto LABEL_82;
  }

  v8 = 0;
  v16 = 0;
LABEL_83:

  v40 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dimensionContext)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventDimensionContext *)self->_dimensionContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_visualIntelligenceContext)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext *)self->_visualIntelligenceContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_serverRequestContext)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventServerRequestContext *)self->_serverRequestContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_displayContext)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self->_displayContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_userInteractionDetected)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self->_userInteractionDetected writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMVisualIntelligenceCameraLookupEvent;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_45;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v25 & 0x7F) << v7;
        if ((v25 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_45;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_46;
          }

          v16 = [[BMVisualIntelligenceCameraLookupEventDimensionContext alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_46;
          }

          v17 = 32;
        }

        else
        {
          if (v15 != 3)
          {
            goto LABEL_35;
          }

          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_46;
          }

          v16 = [[BMVisualIntelligenceCameraLookupEventVisualIntelligenceContext alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_46;
          }

          v17 = 40;
        }

LABEL_43:
        v20 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        goto LABEL_44;
      }

      v18 = PBReaderReadString();
      sessionId = v5->_sessionId;
      v5->_sessionId = v18;

LABEL_44:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_45;
      }
    }

    switch(v15)
    {
      case 4:
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_46;
        }

        v16 = [[BMVisualIntelligenceCameraLookupEventServerRequestContext alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_46;
        }

        v17 = 48;
        break;
      case 5:
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_46;
        }

        v16 = [[BMVisualIntelligenceCameraLookupEventDisplayContext alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_46;
        }

        v17 = 56;
        break;
      case 6:
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_46;
        }

        v16 = [[BMVisualIntelligenceCameraLookupEventUserInteractionDetected alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_46;
        }

        v17 = 64;
        break;
      default:
LABEL_35:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_45:
  if ([v4 hasError])
  {
LABEL_46:
    v22 = 0;
  }

  else
  {
LABEL_47:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMVisualIntelligenceCameraLookupEvent *)self sessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEvent *)self dimensionContext];
  v6 = [(BMVisualIntelligenceCameraLookupEvent *)self visualIntelligenceContext];
  v7 = [(BMVisualIntelligenceCameraLookupEvent *)self serverRequestContext];
  v8 = [(BMVisualIntelligenceCameraLookupEvent *)self displayContext];
  v9 = [(BMVisualIntelligenceCameraLookupEvent *)self userInteractionDetected];
  v10 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEvent with sessionId: %@, dimensionContext: %@, visualIntelligenceContext: %@, serverRequestContext: %@, displayContext: %@, userInteractionDetected: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMVisualIntelligenceCameraLookupEvent)initWithSessionId:(id)a3 dimensionContext:(id)a4 visualIntelligenceContext:(id)a5 serverRequestContext:(id)a6 displayContext:(id)a7 userInteractionDetected:(id)a8
{
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMVisualIntelligenceCameraLookupEvent;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_sessionId, a3);
    objc_storeStrong(&v18->_dimensionContext, a4);
    objc_storeStrong(&v18->_visualIntelligenceContext, a5);
    objc_storeStrong(&v18->_serverRequestContext, a6);
    objc_storeStrong(&v18->_displayContext, a7);
    objc_storeStrong(&v18->_userInteractionDetected, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dimensionContext" number:2 type:14 subMessageClass:objc_opt_class()];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualIntelligenceContext" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverRequestContext" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayContext" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInteractionDetected" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dimensionContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_688];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualIntelligenceContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_690];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"serverRequestContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_692];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"displayContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_694];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userInteractionDetected_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_696];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __48__BMVisualIntelligenceCameraLookupEvent_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userInteractionDetected];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMVisualIntelligenceCameraLookupEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 displayContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMVisualIntelligenceCameraLookupEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 serverRequestContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMVisualIntelligenceCameraLookupEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 visualIntelligenceContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMVisualIntelligenceCameraLookupEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dimensionContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMVisualIntelligenceCameraLookupEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end