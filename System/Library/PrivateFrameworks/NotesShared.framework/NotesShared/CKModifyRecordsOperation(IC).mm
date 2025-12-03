@interface CKModifyRecordsOperation(IC)
- (uint64_t)ic_removeAllCompletionBlocks;
@end

@implementation CKModifyRecordsOperation(IC)

- (uint64_t)ic_removeAllCompletionBlocks
{
  v3.receiver = self;
  v3.super_class = &off_282784BA0;
  objc_msgSendSuper2(&v3, sel_ic_removeAllCompletionBlocks);
  [self setPerRecordSaveBlock:0];
  [self setPerRecordProgressBlock:0];
  return [self setModifyRecordsCompletionBlock:0];
}

@end