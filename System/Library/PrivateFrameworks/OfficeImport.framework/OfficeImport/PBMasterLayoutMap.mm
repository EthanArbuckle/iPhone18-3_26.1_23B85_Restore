@interface PBMasterLayoutMap
+ (id)masterLayoutMap;
- (PBMasterLayoutMap)init;
- (id)masterInfoForMasterId:(int)id;
- (id)masterInfoForSlideHolder:(id)holder;
- (id)slideLayoutForSlideHolder:(id)holder;
- (int)masterIdForTitleId:(int)id;
- (void)setMasterId:(int)id forTitleId:(int)titleId;
- (void)setMasterInfo:(id)info forMasterId:(int)id;
@end

@implementation PBMasterLayoutMap

+ (id)masterLayoutMap
{
  v2 = objc_alloc_init(PBMasterLayoutMap);

  return v2;
}

- (PBMasterLayoutMap)init
{
  v8.receiver = self;
  v8.super_class = PBMasterLayoutMap;
  v2 = [(PBMasterLayoutMap *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mMasterIdToMasterInfoMap = v2->mMasterIdToMasterInfoMap;
    v2->mMasterIdToMasterInfoMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mTitleIdToMasterIdMap = v2->mTitleIdToMasterIdMap;
    v2->mTitleIdToMasterIdMap = v5;
  }

  return v2;
}

- (void)setMasterInfo:(id)info forMasterId:(int)id
{
  infoCopy = info;
  mMasterIdToMasterInfoMap = self->mMasterIdToMasterInfoMap;
  v7 = [MEMORY[0x277CCABB0] numberWithLong:id];
  [(NSMutableDictionary *)mMasterIdToMasterInfoMap setObject:infoCopy forKey:v7];
}

- (id)masterInfoForMasterId:(int)id
{
  mMasterIdToMasterInfoMap = self->mMasterIdToMasterInfoMap;
  v4 = [MEMORY[0x277CCABB0] numberWithLong:id];
  v5 = [(NSMutableDictionary *)mMasterIdToMasterInfoMap objectForKey:v4];

  return v5;
}

- (void)setMasterId:(int)id forTitleId:(int)titleId
{
  mTitleIdToMasterIdMap = self->mTitleIdToMasterIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithLong:id];
  v6 = [MEMORY[0x277CCABB0] numberWithLong:titleId];
  [(NSMutableDictionary *)mTitleIdToMasterIdMap setObject:v7 forKey:v6];
}

- (int)masterIdForTitleId:(int)id
{
  mTitleIdToMasterIdMap = self->mTitleIdToMasterIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithLong:id];
  v5 = [(NSMutableDictionary *)mTitleIdToMasterIdMap objectForKey:v4];
  intValue = [v5 intValue];

  return intValue;
}

- (id)masterInfoForSlideHolder:(id)holder
{
  holderCopy = holder;
  v5 = [holderCopy firstChildOfType:1007];
  eshObject = [v5 eshObject];
  {
    v11 = [TCMessageException exceptionWithMessage:TCUnknownProblemMessage];
    objc_exception_throw(v11);
  }

  v8 = v7[21];
  v9 = [(PBMasterLayoutMap *)self masterInfoForMasterId:v8];
  if (!v9)
  {
    v9 = [(PBMasterLayoutMap *)self masterInfoForMasterId:[(PBMasterLayoutMap *)self masterIdForTitleId:v8]];
  }

  return v9;
}

- (id)slideLayoutForSlideHolder:(id)holder
{
  holderCopy = holder;
  v5 = [(PBMasterLayoutMap *)self masterInfoForSlideHolder:holderCopy];
  v6 = [v5 slideLayoutForSlideHolder:holderCopy];

  return v6;
}

@end