@interface ESAEscrowActivityUpdateResult
- (ESAEscrowActivityUpdateResult)initWithActivity:(id)a3 event:(id)a4 context:(id)a5 totalPreviousOperations:(unint64_t)a6;
@end

@implementation ESAEscrowActivityUpdateResult

- (ESAEscrowActivityUpdateResult)initWithActivity:(id)a3 event:(id)a4 context:(id)a5 totalPreviousOperations:(unint64_t)a6
{
  v56 = a3;
  v57 = a4;
  v51 = a5;
  v75.receiver = self;
  v75.super_class = ESAEscrowActivityUpdateResult;
  v54 = [(ESAEscrowActivityUpdateResult *)&v75 init];
  if (v54)
  {
    if (v56)
    {
      v52 = [v56 copy];
    }

    else
    {
      v52 = [[SecureBackupEscrowActivity alloc] initWithInitialEvent:v57 context:v51];
    }

    v10 = [v56 operations];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count] + 1);

    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    v14 = +[NSMutableArray array];
    *&v54->_didChange = 256;
    v54->_shouldReap = 1;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v74[3] = a6;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100034C74;
    v66[3] = &unk_100075C20;
    v53 = v54;
    v67 = v53;
    v47 = v13;
    v68 = v47;
    v55 = v51;
    v69 = v55;
    v73 = v74;
    v50 = v14;
    v70 = v50;
    v48 = v12;
    v71 = v48;
    v49 = v11;
    v72 = v49;
    v15 = objc_retainBlock(v66);
    if (v57)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v16 = [v56 operations];
      v17 = [(SecureBackupEscrowOperation *)v16 countByEnumeratingWithState:&v62 objects:v77 count:16];
      if (v17)
      {
        v18 = *v63;
LABEL_8:
        v19 = 0;
        while (1)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v62 + 1) + 8 * v19);
          v21 = [v57 operationId];
          v22 = [v20 id];
          v23 = [v21 isEqual:v22];

          if (v23)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [(SecureBackupEscrowOperation *)v16 countByEnumeratingWithState:&v62 objects:v77 count:16];
            if (v17)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:

        v16 = [[SecureBackupEscrowOperation alloc] initWithEvent:v57 parentActivity:v56 context:v55];
        (v15[2])(v15, 0, v16);
      }
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v24 = [v56 operations];
    v25 = [v24 reverseObjectEnumerator];

    v26 = [v25 countByEnumeratingWithState:&v58 objects:v76 count:16];
    if (v26)
    {
      v27 = *v59;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v59 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v58 + 1) + 8 * i);
          if (v57 && ([*(*(&v58 + 1) + 8 * i) id], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "operationId"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "isEqual:", v31), v31, v30, v32))
          {
            v33 = [v29 updatedOperationWithAdditionalEvent:v57 parentActivity:v56 context:v55];
          }

          else
          {
            v33 = [v29 updatedOperationWithParentActivity:v56 context:v55];
          }

          v34 = v33;
          (v15[2])(v15, v29, v33);
        }

        v26 = [v25 countByEnumeratingWithState:&v58 objects:v76 count:16];
      }

      while (v26);
    }

    if ([v49 count])
    {
      v35 = [v49 copy];
      [(SecureBackupEscrowActivity *)v52 setOperations:v35];
    }

    else
    {
      v36 = [v50 copy];
      [(SecureBackupEscrowActivity *)v52 setOperations:v36];

      v54->_shouldReap = 1;
    }

    v37 = [v48 copy];
    activeOperations = v53->_activeOperations;
    v53->_activeOperations = v37;

    v39 = [v47 copy];
    updatedOperations = v53->_updatedOperations;
    v53->_updatedOperations = v39;

    v41 = [v50 copy];
    reapedOperations = v53->_reapedOperations;
    v53->_reapedOperations = v41;

    [(SecureBackupEscrowActivity *)v52 setAllOperationsComplete:v54->_isComplete];
    -[SecureBackupEscrowActivity setSomeOperationsReaped:](v52, "setSomeOperationsReaped:", [v50 count] != 0);
    activity = v53->_activity;
    v53->_activity = v52;
    v44 = v52;

    v45 = v53;
    _Block_object_dispose(v74, 8);
  }

  return v54;
}

@end