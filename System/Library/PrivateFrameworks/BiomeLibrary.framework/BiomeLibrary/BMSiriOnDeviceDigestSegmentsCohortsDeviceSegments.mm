@interface BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments)initWithSegmentType:(id)a3 segmentDataAvailabilityState:(id)a4 daysWithTwoValidAssistantTurnsPerWeek:(id)a5 daysWithTwoAssistantSpeechRequestsPerWeek:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments hasSegmentType](self, "hasSegmentType") || [v5 hasSegmentType])
    {
      if (![(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasSegmentType])
      {
        goto LABEL_23;
      }

      if (![v5 hasSegmentType])
      {
        goto LABEL_23;
      }

      v6 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self segmentType];
      if (v6 != [v5 segmentType])
      {
        goto LABEL_23;
      }
    }

    if (-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments hasSegmentDataAvailabilityState](self, "hasSegmentDataAvailabilityState") || [v5 hasSegmentDataAvailabilityState])
    {
      if (![(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasSegmentDataAvailabilityState])
      {
        goto LABEL_23;
      }

      if (![v5 hasSegmentDataAvailabilityState])
      {
        goto LABEL_23;
      }

      v7 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self segmentDataAvailabilityState];
      if (v7 != [v5 segmentDataAvailabilityState])
      {
        goto LABEL_23;
      }
    }

    if (-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments hasDaysWithTwoValidAssistantTurnsPerWeek](self, "hasDaysWithTwoValidAssistantTurnsPerWeek") || [v5 hasDaysWithTwoValidAssistantTurnsPerWeek])
    {
      if (![(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasDaysWithTwoValidAssistantTurnsPerWeek])
      {
        goto LABEL_23;
      }

      if (![v5 hasDaysWithTwoValidAssistantTurnsPerWeek])
      {
        goto LABEL_23;
      }

      v8 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self daysWithTwoValidAssistantTurnsPerWeek];
      if (v8 != [v5 daysWithTwoValidAssistantTurnsPerWeek])
      {
        goto LABEL_23;
      }
    }

    if (!-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments hasDaysWithTwoAssistantSpeechRequestsPerWeek](self, "hasDaysWithTwoAssistantSpeechRequestsPerWeek") && ![v5 hasDaysWithTwoAssistantSpeechRequestsPerWeek])
    {
      v10 = 1;
      goto LABEL_24;
    }

    if (-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments hasDaysWithTwoAssistantSpeechRequestsPerWeek](self, "hasDaysWithTwoAssistantSpeechRequestsPerWeek") && [v5 hasDaysWithTwoAssistantSpeechRequestsPerWeek])
    {
      v9 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self daysWithTwoAssistantSpeechRequestsPerWeek];
      v10 = v9 == [v5 daysWithTwoAssistantSpeechRequestsPerWeek];
    }

    else
    {
LABEL_23:
      v10 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasSegmentType])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments segmentType](self, "segmentType")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasSegmentDataAvailabilityState])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments segmentDataAvailabilityState](self, "segmentDataAvailabilityState")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasDaysWithTwoValidAssistantTurnsPerWeek])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments daysWithTwoValidAssistantTurnsPerWeek](self, "daysWithTwoValidAssistantTurnsPerWeek")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self hasDaysWithTwoAssistantSpeechRequestsPerWeek])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments daysWithTwoAssistantSpeechRequestsPerWeek](self, "daysWithTwoAssistantSpeechRequestsPerWeek")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"segmentType";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"segmentDataAvailabilityState";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"daysWithTwoValidAssistantTurnsPerWeek";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"daysWithTwoAssistantSpeechRequestsPerWeek";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v5)
    {
LABEL_23:
      if (v4)
      {
        goto LABEL_24;
      }

LABEL_30:

      if (v3)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_31:

LABEL_25:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"segmentType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"segmentDataAvailabilityState"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = a4;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"segmentDataAvailabilityState"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        a4 = 0;
        v15 = 0;
        *v33 = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"daysWithTwoValidAssistantTurnsPerWeek"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v15 = 0;
          a4 = v32;
          goto LABEL_33;
        }

        v11 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysWithTwoValidAssistantTurnsPerWeek"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *a4 = v23;
        goto LABEL_31;
      }

      v11 = self;
      v12 = v10;
    }

    else
    {
      v11 = self;
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"daysWithTwoAssistantSpeechRequestsPerWeek"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      a4 = v32;
      v15 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)v11 initWithSegmentType:v8 segmentDataAvailabilityState:v32 daysWithTwoValidAssistantTurnsPerWeek:v12 daysWithTwoAssistantSpeechRequestsPerWeek:v14];
      v11 = v15;
LABEL_32:

      self = v11;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (a4)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysWithTwoAssistantSpeechRequestsPerWeek"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a4 = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    a4 = v32;
    goto LABEL_32;
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
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"segmentType"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  a4 = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_hasSegmentType)
  {
    segmentType = self->_segmentType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSegmentDataAvailabilityState)
  {
    segmentDataAvailabilityState = self->_segmentDataAvailabilityState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDaysWithTwoValidAssistantTurnsPerWeek)
  {
    daysWithTwoValidAssistantTurnsPerWeek = self->_daysWithTwoValidAssistantTurnsPerWeek;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDaysWithTwoAssistantSpeechRequestsPerWeek)
  {
    daysWithTwoAssistantSpeechRequestsPerWeek = self->_daysWithTwoAssistantSpeechRequestsPerWeek;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_72;
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
        v44 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v44 & 0x7F) << v7;
        if ((v44 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v35 = 0;
          v36 = 0;
          v18 = 0;
          v5->_hasDaysWithTwoValidAssistantTurnsPerWeek = 1;
          while (1)
          {
            v44 = 0;
            v37 = [v4 position] + 1;
            if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
            {
              v39 = [v4 data];
              [v39 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v44 & 0x7F) << v35;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v22 = v36++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__daysWithTwoValidAssistantTurnsPerWeek;
              goto LABEL_68;
            }
          }

          v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__daysWithTwoValidAssistantTurnsPerWeek;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_69;
          }

          v25 = 0;
          v26 = 0;
          v18 = 0;
          v5->_hasDaysWithTwoAssistantSpeechRequestsPerWeek = 1;
          while (1)
          {
            v44 = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v44 & 0x7F) << v25;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__daysWithTwoAssistantSpeechRequestsPerWeek;
              goto LABEL_68;
            }
          }

          v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__daysWithTwoAssistantSpeechRequestsPerWeek;
        }
      }

      else if (v15 == 1)
      {
        v30 = 0;
        v31 = 0;
        v18 = 0;
        v5->_hasSegmentType = 1;
        while (1)
        {
          v44 = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v44 & 0x7F) << v30;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v22 = v31++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__segmentType;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__segmentType;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasSegmentDataAvailabilityState = 1;
        while (1)
        {
          v44 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v44 & 0x7F) << v16;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__segmentDataAvailabilityState;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments__segmentDataAvailabilityState;
      }

      if ([v4 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

LABEL_68:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_69:
      v40 = [v4 position];
    }

    while (v40 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_71:
    v41 = 0;
  }

  else
  {
LABEL_72:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments segmentType](self, "segmentType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments segmentDataAvailabilityState](self, "segmentDataAvailabilityState")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments daysWithTwoValidAssistantTurnsPerWeek](self, "daysWithTwoValidAssistantTurnsPerWeek")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments daysWithTwoAssistantSpeechRequestsPerWeek](self, "daysWithTwoAssistantSpeechRequestsPerWeek")}];
  v8 = [v3 initWithFormat:@"BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments with segmentType: %@, segmentDataAvailabilityState: %@, daysWithTwoValidAssistantTurnsPerWeek: %@, daysWithTwoAssistantSpeechRequestsPerWeek: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments)initWithSegmentType:(id)a3 segmentDataAvailabilityState:(id)a4 daysWithTwoValidAssistantTurnsPerWeek:(id)a5 daysWithTwoAssistantSpeechRequestsPerWeek:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasSegmentType = 1;
      v15 = [v10 intValue];
    }

    else
    {
      v14->_hasSegmentType = 0;
      v15 = -1;
    }

    v14->_segmentType = v15;
    if (v11)
    {
      v14->_hasSegmentDataAvailabilityState = 1;
      v16 = [v11 intValue];
    }

    else
    {
      v14->_hasSegmentDataAvailabilityState = 0;
      v16 = -1;
    }

    v14->_segmentDataAvailabilityState = v16;
    if (v12)
    {
      v14->_hasDaysWithTwoValidAssistantTurnsPerWeek = 1;
      v17 = [v12 intValue];
    }

    else
    {
      v14->_hasDaysWithTwoValidAssistantTurnsPerWeek = 0;
      v17 = -1;
    }

    v14->_daysWithTwoValidAssistantTurnsPerWeek = v17;
    if (v13)
    {
      v14->_hasDaysWithTwoAssistantSpeechRequestsPerWeek = 1;
      v18 = [v13 intValue];
    }

    else
    {
      v14->_hasDaysWithTwoAssistantSpeechRequestsPerWeek = 0;
      v18 = -1;
    }

    v14->_daysWithTwoAssistantSpeechRequestsPerWeek = v18;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"segmentType" number:1 type:2 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"segmentDataAvailabilityState" number:2 type:2 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"daysWithTwoValidAssistantTurnsPerWeek" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"daysWithTwoAssistantSpeechRequestsPerWeek" number:4 type:2 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"segmentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"segmentDataAvailabilityState" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"daysWithTwoValidAssistantTurnsPerWeek" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"daysWithTwoAssistantSpeechRequestsPerWeek" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end