@interface BMClockAlarm
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMClockAlarm)initWithIsSleepAlarm:(id)alarm eventType:(int)type alarmID:(id)d lastEventType:(int)eventType enabled:(id)enabled;
- (BMClockAlarm)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMClockAlarm

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSleepAlarm" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alarmID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastEventType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enabled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
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
    if (-[BMClockAlarm hasIsSleepAlarm](self, "hasIsSleepAlarm") || [v5 hasIsSleepAlarm])
    {
      if (![(BMClockAlarm *)self hasIsSleepAlarm])
      {
        goto LABEL_19;
      }

      if (![v5 hasIsSleepAlarm])
      {
        goto LABEL_19;
      }

      isSleepAlarm = [(BMClockAlarm *)self isSleepAlarm];
      if (isSleepAlarm != [v5 isSleepAlarm])
      {
        goto LABEL_19;
      }
    }

    eventType = [(BMClockAlarm *)self eventType];
    if (eventType != [v5 eventType])
    {
      goto LABEL_19;
    }

    alarmID = [(BMClockAlarm *)self alarmID];
    alarmID2 = [v5 alarmID];
    v10 = alarmID2;
    if (alarmID == alarmID2)
    {
    }

    else
    {
      alarmID3 = [(BMClockAlarm *)self alarmID];
      alarmID4 = [v5 alarmID];
      v13 = [alarmID3 isEqual:alarmID4];

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    lastEventType = [(BMClockAlarm *)self lastEventType];
    if (lastEventType == [v5 lastEventType])
    {
      if (!-[BMClockAlarm hasEnabled](self, "hasEnabled") && ![v5 hasEnabled])
      {
        LOBYTE(v14) = 1;
        goto LABEL_20;
      }

      if (-[BMClockAlarm hasEnabled](self, "hasEnabled") && [v5 hasEnabled])
      {
        enabled = [(BMClockAlarm *)self enabled];
        v14 = enabled ^ [v5 enabled] ^ 1;
LABEL_20:

        goto LABEL_21;
      }
    }

LABEL_19:
    LOBYTE(v14) = 0;
    goto LABEL_20;
  }

  LOBYTE(v14) = 0;
LABEL_21:

  return v14;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMClockAlarm *)self hasIsSleepAlarm])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMClockAlarm isSleepAlarm](self, "isSleepAlarm")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMClockAlarm eventType](self, "eventType")}];
  alarmID = [(BMClockAlarm *)self alarmID];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMClockAlarm lastEventType](self, "lastEventType")}];
  if ([(BMClockAlarm *)self hasEnabled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMClockAlarm enabled](self, "enabled")}];
  }

  else
  {
    v7 = 0;
  }

  v18 = @"isSleepAlarm";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"eventType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"alarmID";
  null3 = alarmID;
  if (!alarmID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"lastEventType";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"enabled";
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
      if (alarmID)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (alarmID)
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

- (BMClockAlarm)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isSleepAlarm"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v36 = 0;
            v13 = 0;
            goto LABEL_38;
          }

          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
          v45 = v34;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v27 = [v37 initWithDomain:v26 code:2 userInfo:v14];
          v36 = 0;
          v13 = 0;
          *errorCopy = v27;
          goto LABEL_37;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMClockAlarmEventTypeFromString(v9)];
      }

      v36 = v10;
    }

    else
    {
      v36 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"alarmID"];
    v33 = v8;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v34 = 0;
          v13 = 0;
          goto LABEL_37;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alarmID"];
        v43 = v16;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v19 = [v35 initWithDomain:v18 code:2 userInfo:v15];
        v34 = 0;
        v13 = 0;
        *errorCopy = v19;
LABEL_36:

        v8 = v33;
LABEL_37:

        goto LABEL_38;
      }

      v34 = v14;
    }

    else
    {
      v34 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"lastEventType"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v16 = 0;
            v13 = 0;
            goto LABEL_36;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v40 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"lastEventType"];
          v41 = v21;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v16 = 0;
          v13 = 0;
          *errorCopy = [v31 initWithDomain:v29 code:2 userInfo:v20];
          goto LABEL_35;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMClockAlarmLastEventTypeFromString(v15)];
      }

      v16 = v17;
    }

    else
    {
      v16 = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"enabled"];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"enabled"];
          v39 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *errorCopy = [v30 initWithDomain:v28 code:2 userInfo:v25];
        }

        v21 = 0;
        v13 = 0;
        goto LABEL_35;
      }

      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v13 = -[BMClockAlarm initWithIsSleepAlarm:eventType:alarmID:lastEventType:enabled:](self, "initWithIsSleepAlarm:eventType:alarmID:lastEventType:enabled:", v33, [v36 intValue], v34, objc_msgSend(v16, "intValue"), v21);
    self = v13;
LABEL_35:

    goto LABEL_36;
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
    v13 = 0;
    goto LABEL_39;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSleepAlarm"];
  v47[0] = v36;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v8 = 0;
  v13 = 0;
  *error = [v11 initWithDomain:v12 code:2 userInfo:v9];
LABEL_38:

LABEL_39:
  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMClockAlarm *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsSleepAlarm)
  {
    isSleepAlarm = self->_isSleepAlarm;
    PBDataWriterWriteBOOLField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_alarmID)
  {
    PBDataWriterWriteStringField();
  }

  lastEventType = self->_lastEventType;
  PBDataWriterWriteUint32Field();
  if (self->_hasEnabled)
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v48.receiver = self;
  v48.super_class = BMClockAlarm;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v49 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v49 & 0x7F) << v7;
        if ((v49 & 0x80) == 0)
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
        goto LABEL_78;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 != 5)
        {
          if (v15 != 4)
          {
            goto LABEL_61;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v49 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v49 & 0x7F) << v16;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_70;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0xB)
          {
LABEL_70:
            LODWORD(v18) = 0;
          }

          v44 = 28;
LABEL_76:
          *(&v5->super.super.isa + v44) = v18;
          goto LABEL_77;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasEnabled = 1;
        while (1)
        {
          v49 = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v49 & 0x7F) << v30;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v36) = 0;
            goto LABEL_64;
          }
        }

        v36 = (v32 != 0) & ~[fromCopy hasError];
LABEL_64:
        v43 = 18;
LABEL_67:
        *(&v5->super.super.isa + v43) = v36;
        goto LABEL_77;
      }

      v28 = PBReaderReadString();
      alarmID = v5->_alarmID;
      v5->_alarmID = v28;

LABEL_77:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_78;
      }
    }

    if (v15 != 1)
    {
      if (v15 != 2)
      {
LABEL_61:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      v23 = 0;
      v24 = 0;
      v18 = 0;
      while (1)
      {
        v49 = 0;
        v25 = [fromCopy position] + 1;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v18 |= (v49 & 0x7F) << v23;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v22 = v24++ > 8;
        if (v22)
        {
          goto LABEL_74;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v18 > 6)
      {
LABEL_74:
        LODWORD(v18) = 0;
      }

      v44 = 24;
      goto LABEL_76;
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    v5->_hasIsSleepAlarm = 1;
    while (1)
    {
      v49 = 0;
      v40 = [fromCopy position] + 1;
      if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v39 |= (v49 & 0x7F) << v37;
      if ((v49 & 0x80) == 0)
      {
        break;
      }

      v37 += 7;
      v13 = v38++ >= 9;
      if (v13)
      {
        LOBYTE(v36) = 0;
        goto LABEL_66;
      }
    }

    v36 = (v39 != 0) & ~[fromCopy hasError];
LABEL_66:
    v43 = 16;
    goto LABEL_67;
  }

LABEL_78:
  if ([fromCopy hasError])
  {
LABEL_79:
    v46 = 0;
  }

  else
  {
LABEL_80:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMClockAlarm isSleepAlarm](self, "isSleepAlarm")}];
  v5 = BMClockAlarmEventTypeAsString([(BMClockAlarm *)self eventType]);
  alarmID = [(BMClockAlarm *)self alarmID];
  v7 = BMClockAlarmLastEventTypeAsString([(BMClockAlarm *)self lastEventType]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMClockAlarm enabled](self, "enabled")}];
  v9 = [v3 initWithFormat:@"BMClockAlarm with isSleepAlarm: %@, eventType: %@, alarmID: %@, lastEventType: %@, enabled: %@", v4, v5, alarmID, v7, v8];

  return v9;
}

- (BMClockAlarm)initWithIsSleepAlarm:(id)alarm eventType:(int)type alarmID:(id)d lastEventType:(int)eventType enabled:(id)enabled
{
  alarmCopy = alarm;
  dCopy = d;
  enabledCopy = enabled;
  v17.receiver = self;
  v17.super_class = BMClockAlarm;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    if (alarmCopy)
    {
      v15->_hasIsSleepAlarm = 1;
      v15->_isSleepAlarm = [alarmCopy BOOLValue];
    }

    else
    {
      v15->_hasIsSleepAlarm = 0;
      v15->_isSleepAlarm = 0;
    }

    v15->_eventType = type;
    objc_storeStrong(&v15->_alarmID, d);
    v15->_lastEventType = eventType;
    if (enabledCopy)
    {
      v15->_hasEnabled = 1;
      v15->_enabled = [enabledCopy BOOLValue];
    }

    else
    {
      v15->_hasEnabled = 0;
      v15->_enabled = 0;
    }
  }

  return v15;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSleepAlarm" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alarmID" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastEventType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enabled" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMClockAlarm_v1;
  }

  else
  {
    if (version != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMClockAlarm;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = version;
  }

LABEL_9:

  return v9;
}

@end