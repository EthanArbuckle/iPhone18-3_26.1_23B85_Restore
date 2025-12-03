@interface _CPLCloudKitOperationSession
- (BOOL)beginTask:(id)task;
- (_CPLCloudKitOperationSession)init;
- (id)status;
- (id)statusObject;
- (void)endTask:(id)task withOperationClasses:(id)classes operationsAllowingCellular:(id)cellular;
@end

@implementation _CPLCloudKitOperationSession

- (_CPLCloudKitOperationSession)init
{
  v14.receiver = self;
  v14.super_class = _CPLCloudKitOperationSession;
  v2 = [(_CPLCloudKitOperationSession *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCountedSet);
    taskCounters = v2->_taskCounters;
    v2->_taskCounters = v3;

    v5 = objc_alloc_init(NSCountedSet);
    currentTaskClasses = v2->_currentTaskClasses;
    v2->_currentTaskClasses = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    classCountPerTaskClass = v2->_classCountPerTaskClass;
    v2->_classCountPerTaskClass = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    cellularClassCountPerTaskClass = v2->_cellularClassCountPerTaskClass;
    v2->_cellularClassCountPerTaskClass = v9;

    v11 = +[NSDate date];
    startSessionDate = v2->_startSessionDate;
    v2->_startSessionDate = v11;
  }

  return v2;
}

- (BOOL)beginTask:(id)task
{
  taskCopy = task;
  if (qword_1002C5618 != -1)
  {
    sub_1001AD3CC();
  }

  dispatch_assert_queue_V2(qword_1002C5610);
  lastOperationDate = self->_lastOperationDate;
  if (lastOperationDate && (([(NSDate *)lastOperationDate timeIntervalSinceNow], v6 <= 0.0) ? (v7 = v6 < -30.0) : (v7 = 0), v7))
  {
    v9 = 0;
  }

  else
  {
    [(NSCountedSet *)self->_currentTaskClasses addObject:objc_opt_class()];
    v8 = self->_lastOperationDate;
    self->_lastOperationDate = 0;

    v9 = 1;
  }

  return v9;
}

- (void)endTask:(id)task withOperationClasses:(id)classes operationsAllowingCellular:(id)cellular
{
  taskCopy = task;
  classesCopy = classes;
  cellularCopy = cellular;
  if (qword_1002C5618 != -1)
  {
    sub_1001AD3CC();
  }

  dispatch_assert_queue_V2(qword_1002C5610);
  v11 = objc_opt_class();
  if (([(NSCountedSet *)self->_currentTaskClasses containsObject:v11]& 1) == 0)
  {
    sub_1001AD3E0(a2, self, v11);
  }

  [(NSCountedSet *)self->_currentTaskClasses removeObject:v11];
  [(NSCountedSet *)self->_taskCounters addObject:v11];
  if (![(NSCountedSet *)self->_currentTaskClasses count])
  {
    v12 = +[NSDate date];
    lastOperationDate = self->_lastOperationDate;
    self->_lastOperationDate = v12;
  }

  v27 = taskCopy;
  v14 = [(NSMutableDictionary *)self->_classCountPerTaskClass objectForKeyedSubscript:v11];
  v15 = [(NSMutableDictionary *)self->_cellularClassCountPerTaskClass objectForKeyedSubscript:v11];
  if (!v14)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_classCountPerTaskClass setObject:v14 forKeyedSubscript:v11];
    v16 = objc_alloc_init(NSMutableDictionary);

    [(NSMutableDictionary *)self->_cellularClassCountPerTaskClass setObject:v16 forKeyedSubscript:v11];
    v15 = v16;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = classesCopy;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v28 = *v31;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = [v17 countForObject:v21];
        v23 = [v14 objectForKeyedSubscript:v21];
        v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v22[[v23 unsignedIntegerValue]]);
        [v14 setObject:v24 forKeyedSubscript:v21];

        v25 = [v15 objectForKeyedSubscript:v21];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 unsignedIntegerValue] + objc_msgSend(cellularCopy, "countForObject:", v21));
        [v15 setObject:v26 forKeyedSubscript:v21];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v19);
  }
}

- (id)statusObject
{
  if (qword_1002C5618 != -1)
  {
    sub_1001AD3CC();
  }

  dispatch_assert_queue_V2(qword_1002C5610);
  if ([(NSCountedSet *)self->_taskCounters count])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = self->_taskCounters;
    v5 = [(NSCountedSet *)v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [NSNumber numberWithUnsignedInteger:[(NSCountedSet *)self->_taskCounters countForObject:v9, v17]];
          v11 = NSStringFromClass(v9);
          [v3 setObject:v10 forKeyedSubscript:v11];
        }

        v6 = [(NSCountedSet *)v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v21[0] = @"date";
    lastOperationDate = self->_lastOperationDate;
    v13 = lastOperationDate;
    if (!lastOperationDate)
    {
      v13 = +[NSDate date];
    }

    [v13 timeIntervalSinceReferenceDate];
    v14 = [NSNumber numberWithDouble:?];
    v21[1] = @"counts";
    v22[0] = v14;
    v22[1] = v3;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    if (!lastOperationDate)
    {
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)status
{
  if (![(NSCountedSet *)self->_taskCounters count])
  {
    v19 = 0;
    goto LABEL_26;
  }

  v37 = objc_autoreleasePoolPush();
  v36 = +[NSDate date];
  v40 = [[NSMutableArray alloc] initWithCapacity:{-[NSCountedSet count](self->_taskCounters, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_taskCounters;
  v3 = [(NSCountedSet *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  v4 = &CPLFeatureNameEPP_ptr;
  if (v3)
  {
    v5 = v3;
    v39 = *v45;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v44 + 1) + 8 * i);
        v8 = CPLSimplifiedStringFromClass(v7);
        v9 = [(NSCountedSet *)self->_taskCounters countForObject:v7];
        if (v9 >= 2)
        {
          v10 = [objc_alloc(v4[200]) initWithFormat:@"%@ x %lu", v8, v9];

          v8 = v10;
        }

        v11 = [(NSMutableDictionary *)self->_classCountPerTaskClass objectForKeyedSubscript:v7];
        v12 = [(NSMutableDictionary *)self->_cellularClassCountPerTaskClass objectForKeyedSubscript:v7];
        if ([v11 count])
        {
          v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000A7468;
          v41[3] = &unk_100276B70;
          v42 = v12;
          v43 = v13;
          v14 = v13;
          [v11 enumerateKeysAndObjectsUsingBlock:v41];
          [v14 sortUsingSelector:"compare:"];
          v15 = v4;
          v16 = v4[200];
          v17 = [v14 componentsJoinedByString:{@", "}];
          v18 = [v16 stringWithFormat:@"%@ (%@)", v8, v17];
          [v40 addObject:v18];

          v4 = v15;
        }

        else
        {
          v14 = [v4[200] stringWithFormat:@"%@ (no CloudKit operation)", v8];
          [v40 addObject:v14];
        }
      }

      v5 = [(NSCountedSet *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v5);
  }

  [v40 sortUsingSelector:"compare:"];
  if (![(_CPLCloudKitOperationSession *)self isOngoing])
  {
    [(NSDate *)self->_lastOperationDate timeIntervalSinceDate:self->_startSessionDate];
    v27 = v26;
    v22 = v4;
    v28 = objc_alloc(v4[200]);
    v20 = v36;
    v29 = [CPLDateFormatter stringFromDateAgo:self->_startSessionDate now:v36];
    v24 = v29;
    if (v27 > 30.0)
    {
      v30 = [CPLDateFormatter stringForTimeInterval:v27];
      v31 = [v28 initWithFormat:@"%@ (for %@):", v24, v30];

LABEL_24:
      v32 = v37;

      v4 = v22;
      goto LABEL_25;
    }

    v25 = [v28 initWithFormat:@"%@:", v29];
LABEL_23:
    v31 = v25;
    goto LABEL_24;
  }

  [(NSDate *)self->_startSessionDate timeIntervalSinceNow];
  v20 = v36;
  if (v21 < -30.0)
  {
    v22 = v4;
    v23 = objc_alloc(v4[200]);
    v24 = [CPLDateFormatter stringForTimeIntervalAgo:self->_startSessionDate now:v36];
    v25 = [v23 initWithFormat:@"Ongoing, started %@:", v24];
    goto LABEL_23;
  }

  v31 = @"Ongoing:";
  v32 = v37;
LABEL_25:
  v33 = v4[200];
  v34 = [v40 componentsJoinedByString:@"\n    "];
  v19 = [v33 stringWithFormat:@"  %@\n    %@", v31, v34];

  objc_autoreleasePoolPop(v32);
LABEL_26:

  return v19;
}

@end