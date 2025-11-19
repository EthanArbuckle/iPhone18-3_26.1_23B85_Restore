@interface SBEscrowOperationLoggerUpdate
- (NSArray)completedOperations;
- (NSArray)failedOperations;
- (NSArray)successfulOperations;
- (SBEscrowOperationLoggerUpdate)initWithLog:(id)a3 event:(id)a4 context:(id)a5;
@end

@implementation SBEscrowOperationLoggerUpdate

- (SBEscrowOperationLoggerUpdate)initWithLog:(id)a3 event:(id)a4 context:(id)a5
{
  v59 = a3;
  v63 = a4;
  v62 = a5;
  v90.receiver = self;
  v90.super_class = SBEscrowOperationLoggerUpdate;
  v60 = [(SBEscrowOperationLoggerUpdate *)&v90 init];
  if (v60)
  {
    v8 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v11 = +[NSMutableArray array];
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    +[NSMutableArray array];
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 1;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000355AC;
    v72[3] = &unk_100075C48;
    v51 = v80 = &v86;
    v73 = v51;
    v58 = v8;
    v74 = v58;
    v55 = v11;
    v75 = v55;
    v56 = v10;
    v76 = v56;
    v53 = v13;
    v77 = v53;
    v81 = &v82;
    v57 = v9;
    v78 = v57;
    v54 = v12;
    v79 = v54;
    v14 = objc_retainBlock(v72);
    if (v63)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v15 = [v59 activities];
      v16 = [(ESAEscrowActivityUpdateResult *)v15 countByEnumeratingWithState:&v68 objects:v92 count:16];
      if (v16)
      {
        v17 = *v69;
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v69 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v68 + 1) + 8 * v18);
          v20 = [v63 activityId];
          v21 = [v19 id];
          LOBYTE(v19) = [v20 isEqual:v21];

          if (v19)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [(ESAEscrowActivityUpdateResult *)v15 countByEnumeratingWithState:&v68 objects:v92 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:

        v22 = [ESAEscrowActivityUpdateResult alloc];
        v15 = [(ESAEscrowActivityUpdateResult *)v22 initWithActivity:0 event:v63 context:v62 totalPreviousOperations:v87[3]];
        (v14[2])(v14, v15);
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v23 = [v59 activities];
    obj = [v23 reverseObjectEnumerator];

    v24 = [obj countByEnumeratingWithState:&v64 objects:v91 count:16];
    if (v24)
    {
      v25 = *v65;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v64 + 1) + 8 * i);
          v28 = [v27 id];
          v29 = [v63 activityId];
          v30 = [v28 isEqual:v29];

          v31 = [ESAEscrowActivityUpdateResult alloc];
          if (v30)
          {
            v32 = v63;
          }

          else
          {
            v32 = 0;
          }

          v33 = [(ESAEscrowActivityUpdateResult *)v31 initWithActivity:v27 event:v32 context:v62 totalPreviousOperations:v87[3]];
          (v14[2])(v14, v33);
        }

        v24 = [obj countByEnumeratingWithState:&v64 objects:v91 count:16];
      }

      while (v24);
    }

    v34 = [SecureBackupLog alloc];
    v35 = [(SecureBackupLog *)v34 initWithActivities:v58 allComplete:*(v83 + 24) totalOperations:v87[3]];
    updatedLog = v60->_updatedLog;
    v60->_updatedLog = v35;

    activeActivities = v60->_activeActivities;
    v60->_activeActivities = v57;
    v38 = v57;

    updatedActivities = v60->_updatedActivities;
    v60->_updatedActivities = v56;
    v40 = v56;

    reapedActivities = v60->_reapedActivities;
    v60->_reapedActivities = v55;
    v42 = v55;

    activeOperations = v60->_activeOperations;
    v60->_totalOperations = v87[3];
    v60->_activeOperations = v54;
    v44 = v54;

    updatedOperations = v60->_updatedOperations;
    v60->_updatedOperations = v53;
    v46 = v53;

    reapedOperations = v60->_reapedOperations;
    v60->_reapedOperations = v52;
    v48 = v52;

    v49 = v60;
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
  }

  return v60;
}

- (NSArray)completedOperations
{
  v3 = [(SBEscrowOperationLoggerUpdate *)self updatedOperations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBEscrowOperationLoggerUpdate *)self updatedOperations];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isComplete])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)successfulOperations
{
  v3 = [(SBEscrowOperationLoggerUpdate *)self updatedOperations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBEscrowOperationLoggerUpdate *)self updatedOperations];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isComplete] && (objc_msgSend(v10, "didFail") & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)failedOperations
{
  v3 = [(SBEscrowOperationLoggerUpdate *)self updatedOperations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBEscrowOperationLoggerUpdate *)self updatedOperations];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isComplete] && objc_msgSend(v10, "didFail"))
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end