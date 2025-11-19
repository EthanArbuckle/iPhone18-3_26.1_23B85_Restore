@interface BMDeviceSmartCharging
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceSmartCharging)initWithBatteryLevel:(id)a3 targetSoC:(id)a4 predictedEndOfCharge:(id)a5 mode:(int)a6 obcEvent:(int)a7;
- (BMDeviceSmartCharging)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ((!-[BMDeviceSmartCharging hasBatteryLevel](self, "hasBatteryLevel") && ![v5 hasBatteryLevel] || -[BMDeviceSmartCharging hasBatteryLevel](self, "hasBatteryLevel") && objc_msgSend(v5, "hasBatteryLevel") && (v6 = -[BMDeviceSmartCharging batteryLevel](self, "batteryLevel"), v6 == objc_msgSend(v5, "batteryLevel"))) && (!-[BMDeviceSmartCharging hasTargetSoC](self, "hasTargetSoC") && !objc_msgSend(v5, "hasTargetSoC") || -[BMDeviceSmartCharging hasTargetSoC](self, "hasTargetSoC") && objc_msgSend(v5, "hasTargetSoC") && (v7 = -[BMDeviceSmartCharging targetSoC](self, "targetSoC"), v7 == objc_msgSend(v5, "targetSoC"))) && (!-[BMDeviceSmartCharging hasPredictedEndOfCharge](self, "hasPredictedEndOfCharge") && !objc_msgSend(v5, "hasPredictedEndOfCharge") || -[BMDeviceSmartCharging hasPredictedEndOfCharge](self, "hasPredictedEndOfCharge") && objc_msgSend(v5, "hasPredictedEndOfCharge") && (-[BMDeviceSmartCharging predictedEndOfCharge](self, "predictedEndOfCharge"), v9 = v8, objc_msgSend(v5, "predictedEndOfCharge"), v9 == v10)) && (v11 = -[BMDeviceSmartCharging mode](self, "mode"), v11 == objc_msgSend(v5, "mode")))
    {
      v12 = [(BMDeviceSmartCharging *)self obcEvent];
      v13 = v12 == [v5 obcEvent];
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
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = v10;
  v20[1] = @"targetSoC";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = v11;
  v20[2] = @"predictedEndOfCharge";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = v12;
  v20[3] = @"mode";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = v13;
  v20[4] = @"obcEvent";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v21[4] = v14;
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

- (BMDeviceSmartCharging)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"batteryLevel"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"targetSoC"];
    v33 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *v33 = [v18 initWithDomain:v19 code:2 userInfo:v10];
        goto LABEL_41;
      }

      v36 = v9;
    }

    else
    {
      v36 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"predictedEndOfCharge"];
    v34 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *v33 = [v20 initWithDomain:v21 code:2 userInfo:v11];
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

    v11 = [v6 objectForKeyedSubscript:@"mode"];
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
          if (!a4)
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
          *v33 = [v31 initWithDomain:v29 code:2 userInfo:v22];
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

    v22 = [v6 objectForKeyedSubscript:@"obcEvent"];
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
          if (v33)
          {
            v32 = objc_alloc(MEMORY[0x1E696ABC0]);
            v30 = *MEMORY[0x1E698F240];
            v37 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"obcEvent"];
            v38 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            *v33 = [v32 initWithDomain:v30 code:2 userInfo:v28];
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

  if (!a4)
  {
    v8 = 0;
    v17 = 0;
    goto LABEL_43;
  }

  v14 = a4;
  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v45 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batteryLevel"];
  v46[0] = v36;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v8 = 0;
  v17 = 0;
  *v14 = [v15 initWithDomain:v16 code:2 userInfo:v9];
LABEL_42:

LABEL_43:
  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceSmartCharging *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMDeviceSmartCharging;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_88;
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
        LOBYTE(v50) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v40 = [v4 position] + 1;
            if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
        v30 = [v4 position] + 8;
        if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 8, v31 <= objc_msgSend(v4, "length")))
        {
          v45 = [v4 data];
          [v45 getBytes:&v50 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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
            v34 = [v4 position] + 1;
            if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
            {
              v36 = [v4 data];
              [v36 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v18 > 8)
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
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v18 > 0xE)
          {
LABEL_75:
            LODWORD(v18) = 0;
          }

          v43 = 36;
        }

        *(&v5->super.super.isa + v43) = v18;
      }

LABEL_85:
      v46 = [v4 position];
    }

    while (v46 < [v4 length]);
  }

  if ([v4 hasError])
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

- (BMDeviceSmartCharging)initWithBatteryLevel:(id)a3 targetSoC:(id)a4 predictedEndOfCharge:(id)a5 mode:(int)a6 obcEvent:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = BMDeviceSmartCharging;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v15->_hasBatteryLevel = 1;
      v16 = [v12 intValue];
    }

    else
    {
      v15->_hasBatteryLevel = 0;
      v16 = -1;
    }

    v15->_batteryLevel = v16;
    if (v13)
    {
      v15->_hasTargetSoC = 1;
      v17 = [v13 intValue];
    }

    else
    {
      v15->_hasTargetSoC = 0;
      v17 = -1;
    }

    v15->_targetSoC = v17;
    if (v14)
    {
      v15->_hasPredictedEndOfCharge = 1;
      [v14 doubleValue];
    }

    else
    {
      v15->_hasPredictedEndOfCharge = 0;
      v18 = -1.0;
    }

    v15->_predictedEndOfCharge = v18;
    v15->_mode = a6;
    v15->_obcEvent = a7;
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