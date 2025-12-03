@interface CKDZoneGatekeeper
+ (id)gatekeeperForContainerID:(id)d accountID:(id)iD;
- (BOOL)hasStatusToReport;
- (id)CKStatusReportArray;
- (id)initInternal;
- (void)registerWaiter:(id)waiter forZoneIDs:(id)ds expectDelayBeforeRequestBegins:(BOOL)begins completionHandler:(id)handler;
@end

@implementation CKDZoneGatekeeper

- (id)initInternal
{
  v8.receiver = self;
  v8.super_class = CKDZoneGatekeeper;
  v2 = [(CKDZoneGatekeeper *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    foreground = v2->_foreground;
    v2->_foreground = v3;

    v5 = objc_opt_new();
    background = v2->_background;
    v2->_background = v5;
  }

  return v2;
}

+ (id)gatekeeperForContainerID:(id)d accountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (qword_280D586C0 != -1)
  {
    dispatch_once(&qword_280D586C0, &unk_28385EB20);
  }

  v8 = objc_alloc(MEMORY[0x277CBC7A0]);
  v10 = objc_msgSend_initWithObject1_object2_(v8, v9, dCopy, iDCopy);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  inited = objc_msgSend_objectForKey_(qword_280D586C8, v12, v10);
  if (!inited)
  {
    v14 = [CKDZoneGatekeeper alloc];
    inited = objc_msgSend_initInternal(v14, v15, v16);
    objc_msgSend_setObject_forKey_(qword_280D586C8, v17, inited, v10);
  }

  objc_sync_exit(selfCopy);

  return inited;
}

- (void)registerWaiter:(id)waiter forZoneIDs:(id)ds expectDelayBeforeRequestBegins:(BOOL)begins completionHandler:(id)handler
{
  beginsCopy = begins;
  waiterCopy = waiter;
  dsCopy = ds;
  handlerCopy = handler;
  v16 = objc_msgSend_foreground(self, v12, v13);
  if (beginsCopy)
  {
    v17 = objc_msgSend_background(self, v14, v15);

    v16 = v17;
  }

  objc_msgSend_registerWaiter_forZoneIDs_completionHandler_(v16, v14, waiterCopy, dsCopy, handlerCopy);
}

- (BOOL)hasStatusToReport
{
  v4 = objc_msgSend_foreground(self, a2, v2);
  if (objc_msgSend_hasStatusToReport(v4, v5, v6))
  {
    hasStatusToReport = 1;
  }

  else
  {
    v10 = objc_msgSend_background(self, v7, v8);
    hasStatusToReport = objc_msgSend_hasStatusToReport(v10, v11, v12);
  }

  return hasStatusToReport;
}

- (id)CKStatusReportArray
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_foreground(self, v4, v5);
  hasStatusToReport = objc_msgSend_hasStatusToReport(v6, v7, v8);

  if (hasStatusToReport)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"foregroundZoneGatekeeper {");
    objc_msgSend_addObject_(v3, v13, v12);

    v16 = objc_msgSend_foreground(self, v14, v15);
    v19 = objc_msgSend_CKStatusReportArray(v16, v17, v18);
    objc_msgSend_addObject_(v3, v20, v19);

    objc_msgSend_addObject_(v3, v21, @"}");
  }

  v22 = objc_msgSend_background(self, v10, v11);
  v25 = objc_msgSend_hasStatusToReport(v22, v23, v24);

  if (v25)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"backgroundZoneGatekeeper {");
    objc_msgSend_addObject_(v3, v28, v27);

    v31 = objc_msgSend_background(self, v29, v30);
    v34 = objc_msgSend_CKStatusReportArray(v31, v32, v33);
    objc_msgSend_addObject_(v3, v35, v34);

    objc_msgSend_addObject_(v3, v36, @"}");
  }

  return v3;
}

@end