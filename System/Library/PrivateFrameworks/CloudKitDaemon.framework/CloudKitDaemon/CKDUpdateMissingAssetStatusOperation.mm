@interface CKDUpdateMissingAssetStatusOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDUpdateMissingAssetStatusOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_updateMissingAssetStatus;
@end

@implementation CKDUpdateMissingAssetStatusOperation

- (CKDUpdateMissingAssetStatusOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CKDUpdateMissingAssetStatusOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_repairRecordID(v6, v7, v8);
    repairRecordID = v9->_repairRecordID;
    v9->_repairRecordID = v10;

    v9->_recovered = objc_msgSend_recovered(v6, v12, v13);
    v9->_isPackage = objc_msgSend_isPackage(v6, v14, v15);
    v18 = objc_msgSend_assetSizes(v6, v16, v17);
    assetSizes = v9->_assetSizes;
    v9->_assetSizes = v18;

    v22 = objc_msgSend_assetPutReceipts(v6, v20, v21);
    assetPutReceipts = v9->_assetPutReceipts;
    v9->_assetPutReceipts = v22;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/update-missing-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v10 = objc_msgSend_error(self, v8, v9);
    objc_msgSend_finishWithError_(self, v11, v10);
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend__updateMissingAssetStatus(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Call UpdateMissingAssetStatus";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDUpdateMissingAssetStatusOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_updateMissingAssetStatus
{
  if (objc_msgSend_recovered(self, a2, v2))
  {
    isPackage = objc_msgSend_isPackage(self, v4, v5);
    v7 = [CKDUpdateMissingAssetStatusURLRequest alloc];
    v10 = objc_msgSend_repairRecordID(self, v8, v9);
    v13 = objc_msgSend_assetSizes(self, v11, v12);
    v16 = v13;
    if (isPackage)
    {
      v17 = objc_msgSend_assetPutReceipts(self, v14, v15);
      v19 = objc_msgSend_initWithOperation_recoveredPackageRepairRecordID_sizes_putReceipts_(v7, v18, self, v10, v16, v17);
    }

    else
    {
      v17 = objc_msgSend_firstObject(v13, v14, v15);
      v26 = objc_msgSend_unsignedIntegerValue(v17, v24, v25);
      v29 = objc_msgSend_assetPutReceipts(self, v27, v28);
      v32 = objc_msgSend_firstObject(v29, v30, v31);
      v19 = objc_msgSend_initWithOperation_recoveredAssetRepairRecordID_size_putReceipt_(v7, v33, self, v10, v26, v32);
    }
  }

  else
  {
    v20 = [CKDUpdateMissingAssetStatusURLRequest alloc];
    v10 = objc_msgSend_repairRecordID(self, v21, v22);
    v19 = objc_msgSend_initWithOperation_unrecoveredRepairRecordID_(v20, v23, self, v10);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v19);
  v36 = objc_msgSend_stateTransitionGroup(self, v34, v35);
  dispatch_group_enter(v36);

  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = sub_2251B9DCC;
  v46 = &unk_278548748;
  objc_copyWeak(&v47, &location);
  objc_copyWeak(&v48, &from);
  objc_msgSend_setCompletionBlock_(v19, v37, &v43);
  objc_msgSend_setRequest_(self, v38, v19, v43, v44, v45, v46);
  v41 = objc_msgSend_container(self, v39, v40);
  objc_msgSend_performRequest_(v41, v42, v19);

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end