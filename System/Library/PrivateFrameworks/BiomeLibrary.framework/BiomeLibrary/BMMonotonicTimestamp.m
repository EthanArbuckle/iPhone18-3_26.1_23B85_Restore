@interface BMMonotonicTimestamp
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)nowFromContinuousClock;
+ (id)nowFromSuspendingClock;
+ (id)protoFields;
- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)a3 machAbsoluteTime:(id)a4 machContinuousTime:(id)a5;
- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)a3 suspendingNanosecondsSinceBoot:(id)a4 continuousNanosecondsSinceBoot:(id)a5;
- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)a3 value:(id)a4;
- (BMMonotonicTimestamp)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)hasContinuousNanosecondsSinceBoot;
- (BOOL)hasSuspendingNanosecondsSinceBoot;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)bootSessionUUID;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (unint64_t)continuousNanosecondsSinceBoot;
- (unint64_t)suspendingNanosecondsSinceBoot;
- (void)writeTo:(id)a3;
@end

@implementation BMMonotonicTimestamp

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMMonotonicTimestamp *)self bootSessionUUID];
  v4 = [v3 UUIDString];

  v5 = [(BMMonotonicTimestamp *)self value];
  v6 = [v5 jsonDictionary];

  v12[0] = @"bootSessionUUID";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"value";
  v13[0] = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
  {
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSUUID)bootSessionUUID
{
  raw_bootSessionUUID = self->_raw_bootSessionUUID;
  if (raw_bootSessionUUID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_bootSessionUUID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)a3 machAbsoluteTime:(id)a4 machContinuousTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [v9 unsignedLongLongValue];
    if (_CpuTickRate_onceToken != -1)
    {
      dispatch_once(&_CpuTickRate_onceToken, &__block_literal_global_12969);
    }

    v14 = [v12 numberWithUnsignedLongLong:(*&_CpuTickRate_rate * v13)];
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = MEMORY[0x1E696AD98];
  v16 = [v11 unsignedLongLongValue];
  if (_CpuTickRate_onceToken != -1)
  {
    dispatch_once(&_CpuTickRate_onceToken, &__block_literal_global_12969);
  }

  v17 = [v15 numberWithUnsignedLongLong:(*&_CpuTickRate_rate * v16)];
LABEL_10:
  v18 = [[BMMonotonicTimestampValue alloc] initWithSuspendingNanosecondsSinceBoot:v14 continuousNanosecondsSinceBoot:v17];
  v19 = [(BMMonotonicTimestamp *)self initWithBootSessionUUID:v8 value:v18];

  return v19;
}

+ (id)nowFromContinuousClock
{
  v2 = [BMMonotonicTimestamp alloc];
  v3 = _CurrentBootSessionUUID();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_continuous_time()];
  v5 = [(BMMonotonicTimestamp *)v2 initWithBootSessionUUID:v3 machAbsoluteTime:0 machContinuousTime:v4];

  return v5;
}

+ (id)nowFromSuspendingClock
{
  v2 = [BMMonotonicTimestamp alloc];
  v3 = _CurrentBootSessionUUID();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = [(BMMonotonicTimestamp *)v2 initWithBootSessionUUID:v3 machAbsoluteTime:v4 machContinuousTime:0];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMonotonicTimestamp *)self bootSessionUUID];
    v7 = [v5 bootSessionUUID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMonotonicTimestamp *)self bootSessionUUID];
      v10 = [v5 bootSessionUUID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(BMMonotonicTimestamp *)self value];
    v14 = [v5 value];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(BMMonotonicTimestamp *)self value];
      v16 = [v5 value];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BMMonotonicTimestamp)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bootSessionUUID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v11 = 0;
        goto LABEL_24;
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E698F240];
      v30 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bootSessionUUID"];
      v31 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v18 = [v16 initWithDomain:v17 code:2 userInfo:v9];
      v11 = 0;
      *a4 = v18;
      goto LABEL_22;
    }

    v8 = v7;
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v12)
    {
      if (!a4)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E698F240];
      v32 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"bootSessionUUID"];
      v33[0] = v9;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a4 = [v23 initWithDomain:v24 code:2 userInfo:v25];

      goto LABEL_27;
    }

    v13 = v12;

    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"value"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v9;
        v27 = 0;
        v10 = [[BMMonotonicTimestampValue alloc] initWithJSONDictionary:v14 error:&v27];
        v15 = v27;
        if (!v15)
        {

          goto LABEL_7;
        }

        if (a4)
        {
          v15 = v15;
          *a4 = v15;
        }

LABEL_20:
        v11 = 0;
        goto LABEL_21;
      }

      if (a4)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
        v29 = v10;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *a4 = [v26 initWithDomain:v19 code:2 userInfo:v20];

        goto LABEL_20;
      }

LABEL_27:
      v11 = 0;
      goto LABEL_22;
    }
  }

  v10 = 0;
LABEL_7:
  self = [(BMMonotonicTimestamp *)self initWithBootSessionUUID:v8 value:v10];
  v11 = self;
LABEL_21:

LABEL_22:
LABEL_23:

LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMonotonicTimestamp *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_raw_bootSessionUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_value)
  {
    PBDataWriterPlaceMark();
    [(BMMonotonicTimestampValue *)self->_value writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMMonotonicTimestamp;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_29;
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
        LOBYTE(v23[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v23[0] & 0x7F) << v7;
        if ((v23[0] & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_28;
        }

        v17 = [[BMMonotonicTimestampValue alloc] initByReadFrom:v4];
        if (!v17)
        {
          goto LABEL_28;
        }

        value = v5->_value;
        v5->_value = v17;

        PBReaderRecallMark();
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadData();
        if ([(NSData *)v15 length]!= 16)
        {

          goto LABEL_28;
        }

        raw_bootSessionUUID = v5->_raw_bootSessionUUID;
        v5->_raw_bootSessionUUID = v15;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_28;
      }

      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_28:
    v20 = 0;
  }

  else
  {
LABEL_29:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMonotonicTimestamp *)self bootSessionUUID];
  v5 = [(BMMonotonicTimestamp *)self value];
  v6 = [v3 initWithFormat:@"BMMonotonicTimestamp with bootSessionUUID: %@, value: %@", v4, v5];

  return v6;
}

- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)a3 value:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = BMMonotonicTimestamp;
  v8 = [(BMEventBase *)&v13 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v6)
    {
      v14[0] = 0;
      v14[1] = 0;
      [v6 getUUIDBytes:v14];
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v14 length:16];
      raw_bootSessionUUID = v8->_raw_bootSessionUUID;
      v8->_raw_bootSessionUUID = v9;
    }

    else
    {
      raw_bootSessionUUID = v8->_raw_bootSessionUUID;
      v8->_raw_bootSessionUUID = 0;
    }

    objc_storeStrong(&v8->_value, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bootSessionUUID" number:1 type:14 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bootSessionUUID" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_13149];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __31__BMMonotonicTimestamp_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 value];
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

    v8 = [[BMMonotonicTimestamp alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

- (BOOL)hasContinuousNanosecondsSinceBoot
{
  v2 = [(BMMonotonicTimestamp *)self value];
  v3 = [v2 hasContinuousNanosecondsSinceBoot];

  return v3;
}

- (unint64_t)continuousNanosecondsSinceBoot
{
  v2 = [(BMMonotonicTimestamp *)self value];
  v3 = [v2 continuousNanosecondsSinceBoot];

  return v3;
}

- (BOOL)hasSuspendingNanosecondsSinceBoot
{
  v2 = [(BMMonotonicTimestamp *)self value];
  v3 = [v2 hasSuspendingNanosecondsSinceBoot];

  return v3;
}

- (unint64_t)suspendingNanosecondsSinceBoot
{
  v2 = [(BMMonotonicTimestamp *)self value];
  v3 = [v2 suspendingNanosecondsSinceBoot];

  return v3;
}

- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)a3 suspendingNanosecondsSinceBoot:(id)a4 continuousNanosecondsSinceBoot:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[BMMonotonicTimestampValue alloc] initWithSuspendingNanosecondsSinceBoot:v9 continuousNanosecondsSinceBoot:v8];

  v12 = [(BMMonotonicTimestamp *)self initWithBootSessionUUID:v10 value:v11];
  return v12;
}

@end