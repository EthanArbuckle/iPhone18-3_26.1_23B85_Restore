@interface _CPLCloudKitTaskContext
- (BOOL)_operationAllowsCellular:(id)cellular;
- (NSDictionary)statusPerOperationType;
- (_CPLCloudKitTaskContext)initWithTask:(id)task;
- (id)_priorityDescriptionForOperation:(id)operation forTask:(id)task;
- (void)cancelAllOperations;
- (void)operationDidFinish:(id)finish;
- (void)operationWillStart:(id)start context:(id)context;
@end

@implementation _CPLCloudKitTaskContext

- (_CPLCloudKitTaskContext)initWithTask:(id)task
{
  taskCopy = task;
  v15.receiver = self;
  v15.super_class = _CPLCloudKitTaskContext;
  v6 = [(_CPLCloudKitTaskContext *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
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

- (void)operationWillStart:(id)start context:(id)context
{
  startCopy = start;
  [(NSMapTable *)self->_contexts setObject:context forKey:startCopy];
  [(NSCountedSet *)self->_classCounts addObject:objc_opt_class()];
  if ([(_CPLCloudKitTaskContext *)self _operationAllowsCellular:startCopy])
  {
    [(NSCountedSet *)self->_cellularClassCounts addObject:objc_opt_class()];
  }
}

- (void)operationDidFinish:(id)finish
{
  finishCopy = finish;
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

- (id)_priorityDescriptionForOperation:(id)operation forTask:(id)task
{
  taskCopy = task;
  resolvedConfiguration = [operation resolvedConfiguration];
  if ([resolvedConfiguration cplDiscretionary])
  {
    v7 = @"disc";
  }

  else if (taskCopy && ([taskCopy hasBackgroundActivity] & 1) != 0)
  {
    v7 = @"bg activity";
  }

  else
  {
    v7 = @"non-disc";
  }

  v8 = __ROR8__([resolvedConfiguration qualityOfService] - 9, 3);
  if (v8 <= 3)
  {
    v7 = [[NSString alloc] initWithFormat:@"%@/%@", v7, off_100274B70[v8]];
  }

  return v7;
}

- (BOOL)_operationAllowsCellular:(id)cellular
{
  resolvedConfiguration = [cellular resolvedConfiguration];
  allowsCellularAccess = [resolvedConfiguration allowsCellularAccess];

  return allowsCellularAccess;
}

- (NSDictionary)statusPerOperationType
{
  selfCopy = self;
  session = [(CPLCloudKitTrackableTask *)self->_task session];
  v4 = [session description];

  v5 = &CPLFeatureNameEPP_ptr;
  if (v4)
  {
    v6 = [[NSString alloc] initWithFormat:@" in %@", v4];
  }

  else
  {
    v6 = &stru_10027C2F0;
  }

  if (![(NSMapTable *)selfCopy->_contexts count])
  {
    lastOperationDate = selfCopy->_lastOperationDate;
    v57 = [NSString alloc];
    if (lastOperationDate)
    {
      lastOperationClass = selfCopy->_lastOperationClass;
      task = selfCopy->_task;
      v60 = objc_opt_class();
      v61 = CPLSimplifiedStringFromClass(v60);
      v54 = [v57 initWithFormat:@"%@ (for %@%@)", lastOperationClass, v61, v6];

      v62 = [NSString alloc];
      v63 = selfCopy->_lastOperationClass;
      idleDescription = [CPLDateFormatter stringFromDateAgo:selfCopy->_lastOperationDate now:0];
      v65 = [v62 initWithFormat:@"%@ finished %@", v63, idleDescription];
    }

    else
    {
      v66 = selfCopy->_task;
      v67 = objc_opt_class();
      v68 = CPLSimplifiedStringFromClass(v67);
      v69 = [CPLDateFormatter stringFromDateAgo:selfCopy->_startDate now:0];
      v54 = [v57 initWithFormat:@"Started %@%@ %@", v68, v6, v69];

      idleDescription = [(CPLCloudKitTrackableTask *)selfCopy->_task idleDescription];
      if (!idleDescription)
      {
        v53 = @"no operation launched yet";
        goto LABEL_56;
      }

      v65 = [[NSString alloc] initWithFormat:@"%@", idleDescription, v71];
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
  v7 = selfCopy->_task;
  v8 = objc_opt_class();
  v76 = CPLSimplifiedStringFromClass(v8);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = selfCopy->_contexts;
  v78 = [(NSMapTable *)obj countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (v78)
  {
    v74 = *v87;
    v79 = selfCopy;
    do
    {
      for (i = 0; i != v78; i = i + 1)
      {
        if (*v87 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v86 + 1) + 8 * i);
        v11 = [(NSMapTable *)selfCopy->_contexts objectForKey:v10];
        group = [v10 group];
        v13 = objc_alloc(v5[200]);
        cplOperationClassDescription = [v10 cplOperationClassDescription];
        v15 = cplOperationClassDescription;
        v82 = group;
        if (group)
        {
          name = [group name];
          v17 = [v13 initWithFormat:@"%@ (for %@/%@%@)", v15, v76, name, v6];
        }

        else
        {
          v17 = [v13 initWithFormat:@"%@ (for %@%@)", cplOperationClassDescription, v76, v6];
        }

        v83 = v17;

        v85 = [v11 startDateDescriptionWithNow:v77];
        mightBeBlocked = [v11 mightBeBlocked];
        isCancelled = [v10 isCancelled];
        isCancelled2 = [v11 isCancelled];
        v20 = "";
        if (isCancelled2)
        {
          v20 = "- cancelled by engine";
        }

        if (isCancelled)
        {
          v20 = "- cancelled";
        }

        v81 = v20;
        [v11 progress];
        v22 = v21;
        operationDescription = [v11 operationDescription];
        if (operationDescription)
        {
          v24 = objc_alloc(v5[200]);
          operationID = [v10 operationID];
          operationID2 = [v24 initWithFormat:@"%@ %@", operationID, operationDescription];
        }

        else
        {
          operationID2 = [v10 operationID];
        }

        configuration = [v10 configuration];
        applicationBundleIdentifierOverrideForNetworkAttribution = [configuration applicationBundleIdentifierOverrideForNetworkAttribution];
        v28 = applicationBundleIdentifierOverrideForNetworkAttribution;
        if (applicationBundleIdentifierOverrideForNetworkAttribution)
        {
          applicationBundleIdentifierOverrideForNetworkAttribution2 = applicationBundleIdentifierOverrideForNetworkAttribution;
        }

        else
        {
          [v10 group];
          v31 = v30 = v6;
          defaultConfiguration = [v31 defaultConfiguration];
          applicationBundleIdentifierOverrideForNetworkAttribution2 = [defaultConfiguration applicationBundleIdentifierOverrideForNetworkAttribution];

          v5 = &CPLFeatureNameEPP_ptr;
          v6 = v30;
          selfCopy = v79;
        }

        v33 = objc_alloc(v5[200]);
        v34 = [(_CPLCloudKitTaskContext *)selfCopy _priorityDescriptionForOperation:v10 forTask:selfCopy->_task];
        if ([(_CPLCloudKitTaskContext *)selfCopy _operationAllowsCellular:v10])
        {
          v35 = "";
        }

        else
        {
          v35 = " (no cell)";
        }

        isExecuting = [v10 isExecuting];
        v38 = "exc";
        if (v22 <= 0.0)
        {
          v39 = v75;
          if ((isExecuting & 1) == 0)
          {
            isFinished = [v10 isFinished];
            v38 = "pen";
            if (isFinished)
            {
              v38 = "fin";
            }
          }

          v45 = @"no bundle";
          if (applicationBundleIdentifierOverrideForNetworkAttribution2)
          {
            v45 = applicationBundleIdentifierOverrideForNetworkAttribution2;
          }

          v46 = "";
          if (mightBeBlocked)
          {
            v46 = " (blocked?)";
          }

          v43 = [v33 initWithFormat:@"  [%@](%@)%s [%s]%s - %@ - %@%s", v37, operationID2, v34, v35, v38, v81, v45, v85, v46, v72];
        }

        else
        {
          v39 = v75;
          if ((isExecuting & 1) == 0)
          {
            isFinished2 = [v10 isFinished];
            v38 = "pen";
            if (isFinished2)
            {
              v38 = "fin";
            }
          }

          v41 = @"no bundle";
          if (applicationBundleIdentifierOverrideForNetworkAttribution2)
          {
            v41 = applicationBundleIdentifierOverrideForNetworkAttribution2;
          }

          v42 = "";
          if (mightBeBlocked)
          {
            v42 = " (blocked?)";
          }

          v43 = [v33 initWithFormat:@"  [%@](%@)%s [%s]%s - %@ - %@ - %.0f%%%s", v22 * 100.0, operationID2, v34, v35, v38, v81, v41, v85, v22 * 100.0, v42];
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

        extendedStatusDescriptionStrings = [v11 extendedStatusDescriptionStrings];
        if ([extendedStatusDescriptionStrings count])
        {
          v52 = [extendedStatusDescriptionStrings componentsJoinedByString:@"\n      "];
          [v50 appendFormat:@"\n      %@", v52];

          v48 = v83;
        }

        selfCopy = v79;
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