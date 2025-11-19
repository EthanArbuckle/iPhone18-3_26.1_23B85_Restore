@interface BMSpringBoardPillLaunch
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSpringBoardPillLaunch)initWithChildAccount:(id)a3 firstUpdate:(id)a4 firstUpdateAnyGesture:(id)a5 gesture:(id)a6 pillClicked:(id)a7 totalTimesShown:(id)a8;
- (BMSpringBoardPillLaunch)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSpringBoardPillLaunch

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSpringBoardPillLaunch hasChildAccount](self, "hasChildAccount") || [v5 hasChildAccount])
    {
      if (![(BMSpringBoardPillLaunch *)self hasChildAccount])
      {
        goto LABEL_32;
      }

      if (![v5 hasChildAccount])
      {
        goto LABEL_32;
      }

      v6 = [(BMSpringBoardPillLaunch *)self childAccount];
      if (v6 != [v5 childAccount])
      {
        goto LABEL_32;
      }
    }

    if (-[BMSpringBoardPillLaunch hasFirstUpdate](self, "hasFirstUpdate") || [v5 hasFirstUpdate])
    {
      if (![(BMSpringBoardPillLaunch *)self hasFirstUpdate])
      {
        goto LABEL_32;
      }

      if (![v5 hasFirstUpdate])
      {
        goto LABEL_32;
      }

      v7 = [(BMSpringBoardPillLaunch *)self firstUpdate];
      if (v7 != [v5 firstUpdate])
      {
        goto LABEL_32;
      }
    }

    if (-[BMSpringBoardPillLaunch hasFirstUpdateAnyGesture](self, "hasFirstUpdateAnyGesture") || [v5 hasFirstUpdateAnyGesture])
    {
      if (![(BMSpringBoardPillLaunch *)self hasFirstUpdateAnyGesture])
      {
        goto LABEL_32;
      }

      if (![v5 hasFirstUpdateAnyGesture])
      {
        goto LABEL_32;
      }

      v8 = [(BMSpringBoardPillLaunch *)self firstUpdateAnyGesture];
      if (v8 != [v5 firstUpdateAnyGesture])
      {
        goto LABEL_32;
      }
    }

    v9 = [(BMSpringBoardPillLaunch *)self gesture];
    v10 = [v5 gesture];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMSpringBoardPillLaunch *)self gesture];
      v13 = [v5 gesture];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_32;
      }
    }

    if (!-[BMSpringBoardPillLaunch hasPillClicked](self, "hasPillClicked") && ![v5 hasPillClicked] || -[BMSpringBoardPillLaunch hasPillClicked](self, "hasPillClicked") && objc_msgSend(v5, "hasPillClicked") && (v16 = -[BMSpringBoardPillLaunch pillClicked](self, "pillClicked"), v16 == objc_msgSend(v5, "pillClicked")))
    {
      if (!-[BMSpringBoardPillLaunch hasTotalTimesShown](self, "hasTotalTimesShown") && ![v5 hasTotalTimesShown])
      {
        v15 = 1;
        goto LABEL_33;
      }

      if (-[BMSpringBoardPillLaunch hasTotalTimesShown](self, "hasTotalTimesShown") && [v5 hasTotalTimesShown])
      {
        v17 = [(BMSpringBoardPillLaunch *)self totalTimesShown];
        v15 = v17 == [v5 totalTimesShown];
LABEL_33:

        goto LABEL_34;
      }
    }

LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  v15 = 0;
LABEL_34:

  return v15;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  if ([(BMSpringBoardPillLaunch *)self hasChildAccount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch childAccount](self, "childAccount")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSpringBoardPillLaunch *)self hasFirstUpdate])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch firstUpdate](self, "firstUpdate")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSpringBoardPillLaunch *)self hasFirstUpdateAnyGesture])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch firstUpdateAnyGesture](self, "firstUpdateAnyGesture")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMSpringBoardPillLaunch *)self gesture];
  if ([(BMSpringBoardPillLaunch *)self hasPillClicked])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch pillClicked](self, "pillClicked")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSpringBoardPillLaunch *)self hasTotalTimesShown])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpringBoardPillLaunch totalTimesShown](self, "totalTimesShown")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"childAccount";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v9;
  v20 = v4;
  v23[0] = v9;
  v22[1] = @"firstUpdate";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v10;
  v22[2] = @"firstUpdateAnyGesture";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"gesture";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"pillClicked";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"totalTimesShown";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_39:

    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (!v7)
  {
    goto LABEL_39;
  }

LABEL_30:
  if (v6)
  {
    goto LABEL_31;
  }

LABEL_40:

LABEL_31:
  if (!v5)
  {
  }

  if (v20)
  {
    if (v21)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (v21)
    {
      goto LABEL_35;
    }
  }

LABEL_35:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSpringBoardPillLaunch)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"childAccount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"firstUpdate"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v21 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = a4;
        v23 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v24 = v7;
        v25 = v8;
        v26 = objc_alloc(MEMORY[0x1E696AEC0]);
        v49 = objc_opt_class();
        v27 = v26;
        v8 = v25;
        v7 = v24;
        v28 = [v27 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v49, @"firstUpdate"];
        v71 = v28;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v29 = v23;
        a4 = v28;
        v21 = 0;
        v17 = 0;
        *v52 = [v22 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v60 = v9;
    }

    else
    {
      v60 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"firstUpdateAnyGesture"];
    v61 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v21 = v60;
          goto LABEL_49;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = a4;
        v31 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v32 = v7;
        v33 = v8;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v50 = objc_opt_class();
        v35 = v34;
        v8 = v33;
        v7 = v32;
        v59 = [v35 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v50, @"firstUpdateAnyGesture"];
        v69 = v59;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v36 = [v30 initWithDomain:v31 code:2 userInfo:v11];
        a4 = 0;
        v17 = 0;
        *v53 = v36;
        v21 = v60;
LABEL_48:

        self = v61;
LABEL_49:

        goto LABEL_50;
      }

      v58 = v10;
    }

    else
    {
      v58 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"gesture"];
    v56 = v7;
    v57 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v59 = 0;
          v17 = 0;
          v21 = v60;
          a4 = v58;
          goto LABEL_48;
        }

        v37 = v8;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"gesture"];
        v67 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v40 = v38;
        v8 = v37;
        v7 = v56;
        v41 = [v40 initWithDomain:v39 code:2 userInfo:v12];
        v59 = 0;
        v17 = 0;
        *a4 = v41;
        goto LABEL_57;
      }

      v59 = v11;
    }

    else
    {
      v59 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"pillClicked"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v8;
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v12;
LABEL_16:
      v15 = [v6 objectForKeyedSubscript:@"totalTimesShown"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        a4 = v58;
        v17 = [(BMSpringBoardPillLaunch *)v61 initWithChildAccount:v13 firstUpdate:v60 firstUpdateAnyGesture:v58 gesture:v59 pillClicked:v14 totalTimesShown:v16];
        v61 = v17;
LABEL_46:

        v8 = v13;
        v7 = v56;
LABEL_47:

        v21 = v60;
        v9 = v57;
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      if (a4)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalTimesShown"];
        v63 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        *a4 = [v55 initWithDomain:v51 code:2 userInfo:v46];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      a4 = v58;
      goto LABEL_46;
    }

    if (a4)
    {
      v13 = v8;
      v54 = a4;
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pillClicked"];
      v65 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *v54 = v44;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    a4 = v58;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v17 = 0;
    goto LABEL_51;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = a4;
  v20 = *MEMORY[0x1E698F240];
  v72 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"childAccount"];
  v73[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v8 = 0;
  v17 = 0;
  *v19 = [v18 initWithDomain:v20 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v47 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpringBoardPillLaunch *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_hasChildAccount)
  {
    childAccount = self->_childAccount;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFirstUpdate)
  {
    firstUpdate = self->_firstUpdate;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFirstUpdateAnyGesture)
  {
    firstUpdateAnyGesture = self->_firstUpdateAnyGesture;
    PBDataWriterWriteBOOLField();
  }

  if (self->_gesture)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPillClicked)
  {
    pillClicked = self->_pillClicked;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTotalTimesShown)
  {
    totalTimesShown = self->_totalTimesShown;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = BMSpringBoardPillLaunch;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_89;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_87;
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
        goto LABEL_87;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v36 = PBReaderReadString();
          gesture = v5->_gesture;
          v5->_gesture = v36;

          break;
        case 5:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasPillClicked = 1;
          while (1)
          {
            v55 = 0;
            v47 = [v4 position] + 1;
            if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
            {
              v49 = [v4 data];
              [v49 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v46 |= (v55 & 0x7F) << v44;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v13 = v45++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_84;
            }
          }

          v22 = (v46 != 0) & ~[v4 hasError];
LABEL_84:
          v50 = 22;
LABEL_85:
          *(&v5->super.super.isa + v50) = v22;
          break;
        case 6:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasTotalTimesShown = 1;
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
              goto LABEL_80;
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

LABEL_80:
          v5->_totalTimesShown = v29;
          break;
        default:
LABEL_53:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_88;
          }

          break;
      }

      v51 = [v4 position];
      if (v51 >= [v4 length])
      {
        goto LABEL_87;
      }
    }

    switch(v15)
    {
      case 1:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasChildAccount = 1;
        while (1)
        {
          v55 = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v32 |= (v55 & 0x7F) << v30;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_74;
          }
        }

        v22 = (v32 != 0) & ~[v4 hasError];
LABEL_74:
        v50 = 16;
        break;
      case 2:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasFirstUpdate = 1;
        while (1)
        {
          v55 = 0;
          v41 = [v4 position] + 1;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v40 |= (v55 & 0x7F) << v38;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v13 = v39++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_82;
          }
        }

        v22 = (v40 != 0) & ~[v4 hasError];
LABEL_82:
        v50 = 18;
        break;
      case 3:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasFirstUpdateAnyGesture = 1;
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
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_76;
          }
        }

        v22 = (v18 != 0) & ~[v4 hasError];
LABEL_76:
        v50 = 20;
        break;
      default:
        goto LABEL_53;
    }

    goto LABEL_85;
  }

LABEL_87:
  if ([v4 hasError])
  {
LABEL_88:
    v52 = 0;
  }

  else
  {
LABEL_89:
    v52 = v5;
  }

  return v52;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch childAccount](self, "childAccount")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch firstUpdate](self, "firstUpdate")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch firstUpdateAnyGesture](self, "firstUpdateAnyGesture")}];
  v7 = [(BMSpringBoardPillLaunch *)self gesture];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch pillClicked](self, "pillClicked")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpringBoardPillLaunch totalTimesShown](self, "totalTimesShown")}];
  v10 = [v3 initWithFormat:@"BMSpringBoardPillLaunch with childAccount: %@, firstUpdate: %@, firstUpdateAnyGesture: %@, gesture: %@, pillClicked: %@, totalTimesShown: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSpringBoardPillLaunch)initWithChildAccount:(id)a3 firstUpdate:(id)a4 firstUpdateAnyGesture:(id)a5 gesture:(id)a6 pillClicked:(id)a7 totalTimesShown:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = BMSpringBoardPillLaunch;
  v20 = [(BMEventBase *)&v23 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v20->_hasChildAccount = 1;
      v20->_childAccount = [v14 BOOLValue];
    }

    else
    {
      v20->_hasChildAccount = 0;
      v20->_childAccount = 0;
    }

    if (v15)
    {
      v20->_hasFirstUpdate = 1;
      v20->_firstUpdate = [v15 BOOLValue];
    }

    else
    {
      v20->_hasFirstUpdate = 0;
      v20->_firstUpdate = 0;
    }

    if (v16)
    {
      v20->_hasFirstUpdateAnyGesture = 1;
      v20->_firstUpdateAnyGesture = [v16 BOOLValue];
    }

    else
    {
      v20->_hasFirstUpdateAnyGesture = 0;
      v20->_firstUpdateAnyGesture = 0;
    }

    objc_storeStrong(&v20->_gesture, a6);
    if (v18)
    {
      v20->_hasPillClicked = 1;
      v20->_pillClicked = [v18 BOOLValue];
    }

    else
    {
      v20->_hasPillClicked = 0;
      v20->_pillClicked = 0;
    }

    if (v19)
    {
      v20->_hasTotalTimesShown = 1;
      v21 = [v19 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v20->_hasTotalTimesShown = 0;
    }

    v20->_totalTimesShown = v21;
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childAccount" number:1 type:12 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstUpdate" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstUpdateAnyGesture" number:3 type:12 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gesture" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pillClicked" number:5 type:12 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalTimesShown" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childAccount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstUpdate" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstUpdateAnyGesture" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gesture" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pillClicked" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalTimesShown" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

    v8 = [[BMSpringBoardPillLaunch alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end