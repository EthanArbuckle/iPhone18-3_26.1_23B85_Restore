@interface BMSiriSelfTriggerSuppression
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriSelfTriggerSuppression)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriSelfTriggerSuppression)initWithNumSelfTriggersDetectedDuringEvent:(id)a3 durationOfSelfTriggerEventInSec:(id)a4 audioSource:(int)a5 isBluetoothSpeakerActive:(id)a6 isBuiltInSpeakerActive:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriSelfTriggerSuppression

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numSelfTriggersDetectedDuringEvent" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationOfSelfTriggerEventInSec" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioSource" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBluetoothSpeakerActive" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBuiltInSpeakerActive" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
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
    if (-[BMSiriSelfTriggerSuppression hasNumSelfTriggersDetectedDuringEvent](self, "hasNumSelfTriggersDetectedDuringEvent") || [v5 hasNumSelfTriggersDetectedDuringEvent])
    {
      if (![(BMSiriSelfTriggerSuppression *)self hasNumSelfTriggersDetectedDuringEvent])
      {
        goto LABEL_24;
      }

      if (![v5 hasNumSelfTriggersDetectedDuringEvent])
      {
        goto LABEL_24;
      }

      v6 = [(BMSiriSelfTriggerSuppression *)self numSelfTriggersDetectedDuringEvent];
      if (v6 != [v5 numSelfTriggersDetectedDuringEvent])
      {
        goto LABEL_24;
      }
    }

    if (-[BMSiriSelfTriggerSuppression hasDurationOfSelfTriggerEventInSec](self, "hasDurationOfSelfTriggerEventInSec") || [v5 hasDurationOfSelfTriggerEventInSec])
    {
      if (![(BMSiriSelfTriggerSuppression *)self hasDurationOfSelfTriggerEventInSec])
      {
        goto LABEL_24;
      }

      if (![v5 hasDurationOfSelfTriggerEventInSec])
      {
        goto LABEL_24;
      }

      [(BMSiriSelfTriggerSuppression *)self durationOfSelfTriggerEventInSec];
      v8 = v7;
      [v5 durationOfSelfTriggerEventInSec];
      if (v8 != v9)
      {
        goto LABEL_24;
      }
    }

    v10 = [(BMSiriSelfTriggerSuppression *)self audioSource];
    if (v10 != [v5 audioSource])
    {
      goto LABEL_24;
    }

    if (-[BMSiriSelfTriggerSuppression hasIsBluetoothSpeakerActive](self, "hasIsBluetoothSpeakerActive") || [v5 hasIsBluetoothSpeakerActive])
    {
      if (![(BMSiriSelfTriggerSuppression *)self hasIsBluetoothSpeakerActive])
      {
        goto LABEL_24;
      }

      if (![v5 hasIsBluetoothSpeakerActive])
      {
        goto LABEL_24;
      }

      v11 = [(BMSiriSelfTriggerSuppression *)self isBluetoothSpeakerActive];
      if (v11 != [v5 isBluetoothSpeakerActive])
      {
        goto LABEL_24;
      }
    }

    if (!-[BMSiriSelfTriggerSuppression hasIsBuiltInSpeakerActive](self, "hasIsBuiltInSpeakerActive") && ![v5 hasIsBuiltInSpeakerActive])
    {
      LOBYTE(v13) = 1;
      goto LABEL_25;
    }

    if (-[BMSiriSelfTriggerSuppression hasIsBuiltInSpeakerActive](self, "hasIsBuiltInSpeakerActive") && [v5 hasIsBuiltInSpeakerActive])
    {
      v12 = [(BMSiriSelfTriggerSuppression *)self isBuiltInSpeakerActive];
      v13 = v12 ^ [v5 isBuiltInSpeakerActive] ^ 1;
    }

    else
    {
LABEL_24:
      LOBYTE(v13) = 0;
    }

LABEL_25:

    goto LABEL_26;
  }

  LOBYTE(v13) = 0;
LABEL_26:

  return v13;
}

- (id)jsonDictionary
{
  v21[5] = *MEMORY[0x1E69E9840];
  if ([(BMSiriSelfTriggerSuppression *)self hasNumSelfTriggersDetectedDuringEvent])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriSelfTriggerSuppression numSelfTriggersDetectedDuringEvent](self, "numSelfTriggersDetectedDuringEvent")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMSiriSelfTriggerSuppression *)self hasDurationOfSelfTriggerEventInSec]|| ([(BMSiriSelfTriggerSuppression *)self durationOfSelfTriggerEventInSec], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMSiriSelfTriggerSuppression *)self durationOfSelfTriggerEventInSec];
    v5 = MEMORY[0x1E696AD98];
    [(BMSiriSelfTriggerSuppression *)self durationOfSelfTriggerEventInSec];
    v6 = [v5 numberWithDouble:?];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSelfTriggerSuppression audioSource](self, "audioSource")}];
  if ([(BMSiriSelfTriggerSuppression *)self hasIsBluetoothSpeakerActive])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriSelfTriggerSuppression isBluetoothSpeakerActive](self, "isBluetoothSpeakerActive")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriSelfTriggerSuppression *)self hasIsBuiltInSpeakerActive])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriSelfTriggerSuppression isBuiltInSpeakerActive](self, "isBuiltInSpeakerActive")}];
  }

  else
  {
    v9 = 0;
  }

  v18 = v3;
  v20[0] = @"numSelfTriggersDetectedDuringEvent";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = v10;
  v20[1] = @"durationOfSelfTriggerEventInSec";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = v11;
  v20[2] = @"audioSource";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = v12;
  v20[3] = @"isBluetoothSpeakerActive";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = v13;
  v20[4] = @"isBuiltInSpeakerActive";
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
      goto LABEL_26;
    }
  }

  else
  {

    if (v8)
    {
LABEL_26:
      if (v7)
      {
        goto LABEL_27;
      }

LABEL_35:

      if (v6)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }
  }

  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_36:

LABEL_28:
  if (!v19)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriSelfTriggerSuppression)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"numSelfTriggersDetectedDuringEvent"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"durationOfSelfTriggerEventInSec"];
    v33 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          v14 = 0;
          goto LABEL_33;
        }

        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"durationOfSelfTriggerEventInSec"];
        v45 = v35;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v10 = v17 = a4;
        v37 = 0;
        v14 = 0;
        *v17 = [v15 initWithDomain:v16 code:2 userInfo:v10];
        goto LABEL_32;
      }

      v37 = v9;
    }

    else
    {
      v37 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"audioSource"];
    v34 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v33)
          {
            v35 = 0;
            v14 = 0;
            goto LABEL_32;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v42 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"audioSource"];
          v43 = v19;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v29 = [v36 initWithDomain:v28 code:2 userInfo:v18];
          v35 = 0;
          v14 = 0;
          *v33 = v29;
LABEL_31:

          v8 = v34;
LABEL_32:

          goto LABEL_33;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriSelfTriggerSuppressionAudioSourceFromString(v10)];
      }

      v35 = v11;
    }

    else
    {
      v35 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"isBluetoothSpeakerActive"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v33)
        {
          v19 = 0;
          v14 = 0;
          goto LABEL_31;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBluetoothSpeakerActive"];
        v41 = v21;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v25 = [v31 initWithDomain:v24 code:2 userInfo:v20];
        v19 = 0;
        v14 = 0;
        *v33 = v25;
        goto LABEL_30;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v6 objectForKeyedSubscript:@"isBuiltInSpeakerActive"];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v33)
        {
          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBuiltInSpeakerActive"];
          v39 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *v33 = [v32 initWithDomain:v30 code:2 userInfo:v27];
        }

        v21 = 0;
        v14 = 0;
        goto LABEL_30;
      }

      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v14 = -[BMSiriSelfTriggerSuppression initWithNumSelfTriggersDetectedDuringEvent:durationOfSelfTriggerEventInSec:audioSource:isBluetoothSpeakerActive:isBuiltInSpeakerActive:](self, "initWithNumSelfTriggersDetectedDuringEvent:durationOfSelfTriggerEventInSec:audioSource:isBluetoothSpeakerActive:isBuiltInSpeakerActive:", v34, v37, [v35 intValue], v19, v21);
    self = v14;
LABEL_30:

    goto LABEL_31;
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
    v14 = 0;
    goto LABEL_34;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numSelfTriggersDetectedDuringEvent"];
  v47[0] = v37;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v8 = 0;
  v14 = 0;
  *a4 = [v12 initWithDomain:v13 code:2 userInfo:v9];
LABEL_33:

LABEL_34:
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSelfTriggerSuppression *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_hasNumSelfTriggersDetectedDuringEvent)
  {
    numSelfTriggersDetectedDuringEvent = self->_numSelfTriggersDetectedDuringEvent;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDurationOfSelfTriggerEventInSec)
  {
    durationOfSelfTriggerEventInSec = self->_durationOfSelfTriggerEventInSec;
    PBDataWriterWriteDoubleField();
  }

  audioSource = self->_audioSource;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsBluetoothSpeakerActive)
  {
    isBluetoothSpeakerActive = self->_isBluetoothSpeakerActive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBuiltInSpeakerActive)
  {
    isBuiltInSpeakerActive = self->_isBuiltInSpeakerActive;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMSiriSelfTriggerSuppression;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_83;
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
        LOBYTE(v51) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v5->_hasNumSelfTriggersDetectedDuringEvent = 1;
          while (1)
          {
            LOBYTE(v51) = 0;
            v41 = [v4 position] + 1;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v40 |= (LOBYTE(v51) & 0x7F) << v38;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v13 = v39++ >= 9;
            if (v13)
            {
              v44 = 0;
              goto LABEL_73;
            }
          }

          if ([v4 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v40;
          }

LABEL_73:
          v5->_numSelfTriggersDetectedDuringEvent = v44;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_63:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_82;
            }

            goto LABEL_80;
          }

          v5->_hasDurationOfSelfTriggerEventInSec = 1;
          v51 = 0.0;
          v23 = [v4 position] + 8;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
          {
            v46 = [v4 data];
            [v46 getBytes:&v51 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_durationOfSelfTriggerEventInSec = v51;
        }
      }

      else
      {
        if (v15 == 5)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasIsBuiltInSpeakerActive = 1;
          while (1)
          {
            LOBYTE(v51) = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (LOBYTE(v51) & 0x7F) << v25;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              LOBYTE(v31) = 0;
              goto LABEL_66;
            }
          }

          v31 = (v27 != 0) & ~[v4 hasError];
LABEL_66:
          v45 = 20;
          goto LABEL_69;
        }

        if (v15 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasIsBluetoothSpeakerActive = 1;
          while (1)
          {
            LOBYTE(v51) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 |= (LOBYTE(v51) & 0x7F) << v32;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              LOBYTE(v31) = 0;
              goto LABEL_68;
            }
          }

          v31 = (v34 != 0) & ~[v4 hasError];
LABEL_68:
          v45 = 18;
LABEL_69:
          *(&v5->super.super.isa + v45) = v31;
          goto LABEL_80;
        }

        if (v15 != 3)
        {
          goto LABEL_63;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (LOBYTE(v51) & 0x7F) << v16;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_76;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 2)
        {
LABEL_76:
          LODWORD(v18) = 0;
        }

        v5->_audioSource = v18;
      }

LABEL_80:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_82:
    v48 = 0;
  }

  else
  {
LABEL_83:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriSelfTriggerSuppression numSelfTriggersDetectedDuringEvent](self, "numSelfTriggersDetectedDuringEvent")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriSelfTriggerSuppression *)self durationOfSelfTriggerEventInSec];
  v6 = [v5 numberWithDouble:?];
  v7 = BMSiriSelfTriggerSuppressionAudioSourceAsString([(BMSiriSelfTriggerSuppression *)self audioSource]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriSelfTriggerSuppression isBluetoothSpeakerActive](self, "isBluetoothSpeakerActive")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriSelfTriggerSuppression isBuiltInSpeakerActive](self, "isBuiltInSpeakerActive")}];
  v10 = [v3 initWithFormat:@"BMSiriSelfTriggerSuppression with numSelfTriggersDetectedDuringEvent: %@, durationOfSelfTriggerEventInSec: %@, audioSource: %@, isBluetoothSpeakerActive: %@, isBuiltInSpeakerActive: %@", v4, v6, v7, v8, v9];

  return v10;
}

- (BMSiriSelfTriggerSuppression)initWithNumSelfTriggersDetectedDuringEvent:(id)a3 durationOfSelfTriggerEventInSec:(id)a4 audioSource:(int)a5 isBluetoothSpeakerActive:(id)a6 isBuiltInSpeakerActive:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = BMSiriSelfTriggerSuppression;
  v16 = [(BMEventBase *)&v20 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v16->_hasNumSelfTriggersDetectedDuringEvent = 1;
      v17 = [v12 unsignedIntValue];
    }

    else
    {
      v17 = 0;
      v16->_hasNumSelfTriggersDetectedDuringEvent = 0;
    }

    v16->_numSelfTriggersDetectedDuringEvent = v17;
    if (v13)
    {
      v16->_hasDurationOfSelfTriggerEventInSec = 1;
      [v13 doubleValue];
    }

    else
    {
      v16->_hasDurationOfSelfTriggerEventInSec = 0;
      v18 = -1.0;
    }

    v16->_durationOfSelfTriggerEventInSec = v18;
    v16->_audioSource = a5;
    if (v14)
    {
      v16->_hasIsBluetoothSpeakerActive = 1;
      v16->_isBluetoothSpeakerActive = [v14 BOOLValue];
    }

    else
    {
      v16->_hasIsBluetoothSpeakerActive = 0;
      v16->_isBluetoothSpeakerActive = 0;
    }

    if (v15)
    {
      v16->_hasIsBuiltInSpeakerActive = 1;
      v16->_isBuiltInSpeakerActive = [v15 BOOLValue];
    }

    else
    {
      v16->_hasIsBuiltInSpeakerActive = 0;
      v16->_isBuiltInSpeakerActive = 0;
    }
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numSelfTriggersDetectedDuringEvent" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationOfSelfTriggerEventInSec" number:2 type:0 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioSource" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBluetoothSpeakerActive" number:4 type:12 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBuiltInSpeakerActive" number:5 type:12 subMessageClass:0];
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

    v8 = [[BMSiriSelfTriggerSuppression alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end