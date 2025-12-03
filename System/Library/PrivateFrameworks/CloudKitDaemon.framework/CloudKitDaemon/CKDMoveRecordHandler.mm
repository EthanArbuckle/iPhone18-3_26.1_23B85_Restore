@interface CKDMoveRecordHandler
+ (id)moveHandlerWithMoveChange:(id)change operation:(id)operation;
- (id)_initWithMoveChange:(id)change operation:(id)operation;
- (id)record;
@end

@implementation CKDMoveRecordHandler

- (id)_initWithMoveChange:(id)change operation:(id)operation
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = CKDMoveRecordHandler;
  v8 = [(CKDModifyRecordHandler *)&v12 _initCommonWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 18, change);
    objc_msgSend_setState_(v9, v10, 0);
  }

  return v9;
}

+ (id)moveHandlerWithMoveChange:(id)change operation:(id)operation
{
  operationCopy = operation;
  changeCopy = change;
  v8 = [self alloc];
  v10 = objc_msgSend__initWithMoveChange_operation_(v8, v9, changeCopy, operationCopy);

  return v10;
}

- (id)record
{
  v3 = objc_msgSend_moveChange(self, a2, v2);
  v6 = objc_msgSend_destinationRecord(v3, v4, v5);

  return v6;
}

@end