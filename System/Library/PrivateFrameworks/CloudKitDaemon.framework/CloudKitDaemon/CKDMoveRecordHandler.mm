@interface CKDMoveRecordHandler
+ (id)moveHandlerWithMoveChange:(id)a3 operation:(id)a4;
- (id)_initWithMoveChange:(id)a3 operation:(id)a4;
- (id)record;
@end

@implementation CKDMoveRecordHandler

- (id)_initWithMoveChange:(id)a3 operation:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CKDMoveRecordHandler;
  v8 = [(CKDModifyRecordHandler *)&v12 _initCommonWithOperation:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 18, a3);
    objc_msgSend_setState_(v9, v10, 0);
  }

  return v9;
}

+ (id)moveHandlerWithMoveChange:(id)a3 operation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v10 = objc_msgSend__initWithMoveChange_operation_(v8, v9, v7, v6);

  return v10;
}

- (id)record
{
  v3 = objc_msgSend_moveChange(self, a2, v2);
  v6 = objc_msgSend_destinationRecord(v3, v4, v5);

  return v6;
}

@end