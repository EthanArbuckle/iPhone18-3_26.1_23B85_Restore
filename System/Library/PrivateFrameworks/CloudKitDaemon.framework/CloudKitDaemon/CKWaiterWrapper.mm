@interface CKWaiterWrapper
- (CKWaiterWrapper)initWithWaiter:(id)waiter zoneIDs:(id)ds waitCompletedHandler:(id)handler activity:(id)activity;
- (id)CKPropertiesDescription;
@end

@implementation CKWaiterWrapper

- (CKWaiterWrapper)initWithWaiter:(id)waiter zoneIDs:(id)ds waitCompletedHandler:(id)handler activity:(id)activity
{
  waiterCopy = waiter;
  dsCopy = ds;
  handlerCopy = handler;
  activityCopy = activity;
  v24.receiver = self;
  v24.super_class = CKWaiterWrapper;
  v15 = [(CKWaiterWrapper *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_waiter, waiter);
    objc_storeStrong(&v16->_zoneIDs, ds);
    v17 = _Block_copy(handlerCopy);
    waitCompletedHandler = v16->_waitCompletedHandler;
    v16->_waitCompletedHandler = v17;

    objc_storeStrong(&v16->_activity, activity);
    v21 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v19, v20);
    persona = v16->_persona;
    v16->_persona = v21;
  }

  return v16;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_ckShortDescription(self->_waiter, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"waiter=%@, zoneIDs=%@", v5, self->_zoneIDs);

  return v7;
}

@end