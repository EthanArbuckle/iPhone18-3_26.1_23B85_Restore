@interface CPLPrequeliteTodoVar
+ (id)todoVariableWithName:(id)name defaultExpirationInterval:(double)interval;
- (CPLPrequeliteTodoVar)initWithName:(id)name defaultExpirationInterval:(double)interval;
- (PQLInjecting)hasSomethingTodo;
- (id)hasSomethingTodoNow:(id)now;
- (id)setHasCompletedGeneration:(int64_t)generation;
- (id)setHasCompletedGeneration:(int64_t)generation now:(id)now;
@end

@implementation CPLPrequeliteTodoVar

- (PQLInjecting)hasSomethingTodo
{
  v3 = +[NSDate date];
  v4 = [(CPLPrequeliteTodoVar *)self hasSomethingTodoNow:v3];

  return v4;
}

+ (id)todoVariableWithName:(id)name defaultExpirationInterval:(double)interval
{
  nameCopy = name;
  v7 = [[self alloc] initWithName:nameCopy defaultExpirationInterval:interval];

  return v7;
}

- (CPLPrequeliteTodoVar)initWithName:(id)name defaultExpirationInterval:(double)interval
{
  nameCopy = name;
  if (interval != 0.0 && interval < 60.0)
  {
    sub_1001C5EE0(a2, self);
  }

  v9 = nameCopy;
  v10 = [nameCopy stringByAppendingString:@"CurrentGeneration"];
  v11 = +[CPLPrequeliteType integerType];
  v51 = v10;
  v12 = [CPLPrequeliteVariable variableWithName:v10 defaultValue:&off_10028F1A8 type:v11];

  v13 = [v9 stringByAppendingString:@"TargetGeneration"];
  v14 = +[CPLPrequeliteType integerType];
  v50 = v13;
  v15 = [CPLPrequeliteVariable variableWithName:v13 defaultValue:&off_10028F1A8 type:v14];

  if (interval <= 0.0)
  {
    v53[0] = v12;
    v53[1] = v15;
    v25 = [NSArray arrayWithObjects:v53 count:2];
    v26 = 0;
    v24 = 0;
  }

  else
  {
    v16 = [v9 stringByAppendingString:@"LastCompletionDate"];
    +[CPLPrequeliteType dateType];
    v18 = v17 = v12;
    v19 = [CPLPrequeliteVariable variableWithName:v16 defaultValue:0 type:v18];

    v20 = [v9 stringByAppendingString:@"ExpirationInterval"];
    v21 = [NSNumber numberWithDouble:interval];
    v22 = +[CPLPrequeliteType integerType];
    v12 = v17;
    v23 = [CPLPrequeliteVariable variableWithName:v20 defaultValue:v21 type:v22];

    v24 = v19;
    v54[0] = v12;
    v54[1] = v15;
    v54[2] = v19;
    v54[3] = v23;
    v25 = [NSArray arrayWithObjects:v54 count:4];

    v26 = v23;
  }

  v52.receiver = self;
  v52.super_class = CPLPrequeliteTodoVar;
  v27 = [(CPLPrequeliteVariableGroup *)&v52 initWithVariables:v25];
  v28 = v27;
  if (v27)
  {
    [(CPLPrequeliteVariableGroup *)v27 setShouldNotCacheValue:1];
    objc_storeStrong(&v28->_currentGenerationVar, v12);
    objc_storeStrong(&v28->_targetGenerationVar, v15);
    v49 = v24;
    objc_storeStrong(&v28->_lastCompletionDateVar, v24);
    v48 = v26;
    objc_storeStrong(&v28->_expirationIntervalVar, v26);
    v29 = objc_alloc_init(NSMutableData);
    v30 = [(CPLPrequeliteVariable *)v28->_targetGenerationVar sql];
    [v29 appendData:v30];

    [v29 appendBytes:" = " length:3];
    v31 = [(CPLPrequeliteVariable *)v28->_targetGenerationVar sql];
    [v29 appendData:v31];

    [v29 appendBytes:" + 1" length:4];
    v32 = [[PQLRawInjection alloc] initWithData:v29];
    setHasSomethingTodo = v28->_setHasSomethingTodo;
    v28->_setHasSomethingTodo = v32;

    v34 = objc_alloc_init(NSMutableData);
    v35 = [(CPLPrequeliteVariable *)v28->_currentGenerationVar sql];
    [(NSData *)v34 appendData:v35];

    [(NSData *)v34 appendBytes:" = ?" length:4];
    v36 = objc_alloc_init(NSMutableData);
    objc_msgSend(v36, "appendBytes:length:", "(", 1);
    v37 = [(CPLPrequeliteVariable *)v28->_currentGenerationVar sql];
    [v36 appendData:v37];

    [v36 appendBytes:" != " length:4];
    v38 = [(CPLPrequeliteVariable *)v28->_targetGenerationVar sql];
    [v36 appendData:v38];

    if (v28->_lastCompletionDateVar)
    {
      [v36 appendBytes:" OR " length:4];
      v39 = [(CPLPrequeliteVariable *)v28->_lastCompletionDateVar sql];
      [v36 appendData:v39];

      [v36 appendBytes:" IS NULL OR " length:12];
      v40 = [(CPLPrequeliteVariable *)v28->_lastCompletionDateVar sql];
      [v36 appendData:v40];

      [v36 appendBytes:" > ? OR " length:8];
      v41 = [(CPLPrequeliteVariable *)v28->_lastCompletionDateVar sql];
      [v36 appendData:v41];

      [v36 appendBytes:" + " length:3];
      v42 = [(CPLPrequeliteVariable *)v28->_expirationIntervalVar sql];
      [v36 appendData:v42];

      [v36 appendBytes:" < ?" length:4];
      [v36 appendBytes:" length:?]", 1);
      objc_storeStrong(&v28->_hasSomethingTodoSQL, v36);
      [(NSData *)v34 appendBytes:" length:", 2];
      v43 = [(CPLPrequeliteVariable *)v28->_lastCompletionDateVar sql];
      [(NSData *)v34 appendData:v43];

      [(NSData *)v34 appendBytes:" = ?" length:4];
    }

    else
    {
      [v36 appendBytes:" length:?]", 1);
      v44 = [[PQLRawInjection alloc] initWithData:v36];
      hasSomethingTodoConstantInjection = v28->_hasSomethingTodoConstantInjection;
      v28->_hasSomethingTodoConstantInjection = v44;
    }

    setHasCompletedGenerationSQL = v28->_setHasCompletedGenerationSQL;
    v28->_setHasCompletedGenerationSQL = v34;

    v26 = v48;
    v24 = v49;
  }

  return v28;
}

- (id)setHasCompletedGeneration:(int64_t)generation
{
  v5 = +[NSDate date];
  v6 = [(CPLPrequeliteTodoVar *)self setHasCompletedGeneration:generation now:v5];

  return v6;
}

- (id)hasSomethingTodoNow:(id)now
{
  lastCompletionDateVar = self->_lastCompletionDateVar;
  if (lastCompletionDateVar)
  {
    v5 = [(CPLPrequeliteVariable *)lastCompletionDateVar bindableValueForValue:now];
    v6 = [[_CPLPrequeliteHasSomethingTodoNow alloc] initWithSQL:self->_hasSomethingTodoSQL now:v5];
  }

  else
  {
    v6 = self->_hasSomethingTodoConstantInjection;
  }

  return v6;
}

- (id)setHasCompletedGeneration:(int64_t)generation now:(id)now
{
  lastCompletionDateVar = self->_lastCompletionDateVar;
  if (lastCompletionDateVar)
  {
    v7 = [(CPLPrequeliteVariable *)lastCompletionDateVar bindableValueForValue:now];
    v8 = [[_CPLPrequeliteHasCompletedGeneration alloc] initWithSQL:self->_setHasCompletedGenerationSQL generation:generation now:v7];
  }

  else
  {
    v8 = [[_CPLPrequeliteHasCompletedGeneration alloc] initWithSQL:self->_setHasCompletedGenerationSQL generation:generation now:0];
  }

  return v8;
}

@end