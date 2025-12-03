@interface BMSiriTaskAggregationStatistics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriTaskAggregationStatistics)initWithCompletedSystemTasks:(id)tasks failedSystemTasks:(id)systemTasks cancelledSystemTasks:(id)cancelledSystemTasks tasksPerformedWithUI:(id)i;
- (BMSiriTaskAggregationStatistics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriTaskAggregationStatistics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriTaskAggregationStatistics hasCompletedSystemTasks](self, "hasCompletedSystemTasks") || [v5 hasCompletedSystemTasks])
    {
      if (![(BMSiriTaskAggregationStatistics *)self hasCompletedSystemTasks])
      {
        goto LABEL_23;
      }

      if (![v5 hasCompletedSystemTasks])
      {
        goto LABEL_23;
      }

      completedSystemTasks = [(BMSiriTaskAggregationStatistics *)self completedSystemTasks];
      if (completedSystemTasks != [v5 completedSystemTasks])
      {
        goto LABEL_23;
      }
    }

    if (-[BMSiriTaskAggregationStatistics hasFailedSystemTasks](self, "hasFailedSystemTasks") || [v5 hasFailedSystemTasks])
    {
      if (![(BMSiriTaskAggregationStatistics *)self hasFailedSystemTasks])
      {
        goto LABEL_23;
      }

      if (![v5 hasFailedSystemTasks])
      {
        goto LABEL_23;
      }

      failedSystemTasks = [(BMSiriTaskAggregationStatistics *)self failedSystemTasks];
      if (failedSystemTasks != [v5 failedSystemTasks])
      {
        goto LABEL_23;
      }
    }

    if (-[BMSiriTaskAggregationStatistics hasCancelledSystemTasks](self, "hasCancelledSystemTasks") || [v5 hasCancelledSystemTasks])
    {
      if (![(BMSiriTaskAggregationStatistics *)self hasCancelledSystemTasks])
      {
        goto LABEL_23;
      }

      if (![v5 hasCancelledSystemTasks])
      {
        goto LABEL_23;
      }

      cancelledSystemTasks = [(BMSiriTaskAggregationStatistics *)self cancelledSystemTasks];
      if (cancelledSystemTasks != [v5 cancelledSystemTasks])
      {
        goto LABEL_23;
      }
    }

    if (!-[BMSiriTaskAggregationStatistics hasTasksPerformedWithUI](self, "hasTasksPerformedWithUI") && ![v5 hasTasksPerformedWithUI])
    {
      v10 = 1;
      goto LABEL_24;
    }

    if (-[BMSiriTaskAggregationStatistics hasTasksPerformedWithUI](self, "hasTasksPerformedWithUI") && [v5 hasTasksPerformedWithUI])
    {
      tasksPerformedWithUI = [(BMSiriTaskAggregationStatistics *)self tasksPerformedWithUI];
      v10 = tasksPerformedWithUI == [v5 tasksPerformedWithUI];
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
  if ([(BMSiriTaskAggregationStatistics *)self hasCompletedSystemTasks])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics completedSystemTasks](self, "completedSystemTasks")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriTaskAggregationStatistics *)self hasFailedSystemTasks])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics failedSystemTasks](self, "failedSystemTasks")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriTaskAggregationStatistics *)self hasCancelledSystemTasks])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics cancelledSystemTasks](self, "cancelledSystemTasks")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriTaskAggregationStatistics *)self hasTasksPerformedWithUI])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics tasksPerformedWithUI](self, "tasksPerformedWithUI")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"completedSystemTasks";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"failedSystemTasks";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"cancelledSystemTasks";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"tasksPerformedWithUI";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
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

- (BMSiriTaskAggregationStatistics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"completedSystemTasks"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"failedSystemTasks"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"failedSystemTasks"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cancelledSystemTasks"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cancelledSystemTasks"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"tasksPerformedWithUI"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMSiriTaskAggregationStatistics *)selfCopy3 initWithCompletedSystemTasks:v8 failedSystemTasks:v32 cancelledSystemTasks:v12 tasksPerformedWithUI:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
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

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksPerformedWithUI"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
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
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"completedSystemTasks"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriTaskAggregationStatistics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasCompletedSystemTasks)
  {
    completedSystemTasks = self->_completedSystemTasks;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFailedSystemTasks)
  {
    failedSystemTasks = self->_failedSystemTasks;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCancelledSystemTasks)
  {
    cancelledSystemTasks = self->_cancelledSystemTasks;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasTasksPerformedWithUI)
  {
    tasksPerformedWithUI = self->_tasksPerformedWithUI;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMSiriTaskAggregationStatistics;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_72;
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
        v44 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v5->_hasCancelledSystemTasks = 1;
          while (1)
          {
            v44 = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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
              v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__cancelledSystemTasks;
              goto LABEL_68;
            }
          }

          v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__cancelledSystemTasks;
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
          v5->_hasTasksPerformedWithUI = 1;
          while (1)
          {
            v44 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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
              v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__tasksPerformedWithUI;
              goto LABEL_68;
            }
          }

          v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__tasksPerformedWithUI;
        }
      }

      else if (v15 == 1)
      {
        v30 = 0;
        v31 = 0;
        v18 = 0;
        v5->_hasCompletedSystemTasks = 1;
        while (1)
        {
          v44 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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
            v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__completedSystemTasks;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__completedSystemTasks;
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
        v5->_hasFailedSystemTasks = 1;
        while (1)
        {
          v44 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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
            v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__failedSystemTasks;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__failedSystemTasks;
      }

      if ([fromCopy hasError])
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics completedSystemTasks](self, "completedSystemTasks")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics failedSystemTasks](self, "failedSystemTasks")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics cancelledSystemTasks](self, "cancelledSystemTasks")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics tasksPerformedWithUI](self, "tasksPerformedWithUI")}];
  v8 = [v3 initWithFormat:@"BMSiriTaskAggregationStatistics with completedSystemTasks: %@, failedSystemTasks: %@, cancelledSystemTasks: %@, tasksPerformedWithUI: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSiriTaskAggregationStatistics)initWithCompletedSystemTasks:(id)tasks failedSystemTasks:(id)systemTasks cancelledSystemTasks:(id)cancelledSystemTasks tasksPerformedWithUI:(id)i
{
  tasksCopy = tasks;
  systemTasksCopy = systemTasks;
  cancelledSystemTasksCopy = cancelledSystemTasks;
  iCopy = i;
  v20.receiver = self;
  v20.super_class = BMSiriTaskAggregationStatistics;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (tasksCopy)
    {
      v14->_hasCompletedSystemTasks = 1;
      unsignedIntValue = [tasksCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v14->_hasCompletedSystemTasks = 0;
    }

    v14->_completedSystemTasks = unsignedIntValue;
    if (systemTasksCopy)
    {
      v14->_hasFailedSystemTasks = 1;
      unsignedIntValue2 = [systemTasksCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v14->_hasFailedSystemTasks = 0;
    }

    v14->_failedSystemTasks = unsignedIntValue2;
    if (cancelledSystemTasksCopy)
    {
      v14->_hasCancelledSystemTasks = 1;
      unsignedIntValue3 = [cancelledSystemTasksCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v14->_hasCancelledSystemTasks = 0;
    }

    v14->_cancelledSystemTasks = unsignedIntValue3;
    if (iCopy)
    {
      v14->_hasTasksPerformedWithUI = 1;
      unsignedIntValue4 = [iCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v14->_hasTasksPerformedWithUI = 0;
    }

    v14->_tasksPerformedWithUI = unsignedIntValue4;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completedSystemTasks" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failedSystemTasks" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cancelledSystemTasks" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tasksPerformedWithUI" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completedSystemTasks" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failedSystemTasks" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cancelledSystemTasks" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tasksPerformedWithUI" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMSiriTaskAggregationStatistics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end