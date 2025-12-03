@interface HKDeletedObject(HDCodingSupport)
+ (uint64_t)createWithCodable:()HDCodingSupport;
- (uint64_t)codableRepresentationForSync;
@end

@implementation HKDeletedObject(HDCodingSupport)

+ (uint64_t)createWithCodable:()HDCodingSupport
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKObject+HDCodingSupport.m" lineNumber:1684 description:{@"HKDeletedObjects don't use HDCodingSupport, deleted objects from codable is handled in HDDatatSyncEntity's _insertObjectsFromCodableObjectCollection:syncStore:profile:error:"}];

  return 0;
}

- (uint64_t)codableRepresentationForSync
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return 0;
}

@end