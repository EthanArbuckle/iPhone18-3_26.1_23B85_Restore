@interface BMSiriSegmentsCohortsDeviceSegments
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriSegmentsCohortsDeviceSegments)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriSegmentsCohortsDeviceSegments)initWithSegmentType:(id)a3 segmentDataAvailabilityState:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriSegmentsCohortsDeviceSegments

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSiriSegmentsCohortsDeviceSegments hasSegmentType](self, "hasSegmentType") || [v5 hasSegmentType])
    {
      if (![(BMSiriSegmentsCohortsDeviceSegments *)self hasSegmentType])
      {
        goto LABEL_13;
      }

      if (![v5 hasSegmentType])
      {
        goto LABEL_13;
      }

      v6 = [(BMSiriSegmentsCohortsDeviceSegments *)self segmentType];
      if (v6 != [v5 segmentType])
      {
        goto LABEL_13;
      }
    }

    if (!-[BMSiriSegmentsCohortsDeviceSegments hasSegmentDataAvailabilityState](self, "hasSegmentDataAvailabilityState") && ![v5 hasSegmentDataAvailabilityState])
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (-[BMSiriSegmentsCohortsDeviceSegments hasSegmentDataAvailabilityState](self, "hasSegmentDataAvailabilityState") && [v5 hasSegmentDataAvailabilityState])
    {
      v7 = [(BMSiriSegmentsCohortsDeviceSegments *)self segmentDataAvailabilityState];
      v8 = v7 == [v5 segmentDataAvailabilityState];
    }

    else
    {
LABEL_13:
      v8 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(BMSiriSegmentsCohortsDeviceSegments *)self hasSegmentType])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceSegments segmentType](self, "segmentType")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriSegmentsCohortsDeviceSegments *)self hasSegmentDataAvailabilityState])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceSegments segmentDataAvailabilityState](self, "segmentDataAvailabilityState")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"segmentType";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"segmentDataAvailabilityState";
  v11[0] = v5;
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMSiriSegmentsCohortsDeviceSegments)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"segmentType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"segmentType"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      v11 = 0;
      *a4 = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"segmentDataAvailabilityState"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"segmentDataAvailabilityState"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a4 = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMSiriSegmentsCohortsDeviceSegments *)self initWithSegmentType:v8 segmentDataAvailabilityState:v10];
  v11 = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSegmentsCohortsDeviceSegments *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_hasSegmentType)
  {
    segmentType = self->_segmentType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_hasSegmentDataAvailabilityState)
  {
    segmentDataAvailabilityState = self->_segmentDataAvailabilityState;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMSiriSegmentsCohortsDeviceSegments;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
        v33 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
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
        v24 = 0;
        v25 = 0;
        v17 = 0;
        v5->_hasSegmentDataAvailabilityState = 1;
        while (1)
        {
          v33 = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v33 & 0x7F) << v24;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v21 = v25++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BMSiriSegmentsCohortsDeviceSegments__segmentDataAvailabilityState;
            goto LABEL_45;
          }
        }

        v23 = &OBJC_IVAR___BMSiriSegmentsCohortsDeviceSegments__segmentDataAvailabilityState;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasSegmentType = 1;
        while (1)
        {
          v33 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v33 & 0x7F) << v15;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BMSiriSegmentsCohortsDeviceSegments__segmentType;
            goto LABEL_45;
          }
        }

        v23 = &OBJC_IVAR___BMSiriSegmentsCohortsDeviceSegments__segmentType;
      }

      if ([v4 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

LABEL_45:
      *(&v5->super.super.isa + *v23) = v22;
LABEL_46:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceSegments segmentType](self, "segmentType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceSegments segmentDataAvailabilityState](self, "segmentDataAvailabilityState")}];
  v6 = [v3 initWithFormat:@"BMSiriSegmentsCohortsDeviceSegments with segmentType: %@, segmentDataAvailabilityState: %@", v4, v5];

  return v6;
}

- (BMSiriSegmentsCohortsDeviceSegments)initWithSegmentType:(id)a3 segmentDataAvailabilityState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BMSiriSegmentsCohortsDeviceSegments;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v6)
    {
      v8->_hasSegmentType = 1;
      v9 = [v6 intValue];
    }

    else
    {
      v8->_hasSegmentType = 0;
      v9 = -1;
    }

    v8->_segmentType = v9;
    if (v7)
    {
      v8->_hasSegmentDataAvailabilityState = 1;
      v10 = [v7 intValue];
    }

    else
    {
      v8->_hasSegmentDataAvailabilityState = 0;
      v10 = -1;
    }

    v8->_segmentDataAvailabilityState = v10;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"segmentType" number:1 type:2 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"segmentDataAvailabilityState" number:2 type:2 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"segmentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"segmentDataAvailabilityState" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMSiriSegmentsCohortsDeviceSegments alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end