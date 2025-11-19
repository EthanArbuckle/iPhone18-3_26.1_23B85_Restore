@interface CKFetchRecordsOperation(IC)
- (uint64_t)ic_removeAllCompletionBlocks;
@end

@implementation CKFetchRecordsOperation(IC)

- (uint64_t)ic_removeAllCompletionBlocks
{
  v3.receiver = a1;
  v3.super_class = &off_282785F08;
  objc_msgSendSuper2(&v3, sel_ic_removeAllCompletionBlocks);
  [a1 setPerRecordCompletionBlock:0];
  [a1 setPerRecordProgressBlock:0];
  return [a1 setFetchRecordsCompletionBlock:0];
}

@end