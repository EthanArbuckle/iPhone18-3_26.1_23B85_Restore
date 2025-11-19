@interface _CPLCloudKitTaskContext
- (BOOL)_operationAllowsCellular:(id)a3;
- (NSDictionary)statusPerOperationType;
- (_CPLCloudKitTaskContext)initWithTask:(id)a3;
- (id)_priorityDescriptionForOperation:(id)a3 forTask:(id)a4;
- (void)cancelAllOperations;
- (void)operationDidFinish:(id)a3;
- (void)operationWillStart:(id)a3 context:(id)a4;
@end

@implementation _CPLCloudKitTaskContext

- (_CPLCloudKitTaskContext)initWithTask:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _CPLCloudKitTaskContext;
  v6 = [(_CPLCloudKitTaskContext *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    contexts = v7->_contexts;
    v7->_contexts = v8;

    v10 = objc_alloc_init(NSCountedSet);
    classCounts = v7->_classCounts;
    v7->_classCounts = v10;

    v12 = objc_alloc_init(NSCountedSet);
    cellularClassCounts = v7->_cellularClassCounts;
    v7->_cellularClassCounts = v12;
  }

  return v7;
}

- (void)operationWillStart:(id)a3 context:(id)a4
{
  v6 = a3;
  [(NSMapTable *)self->_contexts setObject:a4 forKey:v6];
  [(NSCountedSet *)self->_classCounts addObject:objc_opt_class()];
  if ([(_CPLCloudKitTaskContext *)self _operationAllowsCellular:v6])
  {
    [(NSCountedSet *)self->_cellularClassCounts addObject:objc_opt_class()];
  }
}

- (void)operationDidFinish:(id)a3
{
  v6 = a3;
  [(NSMapTable *)self->_contexts removeObjectForKey:?];
  if (![(NSMapTable *)self->_contexts count])
  {
    v4 = +[NSDate date];
    lastOperationDate = self->_lastOperationDate;
    self->_lastOperationDate = v4;

    self->_lastOperationClass = objc_opt_class();
  }
}

- (void)cancelAllOperations
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_contexts;
  v3 = [(NSMapTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMapTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_priorityDescriptionForOperation:(id)a3 forTask:(id)a4
{
  v5 = a4;
  v6 = [a3 resolvedConfiguration];
  if ([v6 cplDiscretionary])
  {
    v7 = @"disc";
  }

  else if (v5 && ([v5 hasBackgroundActivity] & 1) != 0)
  {
    v7 = @"bg activity";
  }

  else
  {
    v7 = @"non-disc";
  }

  v8 = __ROR8__([v6 qualityOfService] - 9, 3);
  if (v8 <= 3)
  {
    v7 = [[NSString alloc] initWithFormat:@"%@/%@", v7, off_100274B70[v8]];
  }

  return v7;
}

- (BOOL)_operationAllowsCellular:(id)a3
{
  v3 = [a3 resolvedConfiguration];
  v4 = [v3 allowsCellularAccess];

  return v4;
}

- (NSDictionary)statusPerOperationType
{
  v2 = self;
  v3 = [(CPLCloudKitTrackableTask *)self->_task session];
  v4 = [v3 description];

  v5 = &CPLFeatureNameEPP_ptr;
  if (v4)
  {
    v6 = [[NSString alloc] initWithFormat:@" in %@", v4];
  }

  else
  {
    v6 = &stru_10027C2F0;
  }

  if (![(NSMapTable *)v2->_contexts count])
  {
    lastOperationDate = v2->_lastOperationDate;
    v57 = [NSString alloc];
    if (lastOperationDate)
    {
      lastOperationClass = v2->_lastOperationClass;
      task = v2->_task;
      v60 = objc_opt_class();
      v61 = CPLSimplifiedStringFromClass(v60);
      v54 = [v57 initWithFormat:@"%@ (for %@%@)", lastOperationClass, v61, v6];

      v62 = [NSString alloc];
      v63 = v2->_lastOperationClass;
      v64 = [CPLDateFormatter stringFromDateAgo:v2->_lastOperationDate now:0];
      v65 = [v62 initWithFormat:@"%@ finished %@", v63, v64];
    }

    else
    {
      v66 = v2->_task;
      v67 = objc_opt_class();
      v68 = CPLSimplifiedStringFromClass(v67);
      v69 = [CPLDateFormatter stringFromDateAgo:v2->_startDate now:0];
      v54 = [v57 initWithFormat:@"Started %@%@ %@", v68, v6, v69];

      v64 = [(CPLCloudKitTrackableTask *)v2->_task idleDescription];
      if (!v64)
      {
        v53 = @"no operation launched yet";
        goto LABEL_56;
      }

      v65 = [[NSString alloc] initWithFormat:@"%@", v64, v71];
    }

    v53 = v65;
LABEL_56:

    v91 = v54;
    v92 = v53;
    v55 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    goto LABEL_57;
  }

  v77 = +[NSDate date];
  v75 = objc_alloc_init(NSMutableDictionary);
  v7 = v2->_task;
  v8 = objc_opt_class();
  v76 = CPLSimplifiedStringFromClass(v8);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v2->_contexts;
  v78 = [(NSMapTable *)obj countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (v78)
  {
    v74 = *v87;
    v79 = v2;
    do
    {
      for (i = 0; i != v78; i = i + 1)
      {
        if (*v87 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v86 + 1) + 8 * i);
        v11 = [(NSMapTable *)v2->_contexts objectForKey:v10];
        v12 = [v10 group];
        v13 = objc_alloc(v5[200]);
        v14 = [v10 cplOperationClassDescription];
        v15 = v14;
        v82 = v12;
        if (v12)
        {
          v16 = [v12 name];
          v17 = [v13 initWithFormat:@"%@ (for %@/%@%@)", v15, v76, v16, v6];
        }

        else
        {
          v17 = [v13 initWithFormat:@"%@ (for %@%@)", v14, v76, v6];
        }

        v83 = v17;

        v85 = [v11 startDateDescriptionWithNow:v77];
        v80 = [v11 mightBeBlocked];
        v18 = [v10 isCancelled];
        v19 = [v11 isCancelled];
        v20 = "";
        if (v19)
        {
          v20 = "- cancelled by engine";
        }

        if (v18)
        {
          v20 = "- cancelled";
        }

        v81 = v20;
        [v11 progress];
        v22 = v21;
        v23 = [v11 operationDescription];
        if (v23)
        {
          v24 = objc_alloc(v5[200]);
          v25 = [v10 operationID];
          v84 = [v24 initWithFormat:@"%@ %@", v25, v23];
        }

        else
        {
          v84 = [v10 operationID];
        }

        v26 = [v10 configuration];
        v27 = [v26 applicationBundleIdentifierOverrideForNetworkAttribution];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          [v10 group];
          v31 = v30 = v6;
          v32 = [v31 defaultConfiguration];
          v29 = [v32 applicationBundleIdentifierOverrideForNetworkAttribution];

          v5 = &CPLFeatureNameEPP_ptr;
          v6 = v30;
          v2 = v79;
        }

        v33 = objc_alloc(v5[200]);
        v34 = [(_CPLCloudKitTaskContext *)v2 _priorityDescriptionForOperation:v10 forTask:v2->_task];
        if ([(_CPLCloudKitTaskContext *)v2 _operationAllowsCellular:v10])
        {
          v35 = "";
        }

        else
        {
          v35 = " (no cell)";
        }

        v36 = [v10 isExecuting];
        v38 = "exc";
        if (v22 <= 0.0)
        {
          v39 = v75;
          if ((v36 & 1) == 0)
          {
            v44 = [v10 isFinished];
            v38 = "pen";
            if (v44)
            {
              v38 = "fin";
            }
          }

          v45 = @"no bundle";
          if (v29)
          {
            v45 = v29;
          }

          v46 = "";
          if (v80)
          {
            v46 = " (blocked?)";
          }

          v43 = [v33 initWithFormat:@"  [%@](%@)%s [%s]%s - %@ - %@%s", v37, v84, v34, v35, v38, v81, v45, v85, v46, v72];
        }

        else
        {
          v39 = v75;
          if ((v36 & 1) == 0)
          {
            v40 = [v10 isFinished];
            v38 = "pen";
            if (v40)
            {
              v38 = "fin";
            }
          }

          v41 = @"no bundle";
          if (v29)
          {
            v41 = v29;
          }

          v42 = "";
          if (v80)
          {
            v42 = " (blocked?)";
          }

          v43 = [v33 initWithFormat:@"  [%@](%@)%s [%s]%s - %@ - %@ - %.0f%%%s", v22 * 100.0, v84, v34, v35, v38, v81, v41, v85, v22 * 100.0, v42];
        }

        v47 = v43;

        v48 = v83;
        v49 = [v39 objectForKeyedSubscript:v83];
        v5 = &CPLFeatureNameEPP_ptr;
        if (v49)
        {
          v50 = v49;
          [v49 appendFormat:@"\n%@", v47];
        }

        else
        {
          v50 = [v47 mutableCopy];
          [v39 setObject:v50 forKeyedSubscript:v83];
        }

        v51 = [v11 extendedStatusDescriptionStrings];
        if ([v51 count])
        {
          v52 = [v51 componentsJoinedByString:@"\n      "];
          [v50 appendFormat:@"\n      %@", v52];

          v48 = v83;
        }

        v2 = v79;
      }

      v78 = [(NSMapTable *)obj countByEnumeratingWithState:&v86 objects:v90 count:16];
    }

    while (v78);
  }

  v53 = v76;
  v54 = v77;
  v55 = v75;
LABEL_57:

  return v55;
}

@end