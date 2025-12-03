@interface CKFetchRecordsOperation(IC)
- (uint64_t)ic_removeAllCompletionBlocks;
@end

@implementation CKFetchRecordsOperation(IC)

- (uint64_t)ic_removeAllCompletionBlocks
{
  v3.receiver = self;
  v3.super_class = &off_282785F08;
  objc_msgSendSuper2(&v3, sel_ic_removeAllCompletionBlocks);
  [self setPerRecordCompletionBlock:0];
  [self setPerRecordProgressBlock:0];
  return [self setFetchRecordsCompletionBlock:0];
}

@end