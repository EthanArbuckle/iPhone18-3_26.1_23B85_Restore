@interface CKWaiterWrapper
- (CKWaiterWrapper)initWithWaiter:(id)a3 zoneIDs:(id)a4 waitCompletedHandler:(id)a5 activity:(id)a6;
- (id)CKPropertiesDescription;
@end

@implementation CKWaiterWrapper

- (CKWaiterWrapper)initWithWaiter:(id)a3 zoneIDs:(id)a4 waitCompletedHandler:(id)a5 activity:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = CKWaiterWrapper;
  v15 = [(CKWaiterWrapper *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_waiter, a3);
    objc_storeStrong(&v16->_zoneIDs, a4);
    v17 = _Block_copy(v13);
    waitCompletedHandler = v16->_waitCompletedHandler;
    v16->_waitCompletedHandler = v17;

    objc_storeStrong(&v16->_activity, a6);
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