@interface BMSiriTaskAggregationStatistics
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriTaskAggregationStatistics)initWithCompletedSystemTasks:(id)a3 failedSystemTasks:(id)a4 cancelledSystemTasks:(id)a5 tasksPerformedWithUI:(id)a6;
- (BMSiriTaskAggregationStatistics)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriTaskAggregationStatistics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMSiriTaskAggregationStatistics *)self completedSystemTasks];
      if (v6 != [v5 completedSystemTasks])
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

      v7 = [(BMSiriTaskAggregationStatistics *)self failedSystemTasks];
      if (v7 != [v5 failedSystemTasks])
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

      v8 = [(BMSiriTaskAggregationStatistics *)self cancelledSystemTasks];
      if (v8 != [v5 cancelledSystemTasks])
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
      v9 = [(BMSiriTaskAggregationStatistics *)self tasksPerformedWithUI];
      v10 = v9 == [v5 tasksPerformedWithUI];
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
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"failedSystemTasks";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"cancelledSystemTasks";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"tasksPerformedWithUI";
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

- (BMSiriTaskAggregationStatistics)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"completedSystemTasks"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"failedSystemTasks"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"failedSystemTasks"];
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

    v10 = [v6 objectForKeyedSubscript:@"cancelledSystemTasks"];
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
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cancelledSystemTasks"];
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

    v13 = [v6 objectForKeyedSubscript:@"tasksPerformedWithUI"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      a4 = v32;
      v15 = [(BMSiriTaskAggregationStatistics *)v11 initWithCompletedSystemTasks:v8 failedSystemTasks:v32 cancelledSystemTasks:v12 tasksPerformedWithUI:v14];
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
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksPerformedWithUI"];
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
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"completedSystemTasks"];
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
  [(BMSiriTaskAggregationStatistics *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMSiriTaskAggregationStatistics;
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
          v5->_hasCancelledSystemTasks = 1;
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
            v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__failedSystemTasks;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMSiriTaskAggregationStatistics__failedSystemTasks;
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics completedSystemTasks](self, "completedSystemTasks")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics failedSystemTasks](self, "failedSystemTasks")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics cancelledSystemTasks](self, "cancelledSystemTasks")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriTaskAggregationStatistics tasksPerformedWithUI](self, "tasksPerformedWithUI")}];
  v8 = [v3 initWithFormat:@"BMSiriTaskAggregationStatistics with completedSystemTasks: %@, failedSystemTasks: %@, cancelledSystemTasks: %@, tasksPerformedWithUI: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSiriTaskAggregationStatistics)initWithCompletedSystemTasks:(id)a3 failedSystemTasks:(id)a4 cancelledSystemTasks:(id)a5 tasksPerformedWithUI:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = BMSiriTaskAggregationStatistics;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasCompletedSystemTasks = 1;
      v15 = [v10 unsignedIntValue];
    }

    else
    {
      v15 = 0;
      v14->_hasCompletedSystemTasks = 0;
    }

    v14->_completedSystemTasks = v15;
    if (v11)
    {
      v14->_hasFailedSystemTasks = 1;
      v16 = [v11 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v14->_hasFailedSystemTasks = 0;
    }

    v14->_failedSystemTasks = v16;
    if (v12)
    {
      v14->_hasCancelledSystemTasks = 1;
      v17 = [v12 unsignedIntValue];
    }

    else
    {
      v17 = 0;
      v14->_hasCancelledSystemTasks = 0;
    }

    v14->_cancelledSystemTasks = v17;
    if (v13)
    {
      v14->_hasTasksPerformedWithUI = 1;
      v18 = [v13 unsignedIntValue];
    }

    else
    {
      v18 = 0;
      v14->_hasTasksPerformedWithUI = 0;
    }

    v14->_tasksPerformedWithUI = v18;
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