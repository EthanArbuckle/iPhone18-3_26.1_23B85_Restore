@interface CKDContainerSpecificInfoOperation
- (CKDContainerSpecificInfoOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)main;
- (void)setCompletionBlock:(id)block;
@end

@implementation CKDContainerSpecificInfoOperation

- (CKDContainerSpecificInfoOperation)initWithOperationInfo:(id)info container:(id)container
{
  v8.receiver = self;
  v8.super_class = CKDContainerSpecificInfoOperation;
  v4 = [(CKDOperation *)&v8 initWithOperationInfo:info container:container];
  if (v4)
  {
    v5 = dispatch_group_create();
    v6 = *(v4 + 61);
    *(v4 + 61) = v5;

    dispatch_group_enter(*(v4 + 61));
  }

  return v4;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/container-specific-info", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A2A30;
  aBlock[3] = &unk_278547F28;
  v5 = blockCopy;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = _Block_copy(aBlock);
  v7.receiver = self;
  v7.super_class = CKDContainerSpecificInfoOperation;
  [(CKDOperation *)&v7 setCompletionBlock:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)main
{
  v3 = [CKDContainerSpecificInfoURLRequest alloc];
  v6 = objc_msgSend_container(self, v4, v5);
  v9 = objc_msgSend_containerID(v6, v7, v8);
  v12 = objc_msgSend_containerIdentifier(v9, v10, v11);
  v14 = objc_msgSend_initWithOperation_containerIdentifier_(v3, v13, self, v12);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v14);
  v17 = objc_msgSend_requireUserIDs(self, v15, v16);
  objc_msgSend_setRequireUserIDs_(v14, v18, v17);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_2251A2C44;
  v28 = &unk_278548748;
  objc_copyWeak(&v29, &location);
  objc_copyWeak(&v30, &from);
  objc_msgSend_setCompletionBlock_(v14, v19, &v25);
  objc_msgSend_setRequest_(self, v20, v14, v25, v26, v27, v28);
  v23 = objc_msgSend_container(self, v21, v22);
  objc_msgSend_performRequest_(v23, v24, v14);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end