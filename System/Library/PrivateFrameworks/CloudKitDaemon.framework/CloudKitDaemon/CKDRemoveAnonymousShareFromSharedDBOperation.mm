@interface CKDRemoveAnonymousShareFromSharedDBOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDRemoveAnonymousShareFromSharedDBOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_removeAnonymousShareFromSharedDB;
@end

@implementation CKDRemoveAnonymousShareFromSharedDBOperation

- (CKDRemoveAnonymousShareFromSharedDBOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = CKDRemoveAnonymousShareFromSharedDBOperation;
  v9 = [(CKDDatabaseOperation *)&v18 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_encryptedAnonymousSharesToRemove(infoCopy, v7, v8);
    encryptedAnonymousSharesToRemove = v9->_encryptedAnonymousSharesToRemove;
    v9->_encryptedAnonymousSharesToRemove = v10;

    v14 = objc_msgSend_anonymousShareRemovedBlock(infoCopy, v12, v13);
    anonymousShareRemovedBlock = v9->_anonymousShareRemovedBlock;
    v9->_anonymousShareRemovedBlock = v14;

    objc_msgSend_setDatabaseScope_(v9, v16, 3);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/RemoveAnonymousShareFromSharedDB", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

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
    objc_msgSend__removeAnonymousShareFromSharedDB(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Call _removeAnonymousShareFromSharedDB";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDRemoveAnonymousShareFromSharedDBOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_removeAnonymousShareFromSharedDB
{
  v3 = [CKDAnonymousShareRemoveURLRequest alloc];
  v6 = objc_msgSend_encryptedAnonymousSharesToRemove(self, v4, v5);
  v8 = objc_msgSend_initWithOperation_encryptedAnonymousSharesToRemove_(v3, v7, self, v6);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
  dispatch_group_enter(v11);

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2251A5958;
  v22[3] = &unk_2785487B0;
  objc_copyWeak(&v23, &location);
  objc_msgSend_setAnonymousShareRemovedBlock_(v8, v12, v22);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251A5A00;
  v19[3] = &unk_278548748;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  objc_msgSend_setCompletionBlock_(v8, v13, v19);
  objc_msgSend_setRequest_(self, v14, v8);
  v17 = objc_msgSend_container(self, v15, v16);
  objc_msgSend_performRequest_(v17, v18, v8);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end