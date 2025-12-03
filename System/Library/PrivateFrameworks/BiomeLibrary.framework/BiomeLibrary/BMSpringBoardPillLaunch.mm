@interface BMSpringBoardPillLaunch
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSpringBoardPillLaunch)initWithChildAccount:(id)account firstUpdate:(id)update firstUpdateAnyGesture:(id)gesture gesture:(id)a6 pillClicked:(id)clicked totalTimesShown:(id)shown;
- (BMSpringBoardPillLaunch)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSpringBoardPillLaunch

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

      childAccount = [(BMSpringBoardPillLaunch *)self childAccount];
      if (childAccount != [v5 childAccount])
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

      firstUpdate = [(BMSpringBoardPillLaunch *)self firstUpdate];
      if (firstUpdate != [v5 firstUpdate])
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

      firstUpdateAnyGesture = [(BMSpringBoardPillLaunch *)self firstUpdateAnyGesture];
      if (firstUpdateAnyGesture != [v5 firstUpdateAnyGesture])
      {
        goto LABEL_32;
      }
    }

    gesture = [(BMSpringBoardPillLaunch *)self gesture];
    gesture2 = [v5 gesture];
    v11 = gesture2;
    if (gesture == gesture2)
    {
    }

    else
    {
      gesture3 = [(BMSpringBoardPillLaunch *)self gesture];
      gesture4 = [v5 gesture];
      v14 = [gesture3 isEqual:gesture4];

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
        totalTimesShown = [(BMSpringBoardPillLaunch *)self totalTimesShown];
        v15 = totalTimesShown == [v5 totalTimesShown];
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

  gesture = [(BMSpringBoardPillLaunch *)self gesture];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v20 = v4;
  v23[0] = null;
  v22[1] = @"firstUpdate";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v22[2] = @"firstUpdateAnyGesture";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = null3;
  v22[3] = @"gesture";
  null4 = gesture;
  if (!gesture)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"pillClicked";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"totalTimesShown";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_39:

    if (gesture)
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
  if (gesture)
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

- (BMSpringBoardPillLaunch)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v73[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"childAccount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"firstUpdate"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
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
        error = v28;
        v21 = 0;
        v17 = 0;
        *errorCopy = [v22 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v60 = v9;
    }

    else
    {
      v60 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"firstUpdateAnyGesture"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          v21 = v60;
          goto LABEL_49;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
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
        error = 0;
        v17 = 0;
        *errorCopy2 = v36;
        v21 = v60;
LABEL_48:

        self = selfCopy;
LABEL_49:

        goto LABEL_50;
      }

      v58 = v10;
    }

    else
    {
      v58 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"gesture"];
    v56 = v7;
    v57 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v59 = 0;
          v17 = 0;
          v21 = v60;
          error = v58;
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
        *error = v41;
        goto LABEL_57;
      }

      v59 = v11;
    }

    else
    {
      v59 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"pillClicked"];
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
      v15 = [dictionaryCopy objectForKeyedSubscript:@"totalTimesShown"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        error = v58;
        v17 = [(BMSpringBoardPillLaunch *)selfCopy initWithChildAccount:v13 firstUpdate:v60 firstUpdateAnyGesture:v58 gesture:v59 pillClicked:v14 totalTimesShown:v16];
        selfCopy = v17;
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

      if (error)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalTimesShown"];
        v63 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        *error = [v55 initWithDomain:v51 code:2 userInfo:v46];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      error = v58;
      goto LABEL_46;
    }

    if (error)
    {
      v13 = v8;
      errorCopy3 = error;
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pillClicked"];
      v65 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *errorCopy3 = v44;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    error = v58;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v17 = 0;
    goto LABEL_51;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v20 = *MEMORY[0x1E698F240];
  v72 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"childAccount"];
  v73[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v8 = 0;
  v17 = 0;
  *errorCopy4 = [v18 initWithDomain:v20 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v47 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpringBoardPillLaunch *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v54.receiver = self;
  v54.super_class = BMSpringBoardPillLaunch;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_89;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_87;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v55 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v47 = [fromCopy position] + 1;
            if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v22 = (v46 != 0) & ~[fromCopy hasError];
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
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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

      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v22 = (v32 != 0) & ~[fromCopy hasError];
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
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v22 = (v40 != 0) & ~[fromCopy hasError];
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_76:
        v50 = 20;
        break;
      default:
        goto LABEL_53;
    }

    goto LABEL_85;
  }

LABEL_87:
  if ([fromCopy hasError])
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
  gesture = [(BMSpringBoardPillLaunch *)self gesture];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardPillLaunch pillClicked](self, "pillClicked")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpringBoardPillLaunch totalTimesShown](self, "totalTimesShown")}];
  v10 = [v3 initWithFormat:@"BMSpringBoardPillLaunch with childAccount: %@, firstUpdate: %@, firstUpdateAnyGesture: %@, gesture: %@, pillClicked: %@, totalTimesShown: %@", v4, v5, v6, gesture, v8, v9];

  return v10;
}

- (BMSpringBoardPillLaunch)initWithChildAccount:(id)account firstUpdate:(id)update firstUpdateAnyGesture:(id)gesture gesture:(id)a6 pillClicked:(id)clicked totalTimesShown:(id)shown
{
  accountCopy = account;
  updateCopy = update;
  gestureCopy = gesture;
  v17 = a6;
  clickedCopy = clicked;
  shownCopy = shown;
  v23.receiver = self;
  v23.super_class = BMSpringBoardPillLaunch;
  v20 = [(BMEventBase *)&v23 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (accountCopy)
    {
      v20->_hasChildAccount = 1;
      v20->_childAccount = [accountCopy BOOLValue];
    }

    else
    {
      v20->_hasChildAccount = 0;
      v20->_childAccount = 0;
    }

    if (updateCopy)
    {
      v20->_hasFirstUpdate = 1;
      v20->_firstUpdate = [updateCopy BOOLValue];
    }

    else
    {
      v20->_hasFirstUpdate = 0;
      v20->_firstUpdate = 0;
    }

    if (gestureCopy)
    {
      v20->_hasFirstUpdateAnyGesture = 1;
      v20->_firstUpdateAnyGesture = [gestureCopy BOOLValue];
    }

    else
    {
      v20->_hasFirstUpdateAnyGesture = 0;
      v20->_firstUpdateAnyGesture = 0;
    }

    objc_storeStrong(&v20->_gesture, a6);
    if (clickedCopy)
    {
      v20->_hasPillClicked = 1;
      v20->_pillClicked = [clickedCopy BOOLValue];
    }

    else
    {
      v20->_hasPillClicked = 0;
      v20->_pillClicked = 0;
    }

    if (shownCopy)
    {
      v20->_hasTotalTimesShown = 1;
      unsignedIntValue = [shownCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasTotalTimesShown = 0;
    }

    v20->_totalTimesShown = unsignedIntValue;
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