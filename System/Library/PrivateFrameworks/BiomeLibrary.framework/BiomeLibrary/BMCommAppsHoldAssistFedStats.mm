@interface BMCommAppsHoldAssistFedStats
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMCommAppsHoldAssistFedStats)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMCommAppsHoldAssistFedStats)initWithProtoVersion:(id)a3 remotePhoneNumber:(id)a4 holdDuration:(id)a5 holdAssistMLClassification:(int)a6 holdAssistRecommendation:(int)a7 holdAssistObservation:(int)a8 remotePhoneNumberCountryCode:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMCommAppsHoldAssistFedStats

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMCommAppsHoldAssistFedStats hasProtoVersion](self, "hasProtoVersion") || [v5 hasProtoVersion])
    {
      if (![(BMCommAppsHoldAssistFedStats *)self hasProtoVersion])
      {
        goto LABEL_22;
      }

      if (![v5 hasProtoVersion])
      {
        goto LABEL_22;
      }

      v6 = [(BMCommAppsHoldAssistFedStats *)self protoVersion];
      if (v6 != [v5 protoVersion])
      {
        goto LABEL_22;
      }
    }

    v7 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
    v8 = [v5 remotePhoneNumber];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
      v11 = [v5 remotePhoneNumber];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMCommAppsHoldAssistFedStats hasHoldDuration](self, "hasHoldDuration") && ![v5 hasHoldDuration] || -[BMCommAppsHoldAssistFedStats hasHoldDuration](self, "hasHoldDuration") && objc_msgSend(v5, "hasHoldDuration") && (v14 = -[BMCommAppsHoldAssistFedStats holdDuration](self, "holdDuration"), v14 == objc_msgSend(v5, "holdDuration")))
    {
      v15 = [(BMCommAppsHoldAssistFedStats *)self holdAssistMLClassification];
      if (v15 == [v5 holdAssistMLClassification])
      {
        v16 = [(BMCommAppsHoldAssistFedStats *)self holdAssistRecommendation];
        if (v16 == [v5 holdAssistRecommendation])
        {
          v17 = [(BMCommAppsHoldAssistFedStats *)self holdAssistObservation];
          if (v17 == [v5 holdAssistObservation])
          {
            v18 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
            v19 = [v5 remotePhoneNumberCountryCode];
            if (v18 == v19)
            {
              v13 = 1;
            }

            else
            {
              v20 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
              v21 = [v5 remotePhoneNumberCountryCode];
              v13 = [v20 isEqual:v21];
            }

            goto LABEL_23;
          }
        }
      }
    }

LABEL_22:
    v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  if ([(BMCommAppsHoldAssistFedStats *)self hasProtoVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats protoVersion](self, "protoVersion")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
  if ([(BMCommAppsHoldAssistFedStats *)self hasHoldDuration])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats holdDuration](self, "holdDuration")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommAppsHoldAssistFedStats holdAssistMLClassification](self, "holdAssistMLClassification")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommAppsHoldAssistFedStats holdAssistRecommendation](self, "holdAssistRecommendation")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommAppsHoldAssistFedStats holdAssistObservation](self, "holdAssistObservation")}];
  v9 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
  v25[0] = @"protoVersion";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v26[0] = v10;
  v25[1] = @"remotePhoneNumber";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v11;
  v26[1] = v11;
  v25[2] = @"holdDuration";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = v12;
  v26[2] = v12;
  v25[3] = @"holdAssistMLClassification";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v26[3] = v13;
  v25[4] = @"holdAssistRecommendation";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v14;
  v25[5] = @"holdAssistObservation";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v15;
  v25[6] = @"remotePhoneNumberCountryCode";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (v7)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_23:
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_34:

LABEL_24:
  if (!v6)
  {
  }

  if (v5)
  {
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_36:

    if (v24)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v24)
  {
    goto LABEL_29;
  }

LABEL_37:

LABEL_29:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMCommAppsHoldAssistFedStats)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"protoVersion"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v68 = 0;
LABEL_4:
    v7 = [v5 objectForKeyedSubscript:@"remotePhoneNumber"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v18 = 0;
          goto LABEL_57;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = a4;
        v21 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"remotePhoneNumber"];
        v81 = v67;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v23 = v19;
        v10 = v22;
        v8 = 0;
        v18 = 0;
        *v20 = [v23 initWithDomain:v21 code:2 userInfo:v22];
        goto LABEL_56;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v5 objectForKeyedSubscript:@"holdDuration"];
    v63 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v67 = 0;
          v18 = 0;
          goto LABEL_56;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = a4;
        v26 = *MEMORY[0x1E698F240];
        v78 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"holdDuration"];
        v79 = v13;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v28 = v24;
        v10 = v63;
        v62 = v27;
        v67 = 0;
        v18 = 0;
        *v25 = [v28 initWithDomain:v26 code:2 userInfo:?];
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      v67 = v10;
    }

    else
    {
      v67 = 0;
    }

    v11 = [v5 objectForKeyedSubscript:@"holdAssistMLClassification"];
    v62 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v13 = 0;
            v18 = 0;
            v10 = v63;
            goto LABEL_55;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"holdAssistMLClassification"];
          v77 = v66;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v52 = [v50 initWithDomain:v51 code:2 userInfo:v44];
          v13 = 0;
          v18 = 0;
          *a4 = v52;
          goto LABEL_53;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMCommAppsHoldAssistFedStatsMLClassificationFromString(v12)];
      }

      v13 = v14;
    }

    else
    {
      v13 = 0;
    }

    v29 = [v5 objectForKeyedSubscript:@"holdAssistRecommendation"];
    v60 = v29;
    v61 = v6;
    v65 = v8;
    if (v29 && (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v66 = 0;
            v18 = 0;
            v10 = v63;
            v44 = v30;
            goto LABEL_54;
          }

          v53 = objc_alloc(MEMORY[0x1E696ABC0]);
          v54 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v44 = v30;
          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"holdAssistRecommendation"];
          v75 = v64;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v55 = [v53 initWithDomain:v54 code:2 userInfo:v32];
          v66 = 0;
          v18 = 0;
          *a4 = v55;
          goto LABEL_52;
        }

        v31 = [MEMORY[0x1E696AD98] numberWithInt:BMCommAppsHoldAssistFedStatsRecommendationFromString(v30)];
      }

      v66 = v31;
    }

    else
    {
      v66 = 0;
    }

    v32 = [v5 objectForKeyedSubscript:@"holdAssistObservation"];
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v64 = 0;
            v18 = 0;
            v44 = v60;
            goto LABEL_52;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"holdAssistObservation"];
          v73 = v38;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v58 = [v56 initWithDomain:v57 code:2 userInfo:v34];
          v64 = 0;
          v18 = 0;
          *a4 = v58;
          goto LABEL_50;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithInt:BMCommAppsHoldAssistFedStatsObservationFromString(v32)];
      }

      v64 = v33;
    }

    else
    {
      v64 = 0;
    }

    v34 = [v5 objectForKeyedSubscript:@"remotePhoneNumberCountryCode"];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v44 = v60;
        if (a4)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"remotePhoneNumberCountryCode"];
          v71 = v48;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          *a4 = [v47 initWithDomain:v59 code:2 userInfo:v49];
        }

        v38 = 0;
        v18 = 0;
        goto LABEL_51;
      }

      v35 = v7;
      v37 = v68;
      v36 = self;
      v38 = v34;
    }

    else
    {
      v35 = v7;
      v37 = v68;
      v36 = self;
      v38 = 0;
    }

    v39 = [v13 intValue];
    v40 = v13;
    v41 = [v66 intValue];
    v42 = [v64 intValue];
    v68 = v37;
    v43 = v41;
    v13 = v40;
    v18 = [(BMCommAppsHoldAssistFedStats *)v36 initWithProtoVersion:v37 remotePhoneNumber:v65 holdDuration:v67 holdAssistMLClassification:v39 holdAssistRecommendation:v43 holdAssistObservation:v42 remotePhoneNumberCountryCode:v38];
    self = v18;
    v7 = v35;
LABEL_50:
    v44 = v60;
LABEL_51:

LABEL_52:
    v6 = v61;
    v8 = v65;
LABEL_53:
    v10 = v63;
LABEL_54:

    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = v6;
    goto LABEL_4;
  }

  if (!a4)
  {
    v68 = 0;
    v18 = 0;
    goto LABEL_58;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = a4;
  v17 = *MEMORY[0x1E698F240];
  v82 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"protoVersion"];
  v83[0] = v8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
  v68 = 0;
  v18 = 0;
  *v16 = [v15 initWithDomain:v17 code:2 userInfo:v7];
LABEL_57:

LABEL_58:
  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCommAppsHoldAssistFedStats *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_hasProtoVersion)
  {
    protoVersion = self->_protoVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_remotePhoneNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasHoldDuration)
  {
    holdDuration = self->_holdDuration;
    PBDataWriterWriteUint32Field();
  }

  holdAssistMLClassification = self->_holdAssistMLClassification;
  PBDataWriterWriteUint32Field();
  holdAssistRecommendation = self->_holdAssistRecommendation;
  PBDataWriterWriteUint32Field();
  holdAssistObservation = self->_holdAssistObservation;
  PBDataWriterWriteUint32Field();
  if (self->_remotePhoneNumberCountryCode)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = BMCommAppsHoldAssistFedStats;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_102;
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
        v55 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v55 & 0x7F) << v7;
        if ((v55 & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        if (v15 == 1)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasProtoVersion = 1;
          while (1)
          {
            v55 = 0;
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v37 |= (v55 & 0x7F) << v35;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v13 = v36++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_80;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v37;
          }

LABEL_80:
          v49 = 24;
LABEL_98:
          *(&v5->super.super.isa + v49) = v29;
          goto LABEL_99;
        }

        if (v15 != 2)
        {
          if (v15 != 3)
          {
            goto LABEL_63;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasHoldDuration = 1;
          while (1)
          {
            v55 = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v55 & 0x7F) << v23;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_97;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_97:
          v49 = 28;
          goto LABEL_98;
        }

        v46 = PBReaderReadString();
        v47 = 48;
      }

      else
      {
        if (v15 <= 5)
        {
          if (v15 == 4)
          {
            v41 = 0;
            v42 = 0;
            v18 = 0;
            while (1)
            {
              v55 = 0;
              v43 = [v4 position] + 1;
              if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
              {
                v45 = [v4 data];
                [v45 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v55 & 0x7F) << v41;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v22 = v42++ > 8;
              if (v22)
              {
                goto LABEL_83;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 5)
            {
LABEL_83:
              LODWORD(v18) = 0;
            }

            v50 = 32;
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_63;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v55 = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v55 & 0x7F) << v16;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_87;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_87:
              LODWORD(v18) = 0;
            }

            v50 = 36;
          }

LABEL_93:
          *(&v5->super.super.isa + v50) = v18;
          goto LABEL_99;
        }

        if (v15 != 7)
        {
          if (v15 != 6)
          {
LABEL_63:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_101;
            }

            goto LABEL_99;
          }

          v30 = 0;
          v31 = 0;
          v18 = 0;
          while (1)
          {
            v55 = 0;
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v55 & 0x7F) << v30;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              goto LABEL_91;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 6)
          {
LABEL_91:
            LODWORD(v18) = 0;
          }

          v50 = 40;
          goto LABEL_93;
        }

        v46 = PBReaderReadString();
        v47 = 56;
      }

      v48 = *(&v5->super.super.isa + v47);
      *(&v5->super.super.isa + v47) = v46;

LABEL_99:
      v51 = [v4 position];
    }

    while (v51 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_101:
    v52 = 0;
  }

  else
  {
LABEL_102:
    v52 = v5;
  }

  return v52;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats protoVersion](self, "protoVersion")}];
  v5 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats holdDuration](self, "holdDuration")}];
  v7 = BMCommAppsHoldAssistFedStatsMLClassificationAsString([(BMCommAppsHoldAssistFedStats *)self holdAssistMLClassification]);
  v8 = BMCommAppsHoldAssistFedStatsRecommendationAsString([(BMCommAppsHoldAssistFedStats *)self holdAssistRecommendation]);
  v9 = BMCommAppsHoldAssistFedStatsObservationAsString([(BMCommAppsHoldAssistFedStats *)self holdAssistObservation]);
  v10 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
  v11 = [v3 initWithFormat:@"BMCommAppsHoldAssistFedStats with protoVersion: %@, remotePhoneNumber: %@, holdDuration: %@, holdAssistMLClassification: %@, holdAssistRecommendation: %@, holdAssistObservation: %@, remotePhoneNumberCountryCode: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMCommAppsHoldAssistFedStats)initWithProtoVersion:(id)a3 remotePhoneNumber:(id)a4 holdDuration:(id)a5 holdAssistMLClassification:(int)a6 holdAssistRecommendation:(int)a7 holdAssistObservation:(int)a8 remotePhoneNumberCountryCode:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v23.receiver = self;
  v23.super_class = BMCommAppsHoldAssistFedStats;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v19->_hasProtoVersion = 1;
      v20 = [v15 unsignedIntValue];
    }

    else
    {
      v20 = 0;
      v19->_hasProtoVersion = 0;
    }

    v19->_protoVersion = v20;
    objc_storeStrong(&v19->_remotePhoneNumber, a4);
    if (v17)
    {
      v19->_hasHoldDuration = 1;
      v21 = [v17 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v19->_hasHoldDuration = 0;
    }

    v19->_holdDuration = v21;
    v19->_holdAssistMLClassification = a6;
    v19->_holdAssistRecommendation = a7;
    v19->_holdAssistObservation = a8;
    objc_storeStrong(&v19->_remotePhoneNumberCountryCode, a9);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"protoVersion" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"remotePhoneNumber" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdDuration" number:3 type:4 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdAssistMLClassification" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdAssistRecommendation" number:5 type:4 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdAssistObservation" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"remotePhoneNumberCountryCode" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"protoVersion" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"remotePhoneNumber" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdDuration" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdAssistMLClassification" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdAssistRecommendation" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdAssistObservation" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"remotePhoneNumberCountryCode" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

    v8 = [[BMCommAppsHoldAssistFedStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end