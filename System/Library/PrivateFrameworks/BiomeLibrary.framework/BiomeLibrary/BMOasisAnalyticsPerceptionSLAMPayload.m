@interface BMOasisAnalyticsPerceptionSLAMPayload
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsPerceptionSLAMPayload)initWithContextSnapshot:(id)a3 submapCreated:(id)a4 submapUpdated:(id)a5 submapLoaded:(id)a6 trackingLost:(id)a7 trackingState:(id)a8 relocalizationSucceeded:(id)a9;
- (BMOasisAnalyticsPerceptionSLAMPayload)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsPerceptionSLAMPayload

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
    v7 = [v5 contextSnapshot];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
      v10 = [v5 contextSnapshot];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
    v14 = [v5 submapCreated];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
      v17 = [v5 submapCreated];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
    v20 = [v5 submapUpdated];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
      v23 = [v5 submapUpdated];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
    v26 = [v5 submapLoaded];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
      v29 = [v5 submapLoaded];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
    v32 = [v5 trackingLost];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
      v35 = [v5 trackingLost];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
    v38 = [v5 trackingState];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
      v41 = [v5 trackingState];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
    v45 = [v5 relocalizationSucceeded];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
      v47 = [v5 relocalizationSucceeded];
      v12 = [v46 isEqual:v47];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v33[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
  v4 = [v3 jsonDictionary];

  v5 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
  v6 = [v5 jsonDictionary];

  v7 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
  v8 = [v7 jsonDictionary];

  v9 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
  v10 = [v9 jsonDictionary];

  v11 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
  v12 = [v11 jsonDictionary];

  v13 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
  v14 = [v13 jsonDictionary];

  v15 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
  v16 = [v15 jsonDictionary];

  v32[0] = @"contextSnapshot";
  v17 = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v17;
  v33[0] = v17;
  v32[1] = @"submapCreated";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v18;
  v33[1] = v18;
  v32[2] = @"submapUpdated";
  v19 = v8;
  if (!v8)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v27 = v19;
  v33[2] = v19;
  v32[3] = @"submapLoaded";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v33[3] = v20;
  v32[4] = @"trackingLost";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v33[4] = v21;
  v32[5] = @"trackingState";
  v22 = v14;
  if (!v14)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = v22;
  v32[6] = @"relocalizationSucceeded";
  v23 = v16;
  if (!v16)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:7];
  if (v16)
  {
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_27:

    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  if (!v10)
  {
  }

  if (v8)
  {
    if (v30)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v31)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v31)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BMOasisAnalyticsPerceptionSLAMPayload)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v88[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"contextSnapshot"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"submapCreated"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v66 = 0;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"submapUpdated"];
      v67 = self;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v65 = 0;
LABEL_10:
        v11 = [v6 objectForKeyedSubscript:@"submapLoaded"];
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v61 = 0;
LABEL_13:
          v12 = [v6 objectForKeyedSubscript:@"trackingLost"];
          v62 = v8;
          if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v60 = 0;
LABEL_16:
            v13 = [v6 objectForKeyedSubscript:@"trackingState"];
            v56 = a4;
            if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v54 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              v69 = 0;
              v54 = [[BMOasisAnalyticsTrackingStateEvent alloc] initWithJSONDictionary:v14 error:&v69];
              v37 = v69;
              if (v37)
              {
                if (a4)
                {
                  v37 = v37;
                  *a4 = v37;
                }

                goto LABEL_88;
              }

LABEL_19:
              v14 = [v6 objectForKeyedSubscript:@"relocalizationSucceeded"];
              if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v15 = 0;
LABEL_22:
                a4 = [(BMOasisAnalyticsPerceptionSLAMPayload *)v67 initWithContextSnapshot:v62 submapCreated:v66 submapUpdated:v65 submapLoaded:v61 trackingLost:v60 trackingState:v54 relocalizationSucceeded:v15];
                v67 = a4;
LABEL_79:

                goto LABEL_80;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v14;
                v68 = 0;
                v15 = [[BMOasisAnalyticsRelocalizationSucceededEvent alloc] initWithJSONDictionary:v42 error:&v68];
                v43 = v68;
                if (!v43)
                {

                  goto LABEL_22;
                }

                if (v56)
                {
                  v43 = v43;
                  *v56 = v43;
                }

LABEL_78:
                a4 = 0;
                goto LABEL_79;
              }

              if (a4)
              {
                v53 = objc_alloc(MEMORY[0x1E696ABC0]);
                v51 = *MEMORY[0x1E698F240];
                v75 = *MEMORY[0x1E696A578];
                v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"relocalizationSucceeded"];
                v76 = v15;
                v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
                *v56 = [v53 initWithDomain:v51 code:2 userInfo:v48];

                goto LABEL_78;
              }

LABEL_88:
              a4 = 0;
              goto LABEL_80;
            }

            if (a4)
            {
              v52 = objc_alloc(MEMORY[0x1E696ABC0]);
              v47 = *MEMORY[0x1E698F240];
              v77 = *MEMORY[0x1E696A578];
              v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trackingState"];
              v78 = v54;
              v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
              a4 = 0;
              *v56 = [v52 initWithDomain:v47 code:2 userInfo:v14];
LABEL_80:
            }

LABEL_81:
            v17 = v66;
LABEL_82:

            v8 = v62;
            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v70 = 0;
            v60 = [[BMOasisAnalyticsTrackingLostEvent alloc] initWithJSONDictionary:v13 error:&v70];
            v32 = v70;
            if (v32)
            {
              v17 = v66;
              if (a4)
              {
                v32 = v32;
                *a4 = v32;
              }

              a4 = 0;
              goto LABEL_82;
            }

            goto LABEL_16;
          }

          if (a4)
          {
            v44 = a4;
            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v55 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trackingLost"];
            v80 = v60;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v46 = [v45 initWithDomain:v55 code:2 userInfo:v13];
            a4 = 0;
            *v44 = v46;
            goto LABEL_81;
          }

LABEL_70:
          v17 = v66;
LABEL_83:

          goto LABEL_84;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v71 = 0;
          v61 = [[BMOasisAnalyticsSubmapLoadedEvent alloc] initWithJSONDictionary:v12 error:&v71];
          v26 = v71;
          if (v26)
          {
            v17 = v66;
            if (a4)
            {
              v26 = v26;
              *a4 = v26;
            }

            a4 = 0;
            goto LABEL_83;
          }

          goto LABEL_13;
        }

        if (a4)
        {
          v59 = a4;
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = v8;
          v39 = *MEMORY[0x1E698F240];
          v81 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"submapLoaded"];
          v82 = v61;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v40 = v39;
          v8 = v64;
          v41 = [v38 initWithDomain:v40 code:2 userInfo:v12];
          a4 = 0;
          *v59 = v41;
          goto LABEL_70;
        }

LABEL_61:
        v17 = v66;
LABEL_84:

        self = v67;
        goto LABEL_85;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v72 = 0;
        v65 = [[BMOasisAnalyticsSubmapUpdatedEvent alloc] initWithJSONDictionary:v11 error:&v72];
        v19 = v72;
        if (v19)
        {
          v17 = v66;
          if (a4)
          {
            v19 = v19;
            *a4 = v19;
          }

          a4 = 0;
          goto LABEL_84;
        }

        goto LABEL_10;
      }

      if (a4)
      {
        v58 = a4;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = v8;
        v34 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"submapUpdated"];
        v84 = v65;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v35 = v34;
        v8 = v63;
        v36 = [v33 initWithDomain:v35 code:2 userInfo:v11];
        a4 = 0;
        *v58 = v36;
        goto LABEL_61;
      }

      v17 = v66;
LABEL_85:

      goto LABEL_86;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v73 = 0;
      v17 = [[BMOasisAnalyticsSubmapCreatedEvent alloc] initWithJSONDictionary:v10 error:&v73];
      v18 = v73;
      if (v18)
      {
        if (a4)
        {
          v18 = v18;
          *a4 = v18;
        }

        a4 = 0;
        goto LABEL_85;
      }

      v66 = v17;

      goto LABEL_7;
    }

    if (a4)
    {
      v57 = a4;
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = v8;
      v29 = *MEMORY[0x1E698F240];
      v85 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"submapCreated"];
      v86 = v17;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v30 = v29;
      v8 = v28;
      v31 = [v27 initWithDomain:v30 code:2 userInfo:v10];
      a4 = 0;
      *v57 = v31;
      goto LABEL_85;
    }

LABEL_86:

    goto LABEL_87;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v74 = 0;
    v8 = [[BMOasisAnalyticsContextSnapshotEvent alloc] initWithJSONDictionary:v9 error:&v74];
    v16 = v74;
    if (v16)
    {
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

      a4 = 0;
      goto LABEL_86;
    }

    goto LABEL_4;
  }

  if (a4)
  {
    v20 = a4;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E698F240];
    v87 = *MEMORY[0x1E696A578];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"contextSnapshot"];
    v88[0] = v23;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
    v24 = v22;
    v8 = v23;
    v25 = [v21 initWithDomain:v24 code:2 userInfo:v9];
    a4 = 0;
    *v20 = v25;
    goto LABEL_86;
  }

LABEL_87:

  v49 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsPerceptionSLAMPayload *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_contextSnapshot)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsContextSnapshotEvent *)self->_contextSnapshot writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_submapCreated)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapCreatedEvent *)self->_submapCreated writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_submapUpdated)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapUpdatedEvent *)self->_submapUpdated writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_submapLoaded)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapLoadedEvent *)self->_submapLoaded writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_trackingLost)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsTrackingLostEvent *)self->_trackingLost writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_trackingState)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsTrackingStateEvent *)self->_trackingState writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_relocalizationSucceeded)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsRelocalizationSucceededEvent *)self->_relocalizationSucceeded writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMOasisAnalyticsPerceptionSLAMPayload;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_54;
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
        LOBYTE(v23) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v16 = [[BMOasisAnalyticsContextSnapshotEvent alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_53;
            }

            v17 = 24;
            break;
          case 2:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v16 = [[BMOasisAnalyticsSubmapCreatedEvent alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_53;
            }

            v17 = 32;
            break;
          case 3:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v16 = [[BMOasisAnalyticsSubmapUpdatedEvent alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_53;
            }

            v17 = 40;
            break;
          default:
            goto LABEL_39;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v16 = [[BMOasisAnalyticsTrackingStateEvent alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_53;
          }

          v17 = 64;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_39:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v16 = [[BMOasisAnalyticsRelocalizationSucceededEvent alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_53;
          }

          v17 = 72;
        }
      }

      else if (v15 == 4)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_53;
        }

        v16 = [[BMOasisAnalyticsSubmapLoadedEvent alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_53;
        }

        v17 = 48;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_39;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_53;
        }

        v16 = [[BMOasisAnalyticsTrackingLostEvent alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_53;
        }

        v17 = 56;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_51:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_53:
    v20 = 0;
  }

  else
  {
LABEL_54:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self contextSnapshot];
  v5 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapCreated];
  v6 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapUpdated];
  v7 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self submapLoaded];
  v8 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingLost];
  v9 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self trackingState];
  v10 = [(BMOasisAnalyticsPerceptionSLAMPayload *)self relocalizationSucceeded];
  v11 = [v3 initWithFormat:@"BMOasisAnalyticsPerceptionSLAMPayload with contextSnapshot: %@, submapCreated: %@, submapUpdated: %@, submapLoaded: %@, trackingLost: %@, trackingState: %@, relocalizationSucceeded: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMOasisAnalyticsPerceptionSLAMPayload)initWithContextSnapshot:(id)a3 submapCreated:(id)a4 submapUpdated:(id)a5 submapLoaded:(id)a6 trackingLost:(id)a7 trackingState:(id)a8 relocalizationSucceeded:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = BMOasisAnalyticsPerceptionSLAMPayload;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_contextSnapshot, a3);
    objc_storeStrong(&v18->_submapCreated, a4);
    objc_storeStrong(&v18->_submapUpdated, a5);
    objc_storeStrong(&v18->_submapLoaded, a6);
    objc_storeStrong(&v18->_trackingLost, a7);
    objc_storeStrong(&v18->_trackingState, a8);
    objc_storeStrong(&v18->_relocalizationSucceeded, a9);
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextSnapshot" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapCreated" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapUpdated" number:3 type:14 subMessageClass:objc_opt_class()];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapLoaded" number:4 type:14 subMessageClass:objc_opt_class()];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingLost" number:5 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingState" number:6 type:14 subMessageClass:objc_opt_class()];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"relocalizationSucceeded" number:7 type:14 subMessageClass:objc_opt_class()];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextSnapshot_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_796];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"submapCreated_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_798];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"submapUpdated_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_800];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"submapLoaded_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_802];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trackingLost_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_804];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trackingState_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_806];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"relocalizationSucceeded_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_808];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 relocalizationSucceeded];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trackingState];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trackingLost];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 submapLoaded];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 submapUpdated];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 submapCreated];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMOasisAnalyticsPerceptionSLAMPayload_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 contextSnapshot];
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

    v8 = [[BMOasisAnalyticsPerceptionSLAMPayload alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end