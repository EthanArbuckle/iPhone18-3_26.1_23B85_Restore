@interface SGRecordId(Internal)
+ (uint64_t)recordIdWithTableId:()Internal rowId:;
@end

@implementation SGRecordId(Internal)

+ (uint64_t)recordIdWithTableId:()Internal rowId:
{
  v6 = MEMORY[0x277D020C8];
  if (HIBYTE(a4))
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int64_t makeInternalEntityId(SGTableId, int64_t)"}];
    [v8 handleFailureInFunction:v9 file:@"SGRecordId+Internal.m" lineNumber:22 description:@"rowId out of range"];
  }

  return [v6 recordIdWithInternalEntityId:a4 | (a3 << 56)];
}

@end