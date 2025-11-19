@interface CKModifyRecordsOperation(IC)
- (uint64_t)ic_removeAllCompletionBlocks;
@end

@implementation CKModifyRecordsOperation(IC)

- (uint64_t)ic_removeAllCompletionBlocks
{
  v3.receiver = a1;
  v3.super_class = &off_282784BA0;
  objc_msgSendSuper2(&v3, sel_ic_removeAllCompletionBlocks);
  [a1 setPerRecordSaveBlock:0];
  [a1 setPerRecordProgressBlock:0];
  return [a1 setModifyRecordsCompletionBlock:0];
}

@end