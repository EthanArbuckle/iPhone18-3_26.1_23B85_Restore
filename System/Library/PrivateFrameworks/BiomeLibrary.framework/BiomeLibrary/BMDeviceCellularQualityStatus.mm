@interface BMDeviceCellularQualityStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceCellularQualityStatus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceCellularQualityStatus)initWithStarting:(id)starting rat:(int)rat deviceRegistrationState:(int)state quality:(id)quality rrcStatus:(int)status;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceCellularQualityStatus

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rat" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceRegistrationState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"quality" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rrcStatus" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMDeviceCellularQualityStatus hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMDeviceCellularQualityStatus hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v6 = -[BMDeviceCellularQualityStatus starting](self, "starting"), v6 == objc_msgSend(v5, "starting"))) && (v7 = -[BMDeviceCellularQualityStatus rat](self, "rat"), v7 == objc_msgSend(v5, "rat")) && (v8 = -[BMDeviceCellularQualityStatus deviceRegistrationState](self, "deviceRegistrationState"), v8 == objc_msgSend(v5, "deviceRegistrationState")) && (!-[BMDeviceCellularQualityStatus hasQuality](self, "hasQuality") && !objc_msgSend(v5, "hasQuality") || -[BMDeviceCellularQualityStatus hasQuality](self, "hasQuality") && objc_msgSend(v5, "hasQuality") && (v9 = -[BMDeviceCellularQualityStatus quality](self, "quality"), v9 == objc_msgSend(v5, "quality"))))
    {
      rrcStatus = [(BMDeviceCellularQualityStatus *)self rrcStatus];
      v11 = rrcStatus == [v5 rrcStatus];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceCellularQualityStatus *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceCellularQualityStatus starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularQualityStatus rat](self, "rat")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularQualityStatus deviceRegistrationState](self, "deviceRegistrationState")}];
  if ([(BMDeviceCellularQualityStatus *)self hasQuality])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularQualityStatus quality](self, "quality")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularQualityStatus rrcStatus](self, "rrcStatus")}];
  v18 = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"rat";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"deviceRegistrationState";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"quality";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"rrcStatus";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v6)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v5)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMDeviceCellularQualityStatus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v38 = 0;
        v13 = 0;
        selfCopy5 = self;
        goto LABEL_43;
      }

      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
      v48[0] = v37;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v38 = 0;
      v13 = 0;
      *error = [v11 initWithDomain:v12 code:2 userInfo:v7];
      goto LABEL_56;
    }

    v38 = v6;
  }

  else
  {
    v38 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"rat"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v7;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceCellularQualityStatusRATFromString(v7)];
        goto LABEL_7;
      }

      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"rat"];
        v46 = v9;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v37 = 0;
        v13 = 0;
        *error = [v24 initWithDomain:v25 code:2 userInfo:v8];
        goto LABEL_58;
      }

      v37 = 0;
      v13 = 0;
LABEL_56:
      selfCopy5 = self;
      goto LABEL_42;
    }
  }

  v37 = 0;
LABEL_7:
  v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceRegistrationState"];
  v35 = v6;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
LABEL_22:
        v9 = v10;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceCellularQualityStatusStateFromString(v8)];
        goto LABEL_22;
      }

      if (error)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v28 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceRegistrationState"];
        v44 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v9 = 0;
        v13 = 0;
        *errorCopy = [v26 initWithDomain:v28 code:2 userInfo:v14];
        goto LABEL_54;
      }

      v9 = 0;
      v13 = 0;
LABEL_58:
      selfCopy5 = self;
      goto LABEL_41;
    }
  }

  v9 = 0;
LABEL_23:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"quality"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        goto LABEL_26;
      }

      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"quality"];
        errorCopy3 = error;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy3 forKeys:&v41 count:1];
        v20 = [v33 initWithDomain:v18 code:2 userInfo:v16];
        v15 = 0;
        v13 = 0;
        *errorCopy2 = v20;
        goto LABEL_52;
      }

      v15 = 0;
      v13 = 0;
LABEL_54:
      selfCopy5 = self;
      goto LABEL_40;
    }
  }

  v15 = 0;
LABEL_26:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"rrcStatus"];
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
LABEL_37:
        error = v17;
        goto LABEL_38;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceCellularQualityStatusRRCFromString(v16)];
        goto LABEL_37;
      }

      if (error)
      {
        errorCopy4 = error;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"rrcStatus"];
        v40 = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        *errorCopy4 = [v34 initWithDomain:v32 code:2 userInfo:v31];

        error = 0;
      }

      v13 = 0;
LABEL_52:
      selfCopy5 = self;
      goto LABEL_39;
    }
  }

  error = 0;
LABEL_38:
  selfCopy5 = -[BMDeviceCellularQualityStatus initWithStarting:rat:deviceRegistrationState:quality:rrcStatus:](self, "initWithStarting:rat:deviceRegistrationState:quality:rrcStatus:", v38, [v37 intValue], objc_msgSend(v9, "intValue"), v15, objc_msgSend(error, "intValue"));
  v13 = selfCopy5;
LABEL_39:

LABEL_40:
  v6 = v35;
LABEL_41:

LABEL_42:
LABEL_43:

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceCellularQualityStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  rat = self->_rat;
  PBDataWriterWriteUint32Field();
  deviceRegistrationState = self->_deviceRegistrationState;
  PBDataWriterWriteUint32Field();
  if (self->_hasQuality)
  {
    quality = self->_quality;
    PBDataWriterWriteInt32Field();
  }

  rrcStatus = self->_rrcStatus;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v51.receiver = self;
  v51.super_class = BMDeviceCellularQualityStatus;
  v5 = [(BMEventBase *)&v51 init];
  if (!v5)
  {
    goto LABEL_93;
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
        v52 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v52 & 0x7F) << v7;
        if ((v52 & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            v52 = 0;
            v43 = [fromCopy position] + 1;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 |= (v52 & 0x7F) << v40;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v13 = v41++ >= 9;
            if (v13)
            {
              LOBYTE(v46) = 0;
              goto LABEL_80;
            }
          }

          v46 = (v42 != 0) & ~[fromCopy hasError];
LABEL_80:
          v5->_starting = v46;
          goto LABEL_90;
        }

        if (v15 != 2)
        {
LABEL_69:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_92;
          }

          goto LABEL_90;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          v52 = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v52 & 0x7F) << v23;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_87;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 6)
        {
LABEL_87:
          LODWORD(v18) = 0;
        }

        v47 = 24;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v18 = 0;
            while (1)
            {
              v52 = 0;
              v30 = [fromCopy position] + 1;
              if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v52 & 0x7F) << v28;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v22 = v29++ > 8;
              if (v22)
              {
                goto LABEL_73;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 4)
            {
LABEL_73:
              LODWORD(v18) = 0;
            }

            v47 = 28;
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasQuality = 1;
            while (1)
            {
              v52 = 0;
              v36 = [fromCopy position] + 1;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v35 |= (v52 & 0x7F) << v33;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v13 = v34++ >= 9;
              if (v13)
              {
                v39 = 0;
                goto LABEL_78;
              }
            }

            if ([fromCopy hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_78:
            v5->_quality = v39;
            goto LABEL_90;
          case 5:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v52 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v52 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v52 & 0x7F) << v16;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_83;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 2)
            {
LABEL_83:
              LODWORD(v18) = 0;
            }

            v47 = 36;
            break;
          default:
            goto LABEL_69;
        }
      }

      *(&v5->super.super.isa + v47) = v18;
LABEL_90:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_92:
    v49 = 0;
  }

  else
  {
LABEL_93:
    v49 = v5;
  }

  return v49;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceCellularQualityStatus starting](self, "starting")}];
  v5 = BMDeviceCellularQualityStatusRATAsString([(BMDeviceCellularQualityStatus *)self rat]);
  v6 = BMDeviceCellularQualityStatusStateAsString([(BMDeviceCellularQualityStatus *)self deviceRegistrationState]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularQualityStatus quality](self, "quality")}];
  v8 = BMDeviceCellularQualityStatusRRCAsString([(BMDeviceCellularQualityStatus *)self rrcStatus]);
  v9 = [v3 initWithFormat:@"BMDeviceCellularQualityStatus with starting: %@, rat: %@, deviceRegistrationState: %@, quality: %@, rrcStatus: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMDeviceCellularQualityStatus)initWithStarting:(id)starting rat:(int)rat deviceRegistrationState:(int)state quality:(id)quality rrcStatus:(int)status
{
  startingCopy = starting;
  qualityCopy = quality;
  v17.receiver = self;
  v17.super_class = BMDeviceCellularQualityStatus;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v14->_hasStarting = 1;
      v14->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v14->_hasStarting = 0;
      v14->_starting = 0;
    }

    v14->_rat = rat;
    v14->_deviceRegistrationState = state;
    if (qualityCopy)
    {
      v14->_hasQuality = 1;
      intValue = [qualityCopy intValue];
    }

    else
    {
      v14->_hasQuality = 0;
      intValue = -1;
    }

    v14->_quality = intValue;
    v14->_rrcStatus = status;
  }

  return v14;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rat" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceRegistrationState" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"quality" number:4 type:2 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rrcStatus" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMDeviceCellularQualityStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end