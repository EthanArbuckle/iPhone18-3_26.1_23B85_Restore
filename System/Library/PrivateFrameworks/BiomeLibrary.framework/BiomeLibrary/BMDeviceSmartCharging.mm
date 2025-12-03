@interface BMDeviceSmartCharging
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceSmartCharging)initWithBatteryLevel:(id)level targetSoC:(id)c predictedEndOfCharge:(id)charge mode:(int)mode obcEvent:(int)event;
- (BMDeviceSmartCharging)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceSmartCharging

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryLevel" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"targetSoC" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictedEndOfCharge" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mode" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"obcEvent" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
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
    if ((!-[BMDeviceSmartCharging hasBatteryLevel](self, "hasBatteryLevel") && ![v5 hasBatteryLevel] || -[BMDeviceSmartCharging hasBatteryLevel](self, "hasBatteryLevel") && objc_msgSend(v5, "hasBatteryLevel") && (v6 = -[BMDeviceSmartCharging batteryLevel](self, "batteryLevel"), v6 == objc_msgSend(v5, "batteryLevel"))) && (!-[BMDeviceSmartCharging hasTargetSoC](self, "hasTargetSoC") && !objc_msgSend(v5, "hasTargetSoC") || -[BMDeviceSmartCharging hasTargetSoC](self, "hasTargetSoC") && objc_msgSend(v5, "hasTargetSoC") && (v7 = -[BMDeviceSmartCharging targetSoC](self, "targetSoC"), v7 == objc_msgSend(v5, "targetSoC"))) && (!-[BMDeviceSmartCharging hasPredictedEndOfCharge](self, "hasPredictedEndOfCharge") && !objc_msgSend(v5, "hasPredictedEndOfCharge") || -[BMDeviceSmartCharging hasPredictedEndOfCharge](self, "hasPredictedEndOfCharge") && objc_msgSend(v5, "hasPredictedEndOfCharge") && (-[BMDeviceSmartCharging predictedEndOfCharge](self, "predictedEndOfCharge"), v9 = v8, objc_msgSend(v5, "predictedEndOfCharge"), v9 == v10)) && (v11 = -[BMDeviceSmartCharging mode](self, "mode"), v11 == objc_msgSend(v5, "mode")))
    {
      obcEvent = [(BMDeviceSmartCharging *)self obcEvent];
      v13 = obcEvent == [v5 obcEvent];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v21[5] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceSmartCharging *)self hasBatteryLevel])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSmartCharging batteryLevel](self, "batteryLevel")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceSmartCharging *)self hasTargetSoC])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSmartCharging targetSoC](self, "targetSoC")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMDeviceSmartCharging *)self hasPredictedEndOfCharge]|| ([(BMDeviceSmartCharging *)self predictedEndOfCharge], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMDeviceSmartCharging *)self predictedEndOfCharge];
    v6 = MEMORY[0x1E696AD98];
    [(BMDeviceSmartCharging *)self predictedEndOfCharge];
    v7 = [v6 numberWithDouble:?];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSmartCharging mode](self, "mode")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSmartCharging obcEvent](self, "obcEvent")}];
  v18 = v3;
  v20[0] = @"batteryLevel";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = null;
  v20[1] = @"targetSoC";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = null2;
  v20[2] = @"predictedEndOfCharge";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = null3;
  v20[3] = @"mode";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = null4;
  v20[4] = @"obcEvent";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v21[4] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:{5, v18}];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v8)
    {
LABEL_23:
      if (v7)
      {
        goto LABEL_24;
      }

LABEL_32:

      if (v4)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  if (!v7)
  {
    goto LABEL_32;
  }

LABEL_24:
  if (v4)
  {
    goto LABEL_25;
  }

LABEL_33:

LABEL_25:
  if (!v19)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMDeviceSmartCharging)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v46[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"batteryLevel"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"targetSoC"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v36 = 0;
          v17 = 0;
          goto LABEL_42;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"targetSoC"];
        v44 = v35;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v36 = 0;
        v17 = 0;
        *errorCopy = [v18 initWithDomain:v19 code:2 userInfo:v10];
        goto LABEL_41;
      }

      v36 = v9;
    }

    else
    {
      v36 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"predictedEndOfCharge"];
    v34 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          v17 = 0;
          goto LABEL_41;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predictedEndOfCharge"];
        v42 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v35 = 0;
        v17 = 0;
        *errorCopy = [v20 initWithDomain:v21 code:2 userInfo:v11];
LABEL_40:

        v8 = v34;
LABEL_41:

        goto LABEL_42;
      }

      v35 = v10;
    }

    else
    {
      v35 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v12 = 0;
            v17 = 0;
            goto LABEL_40;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mode"];
          v40 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v12 = 0;
          v17 = 0;
          *errorCopy = [v31 initWithDomain:v29 code:2 userInfo:v22];
          goto LABEL_39;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceSmartChargingModeOfOperationFromString(v11)];
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"obcEvent"];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v32 = objc_alloc(MEMORY[0x1E696ABC0]);
            v30 = *MEMORY[0x1E698F240];
            v37 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"obcEvent"];
            v38 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            *errorCopy = [v32 initWithDomain:v30 code:2 userInfo:v28];
          }

          v23 = 0;
          v17 = 0;
          goto LABEL_39;
        }

        v24 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceSmartChargingOBCEventFromString(v22)];
      }

      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    v17 = -[BMDeviceSmartCharging initWithBatteryLevel:targetSoC:predictedEndOfCharge:mode:obcEvent:](self, "initWithBatteryLevel:targetSoC:predictedEndOfCharge:mode:obcEvent:", v34, v36, v35, [v12 intValue], objc_msgSend(v23, "intValue"));
    self = v17;
LABEL_39:

    goto LABEL_40;
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
    goto LABEL_43;
  }

  errorCopy2 = error;
  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v45 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batteryLevel"];
  v46[0] = v36;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v8 = 0;
  v17 = 0;
  *errorCopy2 = [v15 initWithDomain:v16 code:2 userInfo:v9];
LABEL_42:

LABEL_43:
  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceSmartCharging *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasBatteryLevel)
  {
    batteryLevel = self->_batteryLevel;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTargetSoC)
  {
    targetSoC = self->_targetSoC;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredictedEndOfCharge)
  {
    predictedEndOfCharge = self->_predictedEndOfCharge;
    PBDataWriterWriteDoubleField();
  }

  mode = self->_mode;
  PBDataWriterWriteUint32Field();
  obcEvent = self->_obcEvent;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMDeviceSmartCharging;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_88;
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

        v9 |= (LOBYTE(v50) & 0x7F) << v7;
        if ((LOBYTE(v50) & 0x80) == 0)
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
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasBatteryLevel = 1;
          while (1)
          {
            LOBYTE(v50) = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (LOBYTE(v50) & 0x7F) << v37;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_72;
            }
          }

          if ([fromCopy hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v39;
          }

LABEL_72:
          v44 = 24;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_63:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_87;
            }

            goto LABEL_85;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasTargetSoC = 1;
          while (1)
          {
            LOBYTE(v50) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (LOBYTE(v50) & 0x7F) << v23;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_81;
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

LABEL_81:
          v44 = 28;
        }

        *(&v5->super.super.isa + v44) = v29;
      }

      else if (v15 == 3)
      {
        v5->_hasPredictedEndOfCharge = 1;
        v50 = 0.0;
        v30 = [fromCopy position] + 8;
        if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_predictedEndOfCharge = v50;
      }

      else
      {
        if (v15 == 4)
        {
          v32 = 0;
          v33 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (LOBYTE(v50) & 0x7F) << v32;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v22 = v33++ > 8;
            if (v22)
            {
              goto LABEL_67;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 8)
          {
LABEL_67:
            LODWORD(v18) = 0;
          }

          v43 = 32;
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

            v18 |= (LOBYTE(v50) & 0x7F) << v16;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_75;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0xE)
          {
LABEL_75:
            LODWORD(v18) = 0;
          }

          v43 = 36;
        }

        *(&v5->super.super.isa + v43) = v18;
      }

LABEL_85:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_87:
    v47 = 0;
  }

  else
  {
LABEL_88:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSmartCharging batteryLevel](self, "batteryLevel")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceSmartCharging targetSoC](self, "targetSoC")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMDeviceSmartCharging *)self predictedEndOfCharge];
  v7 = [v6 numberWithDouble:?];
  v8 = BMDeviceSmartChargingModeOfOperationAsString([(BMDeviceSmartCharging *)self mode]);
  v9 = BMDeviceSmartChargingOBCEventAsString([(BMDeviceSmartCharging *)self obcEvent]);
  v10 = [v3 initWithFormat:@"BMDeviceSmartCharging with batteryLevel: %@, targetSoC: %@, predictedEndOfCharge: %@, mode: %@, obcEvent: %@", v4, v5, v7, v8, v9];

  return v10;
}

- (BMDeviceSmartCharging)initWithBatteryLevel:(id)level targetSoC:(id)c predictedEndOfCharge:(id)charge mode:(int)mode obcEvent:(int)event
{
  levelCopy = level;
  cCopy = c;
  chargeCopy = charge;
  v20.receiver = self;
  v20.super_class = BMDeviceSmartCharging;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    if (levelCopy)
    {
      v15->_hasBatteryLevel = 1;
      intValue = [levelCopy intValue];
    }

    else
    {
      v15->_hasBatteryLevel = 0;
      intValue = -1;
    }

    v15->_batteryLevel = intValue;
    if (cCopy)
    {
      v15->_hasTargetSoC = 1;
      intValue2 = [cCopy intValue];
    }

    else
    {
      v15->_hasTargetSoC = 0;
      intValue2 = -1;
    }

    v15->_targetSoC = intValue2;
    if (chargeCopy)
    {
      v15->_hasPredictedEndOfCharge = 1;
      [chargeCopy doubleValue];
    }

    else
    {
      v15->_hasPredictedEndOfCharge = 0;
      v18 = -1.0;
    }

    v15->_predictedEndOfCharge = v18;
    v15->_mode = mode;
    v15->_obcEvent = event;
  }

  return v15;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryLevel" number:1 type:2 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"targetSoC" number:2 type:2 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictedEndOfCharge" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mode" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"obcEvent" number:5 type:4 subMessageClass:0];
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

    v8 = [[BMDeviceSmartCharging alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end