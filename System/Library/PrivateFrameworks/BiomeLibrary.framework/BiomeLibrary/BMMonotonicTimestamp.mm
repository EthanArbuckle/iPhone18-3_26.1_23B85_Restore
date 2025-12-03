@interface BMMonotonicTimestamp
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)nowFromContinuousClock;
+ (id)nowFromSuspendingClock;
+ (id)protoFields;
- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)d machAbsoluteTime:(id)time machContinuousTime:(id)continuousTime;
- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)d suspendingNanosecondsSinceBoot:(id)boot continuousNanosecondsSinceBoot:(id)sinceBoot;
- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)d value:(id)value;
- (BMMonotonicTimestamp)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)hasContinuousNanosecondsSinceBoot;
- (BOOL)hasSuspendingNanosecondsSinceBoot;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)bootSessionUUID;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (unint64_t)continuousNanosecondsSinceBoot;
- (unint64_t)suspendingNanosecondsSinceBoot;
- (void)writeTo:(id)to;
@end

@implementation BMMonotonicTimestamp

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  bootSessionUUID = [(BMMonotonicTimestamp *)self bootSessionUUID];
  uUIDString = [bootSessionUUID UUIDString];

  value = [(BMMonotonicTimestamp *)self value];
  jsonDictionary = [value jsonDictionary];

  v12[0] = @"bootSessionUUID";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"value";
  v13[0] = null;
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (jsonDictionary)
  {
    if (uUIDString)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (uUIDString)
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

- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)d machAbsoluteTime:(id)time machContinuousTime:(id)continuousTime
{
  dCopy = d;
  timeCopy = time;
  continuousTimeCopy = continuousTime;
  v11 = continuousTimeCopy;
  if (timeCopy)
  {
    v12 = MEMORY[0x1E696AD98];
    unsignedLongLongValue = [timeCopy unsignedLongLongValue];
    if (_CpuTickRate_onceToken != -1)
    {
      dispatch_once(&_CpuTickRate_onceToken, &__block_literal_global_12969);
    }

    v14 = [v12 numberWithUnsignedLongLong:(*&_CpuTickRate_rate * unsignedLongLongValue)];
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  if (!continuousTimeCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = MEMORY[0x1E696AD98];
  unsignedLongLongValue2 = [v11 unsignedLongLongValue];
  if (_CpuTickRate_onceToken != -1)
  {
    dispatch_once(&_CpuTickRate_onceToken, &__block_literal_global_12969);
  }

  v17 = [v15 numberWithUnsignedLongLong:(*&_CpuTickRate_rate * unsignedLongLongValue2)];
LABEL_10:
  v18 = [[BMMonotonicTimestampValue alloc] initWithSuspendingNanosecondsSinceBoot:v14 continuousNanosecondsSinceBoot:v17];
  v19 = [(BMMonotonicTimestamp *)self initWithBootSessionUUID:dCopy value:v18];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bootSessionUUID = [(BMMonotonicTimestamp *)self bootSessionUUID];
    bootSessionUUID2 = [v5 bootSessionUUID];
    v8 = bootSessionUUID2;
    if (bootSessionUUID == bootSessionUUID2)
    {
    }

    else
    {
      bootSessionUUID3 = [(BMMonotonicTimestamp *)self bootSessionUUID];
      bootSessionUUID4 = [v5 bootSessionUUID];
      v11 = [bootSessionUUID3 isEqual:bootSessionUUID4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    value = [(BMMonotonicTimestamp *)self value];
    value2 = [v5 value];
    if (value == value2)
    {
      v12 = 1;
    }

    else
    {
      value3 = [(BMMonotonicTimestamp *)self value];
      value4 = [v5 value];
      v12 = [value3 isEqual:value4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BMMonotonicTimestamp)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bootSessionUUID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        selfCopy = 0;
        goto LABEL_24;
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E698F240];
      v30 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bootSessionUUID"];
      v31 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v18 = [v16 initWithDomain:v17 code:2 userInfo:v9];
      selfCopy = 0;
      *error = v18;
      goto LABEL_22;
    }

    v8 = v7;
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v12)
    {
      if (!error)
      {
        selfCopy = 0;
        goto LABEL_23;
      }

      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E698F240];
      v32 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"bootSessionUUID"];
      v33[0] = v9;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *error = [v23 initWithDomain:v24 code:2 userInfo:v25];

      goto LABEL_27;
    }

    v13 = v12;

    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
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

        if (error)
        {
          v15 = v15;
          *error = v15;
        }

LABEL_20:
        selfCopy = 0;
        goto LABEL_21;
      }

      if (error)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
        v29 = v10;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *error = [v26 initWithDomain:v19 code:2 userInfo:v20];

        goto LABEL_20;
      }

LABEL_27:
      selfCopy = 0;
      goto LABEL_22;
    }
  }

  v10 = 0;
LABEL_7:
  self = [(BMMonotonicTimestamp *)self initWithBootSessionUUID:v8 value:v10];
  selfCopy = self;
LABEL_21:

LABEL_22:
LABEL_23:

LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMonotonicTimestamp *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_raw_bootSessionUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_value)
  {
    PBDataWriterPlaceMark();
    [(BMMonotonicTimestampValue *)self->_value writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMMonotonicTimestamp;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_29;
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
        LOBYTE(v23[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

        v17 = [[BMMonotonicTimestampValue alloc] initByReadFrom:fromCopy];
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  bootSessionUUID = [(BMMonotonicTimestamp *)self bootSessionUUID];
  value = [(BMMonotonicTimestamp *)self value];
  v6 = [v3 initWithFormat:@"BMMonotonicTimestamp with bootSessionUUID: %@, value: %@", bootSessionUUID, value];

  return v6;
}

- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)d value:(id)value
{
  v14[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = BMMonotonicTimestamp;
  v8 = [(BMEventBase *)&v13 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (dCopy)
    {
      v14[0] = 0;
      v14[1] = 0;
      [dCopy getUUIDBytes:v14];
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v14 length:16];
      raw_bootSessionUUID = v8->_raw_bootSessionUUID;
      v8->_raw_bootSessionUUID = v9;
    }

    else
    {
      raw_bootSessionUUID = v8->_raw_bootSessionUUID;
      v8->_raw_bootSessionUUID = 0;
    }

    objc_storeStrong(&v8->_value, value);
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
  value = [(BMMonotonicTimestamp *)self value];
  hasContinuousNanosecondsSinceBoot = [value hasContinuousNanosecondsSinceBoot];

  return hasContinuousNanosecondsSinceBoot;
}

- (unint64_t)continuousNanosecondsSinceBoot
{
  value = [(BMMonotonicTimestamp *)self value];
  continuousNanosecondsSinceBoot = [value continuousNanosecondsSinceBoot];

  return continuousNanosecondsSinceBoot;
}

- (BOOL)hasSuspendingNanosecondsSinceBoot
{
  value = [(BMMonotonicTimestamp *)self value];
  hasSuspendingNanosecondsSinceBoot = [value hasSuspendingNanosecondsSinceBoot];

  return hasSuspendingNanosecondsSinceBoot;
}

- (unint64_t)suspendingNanosecondsSinceBoot
{
  value = [(BMMonotonicTimestamp *)self value];
  suspendingNanosecondsSinceBoot = [value suspendingNanosecondsSinceBoot];

  return suspendingNanosecondsSinceBoot;
}

- (BMMonotonicTimestamp)initWithBootSessionUUID:(id)d suspendingNanosecondsSinceBoot:(id)boot continuousNanosecondsSinceBoot:(id)sinceBoot
{
  sinceBootCopy = sinceBoot;
  bootCopy = boot;
  dCopy = d;
  v11 = [[BMMonotonicTimestampValue alloc] initWithSuspendingNanosecondsSinceBoot:bootCopy continuousNanosecondsSinceBoot:sinceBootCopy];

  v12 = [(BMMonotonicTimestamp *)self initWithBootSessionUUID:dCopy value:v11];
  return v12;
}

@end